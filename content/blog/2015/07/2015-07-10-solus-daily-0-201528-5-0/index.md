---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- news
- releases
date: "2015-07-10T19:05:12Z"
title: 'Solus Daily: 0.201528.5.0'
url: /2015/07/10/solus-daily-0-201528-5-0/
---

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO. See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions 
on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

##### Packages added to this release:

- glib-networking
- samba

##### Changes in this release:

**kernel**

- [Ikey Doherty: Enable MMC/memorystick options for newly enabled realtek module](https://git.solus-project.com/packages/kernel/commit/?id=c6683e8)
- [Ikey Doherty: Enable Realtek PCI-E card reader (specifically rts5209)](https://git.solus-project.com/packages/kernel/commit/?id=3814bfe)

**mesalib**

- [Ikey Doherty: Drop /etc/drirc to a stateless configuration](https://git.solus-project.com/packages/mesalib/commit/?id=c6cece1)

**budgie-desktop**

- [Ikey Doherty: Adapt to gnome-settings-daemon (mediakeys) changes in 3.16](https://git.solus-project.com/packages/budgie-desktop/commit/?id=c1eae8)
- [Ikey Doherty: Use system com_err now](https://git.solus-project.com/packages/kerberos/commit/?id=9d39e5b)
 
**openssl**

- [Ikey Doherty: Address CVE-2015-1793](https://git.solus-project.com/packages/openssl/commit/?id=42f7656)
 
**e2fsprogs**

- [Ikey Doherty: Update to 1.42.13, switch to ypkg, split -devel, enable compile_et](https://git.solus-project.com/packages/e2fsprogs/commit/?id=fd84f8e)
 
**mutter**

- [Ikey Doherty: Update to 3.16.3, to fix hover-state issue (thanks horst3180)](https://git.solus-project.com/packages/mutter/commit/?id=e3f04a6)

**arc-gtk-theme**

- [Ikey Doherty: Integrate upstream fix for Budgie calendar foreground](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=276d152)
 
**gnome-control-center**

- [Ikey Doherty: Online accounts require glib-networking for SSL usage](https://git.solus-project.com/packages/gnome-control-center/commit/?id=fabc090)
 
**gnome-system-monitor**

- [Ikey Doherty: Convert to ypkg to stop use of /usr/libexec](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=2a456f6)
 
**gnome-settings-daemon**

- [Ikey Doherty: Update to 3.16.2, switch to ypkg](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=d6c8a23)
 
**solus-artwork**

- [Ikey Doherty: Undelete chalk wallpaper (fixes previous mistake)](https://git.solus-project.com/packages/solus-artwork/commit/?id=e16fb0c)
 
**cups**

- [Ikey Doherty: Add lpadmin group creation (TODO: Switch to sysusers, go ypkg)](https://git.solus-project.com/packages/cups/commit/?id=b1651fe)