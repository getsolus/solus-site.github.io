---
title: "A Bigger Toolbox | The Roundup #9"
author: "joshua"
categories:
- news
- roundup
date: 2018-08-25T15:22:15+03:00
featuredimage: "/snap.jpg"
url: "/2018/08/25/a-bigger-toolbox"
---

Welcome to The Roundup #9, your bytes of Solus news. In this roundup, we are focusing on the continued modernizing of our software stack, improved resilience, and what is coming up this week!
<!--more-->

## Continued Modernizing of Our Stack

This week saw a multitude of upgrades to various software stacks, ranging from our toolchain to the databases available in Solus.

### Database and Toolchain Upgrades

As planned and highlighted in [last week's Roundup](/2018/08/18/you-all-get-a-stack-upgrade), our toolchain has been updated to GCC 8.2.0 and binutils 2.31.1. We also upgraded MariaDB and PostgreSQL to 10.3.6 and 10.5 respectively.

### Flatpak

Flatpak has been updated to it's big **1.0** release, with related components like bubblewrap, pipewire and xdg-desktop-portal having been updated too. Congrats to the Flatpak team on reaching this milestone, you can check out their blog post [here](https://flatpak.org/press/2018-08-20-flatpak-1.0/).

### Other Upgrades

In addition to the bigger items listed above, there's been countless updates to various packages in our repository during the last week, highlights include:

- albert
x- ansible
- brave
- dunst
- flightgear and simgear
- gnome-builder
- gimp
- git
- libssh
- lightdm
- mono
- obs-studio
- powerline
- qca and qscintilla (dropping Qt4 support)
- vala
- vnstat
- wine

A large portion of this week's package updates (and likely the weeks to come) have been the result of a concerted effort utilizing new tooling we've developed to display the current state of our repo and our packages.

This new tooling is aptly called [ypkg-update-checker](https://github.com/DataDrake/ypkg-update-checker) and marries the work done by Bryan on [Cuppa](https://github.com/DataDrake/cuppa) with our easy-to-parse `package.yml` format to provide a comprehensive report on the state of a user's local copy of the repo. This report provides a summary of:

1. What packages are outdated
2. What packages are up-to-date
3. What packages are newer than what upstream reports (in the case we are using a git commit or RC)

{{< relimg "ypkg-update-checker.png" >}}

Additionally, it provides an indication of unmatched packages (whether that's failing to find a tag, missing provider support, etc.) and those which have failed (may not be converted to package.yml yet).

This has given us clearer picture on:

1. What we need to focus on in terms of QoL improvements
2. Planning near-term stack upgrades
3. What groups of packages are in need of TLC

## Improved Resilience on Upgrades

During this week's sync, we put out a PSA on all of our social media accounts notifying our users of the need to perform a multi-staged upgrade to their systems as a result of an anticipated change to eopkg that was coming down the pipe. This upgrade could be performed by specifically upgrading the `pisi` (eopkg) package first, then performing a full-upgrade, or running `sudo eopkg up` twice (the first applying the eopkg update, the latter applying the rest).

This eopkg update was the result of the discovery of an issue that occurred during our upgrade of GIMP. In some rare instances, a file may be replaced with an identically named folder, which would trigger an IOError exception raised by the `tarfile` library used by eopkg and thus result in a failed upgrade. Upon discovery, Bryan worked on handling this error by ensuring it gets treated as a normal OSError for an already existing file, enabling us to more gracefully handle any sort of file / directory replacing.

As a result of this change, eopkg is more resilient to these edge cases, and it has provided us with valuable information that we can utilize when we begin development of our next-generation package management solution (referred to as `sol`).

## Upcoming

This coming week will be full of QoL improvements and updates. We have some items targeted for specific days of the week (including this weekend), others will be addressed throughout the week or after next week's sync. We have a summarized list below of what to expect, with the full list being available [here](https://dev.solus-project.com/T6823).

### Weekend

So far this weekend's focus has been updating our `linux-current` kernel to `4.18.5` and preparation for a potential Python 3.7 upgrade, in addition to our usual post-sync triage (addressing issues that may arise / have been discovered post sync) and minor upgrades.

For our upgrade to 4.18.5, we've also enabled [some kernel options](https://dev.solus-project.com/T6812) to improve Intel GVT-g virtualization support, such as:

- CONFIG_DRM_I915_GVT
- CONFIG_DRM_I915_GVT_KVMGT
- CONFIG_VFIO_MDEV
- CONFIG_VFIO_MDEV_DEVICE

We have updated our Snap support to the latest snapd 2.35. Go has been updated to 1.10.4 and we are tracking a few issues, related to `runtime` and `internal/cpu` pkgs in Go 1.11, that affect other software. All of this will be available during next week's sync (and hopefully Go 1.11 will as well).

During the rest of the weekend we'll be focusing on updating Mesalib to 18.1.7 as well as updating our Python packages, documenting their support for Python 3.7 to determine the viability of performing a stack upgrade of it.

### Planned QoL Improvements

Early next week will be focused on various QoL improvements and updates. As of the publishing of this post, we are planning:

- Updating of our Logitech software support via libratbag and piper
- Updating GameMode for an improved gaming xperience
- Updating IBus
- Misc. package updates

### NVIDIA Beta Driver and Potentially Xorg 1.20.x

Mid- to late next week the beginning of limited Core Team testing of the NVIDIA beta driver (396.xx). In the event the quality of the beta driver meets our expectations, we will be shipping it in the repos as `nvidia-beta-driver`. This will be done without modaliases, thus wouldn't be something DoFlicky will prompt you to install, and will be purely opt-in over our "traditional" NVIDIA drivers (`-glx-`, `-340-` and `-304-`). Unlike the long-lived drivers, the short-lived drivers experience many new bugs in exchange for new features, like DXVK support. Because of this, we do **not** recommend that the majority of users opt in to the beta driver.

Alongside NVIDIA beta driver testing, we'll be assessing an upgrade of Xorg to the 1.20.x series. In the event that we perform an upgrade to Xorg 1.20.x, **we will be deprecating** the NVIDIA 304 driver as a result of it being incompatible with newer Xorg releases. If your card was supported by the NVIDIA 304 driver, it should be supported by the nouveau driver.