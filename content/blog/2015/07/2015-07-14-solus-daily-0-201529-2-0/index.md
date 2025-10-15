---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- News
- Releases
date: "2015-07-14T22:37:54Z"
title: 'Solus Daily: 0.201529.2.0'
url: /2015/07/14/solus-daily-0-201529-2-0/
---

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

In this release we opted to remove Flash Player by default, as it is nothing short of a security nightmare. The package name is listed below for those who wish to manually install it, and a graphical method for installing this easily will be provided at RC1.

This ISO sees huge performance and boot time improvements (well over 50% reduction) as well as multiple fixes throughout the networking stack. (i.e. [bug 21](https://bugs.solus-project.com/show_bug.cgi?id=21))

We request users now use the Solus [Bugzilla](https://bugs.solus-project.com/enter_bug.cgi) when reporting issues, defects or requests.

#### Packages added to this release:

- dhclient
- faba-icon-theme
- faba-icon-theme-mono
- iproute2
- iptables
- libproxy
- lz4
- moka-icon-theme
- networkmanager-openconnect
- openconnect
- vpnc

#### Packages removed from this release:

- dhcpcd
- flash-player-nonfree

#### Changes in this release:

**systemd**

- [Ikey Doherty: Bump for build](https://git.solus-project.com/packages/systemd/commit/?id=09a5ea7)
- [Ikey Doherty: Fix segfault in bootchart when sample number is lower than expected](https://git.solus-project.com/packages/systemd/commit/?id=8a707b2)

**lightdm-gtk-greeter**

- [Ikey Doherty: Back to SolusFresh wallpaper](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=65e7377)
- [Ikey Doherty: Switch to Faba Mono](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=19dfb5a)

**xorg-server**

- [Ikey Doherty: Enable systemd integration](https://git.solus-project.com/packages/xorg-server/commit/?id=ffd4e6c)

**network-manager**

- [Ikey Doherty: Switch to dhclient as dhcpcd is all kinds of broken (bug 21)](https://git.solus-project.com/packages/network-manager/commit/?id=2be4fcb)

**os-installer**

- [Ikey Doherty: Fix brand](https://git.solus-project.com/packages/os-installer/commit/?id=01b22e1)

**solus-artwork**

- [Ikey Doherty: Add dep on Faba Mono icon theme](https://git.solus-project.com/packages/solus-artwork/commit/?id=e9746ee)

**gsettings-desktop-schemas**

- [Ikey Doherty: Back to SolusFresh wallpaper.](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=4811241)
- [Ikey Doherty: Switch to Faba Mono](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=00f10d7)

**dracut**

  - [Ikey Doherty: Use lz4 and not xz to speed up boot times (bug 25)](https://git.solus-project.com/packages/dracut/commit/?id=90c2f77)