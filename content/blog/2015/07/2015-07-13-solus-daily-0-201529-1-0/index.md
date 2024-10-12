+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-07-13T21:39:07Z"
title = "Solus Daily: 0.201529.1.0"
url = "/2015/07/13/solus-daily-0-201529-1-0/"
+++

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO

See our first daily ISO announcement for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://getsol.us/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

This release also sees the introduction of the Arc-Darker theme as a new default.

{{< relimg "Screenshot-from-2015-07-13-22-34-36.png" >}}

#### Changes in this release:

**kernel**

- Ikey Doherty: Enable CONFIG\_ATH9K\_HTC (Atheros AR9271), bug 22

**lightdm-gtk-greeter**

- Ikey Doherty: Switch to Arc-Darker

**freetype2**

- Ikey Doherty: Split devel files into subpackage

**libcap2**

- Ikey Doherty: Bump for rebuild
- Ikey Doherty: Split devel files into subpackage

**cairo**

- Ikey Doherty: Fix issue with relno
- Ikey Doherty: Force a runtime dep on -devel for freetype2

**expat**

- Ikey Doherty: Split devel files into subpackage

**arc-gtk-theme**

- Ikey Doherty: Update to 20150711 (dark headers, lightdm changes)

**libtool**

- Ikey Doherty: Fix missing files
- Ikey Doherty: Split development files into subpackage

**libvte**

- Ikey Doherty: Convert to stateless configuration

**gsettings-desktop-schemas**

- Ikey Doherty: Switch to Arc Darker

**bash**

- Ikey Doherty: Convert to stateless configuration

**baselayout**

- Ikey Doherty: Use new etc/profile location, somewhat anti-stateless right now
