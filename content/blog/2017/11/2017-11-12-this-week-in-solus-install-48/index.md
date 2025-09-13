---
authors:
- image: https://avatars.githubusercontent.com/u/156574?v=4
  link: https://github.com/JoshStrobl
  name: Joshua Strobl
categories:
- news
- plans
date: "2017-11-12T14:18:32+02:00"
featuredimage: /civ_vi.jpg
title: 'This Week In Solus - Install #48'
url: /2017/11/12/this-week-in-solus-install-48
---

Welcome to This Week in Solus, install #48.

## Oh Snap!

This has been an absolutely incredible week for our Snap support. In a matter of a few days, we've gone from having no snap gaming runtime to one that's been battle tested (*quite literally*) against over 70 titles, with over 60 that are known to be working.

<!--more-->
So what makes this gaming runtime so important? Well if you're a Solus user, you've had a pretty stellar experience with Steam and Linux gaming for quite some time, whether it's having our optimized libraries, a modern and native runtime, or the recent addition of `liblsi-intercept` in our Linux Steam Integration tool for enabling a wider variety of titles to work as expected. But if you've been using a different operating system, you haven't necessarily been able to benefit to the fullest extent from all our optimizations and improvements.

But thanks to the power of [Snaps](https://snapcraft.io), we're able to bring that same gaming experience to **everyone**. Snap enables us to provide a "base snap" (*recently introduced to snapd*), allowing the base layer of an application snap to depend on a snap that isn't necessarily Ubuntu. Effectively, our base snap is a miniature version of Solus, featuring our optimized Mesa, glibc, SDLs, and various graphical components such as the necessary GTK theming to make Steam look proper. This snap is referred to as `solus-runtime-gaming` and is leveraged by our application runtime snap, which features Linux Steam Integration and Steam itself.

To quote [our project page](https://github.com/solus-project/runtime-snaps):

> This is an ongoing effort to produce snaps to provide the Steam client, Linux Steam Integration project, and Solus packages to create a true "universal app" variant of Steam that will **work on every Linux distribution in the same way**, while mitigating many of the runtime issues.
>
> This isn't just a "native Steam" effort, LSI is a highly complex project that seeks to replace the runtime almost entirely, and fix many issues. Integrating LSI is also a large undertaking - thus Solus is now seeking to share our work on our own runtime and LSI implementation with the rest of the Linux world for a pain-free and consistent gaming experience.
> 
> A large element of this is also to help developers and studios targeting Linux as a platform to have a singular target that would work across all Linux distributions, and provide peace of mind that their games would work as intended. Additionally, as the keepers of LSI, we can rapidly deploy changes to LSI and the runtime to better support the games and alleviate regressions before they hit users.

**Our runtime features:**

- Support for open source and proprietary drivers (tested with NVIDIA).
- Support for Vulkan, which we have tested with The Talos Principle (as one can see in the video embedded below).
- AVX2 support in our glibc, meaning if your CPU supports it, we'll be able to squeeze even more juice out of games with AVX2-enabled libraries.

{{< youtube "K87iDHzwtoc" >}}

### Some games we've tested

We're always looking to improve the state of gaming under Linux and part of that means actually testing those games! So we hit the ground running and have tested over 70 titles, with roughly 60 that are known to be working and several that are a work-in-progress.

#### Known Working

![relimg](supported-games-examples.jpg)
*The above mentioned games are examples of games we've tested and do not indicate official support from their respective publishers or developers.*

This isn't the full, comprehensive list of games that are known to work, but we'll be working to provide a way of submitting your tested games.

- 12 Labours of Hercules (I - V)
- Awesomenauts
- Baldur's Gate: Enhanced Edition
- Besiege
- Binding of Isaac: Rebirth
- Borderlands 2
- Cities: Skylines
- Civilization V and VI
- Counter-Strike (including Condition Zero and Source)
- Crusader Kings II
- Don't Starve
- Factorio
- FEZ
- FTL
- Game Dev Tycoon
- Half Life and Half Life 2: Episode 2
- Hearts of Iron IV
- Left 4 Dead 2
- Little Inferno
- Luftrausers
- Payday 2
- Portal and Portal 2
- Rocket League
- Super Meat Boy
- Team Fortress 2
- The Bridge

#### Work-In-Progress

This isn't a full, comprehensive list of games, and may not be up-to-date by the time you're reading this.

- 7 Days to Die
- Anomaly Warzone Earth
- Civilization: Beyond Earth
  - This is a result of the Rising Tide DLC and not the runtime itself.
- Cook, Serve, Delicious
  - Not functional regardless of whether runtime is utilized or not.
- Deus Ex: Mankind Divided
  - This has been determined to function when installed to a user's snap directory and we're currently investigating issues that may be the result of use of an external content library. This also affects Total War: WARHAMMER.
- Sol 0: Mars Colonization

### Getting Involved

At this stage, we're considering our runtime a "pre-alpha". Rome wasn't built in a day and we're looking to the broader community to help test across a wider range of operating systems, like Fedora and Ubuntu. It requires getting your hands a bit dirty, but we've provided some instructions on our [project page](https://github.com/solus-project/runtime-snaps) on getting started! It will require you to have a `snapd` with a few patches that haven't landed yet but we are hosting and actively updating our runtime and linux-steam-integration snaps, so you likely won't need to build the runtime and LSI snaps, but rather just follow the instructions below!

Please ensure that before testing, you are using a patched snapd and have rebooted after its installation. For Solus users, it'll be a matter of `eopkg up` as usual, then proceeding to reboot. For non-Solus users, consult the respective documentation for your operating system on building, installing, and enabling snapd prior to rebooting.

#### On Your Mark

Download our snaps with the following commands:

``` bash
wget https://packages.solus-project.com/lsi/solus-runtime-gaming_0.0.0_amd64.snap
wget https://packages.solus-project.com/lsi/linux-steam-integration_0.6_amd64.snap
```

#### Get Set

First, if you already have our Snaps installed (like using this as a reference to update your snaps), run the command below:

``` bash
sudo snap remove solus-runtime-gaming linux-steam-integration
```

Then install our snaps:

``` bash
sudo snap install --dangerous solus-runtime-gaming*.snap
sudo snap install --dangerous --devmode linux-steam-integration*.snap
```

#### Go!

You can run using one of these commands.

To run without any debugging, run `snap run linux-steam-integration`

To run with Linux Steam Integration debugging turned on, run:

``` bash
snap run --shell linux-steam-integration
$ export LSI_DEBUG=1
$ $SNAP/linux-steam-integration
```

### Known Issues

Like any early testing, there are some known issues and notes we want to provide.

- No udev roles exposed to host. Talking with upstream to improve this in a new snapd interface.
- No testing yet done outside Solus! Need to test biarch + multiarch distros with NVIDIA & open source drivers.
- "Home" for Steam is within the snap root. Removing snap will uninstall those local games
- Requires `--devmode` install as confinement isn't finished yet

## Solus 4

With our plan to release Solus 4 this month, we've created a meta tasklist on what we want to get done before shipping. The full list is available [here](https://dev.solus-project.com/T5010), but here is a summary of some of the items we want to do.

### Budgie

We'll be shipping a point release of Budgie 10.4. This will, in comparison to Budgie 10.4 itself, be a fairly minor release, but it won't be without goodies.

This Budgie release will feature icon tasklist improvements courtesy of Stefan Ric (aka cybre), specifically window grouping and smarter window control / switching (switching windows using the scroll wheel). These options will be configurable so grouping can be disabled.

### MATE

Solus MATE Edition will see a visual refresh, including to mate-notification-theme-slate and a new Brisk Menu release.

### QoL and Stack Upgrades

We'll be performing various stack upgrades such as:

- NetworkManager
- Perl 5.26.1
- Pulseaudio 11
- Python 2 and 3

Additionally, we'll be working on improving the state:

- Hotspot enabling by shipping `hostapd`
- Network shares with Samba enablement and testing
- Wayland with enablement and [improving the NVIDIA GL/EGL situation](https://dev.solus-project.com/T4901)

### Software Center and Third Party

The same Snap technology enabling our gaming runtime will also enable a smoother third-party experience. We'll be continuing our work on integrating Snaps into the Solus Software Center, replacing our current third party system with them. Meanwhile, we'll be fixing various issues and addressing some feature requests for the Software Center, such as adding an Update button in the package details page of apps that are already installed.

## Keep on rolling, rolling, rolling

Over time, elements of the underlying system are prone to change due to the nature of being a rolling release. Traditionally those changes have required manual user-intervention to resolve update issues. Recently an example of this opted to rear its ugly head in Solus.

After upgrades to some packages, including `sane-backends`, users were left unable to use their scanners without first using sudo or similar to gain administrative privileges. This was due to the udev rules update requiring users to be in the `scanner` group. Similarly, other packages when updated required users to be in the `plugdev` group.

The problem is, those groups didn't exist in Solus 3, and there was no way for users to be in those groups. Rather than resorting to an informational blog post with manual intervention instructions, we built a new solution to address this kind of upgrade issue head-on.

### qol-assist

[qol-assist](https://github.com/solus-project/qol-assist) is a new part of Solus that is designed to help rolling releases to  keep rolling. Currently this is responsible for dealing with complex migrations in a controlled fashion - dealing with elements that are typically very hard to do from package install scripts. Right now qol-assist will be triggered to run when first installed, and any time the qol-assist package is updated to provide migrations.

Right now qol-assist is responsible for applying versioned migrations to the system, and was recently used to automatically migrate all human system users with administrative privileges (i.e. in the `sudo` group) to the new `plugdev` and `scanner` groups automatically. This meant that upon rebooting from these updates, users had been automatically migrated without any intervention and things went back to "just works".

### Next steps

As part of solidifying the core experience, we're going to expand upon our tooling to provide not only solid upgrade systems, but tooling that can be used for recovery purposes. Currently we have a disconnected set of "post-install" scripts in various packages in the repositories, just like any other distribution. However, this significantly complicates the upgrade process as we cannot guarantee execution order, nor are these action scripts available for recovery or diagnosis purposes.

Our next steps are to consolidate all of the OS triggers into a new project, which will provide a static binary designed to be entirely immune to potential upgrade issues. Much like `qol-assist` it will employ intelligent state tracking to determine exactly which system operations need to be applied, and ensure a sane order of execution. This will be used for everything from simple `ldconfig` style updates up to the management of system users.

Additionally, the new trigger system will provide a CLI system to assist in `chroot`-style recoveries, so that all system triggers can be applied (and introspected) to bring a system back up to health, without requiring complex bootstrap steps to interact with the package manager. Once this system is integrated we will begin preparing for the replacement of eopkg by completely removing its own configuration system, `COMAR`, from normal packaging operations.

### Post-COMAR

An item that isn't on the Solus 4 agenda, but will be worked on in the coming months, is replacing the `COMAR` part of the package manager entirely. Once the trigger system is implemented, the only part of COMAR still being used will be by the Software Center to handle the installation and removal of packages. However, we've experienced some issues with this due to an architectural limitation: This service lives on D-BUS. This is common to almost all user-space management daemons for package management, and during their initial design would never have been an issue. However, nowadays we see systemd and dbus both deeply entwined, thus, if one goes down, so does the other. This makes it impossible to safely implement sane restarts of systemd (`daemon-reexec`) from within the user session as it would cause D-BUS to restart, nuke the daemon, and in turn take out the Software Center.

To alleviate that architectural weakness and reliance on D-BUS, a new system daemon for software management will be implemented, again designed to be fail-safe and resilient to upgrades, service restarts, etc. This will also allow for managed transactional package management operations in the background, insulated from the effects of the upgrade itself (this also links back into the system triggers).

It should be noted that these changes will reduce much of the surface area of the eopkg codebase back to something far simpler,
notably, something that would be trivial to then replace with an improved implementation (*we know you guys want support for automatically removing orphan packages*). The qol-assist binary, new system triggers, package mux daemon will all come together to provide the required architecture to implement the package management system, and will happen in a serial fashion with a currently unbounded timeline.

## Last TWIS

When I first started This Week in Solus (which dates clear back to September of 2015), the project was in its early days. We didn't have any of the fancy infrastructure that we have today, we had a completely different bug tracker and literally emailed in patches. Our Core Team was just Ikey, Justin, and myself. Basically what I'm saying is things were much simpler then.

But while the project has grown massively, TWIS has largely remained the same. It has become the primary place we break news (like the snap news today), with obvious dedicated blogs for new releases of Solus or Budgie, infrastructure posts, and technical pieces from Ikey. However as a result of our accelerated cadence and the size of the project, there have been many instances where we'd be actively working on something, like a massive stack upgrade, then bounce back to writing TWIS and updating its content based on what we were doing that second. Or when we'd have something interesting to talk about in the middle of the week, but defer it for TWIS and leave us in an awkward position of wanting to communicate with everyone in the community about something for days (we're terrible at secrets).

So, this is the last This Week in Solus. Our blog will have more dedicated pieces. These posts will be under the name "The Roundup" so when we do a bunch of misc. stuff, we can more easily categorize and consolidate it.

Alongside our faster cadence, I've wanted a place to highlight people in our community, to share how people empower others by using Solus or how Solus empowers those people, and about people in our community that are using Solus, whether in their personal lives or deploying it in their businesses or schools. Those that take time, sometimes hours every week, to actively improve Solus through translations, bug fixes, updates to various software we build or even ship, etc. The people that make Solus what it is. It isn't about "what's the core team and global maintainers done this week" but rather what have **we all accomplished, together**. There will be a dedicated series for community highlights with no set timeline, and Sundays with Solus will be the thing to listen to if you still crave a weekly talk on Solus news.