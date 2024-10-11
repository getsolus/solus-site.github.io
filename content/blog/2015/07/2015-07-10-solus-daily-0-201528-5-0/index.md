+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-07-10T19:05:12Z"
title = "Solus Daily: 0.201528.5.0"
url = "/2015/07/10/solus-daily-0-201528-5-0/"
+++

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO. See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions 
on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

##### Packages added to this release:

- glib-networking
- samba

##### Changes in this release:

**kernel**

- Ikey Doherty: Enable MMC/memorystick options for newly enabled realtek module
- Ikey Doherty: Enable Realtek PCI-E card reader (specifically rts5209)

**mesalib**

- Ikey Doherty: Drop /etc/drirc to a stateless configuration

**budgie-desktop**

- Ikey Doherty: Adapt to gnome-settings-daemon (mediakeys) changes in 3.16
- Ikey Doherty: Use system com_err now
 
**openssl**

- Ikey Doherty: Address CVE-2015-1793
 
**e2fsprogs**

- Ikey Doherty: Update to 1.42.13, switch to ypkg, split -devel, enable compile_et
 
**mutter**

- Ikey Doherty: Update to 3.16.3, to fix hover-state issue (thanks horst3180)

**arc-gtk-theme**

- Ikey Doherty: Integrate upstream fix for Budgie calendar foreground
 
**gnome-control-center**

- Ikey Doherty: Online accounts require glib-networking for SSL usage
 
**gnome-system-monitor**

- Ikey Doherty: Convert to ypkg to stop use of /usr/libexec
 
**gnome-settings-daemon**

- Ikey Doherty: Update to 3.16.2, switch to ypkg
 
**solus-artwork**

- Ikey Doherty: Undelete chalk wallpaper (fixes previous mistake)
 
**cups**

- Ikey Doherty: Add lpadmin group creation (TODO: Switch to sysusers, go ypkg)