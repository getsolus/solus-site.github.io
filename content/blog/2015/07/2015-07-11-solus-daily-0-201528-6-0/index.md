---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- News
- Releases
date: "2015-07-11T14:26:56Z"
title: 'Solus Daily: 0.201528.6.0'
url: /2015/07/11/solus-daily-0-201528-6-0/
---

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

In this release, we feature several key updates, along with the 4.1.2 LTS Linux Kernel and Firefox 39.0. We've also taken our steps towards being a stateless OS.

#### Packages removed from this release:

- dcron
- gconf
- libgnome-keyring

#### Changes in this release:

**kernel**

- [Ikey Doherty: Update to 4.1.2, latest LTS release](https://git.solus-project.com/packages/kernel/commit/?id=d63a213)

**nautilus**

- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/nautilus/commit/?id=bd6bcda)

**firefox**

- [Ikey Doherty: Update to 39.0](https://git.solus-project.com/packages/firefox/commit/?id=0fb3ac2)

**lightdm**

- [Ikey Doherty: Update to 1.15.0](https://git.solus-project.com/packages/lightdm/commit/?id=7afa1f3)
- [Ikey Doherty: Gracefully handle local hostname changes w/ xauthority](https://git.solus-project.com/packages/lightdm/commit/?id=feb7bf3)

**xdg-user-dirs-gtk**

- [Ikey Doherty: Add explicit runtime dep on xdg-user-dirs](https://git.solus-project.com/packages/xdg-user-dirs-gtk/commit/?id=22ef5bf)
- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/xdg-user-dirs-gtk/commit/?id=2560845)

**lightdm-gtk-greeter**

- [Ikey Doherty: Update to 2.0.1](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=3b2ea75)

**budgie-desktop**

- [Ikey Doherty: Convert to ypkg, that pspec is damned offensive.](https://git.solus-project.com/packages/budgie-desktop/commit/?id=161b033)

**gparted**

- [Ikey Doherty: Autoreconf to ensure pkexec patch is applied](https://git.solus-project.com/packages/gparted/commit/?id=1e050f3)
- [Ikey Doherty: Add Polkit policy to enable pkexec launch from menu](https://git.solus-project.com/packages/gparted/commit/?id=4acd4d6)

**xdg-user-dirs**

- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/xdg-user-dirs/commit/?id=88f2aaf)

**polkit-gnome**

- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/polkit-gnome/commit/?id=90a5da2)

**gnome-terminal**

- [Ikey Doherty: Hide menubar by default, make scrollbar automatic](https://git.solus-project.com/packages/gnome-terminal/commit/?id=2f399ae)
- [Ikey Doherty: Set defaults (11% transparency, size 10 font)](https://git.solus-project.com/packages/gnome-terminal/commit/?id=a3fcc18)
- [Ikey Doherty: Disable GConf usage, fix libexecdir](https://git.solus-project.com/packages/gnome-terminal/commit/?id=97d3291)

**ncurses**

- [Ikey Doherty: Fix cyclical dependencies](https://git.solus-project.com/packages/ncurses/commit/?id=9d7477e)
- [Ikey Doherty: Convert to ypkg, major package cleanup](https://git.solus-project.com/packages/ncurses/commit/?id=92f8fbe)

**gtk3**

- [Ikey Doherty: Update to 3.16.5](https://git.solus-project.com/packages/gtk3/commit/?id=f1d7cc0)

**os-installer**

- [Ikey Doherty: Sync new lightdm (1.15.0) config](https://git.solus-project.com/packages/os-installer/commit/?id=c0bcaf6)

**libevent**

- [Ikey Doherty: Update to 2.0.22, convert to ypkg](https://git.solus-project.com/packages/libevent/commit/?id=9686692)

**bash**

- [Ikey Doherty: Enhance bash's default PS1](https://git.solus-project.com/packages/bash/commit/?id=6c2aa24)

**gnome-keyring**

- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/gnome-keyring/commit/?id=962c4e2)

**at-spi2**

- [Ikey Doherty: Convert to stateless configuration (XDG dir only at this point)](https://git.solus-project.com/packages/at-spi2/commit/?id=3f2685a)

**thunderbird**

- [Ikey Doherty: Update to 38.1.0](https://git.solus-project.com/packages/thunderbird/commit/?id=dec85ea)

**network-manager-applet**

- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/network-manager-applet/commit/?id=bc7a78b)
- [Ikey Doherty: Disable GConf usage](https://git.solus-project.com/packages/network-manager-applet/commit/?id=77d1670)

**gnome-settings-daemon**

- [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=621341d)

**glib2**

- [Ikey Doherty: Support stateless XDG config directory](https://git.solus-project.com/packages/glib2/commit/?id=d6900a6)