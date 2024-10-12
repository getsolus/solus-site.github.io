+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-07-22T20:03:29Z"
title = "Solus Daily: 0.201530.3.0"
url = "/2015/07/22/solus-daily-0-201530-3-0/"
+++

The latest Solus Operating System Daily ISO is now available for testing. Be reminded this is an unstable development ISO

See our first daily ISO announcement for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://getsol.us/download) now to obtain the latest daily ISO

Note: No password is required to login. Automatic login is disabled, simply hit the Login button to proceed.

We request users now use the Solus Bugzilla when reporting issues, defects or requests. We'd also like to apologise for the delay in getting this daily out, human beings being under the weather is sometimes
unavoidable 🙂

#### Changes in this release:

**kernel**

- Ikey Doherty: Update to 4.1.3
- Ikey Doherty: Enable thin provisioning and virtio input for virtualisation use cases

**glib2**

- Ikey Doherty: Update to 2.44.1

**mesalib**

- Ikey Doherty: Rebuild against latest llvm

**pisi**

- Ikey Doherty: Enforce LD\_AS\_NEEDED by default

**nano**

- Ikey Doherty: Rebuild now with proper cflags on remote server
- Ikey Doherty: Canary test 2
- Ikey Doherty: Canary build for the server test
- Ikey Doherty: Canary test (glibc changes)

**cairo**

- Ikey Doherty: Various fixes to ensure evince does not crash (bug 42)

**python-dbus**

- Joshua Strobl: Bumped python(3) dbus to be compatible with build of python-3.4

**libplist**

- Joshua Strobl: Rebuild libplist against clang.

**llvm**

- Ikey Doherty: Enforce Solus toolchain defaults (build-id, relro)
- Ikey Doherty: Enforce system include directories
- Ikey Doherty: Rebuild as llvm ignores libdir..
- Ikey Doherty: Update to 3.6.2 (use updated system locations too)

**libarchive**

- Ikey Doherty: Another bump bites the dust
- Ikey Doherty: Fine-grained control of libarchive placement

**xz**

- Ikey Doherty: Fix /usr/share/doc file conflicts (using root namespace)

**evince**

- Ikey Doherty: Build with clang

**gparted**

- Ikey Doherty: Build with clang

**libtool**

- Ikey Doherty: Get libtool out of system.devel (mostly. it'll still work.)

**budgie-desktop**

- Ikey Doherty: Fix menu problems by pretending to be GNOME. Even more.

**firefox**

- Ikey Doherty: Fix LD\_AS\_NEEDED issue
- Ikey Doherty: Convert to ypkg and build with clang

**gtk3**

- Ikey Doherty: Update to 3.16.6

**python3**

  - Ikey Doherty: Enable sqlite3 support, fix license
