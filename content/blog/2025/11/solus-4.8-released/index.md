---
authors:
- image: https://avatars.githubusercontent.com/u/5157277?v=4
  link: https://github.com/EbonJaeger
  name: Evan Maddock
tags:
- news
- releases
date: '2025-11-29'
title: 'Solus 4.8 Released'
url: /2025/11/29/solus-4-8-released
---

![Collage](collage.jpg)

We're nearing the holiday season, and what better way to kick it off than by releasing new Solus ISOs? This release is called *Opportunity*, for all the new opportunities that are open to us. A lot has happened since we released Solus 4.7 at the beginning of this year, so let's go over the changes.

## General

### Epoch jump

In October, we made the jump to [a new epoch](/2025/10/11/a-new-epoch-begins/), the final chapter of our ["Usr-Merge"](/2024/09/04/usr-merge/) saga. With the new epoch, we started using a new package repository, named Polaris, after the North Star. This unlocked our ability to remove "Usr-Merge" compatibility symbolic links from packages, update our `systemd` package, and more.

#### New software centers

You'll notice that the Solus Software Center is a thing of the past. While it was a popular program among users, it had problems, the first of which being it was written in Python 2. While it could have been ported to Python 3, this would have taken considerable effort, not just in porting, but also in testing. Even with that, it sometimes had reliability issues, and it had no support for Flatpaks.

By switching to GNOME Software and KDE Discover, we are using ready-made and supported solutions to graphical package management. Users get programs that better integrate with their desktop, and we get a lot of time freed up to pursue other ways to make Solus better. While this solution isn't perfect, either, we feel that it is better for us in the long run as we improve our packages over time to work better with these other software centers.

#### Removal of Python 2

The epoch also meant that we could finally remove Python 2 from Solus once and for all. This is something that we've wanted to do for years. Over the last two years, we've migrated all of our tooling to Python 3, leaving the old Solus Software Center being the only software that still required Python 2. Now that the Software Center has been sunset in favor of GNOME Software and KDE Discover, the old version of Python was removed from the Solus repositories.

### New website

If you're reading this, then you will have no doubt noticed some changes with our website. Last week, we [unveiled our re-designed website](/2025/11/22/unveiling-our-new-website/) ahead of the Solus 4.8 release! We spent the better part of the year on this project, and we thought it would be extra cool to deploy the new site along with the Solus 4.8 release. We are very happy with how it turned out, and it is much easier to iterate on and improve.

### Plymouth

For this release, we've decided to install the Plymouth splash screen by default. It wasn't a part of the default installation before because it was deemed to be too big of a performance hit, but our latest evaluation indicates that performance is no longer a problem. On a fast system, you likely wont even see it appear before your system fully boots. The big reason for adding it by default is that it provides a nice interface for installing offline updates, which GNOME Software and KDE Discover both support, even if we haven't enabled them by default. Offline updates are where package updates are downloaded, but not installed until the next system boot, meaning you no longer have to worry about instability because of executables and libraries being moved out from underneath the running system.

### girepository 2.0

All packages in the Solus repository that rely on `libgirepository` now use the newer 2.0 API version, with the exception of `perl-glib-object-introspection`. We made this change because the latest version of `pygobject` uses the newer GObject Introspection API, and you cannot use multiple versions of the API in the same process. This meant patching `libpeas`, the plugin engine for GObject-based applications, to also use the new API, eliminating the chance for a version mismatch.

## General

### Default applications

All our editions feature:

- Firefox 145.0.1
- LibreOffice 25.2.6
- Thunderbird 140.5.0

### Kernels and Mesa

Solus now ships with Linux kernel 6.17.8. If you need the LTS kernel, we offer 6.12.58. To pair with the kernel, this release ships with Mesa 25.2.6.

### systemd

Since we are no longer blocked on updating `systemd`, we have updated our package to 257.10, from version 254. This is a significant version jump from where we were before. At the same time, we've modernized our package, and aligned it with the AerynOS package. We now build fewer of the modules for the 32-bit version, making that package quite a bit slimmer. Notably, the `homed` and `userdb` modules have been enabled.

## Budgie

![Solus 4.8 Budgie](Budgie.jpg "Solus 4.8 Budgie")

Solus 4.8 Budgie Edition ships with [Budgie 10.9.4](https://github.com/BuddiesOfBudgie/budgie-desktop/releases/tag/v10.9.4). This version, along with [10.9.3](https://github.com/BuddiesOfBudgie/budgie-desktop/releases/tag/v10.9.3), are aimed at making Budgie compatible with GNOME 49. Budgie Desktop and all applets have also been built to use `libpeas-2` and `girepository-2.0`, retaining support for Python applets.

### New defaults

- Pocillo Dark GTK theme.

## GNOME

![Solus 4.8 GNOME](GNOME.jpg "Solus 4.8 GNOME")

Solus 4.8 GNOME Edition ships with GNOME 49.1, an update to the GNOME 49 Brescia series. GNOME on Solus no longer ships with an X11 session by default. Users that still wish to use X11 must install the `gnome-session-shell-x11` package.

{{< callout type="important" >}}
  With GNOME 50, scheduled for release sometime next year, GNOME will no longer support X11 at all, and will be *Wayland only*! Users should try the Wayland session, and file issues so that it can be improved.
{{< /callout >}}

### Features added in GNOME 49

- Accent color support.
- Calendar’s interface has undergone significant accessibility enhancements for people with disabilities.
- Significant performance improvements to GNOME Software.
- Enhanced Remote Desktop capability and support.
- Media controls on the lock screen.
- HDR brightness controls.

The upstream release notes can be found [here](https://release.gnome.org/49/).

### New defaults

- MoreWaita Icon theme.
- Decibel as audio player.
- Papers as PDF reader.
- Ptyxis as terminal.

## Plasma

![Solus 4.8 Plasma](Plasma.jpg "Solus 4.8 Plasma")

Solus 4.8 Plasma Edition ships with KDE Frameworks 6.19.0, KDE Plasma 6.5.3, and KDE Gear 25.08.3. In conjunction with the GNOME Edition, we no longer ship an X11 session on Plasma by default. Users that still wish to use the X11 session must install the `plasma-x11` package.

{{< callout type="important" >}}
  With KDE Plasma 6.8, scheduled for release in October 2026, Plasma will no longer support X11 at all, and will be *Wayland only*! Users should try the Wayland session, and file issues so that it can be improved.
{{< /callout >}}

### Features added in KDE Plasma 6.5

- Automatic theme transitions.
- Fuzzy search in KRunner.
- Rounded bottom corners for windows.
- Performance improvements for Discover.

Here are the upstream release notes:

- [KDE Frameworks 6.19.0](https://kde.org/announcements/frameworks/6/6.19.0/)
- [Plasma 6.5.3](https://kde.org/announcements/plasma/6/6.5.3/)
- [Gear 25.08.3](https://kde.org/announcements/gear/25.08.3/)

## Xfce

![Solus 4.8 Xfce](Xfce.jpg "Solus 4.8 Xfce")

Solus 4.8 Xfce Edition is now out of beta! We feel that it is finally time to promote the Xfce edition as a full edition alongside Budgie, Plasma, and GNOME. It is stable and lightweight, making it a good choice for users that care about performance and stability. For 4.8, we are shipping with [Xfce 4.20](https://www.xfce.org/about/tour420).

## Download

Head on over to our [Download](/download) page to download the edition you wish to use. Happy installing!

## Thank you

We want to give a shout-out to all of our supporters on [OpenCollective](https://opencollective.com/getsolus). We are grateful to all of our backers who fund our work, and help us bring this Linux distribution to everyone. Solus could not operate without your help. Your donations pay for our server infrastructure, services like email, and our contributors for long-term and complex package and development work. You can [become a backer](https://opencollective.com/getsolus#category-CONTRIBUTE) today for as little as $1 a month. Thank you.

*A previous version of this post listed an incorrect version of LibreOffice. It has been corrected to 25.2.6.*

*A previous version of this post stated that Plasma 6.8 would release in early 2027. It has been corrected to say October 2026.*
