---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- news
- releases
date: "2015-07-22T20:03:29Z"
title: 'Solus Daily: 0.201530.3.0'
url: /2015/07/22/solus-daily-0-201530-3-0/
---

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

We request users now use the Solus [Bugzilla](https://bugs.solus-project.com/enter_bug.cgi) when reporting issues, defects or requests. We'd also like to apologise for the delay in getting this daily out, human beings being under the weather is sometimes 
unavoidable 🙂

#### Changes in this release:

**kernel**

- [Ikey Doherty: Update to 4.1.3](https://git.solus-project.com/packages/kernel/commit/?id=b2c1357)
- [Ikey Doherty: Enable thin provisioning and virtio input for virtualisation use cases](https://git.solus-project.com/packages/kernel/commit/?id=7f91921)

**glib2**

- [Ikey Doherty: Update to 2.44.1](https://git.solus-project.com/packages/glib2/commit/?id=b656132)

**mesalib**

- [Ikey Doherty: Rebuild against latest llvm](https://git.solus-project.com/packages/mesalib/commit/?id=dbc1d2f)

**pisi**

- [Ikey Doherty: Enforce LD\_AS\_NEEDED by default](https://git.solus-project.com/packages/pisi/commit/?id=50e17aa)

**nano**

- [Ikey Doherty: Rebuild now with proper cflags on remote server](https://git.solus-project.com/packages/nano/commit/?id=2a5d108)
- [Ikey Doherty: Canary test 2](https://git.solus-project.com/packages/nano/commit/?id=53bb667)
- [Ikey Doherty: Canary build for the server test](https://git.solus-project.com/packages/nano/commit/?id=1483340)
- [Ikey Doherty: Canary test (glibc changes)](https://git.solus-project.com/packages/nano/commit/?id=57597c4)

**cairo**

- [Ikey Doherty: Various fixes to ensure evince does not crash (bug 42)](https://git.solus-project.com/packages/cairo/commit/?id=0857f67)

**python-dbus**

- [Joshua Strobl: Bumped python(3) dbus to be compatible with build of python-3.4](https://git.solus-project.com/packages/python-dbus/commit/?id=0b9907f)

**libplist**

- [Joshua Strobl: Rebuild libplist against clang.](https://git.solus-project.com/packages/libplist/commit/?id=b3ebe97)

**llvm**

- [Ikey Doherty: Enforce Solus toolchain defaults (build-id, relro)](https://git.solus-project.com/packages/llvm/commit/?id=75a7147)
- [Ikey Doherty: Enforce system include directories](https://git.solus-project.com/packages/llvm/commit/?id=fe96dab)
- [Ikey Doherty: Rebuild as llvm ignores libdir..](https://git.solus-project.com/packages/llvm/commit/?id=3688637)
- [Ikey Doherty: Update to 3.6.2 (use updated system locations too)](https://git.solus-project.com/packages/llvm/commit/?id=b23df49)

**libarchive**

- [Ikey Doherty: Another bump bites the dust](https://git.solus-project.com/packages/libarchive/commit/?id=8199890)
- [Ikey Doherty: Fine-grained control of libarchive placement](https://git.solus-project.com/packages/libarchive/commit/?id=9801902)

**xz**

- [Ikey Doherty: Fix /usr/share/doc file conflicts (using root namespace)](https://git.solus-project.com/packages/xz/commit/?id=4af9e04)

**evince**

- [Ikey Doherty: Build with clang](https://git.solus-project.com/packages/evince/commit/?id=5f4f350)

**gparted**

- [Ikey Doherty: Build with clang](https://git.solus-project.com/packages/gparted/commit/?id=8176e6f)

**libtool**

- [Ikey Doherty: Get libtool out of system.devel (mostly. it'll still work.)](https://git.solus-project.com/packages/libtool/commit/?id=59b62de)

**budgie-desktop**

- [Ikey Doherty: Fix menu problems by pretending to be GNOME. Even more.](https://git.solus-project.com/packages/budgie-desktop/commit/?id=3243f71)

**firefox**

- [Ikey Doherty: Fix LD\_AS\_NEEDED issue](https://git.solus-project.com/packages/firefox/commit/?id=fdda735)
- [Ikey Doherty: Convert to ypkg and build with clang](https://git.solus-project.com/packages/firefox/commit/?id=b1f9027)

**gtk3**

- [Ikey Doherty: Update to 3.16.6](https://git.solus-project.com/packages/gtk3/commit/?id=0cdf817)

**python3**

  - [Ikey Doherty: Enable sqlite3 support, fix license](https://git.solus-project.com/packages/python3/commit/?id=86c7520)