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

- [Ikey Doherty: Enable netfilter NAT/masq support](https://git.solus-project.com/packages/kernel/commit/?id=fe47cb0)

**lvm2**

- [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/lvm2/commit/?id=acd7c93)

**cairo**

- [Ikey Doherty: Minor tweaks](https://git.solus-project.com/packages/cairo/commit/?id=f5a055e)
- [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/cairo/commit/?id=773bed1)
- [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/cairo/commit/?id=ac9f9f7)

**xz**

- [Ikey Doherty: Remove links from /lib](https://git.solus-project.com/packages/xz/commit/?id=398a566)

**ntfs-3g**

- [Ikey Doherty: Remove conflicting doc files](https://git.solus-project.com/packages/ntfs-3g/commit/?id=48a951e)
- [Ikey Doherty: Rebump..](https://git.solus-project.com/packages/ntfs-3g/commit/?id=d99291b)
- [Ikey Doherty: Bump for rebuild](https://git.solus-project.com/packages/ntfs-3g/commit/?id=1604bb3)
- [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/ntfs-3g/commit/?id=d2bdd0d)

**evince**

- [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/evince/commit/?id=9f2f5c9)
- [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/evince/commit/?id=3896eb8)

**poppler**

- [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/poppler/commit/?id=51ebef7)
- [Ikey Doherty: Update to 0.34.0](https://git.solus-project.com/packages/poppler/commit/?id=1da2503)

**kmod**

- [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/kmod/commit/?id=49d8310)

**gcc**

- [Ikey Doherty: Use /usr/lib64/ld-linux-x86-64.so.2 by default](https://git.solus-project.com/packages/gcc/commit/?id=ff68e24)

**pisi**

- [Ikey Doherty: Force dbginfo packages to use debug component](https://git.solus-project.com/packages/pisi/commit/?id=0c18310)

**glibc**

- [Ikey Doherty: Bump for repo inclusion](https://git.solus-project.com/packages/glibc/commit/?id=eb0fd41)
- [Ikey Doherty: Fix self dependency situation](https://git.solus-project.com/packages/glibc/commit/?id=82636fd)
- [Ikey Doherty: Convert legacy packaging to ypkg for easier maintainence](https://git.solus-project.com/packages/glibc/commit/?id=3c44746)
- [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/glibc/commit/?id=a26407d)
- [Ikey Doherty: Patch glibc to build with GNU Make 4](https://git.solus-project.com/packages/glibc/commit/?id=0e7fced)
- [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/glibc/commit/?id=16b85b5)

**librsvg**

- [Ikey Doherty: Rebuild for dbginfo](https://git.solus-project.com/packages/librsvg/commit/?id=bc4b51b)

**network-manager**

- [Ikey Doherty: Do not automatically set hostnames as this breaks X (bug 19)](https://git.solus-project.com/packages/network-manager/commit/?id=27c52cd)

**gdk-pixbuf**

- [Ikey Doherty: Rebuild for dbginfo](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=b403915)

**solus-artwork**

- [Ikey Doherty: Add missing moka-icon-theme dep](https://git.solus-project.com/packages/solus-artwork/commit/?id=f16c00b)

**dracut**

- [Ikey Doherty: Disable lz4 temporarily due to boot issues on non-UEFI](https://git.solus-project.com/packages/dracut/commit/?id=3dd29f7)

**pam**

- [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/pam/commit/?id=a2b55ab)
- [Ikey Doherty: Convert to ypkg, use /usr/lib64 now (retain /lib/security for compat)](https://git.solus-project.com/packages/pam/commit/?id=1d512ae)

**baselayout**

- [Ikey Doherty: Fix lib64 paths in ld.so.conf](https://git.solus-project.com/packages/baselayout/commit/?id=0b3b101)

**iptables**

- [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/iptables/commit/?id=813485e)

**llvm**

- [Ikey Doherty: Use /usr/lib64 for dynamic linker](https://git.solus-project.com/packages/llvm/commit/?id=64f7d74)

**file-roller**

- [Ikey Doherty: Update to 3.16.3, support unrar by default](https://git.solus-project.com/packages/file-roller/commit/?id=04d60e1)

**bzip2**

- [Ikey Doherty: No autodep](https://git.solus-project.com/packages/bzip2/commit/?id=6b4dfe8)
- [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/bzip2/commit/?id=e12b18f)

**gtk3**

- [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/gtk3/commit/?id=f143229)
- [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/gtk3/commit/?id=5ad4720)

**util-linux**

- [Ikey Doherty: Ensure package is consistent with pre-conversion state](https://git.solus-project.com/packages/util-linux/commit/?id=f5c5e9d)
- [Ikey Doherty: Switch to /usr/lib64](https://git.solus-project.com/packages/util-linux/commit/?id=862651e)

**bash**

- [Ikey Doherty: Ensure we escape prompt to fix linewrap bug in bash](https://git.solus-project.com/packages/bash/commit/?id=0311b04)

**attr**

- [Ikey Doherty: Convert to ypkg, use /usr/lib64](https://git.solus-project.com/packages/attr/commit/?id=366a8b8)

**zlib**

- [Ikey Doherty: Migrate to /usr/lib64](https://git.solus-project.com/packages/zlib/commit/?id=ff5f97e)

**acl**

- [Ikey Doherty: Fix license and autodep](https://git.solus-project.com/packages/acl/commit/?id=980513c)
- [Ikey Doherty: Convert to ypkg, move to /usr/lib64](https://git.solus-project.com/packages/acl/commit/?id=5cc133d)

**gnome-settings-daemon**

- [Ikey Doherty: Ensure patches are actually applied..](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=adaa2b9)

**glib2**

- [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/glib2/commit/?id=966f6fc)
- [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/glib2/commit/?id=c65e441)