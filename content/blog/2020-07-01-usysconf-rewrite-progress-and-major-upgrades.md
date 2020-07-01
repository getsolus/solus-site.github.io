---
title: "Usysconf Rewrite and Major Upgrades | The Roundup #16"
author: "joshua"
categories:
- packages
- news
- roundup
date: 2020-07-01T12:14:19+03:00
featuredimage: "/2020/07/usysconf-list.jpg"
url: "/2020/07/01/usysconf-rewrite-and-major-upgrades-roundup-16"
---

Welcome to The Roundup #16, your bytes of Solus news. In this roundup, we talk about our progress on the rewrite of our universal system configuration tool, usysconf, as well as multiple major upgrades which are landing or right around the corner.

<!--more-->

## Usysconf Rewrite

`usysconf` is our universal system configuration tool that enables us to run pre-defined triggers / actions when an aspect of your system changes. That could be anything from updating an icon cache when you install a new icon theme to ensuring your boot configuration is updated when we ship new kernels.

`usysconf` has been developed and used on Solus since late 2017 and while we have made improvements to it over the years, such as ensuring VirtualBox drivers are properly restarted and enabling AppArmor AoT compilation (including switching to our new aa-lsm-hook), there has been a persistent barrier-of-entry to the introduction of new triggers to enable more flexibility and keeping upgrades on Solus bulletproof: they are hard-coded in C. This makes it more difficult to rapidly iterate on new triggers as well as involve package maintainers on Solus in creating triggers for their packages by introducing the requirement that they have the technical expertise in writing C. These new triggers would then require a new usysconf release which would add another layer of work that could otherwise be avoided and prevents the associated package from being updated until the work on the trigger is completed.

To address this highlighted issue, we set out to involve the community and rewrite usysconf to address both their needs and ours. We were fortunate enough to have a talented software developer, [Chris Palmer](https://github.com/chrisppy) a.k.a. chrisppy, step up to port Usysconf to [Go](https://golang.org) in 2019.

This rewrite introduces a new file-based configuration system that enables us to write triggers in [a declarative TOML format](https://github.com/toml-lang/toml). We opted for TOML as it balances human readability (something YAML also provides), while providing array and map data structures that can be utilized with ease, a real-world example you can see [here](https://github.com/getsolus/usysconf/blob/master/examples/icon-caches.toml). Moving to a file-based configuration system allows us to move those triggers into vendor-provided directories (e.g. `/usr/share/defaults/usysconf.d`) and into their applicable packages. Compared to the old implementation, this avoids trigger checking for packages you might not even have installed, lending to potentially faster usysconf execution.

These triggers allow us to:

- Execute multiple binaries in a specific trigger, each with their own task description and arguments.
- Set environment variables to run for a trigger.
- Skip if we are in a live environment (ISO), in a chroot environment (solbuild), or if specific paths exist (enabling bulletproof updates by enabling migration and other actions for a package update, as an example).
- Remove paths and files from the system while excluding others.

All of this can be done without writing a single line of code or shipping a new usysconf release. New configuration files are loaded whenever usysconf is run or when you list triggers, and package maintainers will be able to test out triggers on their local system if necessary by placing them in the stateless directories: `/etc/usysconf.d/` or `.config/usysconf.d/`.

Building on this, the Go-based implementation of usysconf uses Bryan's [cli-ng](https://github.com/DataDrake/cli-ng/) library for commands, flags, and documentation generation. One benefit of this is the ability for us to introduce a translatable usysconf in the future and make it accessible via Weblate, using [Weblates's Nested JSON syntax](https://docs.weblate.org/en/latest/formats.html#json-files) allow for us to describe triggers and even make command-line arguments translatable. So as an example if you happened to speak Swiss German like Friedrich (Girtablulu) on the Team, you would be able to use both `--hilfe` and `--help`, making the CLI more accessible while still enabling us to provide generic command documentation on the Help Center.

Bryan has been building on Chris' work (merged into our usysconf) in the last few Twitch streams by making live device and chroot checking more reliable, as well as starting to get into the weeds of a dependency system, which will allow us to build a dependency graph and enable triggers to depend on others (this can be useful for packages like systemd). There is still a bit of work to do, including writing some external tools to facilitate conditional dconf / gsettings key+value updating, but we are making [strong headway](https://github.com/getsolus/usysconf/blob/master/TODO.md) and we are excited to be so close to a proper 1.0 major release! So keep an eye out on our social media for any new streams on it!

## Libboost 1.72

Pierre (kyrios) upgraded our libboost to 1.72.0. While not the most recent stable release, we are waiting to upgrade to 1.73 after we do our major toolchain upgrades (GCC 10, LLVM 10). There are tons of fixes, improvements, and rebuilds against this release, so be sure to check out the [release notes](https://www.boost.org/users/history/version_1_72_0.html) for 1.72.0 if you use this library!

## OpenSSL

While Bryan was working on usysconf during the streams, I was also working on upgrading our OpenSSL to the latest in the 1.1 series. Up until now, we have been utilizing OpenSSL 1.0 and backporting any available fixes when possible. The reason we have been conservative with OpenSSL upgrades comes down to everything which relies on it and ensuring that when upgrading, we'd have a safe transition / upgrade path. In order to offer the latest updates of OpenSSL, we have had to work to ensure that the 1.0 legacy OpenSSL and 1.1 series not only are co-installable and co-exist, but software which is running **during the time of upgrade** continues to function as expected.

What do I mean by this? Well one of the pieces of software that relies on OpenSSL and is compiled against it is Python 2. `eopkg`, which is our current package manager, is written in Python 2 and has to continue to function while system upgrades occur. To facilitate this, the specific shared object files that Python 2 relies on (`libcrypto.so.1.0.0` and `libssl.1.0.0`) cannot be removed during upgrade, otherwise Python breaks and thus the package manager itself breaks. This not only applies to the user's system, but our build environments as well, since we wouldn't be able to perform any rebuilds if eopkg is broken, since any package dependencies wouldn't be able to be fetched and installed.

To ensure we can have our cake and eat it too, I implemented a new `openssl-11` package for OpenSSL 1.1 series, and introduced patches to the older OpenSSL to properly version 1.0 symbols as well as move the majority of OpenSSL 1.0 libraries into its own `openssl-1.0` directory. This eliminates conflicting shared objects where they may have existed, keeps the necessary OpenSSL 1.0 libs around for Python to continue to function, and thus enables us to rebuild the universe against OpenSSL 1.1 series.

Roughly 200 packages were rebuilt against OpenSSL 1.1, with only some outliers like Qt4 (planned to be deprecated down the road anyways) and some incorrect linking in packages like Atom given both OpenSSL packages are available in the build environment. We did take this opportunity to deprecate numerous old and unmaintained packages (typically by upstreams), which will ease some upgrades in the future, such as: coin, sofia-sip, trousers, megatools, pgadmin3, utopia-documents, and google-play-music-desktop-player.

To perform this upgrade during our sync this Friday (July 3rd), just make sure you select everything in the Software Center or run `sudo eopkg up` like normal. No other actions should be required on your part. You will see warnings from eopkg about several files being migrated between the different OpenSSL series (namely man pages and cert files), that's nothing to worry about and you can keep on your merry way!

## OpenJDK 11

Our community members have been absolutely determined to introduce OpenJDK 11 support and reduce any package's reliance on OpenJDK 8. Thanks to the initial groundwork of livingsilver94, determination of serebit, and contributions from chax and YakoYako, OpenJDK 11 is now available to install! The introduction of OpenJDK 11 has meant we have been able to give some packages some long overdue attention and updates, such as:

- gradle (4.9 to 6.5)
- bisq (0.6.7 to 1.3.5)
- cryptomator (1.3.5 to 1.5.0)
- freeplane (1.7.10 to 1.8.5)

For those of you who make use of Java applications (*we see you, Gradle users*), you'll be seeing more updates and more support for your workflow in the future. Massive thanks to our community members for making this upgrade possible!

## Poppler

Thanks to the hard work of Global Maintainer Friedrich (Girtablulu), we now have the latest version of Poppler (the PDF rendering library used in a wide range of software from LibreOffice to GIMP). This upgrade introduces numerous improvements, such as:

- JBIG2Stream crash fixes
- ICC profile usage in PS output
- Improved ICC colorspace support in images
- Numerous memory leak fixes
- Speed optimizations for various glib functions
- Qt5-related encoding and loader fixes

## Ruby

Ruby has been upgraded to the latest in the 2.7 series, 2.7.1. The 2.7 series introduces a range of features such as:

- Calling a private method with a literal self as the receiver is now allowed.
- Compaction GC to reduce memory usage that would be seen on some multi-threaded Ruby programs
- Experimental pattern matching
- Separation of positional and keyword arguments

To see the feature notes for 2.7 series, check out the [2.7.0](https://www.ruby-lang.org/en/news/2019/12/25/ruby-2-7-0-released/) news post!

## Package Highlights

In addition to all the stack upgrades and work done above, we have seen countless package updates and fixes. Here's a highlight of some of them:

- apparmor 2.13.4
- arduino 1.8.13
- bluez 5.54
- brave 1.10.97
- bspwn 0.9.9
- composer 1.10.7
- dbus 1.12.18
- docker 19.03.11
- egl-wayland 1.15
- falkon: Enable KDE integration
- fbreader: port to qt5
- flatpak 1.6.4
- flatpak-builder 1.0.10
- ffmpeg 4.3 and enable rav1e for AV1 encoding and Vulkan filters
- gnome-pomodoro 0.17.0
- gpodder 3.10.16
- haste-client: build with python 3
- ideviceinstaller 1.1.1
- i3 4.18.1
- just 0.6.1
- kitty 0.18.0
- krita 4.3.0
- leveldb 1.22
- mame 0.222
- matcha-gtk-theme 20200618
- materia-gtk-theme 20200320
- micro 2.0.6
- mutt 1.14.5
- network-manager-applet 1.18.0
- nvidia-390-glx-driver 390.138
- nvidia-beta-driver 450.51
- nvidia-developer-driver 440.66.17
- nvidia-glx-driver 440.100
- onedrive 2.4.3
- opera-stable 69.0.3686.36
- picon: update to v8 and renamed from compton
- ppsspp 1.10.0
- podman 2.0.1
- putty 0.74
- python-bottleneck 1.3.2, remove python2 support
- qemu 5.0
- rclone 1.52.2
- simplenote 1.18.0
- steam: Fix udev rule modes
- swaylock 1.5
- sxhkd 0.6.1
- systemd 245.6
- unrar 5.9.4
- vscode 1.46.1
- warzone 3.4.0
- yaru-theme 20.10.1

---

## Upcoming

### Haskell Stack Upgrade

Bryan has been the Haskell maintainer on Solus since it's introduction in 2016. However, due to priorities in other areas of Solus development and the sheer size of the Haskell software stack (> 300 packages), it has been stuck on GHC 8.2.2. Over the last few weeks, Bryan has been working to incrementally upgrade to GHC 8.6.5 and update every package possible along the way. Work will hopefully be completed this week, with next Friday's sync (July 10th) as a target for release. While this is only the first of several GHC upgrades, the majority of the Solus Haskell packages will be receiving an upgrade. In particular, this will mean updates for cabal-install, pandoc, stack, shellcheck, vgrep, and xmonad. Due to recent updates in Haskell's GTK3 support, we are also optimistic that `Bustle`, the D-Bus visualizer / debugger will be reintroduced to the repo.

### Qt5 and KDE Stack Upgrade

Friedrich has been working on upgrading our [Qt5 stack to 5.14.2](https://www.qt.io/blog/qt-5.14.2-released). This is enabled by the inclusion of OpenSSL 1.1 and allows for additional upgrades of KDE Frameworks to 5.71.0 and Plasma to 5.19.2!

- We have opted to upgrade to 5.14.2 v.s. 5.15.0 to reduce patch backporting and bugs typically found in major new releases. [Qt5 5.14](https://wiki.qt.io/New_Features_in_Qt_5.14) provides a new threading architecture in Qt 3D, support for calendars other than Gregorian in QCalendar, improved HiDPI support, network connectivity monitoring, and more.
- [Plasma 5.19.2](https://kde.org/announcements/plasma-5.19.2) introduces various bug fixes to KRunner, KWin, Info Center, libksysguard, plasma-nm, and fixes to plasma workspace.

Barring any unexpected hiccups, this work is expected to land this Sunday and Monday (July 5th-6th) given the size of these upgrades.

---

## Thank You

Thanks to everyone in our community that has filed update requests, bug reports, provided patches, and tested against the unstable repository. It's all of you that help make Solus what it is.

If you're interested in getting involved in Solus, check out our [Getting Involved](/articles/contributing/getting-involved/en/) page!