---
title: "This Week In Solus - Install #48"
author: "joshua"
categories:
- news
- plans
date: 2017-11-12T14:18:32+02:00
featuredimage: "2017/11/civ_vi.jpg"
url: "/2017/11/12/this-week-in-solus-install-48" # Example, /2017/01/18/adopting-flatpak-to-reassemble-third-party-applications
---

Welcome to This Week in Solus, install #48.

## Oh Snap!

This has been an absolutely incredible week for our Snap support. In a matter of a few days, we've gone from having no snap gaming runtime to one that's been battle tested (*quite literally*) against over 70 titles, with over 60 that are known to be working.

<!--more-->
So what makes this gaming runtime so important? Well if you're a Solus user, you've had a pretty stellar experience with Steam and Linux gaming for quite some time, whether it's having our optimized libraries, a modern and native runtime, or the recent addition of `liblsi-intercept` in our Linux Steam Integration tool for enabling a wider variety of titles to work as expected. But if you've been using a different operating system, you haven't necessarily been able to benefit to the fullest extent from all our optimizations and improvements.

But thanks to the power of [Snaps](https://snapcraft.io), we're able to bring that same gaming experience to **everyone**. Snap enables us to provide a base image that is effectively a miniature version of Solus, featuring our optimized Mesa, glibc, SDLs, and various graphical components such as the necessary GTK theming to make Steam look proper. This snap is referred to as `solus-runtime-gaming` and is leveraged by our application runtime snap, which features Linux Steam Integration and Steam itself.

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

{{< altimg "2017/11/supported-games-examples.jpg" >}}
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

## Last TWIS

When I first started This Week in Solus (which dates clear back to September of 2015), the project was in its early days. We didn't have any of the fancy infrastructure that we have today, we had a completely different bug tracker and literally emailed in patches. Our Core Team was just Ikey, Justin, and myself. Basically what I'm saying is things were much simpler then.

But while the project has grown massively, TWIS has largely remained the same. It has become the primary place we break news (like the snap news today), with obvious dedicated blogs for new releases of Solus or Budgie, infrastructure posts, and technical pieces from Ikey. However as a result of our accelerated cadence and the size of the project, there has been many instances where we'd be actively working on something, like a massive stack upgrade, then bounce back to writing TWIS and updating its content based on what we were doing that second. Or when we'd have something interesting to talk about in the middle of the week, but defer it for TWIS and leave us in an awkward position of wanting to communicate with everyone in the community about something for days (we're terrible at secrets).

So, this is the last This Week in Solus. Our blog will have more dedicated pieces. These posts will be under the name "" so when we do a bunch of misc. stuff, we can more easily categorize and consolidate it.

Alongside our faster cadence, I've wanted a place to highlight people in our community, to share how people empower others by using Solus or how Solus empowers those people, and about people in our community that are using Solus, whether in their personal lives or deploying it in their businesses or schools. Those that take time, sometimes hours every week, to actively improve Solus through translations, bug fixes, updates to various software we build or even ship, etc. The people that make Solus what it is. It isn't about "what's the core team and global maintainers done this week" but rather what have **we all accomplished, together**. There will be a dedicated series for community highlights with no set timeline, and Sundays with Solus will be the thing to listen to if you still crave a weekly talk on Solus news.