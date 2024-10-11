+++
author = "joshua"
categories = [
"News",
"Packages",
"Plans",
"TWIS"
]
date =  "2016-04-12T17:52:22Z"
title = "This Week in Solus -- Install #26"
url = "/2016/04/12/this-week-in-solus-install-26/"
+++
Welcome to the 26th installation of This Week in Solus. **Out a bit later than usual but hey, better late than never, right?** 

#### All about that system.base

We have begun shrinking the size of our system.base component to give us more flexibility and provide a more minimal image. So far the following have been demoted likely more to come:

-  dosfstools: Moved to system.utils
-  fuse: Moved to system.utils
-  exfat: Moved to system.utils
-  lsb-release: Moved to system.utils
-  man-db: Moved to system.utils
-  nano: Moved to editor component
-  ntfs-3g: Moved to system.utils
-  pciutils: Moved to system.utils
-  perl: Moved to programming
-  popt: Moved to programming.library
-  reiserfsprogs: Moved to system.utils
-  rsync: Moved to network.clients
-  texinfo: Moved to system.devel
-  wget: Moved to network.clients
-  wireless-tools: Moved to network.base

#### Locales

{{<  relimg "Screenshot-from-2016-04-12-02-31-07.png" >}}

We now ship locales for Firefox and Thunderbird. This makes it easier to switch to the language you desire / need without having to jump through the hoop of installing addons.

#### Packaging Improvements -- ypkg2

As discussed in last week's This Week in Solus, some great strides have been made in improving how packaging is accomplished under Solus. Ikey has done some absolutely incredible work on the new version of ypkg, which is a tool we use to convert a build process into a packaging operation (**package.yml -> Instructions and package info -> butterflies and rainbows**).

Honestly, the list shown below is merely the tip of the iceberg, and if you have spare time on your hands, [read the commit logs](https://github.com/solus-project/ypkg/commits/master).

##### All I want for Christmas, is direct dependencies

{{< relimg "Screenshot-from-2016-04-07-04-16-28.png" >}}

Massive optimizations took place to ensure we only provide direct binary dependencies. As Ikey put it, frankly better than I can:

"Solus uses the equivalent of `-Wl,-as-needed` but at the toolchain level, these changes to eopkg now make it respect that. Net benefit? As you can see here each package has drastically fewer dependencies, allowing more flexibility, and much, 
much faster repo operations (upgrade, install, search, etc.)"

##### Color

Terminal output is much more colorful. We provide coloring to help you notice when there are warnings or errors, and you can differentiate between the two.

##### Dbginfo Packages

ypkg2 now automatically creates -dbginfo packages (**including for 32-bit**) automatically, which means things like valgrind will work.

##### Git outta here!

{{< relimg "Screenshot-from-2016-04-09-04-19-54.png" >}}

We now export the git log for tagged releases into built packages, meaning you see the actual history exactly as it is in git.

##### Not for the first timers

It isn't a mystery that sometimes it takes multiple tries to get a package built (**seriously guys, I'm still working on monodevelop, halp!**). Having our build tool give you the necessary information to assess the issues you're dealing with and help you 
address them quickly is obviously pretty important.

{{< relimg "Screenshot-from-2016-04-05-18-59-11.png" >}}

Error reporting has been greatly improved in ypkg2. If we failed to parse your package.yml file, we let you know why and what keys have the issues.

{{< altimg "http://i.giphy.com/oCODw2sr3WZt6.gif" >}}

KRC and I also banded together to protect the warning string when your filename isn't package.yml. It was a noble sacrifice, I know.

##### Performance Guided Optimizations

We have now integrated performance guided optimizations directly into our build process. What does this mean? A more powerful, flexible, leaner and meaner Solus. This work was inspired by the work done by the 
[Clear Linux* Project for Intel® Architecture](https://clearlinux.org/).

Here are some performance metrics / benchmarks for libxml2:

-  First set of changes hit libxml2: [http://openbenchmarking.org/result/1604106-GA-1604100GA01](http://openbenchmarking.org/result/1604106-GA-1604100GA01)
-  Gains in xz decompression: [http://openbenchmarking.org/result/1604107-GA-1604102GA92](http://openbenchmarking.org/result/1604107-GA-1604102GA92)

{{< relimg "Screenshot-from-2016-04-10-23-17-42.png" >}}


#### Package Updates

Below is a list of updates done to packages (excluding the ones updated for the system.base migrations or rebuilt for dbginfo):

New:

- adapta-gtk-theme 3.20.2
- djvulibre 3.5.27
- font-lateef-ttf
- git 2.8.1
- gstreamer-0.10-plugins-ugly 0.10.19
- love 0.10.1
- luajit 2.0.4
- seahorse-nautilus 3.11.92
- quassel 0.12.3

Updated:

- ca-certs: Rebuilt for new SSL certs.
- conky: Enabled Lua, RSS, wlan.
- darktable 2.0.3
- eopkg: 
  -  Add initial support for reproducible builds
  -  Always use ypkg-gen-history where possible
  -  Greatly optimize automatic binary dependencies
- erlang 18.3.1
- evince: Update to 3.18.2 and enable djvu support
- firefox: Updated to 45.0.2 and enabled locales.
- fuse: Added a fuse group and udev rules.
- glances 2.9.1
- irssi 0.8.19
- libtiff: Updated to 4.0.6
- libxml2: Updated to 2.9.3, enabled PGO.
- lollypop 0.9.95
- mpv: Updated to 0.17.0 and dropped chardet as a dep.
- n1 0.4.19
- nodejs 5.10.1
- noto-sans-ttf: Enabled emoji as well as Arabic+Hindi scripts support
- ntfs-3g 2016.2.22
- perl: Updated to use our new perl macros
- poppler: Enabled qt4 and qt5 split packages thanks to improvements in new ypkg
- postgresql: Enable OpenSSL, optimize for speed.
- python-distutils-extra: Updated to 2.39 and enabled py3 support
- python-psutil: Updated to 4.1.0 and enabled py3 support
- sqlite3: Update to 3.12.1, and enable optimize: speed
- qtpass 1.1.1
- telegram 0.9.40
- thunderbird: Updated to 38.7.2 and enabled locales.
- xz: Enabled PGO.

  