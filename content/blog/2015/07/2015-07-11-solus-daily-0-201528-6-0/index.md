+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-07-11T14:26:56Z"
title = "Solus Daily: 0.201528.6.0"
url = "/2015/07/11/solus-daily-0-201528-6-0/"
+++

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

- Ikey Doherty: Update to 4.1.2, latest LTS release

**nautilus**

- Ikey Doherty: Convert to stateless configuration

**firefox**

- Ikey Doherty: Update to 39.0

**lightdm**

- Ikey Doherty: Update to 1.15.0
- Ikey Doherty: Gracefully handle local hostname changes w/ xauthority

**xdg-user-dirs-gtk**

- Ikey Doherty: Add explicit runtime dep on xdg-user-dirs
- Ikey Doherty: Convert to stateless configuration

**lightdm-gtk-greeter**

- Ikey Doherty: Update to 2.0.1

**budgie-desktop**

- Ikey Doherty: Convert to ypkg, that pspec is damned offensive.

**gparted**

- Ikey Doherty: Autoreconf to ensure pkexec patch is applied
- Ikey Doherty: Add Polkit policy to enable pkexec launch from menu

**xdg-user-dirs**

- Ikey Doherty: Convert to stateless configuration

**polkit-gnome**

- Ikey Doherty: Convert to stateless configuration

**gnome-terminal**

- Ikey Doherty: Hide menubar by default, make scrollbar automatic
- Ikey Doherty: Set defaults (11% transparency, size 10 font)
- Ikey Doherty: Disable GConf usage, fix libexecdir

**ncurses**

- Ikey Doherty: Fix cyclical dependencies
- Ikey Doherty: Convert to ypkg, major package cleanup

**gtk3**

- Ikey Doherty: Update to 3.16.5

**os-installer**

- Ikey Doherty: Sync new lightdm (1.15.0) config

**libevent**

- Ikey Doherty: Update to 2.0.22, convert to ypkg

**bash**

- Ikey Doherty: Enhance bash's default PS1

**gnome-keyring**

- Ikey Doherty: Convert to stateless configuration

**at-spi2**

- Ikey Doherty: Convert to stateless configuration (XDG dir only at this point)

**thunderbird**

- Ikey Doherty: Update to 38.1.0

**network-manager-applet**

- Ikey Doherty: Convert to stateless configuration
- Ikey Doherty: Disable GConf usage

**gnome-settings-daemon**

- Ikey Doherty: Convert to stateless configuration

**glib2**

- Ikey Doherty: Support stateless XDG config directory