+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-07-14T22:37:54Z"
title = "Solus Daily: 0.201529.2.0"
url = "/2015/07/14/solus-daily-0-201529-2-0/"
+++

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

- Ikey Doherty: Bump for build
- Ikey Doherty: Fix segfault in bootchart when sample number is lower than expected

**lightdm-gtk-greeter**

- Ikey Doherty: Back to SolusFresh wallpaper
- Ikey Doherty: Switch to Faba Mono

**xorg-server**

- Ikey Doherty: Enable systemd integration

**network-manager**

- Ikey Doherty: Switch to dhclient as dhcpcd is all kinds of broken (bug 21)

**os-installer**

- Ikey Doherty: Fix brand

**solus-artwork**

- Ikey Doherty: Add dep on Faba Mono icon theme

**gsettings-desktop-schemas**

- Ikey Doherty: Back to SolusFresh wallpaper.
- Ikey Doherty: Switch to Faba Mono

**dracut**

  - Ikey Doherty: Use lz4 and not xz to speed up boot times (bug 25)