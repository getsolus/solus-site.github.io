---
authors:
- image: https://avatars.githubusercontent.com/u/5157277?v=4
  link: https://github.com/EbonJaeger
  name: Evan Maddock
categories:
- news
date: 2025-10-11
title: "A New Epoch Begins"
url: "/2025/10/11/a-new-epoch-begins"
---

![Night sky timelapse](new-epoch-banner.jpg)

Heya, folks! We have some exciting news to share with you today. Last year, we began the process of moving the remaining executable files from `/bin` and `/sbin` to directories inside of `/usr`, and creating compatibility symlinks from `/usr/bin` to `/bin` and `/usr/sbin` to `/sbin`. We call this ["Usr-Merge"](https://getsol.us/2024/09/04/usr-merge/). The rollout of our Usr-Merge process was a success, and it is now time to perform the next steps. There are compatibility symlinks in some packages to make sure they work on both merged and unmerged systems, and we cannot remove those without potentially breaking systems. That is, we can't, unless we do an "epoch bump", and start using a new package repository. This is also an important step on the road to using AerynOS tooling.

# What's an epoch?

For Solus, an epoch refers to the binary version of the package repository. Bumping the epoch means that we are moving from one binary version to another. This means creating a new package repository from our existing one, Shannon, where we can update packages beyond what is available in the Shannon repository. That way, we know with absolute certainty that user systems are updated to the required point to install further updates without system breakages.

The current epoch began when Solus was [re-launched on new infrastructure](https://getsol.us/2023/04/18/a-new-voyage/), and our package repositories were put behind a Content Delivery Network, or CDN.

# A new epoch

In this epoch, we will begin using a new stable repository. We've chosen to name this new repository Polaris, after the North Star, keeping with our usual nautical theme. This star is often used for navigation, especially at sea, so the name can be symbolic of us being on the right path.

Once users begin using the new repository, they will be able to install updated `systemd` and `baselayout` packages which we could not safely push to the old repository. This unlocks several other upgrades that we can then do, such as improved virtual console handling. Importantly, it means we are no longer stuck on an old version of `systemd`.

## Python 2

Something else that we've wanted to do for years now is finally [remove Python 2](https://github.com/getsolus/packages/issues/270). Since the old Software Center is written in Python 2, we can't simply remove it with a normal package deprecation, because it may be the mechanism actually performing the update and removal. Removing it while it is running would be a Bad Idea. With that in mind, we decided that it would be best if we did this as a part of the epoch transition.

By the time Shannon is tomb-stoned, that is, no longer receiving package updates, Python 2 will have been fully removed from the Polaris repository. While it is still available at the time of writing, we will begin deprecations over the course of the transition period.

## How do we do it?

Now we know the benefits of, and the reasons behind, starting a new epoch, how do we actually do it? The process is actually fairly simple. First, we create a new repository on our package server and clone all of the packages in Shannon into it. This step has already been done. Next, we [create a script that runs during system boot](https://github.com/getsolus/packages/pull/5944) that checks if the system is ready to transition, and performs the migration if it is, additionally replacing Software Center with GNOME Software or KDE Discover, depending on your desktop environment. This is exactly the same concept as the Usr-Merge script we rolled out last year. The script will be rolled out to users' systems via a package update to the `usysconf-epoch` package on Shannon.

After the transition is complete on your system, install updates via a software center or `eopkg`, reboot, and continue using your system as normal.

## When is it happening?

The update script is already in the Unstable repository for opt-in testing. After it is synced to the Shannon (Stable) repository on **October 17**, users can opt-in to run the script on their systems for wider feedback and testing. One week after that, assuming that no major blockers have been found, on the sync of **October 24**, all users on Shannon will automatically undergo the epoch transition.

### Opting in

Opting in to undergo the transition is really easy. All you have to do is run this command in your favorite terminal:

```bash
echo EPOCH_ENABLE=yes | sudo tee /etc/sysconfig/epoch
```

Once you do that, the script will run during the next boot.

# Next steps

Once the epoch bump is complete, we will be updating GNOME to 49. This release uses API only present in a newer `systemd`, so we can't really update it before then. After that, we will be going into feature freeze so we can start creating and testing new ISOs for a Solus release so new users can begin using Solus straightaway without having to go through the epoch transition process. Once that is out the door, we can go back to business as usual, making this Linux distribution the best that it can be.

*A previous version of this post used the incorrect name of Aeryn to refer to the organization. It has been corrected to AerynOS.*
