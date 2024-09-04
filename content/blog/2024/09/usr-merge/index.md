---
title: "Usr Merge"
author: "evan"
categories:
  - news
date: 2024-09-04
featuredimage: "/usr-merge-banner-image.jpg"
url: "/2024/09/04/usr-merge"
---

Back in May, 2024, we made our initial attempt at doing what we're calling "Usr-Merge". While initially hopeful, it quickly became clear that there were significant problems with our approach, and that a new one would be needed. This post will go into what happened in May, and outline what we plan to do next time.

## What is Usr-Merge?

The old way of organizing the Linux filesystem split files between `/bin` and `/usr/bin`, `/sbin` and `/usr/sbin`, `/lib` and `/usr/lib`, and `/lib64` and `/usr/lib64`. In recent years, there has been a push to unify everything by putting all the directories in the `/usr` file tree, e.g. `/usr/bin` and `/usr/lib64`, and adding compatibility symbolic links (symlinks) pointing to the directories in `/usr`. There are several reasons for this:

- It improves compatibility in behavior with other Unixes and Linuxes. Scripts written for another distribution don't need modifications for different file paths, making them more portable.
- Compatibility with the GNU build systems. Porting software to Linux becomes easier, because the build system and developers don't have to worry about a split `/usr`.
- Improved compatibility with upstream development.
- Reduced complexity of the filesystem. The separation between vendor-provided (coming from your Linux distribution, possibly read-only) resources and user resources becomes more clear.

The Freedesktop Wiki has a much more detailed article about Usr-Merge [here](https://www.freedesktop.org/wiki/Software/systemd/TheCaseForTheUsrMerge/).

### Sounds like Stateless

If you've used Solus for any length of time, you may have heard the team talking about "stateless" packages. What does that mean? A stateless system means that, in theory, you can remove everything in `/etc` and be left with a still-working system using vendor-provided (e.g., Solus) defaults. We do this by putting default configuration files in `/usr/share/defaults`, which can be copied to `/etc` or `$HOME/.config` and modified by the user, overwriting the system defaults. While not directly related to Statelessness, the idea behind it and Usr-Merge are quite similar.

This concept is also called "Hermetic-Usr" by systemd and openSUSE.

Serpent OS and `moss` takes the idea of Stateless a step further. The package manager *cannot* install files outside of `/usr`, enforcing a stateless system. Since Solus will also be moving to `moss` and associated tooling, we will also not be able to ship files outside of `/usr`, including files in directories like `/bin` and `/lib`. That's where Usr-Merge comes in; it is a prerequisite to switching to the Serpent tooling on Solus.

## Our previous attempt

Back in May 2024, we thought we had a safe way to merge `/bin` and `/sbin` into `/usr`. It was discovered that we could simply turn these directories into symlinks in our `baselayout` package, and everything in them would end up in `/usr/bin` and `/usr/sbin` when they were updated. As it turned out, it was not that simple at all.

There were two issues with this approach.

1) Package updates with `eopkg` are non-deterministic. That means that there is no guarantee about the order that packages will be installed in. In this case, `baselayout` needed to be updated before any other package to create the symlinks, but there was no way to actually enforce it to be the first in the list. That created the situation where other packages were updated first, and thus their executable files didn't end up in `/usr/bin` or `/usr/sbin`, causing people's systems to be completely broken.
2) The Usr-Merge work depended on a previous update already having been installed on user's systems. When fetching updates, `eopkg` goes straight from where you are to the latest package version found in the repository, skipping anything in between. Since the team's systems are usually always up-to-date on the Unstable repository, we didn't catch that if you weren't already up-to-date, you would be missing the necessary work done in a previous update when you tried to install the Usr-Merge update.

The second issue is compounded by the first issue because even if the second is solved, the first makes it impossible to reliably install an update addressing it. We were stuck in the position where some users were successfully Usr-Merged, other users weren't, and there was no way to unify those two groups, either by successfully merging everyone, or rolling back the merge.

We started calling it the Chicken and the Egg problem.

## Chicken and the egg

The problem goes like this: we can update `eopkg` to provide more deterministic updates. In fact, Ermo has already done this for both the [Python 2](https://github.com/getsolus/eopkg/pull/68) and [Python 3](https://github.com/getsolus/eopkg/pull/70) versions of `eopkg`. But because updates are already non-deterministic, and we can't guarantee what point in time users are updating from, we can't rely on the update being present on user systems if we try to do the Usr-Merge again; trying to update would lead to the same problem as before.

And that holds true for any fix that involves a package update to solve this problem. No matter what package it is, or what the update does, the issue is always the same.

## Cracking the egg

We have come up with a way forward that should solve our little Chicken and Egg problem. We can't rely on a single update in a single package to solve the issue, but what we *can* do is update the pieces of software involved to write and look for marker files signaling that they are compatible with Usr-Merge, and each other. In conjunction, we can ship a script to be run during the early boot process to do the actual merging, if and only if the marker files are in place. By having the process rely on these files and boot scripts instead of just happening with update installation, we can ensure that the merging process will only run when all of the pieces are in place, and not before. The package manager is taken out of the equation entirely. If you want to see what the script does for yourself, it can be found [here](https://github.com/getsolus/packages/blob/main/packages/u/usysconf-epoch/files/epoch.sh).

### The plan

The process goes like this:

1) eopkg is updated with Usr-Merge support. It writes a marker file to indicate that the system can safely be merged.
2) Our Usr-Merge script runs during early boot and detects the marker file. The script proceeds to upgrade the machine safely, checking every file along the way with each step, only continuing if everything is correct.

   The checking does mean that the script takes a while to run on less powerful systems; our testing in a Virtual Machine simulating really old hardware showed that the script took about 3 minutes to complete. Recent package updates include work to speed up the migration process significantly by essentially self-migrating, but it could still take a while.
   
   Because of the time the script could take to run, a message will be shown on screen so the user knows that something is happening. The script is robust enough to not destroy your system if a reboot occurs while it is running, but doing a hard reboot does mean that the script has to start over on the next boot.
   
   Lastly, a marker file is written that indicates that the system is now Usr-Merged.
3) eopkg will use the second marker file to know that it is safe to switch to a new package repository that is incompatible with non-Usr-Merged systems.

   The switch will be activated when the phased rollout is complete.

Once the migration has rolled out to everyone (more on this later), we can fork our package repository and do an Epoch bump, where we can safely release package updates, knowing that they'll only be going out to Usr-Merged systems. While an Epoch bump isn't strictly necessary for the merging process itself, it *is* necessary to safely remove our pre-Usr-Merge compatability symlinks from various packages. Removing the symlinks on a system that has not been merged will likely break the system, as we saw last time, because update order is non-deterministic.

Migration to a new package repository has actually been done before on Solus. Most recently, it was done when the repositories were put behind a CDN during the re-launch of our infrastructure.

### Staged rollout

We're aiming for a staged rollout, where everyone gets the necessary updates, but the script will only run on some systems, leaving everyone else operating as before. After our last attempt, we want to ensure that the process is as robust as possible, and if there is another problem that we have not forseen, it will only affect a limited number of users, and the rollout can be stopped with minimal disruption. Assuming that no issues pop up, each weekly sync after the rollout begins will see more machines going through the Usr-Merge process, until no one is being held back.

A staged rollout can be achieved by taking the systemd machine ID of a computer, deriving a number from it between 0 and 255, and checking if the derived number is below a certain threshold. If it is, then the merging script continue run; otherwise, the script will exit, and the system will not be Usr-Merged. The magic number can be set in a file that gets shipped with the script, enabling us to update it for each rollout stage with the weekly sync.

The entire process goes like this:

Stage 1: Allow opt-in to Usr-Merge via a configuration file.
Stage 2: Allow opt-in, and merge *x* amount of computers.
Stage 3..*n*: Each sync, more systems are allowed to go through the process.
Stage *n+1*: All users have been merged; do the Epoch bump. Users start getting updates from the new repository, and everyone is on a Usr-Merged system! 🎉

## When is it happening?

As always, Solus does not give an ETA for anything. That said, users running on the Unstable package repository can opt-in and help us test right now! If you wish to be one of those brave people, head on over to [this tracking issue](https://github.com/getsolus/packages/issues/3691) for instructions, and join us on [Matrix](https://matrix.to/#/#solus:matrix.org) if you haven't already. Keep an eye on our [forum](https://discuss.getsol.us) and [Mastodon](https://fosstodon.org/@Solus) for updates on when Usr-Merge begins rolling out to users.
