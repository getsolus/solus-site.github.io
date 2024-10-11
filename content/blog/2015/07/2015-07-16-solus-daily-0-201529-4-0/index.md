+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-07-16T22:09:27Z"
title = "Solus Daily: 0.201529.4.0"
url = "/2015/07/16/solus-daily-0-201529-4-0/"
+++

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

This ISO sees many fixes, and a full toolchain rebootstrap to help modernise our filesystem layout (i.e. deprecating /lib, /lib64 and /usr/lib in favour of a unified /usr/lib64). We're improving our strengths as a distribution, and have begun collecting debug packages so that we may help users debug their issues more easily.

We request users now use the Solus [Bugzilla](https://bugs.solus-project.com/enter_bug.cgi) when reporting issues, defects or requests.

#### Packages added to this release:

- unrar

#### Changes in this release:

**kernel**

- Ikey Doherty: Enable netfilter NAT/masq support

**lvm2**

- Ikey Doherty: Move to /usr/lib64

**cairo**

- Ikey Doherty: Minor tweaks
- Ikey Doherty: Rebuild with new cflags
- Ikey Doherty: Rebuild for debug symbols

**xz**

- Ikey Doherty: Remove links from /lib

**ntfs-3g**

- Ikey Doherty: Remove conflicting doc files
- Ikey Doherty: Rebump..
- Ikey Doherty: Bump for rebuild
- Ikey Doherty: Move to /usr/lib64

**evince**

- Ikey Doherty: Rebuild with new cflags
- Ikey Doherty: Rebuild for debug symbols

**poppler**

- Ikey Doherty: Rebuild for debug symbols
- Ikey Doherty: Update to 0.34.0

**kmod**

- Ikey Doherty: Move to /usr/lib64

**gcc**

- Ikey Doherty: Use /usr/lib64/ld-linux-x86-64.so.2 by default

**pisi**

- Ikey Doherty: Force dbginfo packages to use debug component

**glibc**

- Ikey Doherty: Bump for repo inclusion
- Ikey Doherty: Fix self dependency situation
- Ikey Doherty: Convert legacy packaging to ypkg for easier maintainence
- Ikey Doherty: Rebuild with new cflags
- Ikey Doherty: Patch glibc to build with GNU Make 4
- Ikey Doherty: Rebuild for debug symbols

**librsvg**

- Ikey Doherty: Rebuild for dbginfo

**network-manager**

- Ikey Doherty: Do not automatically set hostnames as this breaks X (bug 19)

**gdk-pixbuf**

- Ikey Doherty: Rebuild for dbginfo

**solus-artwork**

- Ikey Doherty: Add missing moka-icon-theme dep

**dracut**

- Ikey Doherty: Disable lz4 temporarily due to boot issues on non-UEFI

**pam**

- Ikey Doherty: Rebuild for cflags
- Ikey Doherty: Convert to ypkg, use /usr/lib64 now (retain /lib/security for compat)

**baselayout**

- Ikey Doherty: Fix lib64 paths in ld.so.conf

**iptables**

- Ikey Doherty: Move to /usr/lib64

**llvm**

- Ikey Doherty: Use /usr/lib64 for dynamic linker

**file-roller**

- Ikey Doherty: Update to 3.16.3, support unrar by default

**bzip2**

- Ikey Doherty: No autodep
- Ikey Doherty: Move to /usr/lib64

**gtk3**

- Ikey Doherty: Rebuild with new cflags
- Ikey Doherty: Rebuild for debug symbols

**util-linux**

- Ikey Doherty: Ensure package is consistent with pre-conversion state
- Ikey Doherty: Switch to /usr/lib64

**bash**

- Ikey Doherty: Ensure we escape prompt to fix linewrap bug in bash

**attr**

- Ikey Doherty: Convert to ypkg, use /usr/lib64

**zlib**

- Ikey Doherty: Migrate to /usr/lib64

**acl**

- Ikey Doherty: Fix license and autodep
- Ikey Doherty: Convert to ypkg, move to /usr/lib64

**gnome-settings-daemon**

- Ikey Doherty: Ensure patches are actually applied..

**glib2**

- Ikey Doherty: Rebuild with new cflags
- Ikey Doherty: Rebuild for debug symbols