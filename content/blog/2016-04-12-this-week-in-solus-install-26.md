---
author: joshua
categories:
- News
- Packages
- Plans
- TWIS
date: 2016-04-12T17:52:22Z
id: 1259
title: 'This Week in Solus -- Install #26'
url: /2016/04/12/this-week-in-solus-install-26/
---
Welcome to the 26th installation of This Week in Solus. **Out a bit later than usual but hey, better late than never, right?** 

#### All about that system.base

We have begun shrinking the size of our system.base component to give us more flexibility and provide a more minimal image. So far the following have been demoted likely more to come:

-  [dosfstools: Moved to system.utils](https://git.solus-project.com/packages/dosfstools/commit/?id=2ffce7c63cf5335f038c71984881c2b17f4d12df)
-  [fuse: Moved to system.utils](https://git.solus-project.com/packages/fuse/commit/?id=75bb2e2148952bb31252b083c11008eb233c3177)
-  [exfat: Moved to system.utils](https://git.solus-project.com/packages/exfat/commit/?id=2d19a336082d5577dc12658396a8fa24a077ad54)
-  [lsb-release: Moved to system.utils](https://git.solus-project.com/packages/lsb-release/commit/?id=8c10a0358e6ecf8a89aff810637743210d946bcb)
-  [man-db: Moved to system.utils](https://git.solus-project.com/packages/man-db/commit/?id=d14845b8cdfd301c64d55801bb2bb1c099476c94)
-  [nano: Moved to editor component](https://git.solus-project.com/packages/nano/commit/?id=c87e0d7fea9e63c264fee47d802eea66b4cb751d)
-  [ntfs-3g: Moved to system.utils](https://git.solus-project.com/packages/ntfs-3g/commit/?id=5611c484abc4db306e89da7afff1dd53d2b2052a)
-  [pciutils: Moved to system.utils](https://git.solus-project.com/packages/pciutils/commit/?id=446ae45b2eaf7d7bdbaa1d06bf3ffcc9ad122e2d)
-  [perl: Moved to programming](https://git.solus-project.com/packages/perl/commit/?id=23babbed449ffe092058a4975d316657bf59bcf1)
-  [popt: Moved to programming.library](https://git.solus-project.com/packages/popt/commit/?id=bf4f1bff16b1e4339dc27d36baecaf060cac8451)
-  [reiserfsprogs: Moved to system.utils](https://git.solus-project.com/packages/reiserfsprogs/commit/?id=49c0f679e11c962a9506d5df8c79500da648e826)
-  [rsync: Moved to network.clients](https://git.solus-project.com/packages/rsync/commit/?id=e51f1312cb54c5d7acfc06c1e9af017408939ea8)
-  [texinfo: Moved to system.devel](https://git.solus-project.com/packages/texinfo/commit/?id=103684d69f4cb7e79ee892feb0e11f24b337af53)
-  [wget: Moved to network.clients](https://git.solus-project.com/packages/wget/commit/?id=53c012b4077bd05b5b9f0e59349b7f06a3f9a5d9)
-  [wireless-tools: Moved to network.base](https://git.solus-project.com/packages/wireless-tools/commit/?id=db121335a5f08f91c4fb91bda6a8780ccc974026)

#### Locales

{{  altimg "2016/04/Screenshot-from-2016-04-12-02-31-07.png" >}}

We now ship locales for Firefox and Thunderbird. This makes it easier to switch to the language you desire / need without having to jump through the hoop of installing addons.

#### Packaging Improvements -- ypkg2

As discussed in last week's This Week in Solus, some great strides have been made in improving how packaging is accomplished under Solus. Ikey has done some absolutely incredible work on the new version of ypkg, which is a tool we use to convert a build process into a packaging operation (**package.yml -> Instructions and package info -> butterflies and rainbows**).

Honestly, the list shown below is merely the tip of the iceberg, and if you have spare time on your hands, [read the commit logs](https://github.com/solus-project/ypkg/commits/master).

##### All I want for Christmas, is direct dependencies

{{< altimg "2016/04/Screenshot-from-2016-04-07-04-16-28.png" >}}

Massive optimizations took place to ensure we only provide direct binary dependencies. As Ikey put it, frankly better than I can:

"Solus uses the equivalent of `-Wl,-as-needed` but at the toolchain level, these changes to eopkg now make it respect that. Net benefit? As you can see here each package has drastically fewer dependencies, allowing more flexibility, and much, 
much faster repo operations (upgrade, install, search, etc.)"

##### Color

Terminal output is much more colorful. We provide coloring to help you notice when there are warnings or errors, and you can differentiate between the two.

##### Dbginfo Packages

ypkg2 now automatically creates -dbginfo packages (**including for 32-bit**) automatically, which means things like valgrind will work.

##### Git outta here!

{{< altimg "2016/04/Screenshot-from-2016-04-09-04-19-54.png" >}}

We now export the git log for tagged releases into built packages, meaning you see the actual history exactly as it is in git.

##### Not for the first timers

It isn't a mystery that sometimes it takes multiple tries to get a package built (**seriously guys, I'm still working on monodevelop, halp!**). Having our build tool give you the necessary information to assess the issues you're dealing with and help you 
address them quickly is obviously pretty important.

{{< altimg "2016/04/Screenshot-from-2016-04-05-18-59-11.png" >}}

Error reporting has been greatly improved in ypkg2. If we failed to parse your package.yml file, we let you know why and what keys have the issues.

{{< altimg "http://i.giphy.com/oCODw2sr3WZt6.gif" >}}

KRC and I also banded together to protect the warning string when your filename isn't package.yml. It was a noble sacrifice, I know.

##### Performance Guided Optimizations

We have now integrated performance guided optimizations directly into our build process. What does this mean? A more powerful, flexible, leaner and meaner Solus. This work was inspired by the work done by the 
[Clear Linux* Project for Intel® Architecture](https://clearlinux.org/).

Here are some performance metrics / benchmarks for libxml2:

-  First set of changes hit libxml2: [http://openbenchmarking.org/result/1604106-GA-1604100GA01](http://openbenchmarking.org/result/1604106-GA-1604100GA01)
-  Gains in xz decompression: [http://openbenchmarking.org/result/1604107-GA-1604102GA92](http://openbenchmarking.org/result/1604107-GA-1604102GA92)

{{< altimg "2016/04/Screenshot-from-2016-04-10-23-17-42.png" >}}


#### Package Updates

Below is a list of updates done to packages (excluding the ones updated for the system.base migrations or rebuilt for dbginfo):

New:

- [adapta-gtk-theme 3.20.2](https://git.solus-project.com/packages/adapta-gtk-theme/commit/?id=8d27c2f5dc644b36b27cbb7f4ac00b41a44ab1a2)
- [djvulibre 3.5.27](https://git.solus-project.com/packages/djvulibre/commit/?id=04f733b8138797e952cf0842e9aa01b411e025b1)
- [font-lateef-ttf](https://git.solus-project.com/packages/font-lateef-ttf/commit/?id=e24809697fcac1edac167afba090133e7c448b69)
- [git 2.8.1](https://git.solus-project.com/packages/git/commit/?id=a660c1f7fd00d89101a90e3f6df860d754c4dcae)
- [gstreamer-0.10-plugins-ugly 0.10.19](https://git.solus-project.com/packages/gstreamer-0.10-plugins-ugly/commit/?id=b4090229004c68efdf2939070744b15fccac4bb5)
- [love 0.10.1](https://git.solus-project.com/packages/love/commit/?id=2b9a82681f7ce39d96e29e4988784524f36b2f78)
- [luajit 2.0.4](https://git.solus-project.com/packages/luajit/commit/?id=877493ccc13802abea294ee7ad18fe1fbedbf914)
- [seahorse-nautilus 3.11.92](https://git.solus-project.com/packages/seahorse-nautilus/commit/?id=e75f6f13005b105b3d3f79f00dbb95c251dc49d3)
- [quassel 0.12.3](https://git.solus-project.com/packages/quassel/commit/?id=d562e5cbfa6a52f541cb1f62ad223a322e13b322)

Updated:

- [ca-certs: Rebuilt for new SSL certs.](https://git.solus-project.com/packages/ca-certs/commit/?id=1075178defa91616eee4b0ee114d9e63496ad287)
- [conky: Enabled Lua, RSS, wlan.](https://git.solus-project.com/packages/conky/commit/?id=efd920400d32a800965bee54a0446715ff1840df)
- [darktable 2.0.3](https://git.solus-project.com/packages/darktable/commit/?id=5370cf6a432ae7103eb5e48cac78e08b34ae306f)
- eopkg: 
 -  [Add initial support for reproducible builds](https://git.solus-project.com/packages/pisi/commit/?id=58c15580ddb758b6299c396751d5627e30adc897)
 -  [Always use ypkg-gen-history where possible](https://git.solus-project.com/packages/pisi/commit/?id=f5bdbfd3fd05559d8f99be4689ce91c7ebb7e5a4)
 -  [Greatly optimize automatic binary dependencies](https://git.solus-project.com/packages/pisi/commit/?id=32284f103ca7997d30609eae4681bba91e3d09c3)
- [erlang 18.3.1](https://git.solus-project.com/packages/erlang/commit/?id=91b9b13923e4f55e99b6bfb36e5ea4e94d88267c)
- [evince: Update to 3.18.2 and enable djvu support](https://git.solus-project.com/packages/evince/commit/?id=462119ce0bb9d6cd2ad9e581d483c77e93285338)
- [firefox: Updated to 45.0.2 and enabled locales.](https://git.solus-project.com/packages/firefox/commit/?id=f7dd186538c40a321ec64cc44a39616ed068c1af)
- [fuse: Added a fuse group and udev rules.](https://git.solus-project.com/packages/fuse/commit/?id=85a8924ede744c5b70793d54b7c6b5117ad78d4a)
- [glances 2.9.1](https://git.solus-project.com/packages/glances/commit/?id=bc4752a69bf8ea6962217a7a26afbf7f351233ce)
- [irssi 0.8.19](https://git.solus-project.com/packages/irssi/commit/?id=8aa3f5d06414461688431d57d23f3c931caeb6d5)
- [libtiff: Updated to 4.0.6](https://git.solus-project.com/packages/libtiff/commit/?id=26430498ff5c0b4472ba9ec06a49d83e1fb8eb17)
- [libxml2: Updated to 2.9.3, enabled PGO.](https://git.solus-project.com/packages/libxml2/commit/?id=667a38005c4bd3a09464cb1c97a96d804cb9891c)
- [lollypop 0.9.95](https://git.solus-project.com/packages/lollypop/commit/?id=03a61f290d0c5b9ab1c550aee28d20348466e4ce)
- [mpv: Updated to 0.17.0 and dropped chardet as a dep.](https://git.solus-project.com/packages/mpv/commit/?id=d6e6f875a60b6234c772aedba0d4fae2f3254d16)
- [n1 0.4.19](https://git.solus-project.com/packages/n1/commit/?id=916645656c3799ce2f885af9a7fd80fc71505080)
- [nodejs 5.10.1](https://git.solus-project.com/packages/nodejs/commit/?id=e12597f242197f7b7326dfab774f0fc642ffec69)
- [noto-sans-ttf: Enabled emoji as well as Arabic+Hindi scripts support](https://git.solus-project.com/packages/noto-sans-ttf/commit/?id=8dad0cd9d92e5e4797565c8d3b849e0b1f24ee48)
- [ntfs-3g 2016.2.22](https://git.solus-project.com/packages/ntfs-3g/commit/?id=5611c484abc4db306e89da7afff1dd53d2b2052a)
- [perl: Updated to use our new perl macros](https://git.solus-project.com/packages/perl-timedate/commit/?id=c038529849d5e106e669fc46c05ff38ee46adf21)
- [poppler: Enabled qt4 and qt5 split packages thanks to improvements in new ypkg](https://git.solus-project.com/packages/poppler/commit/?id=79f77186c01a3dd58033e5b3216704740d96e5b4)
- [postgresql: Enable OpenSSL, optimize for speed.](https://git.solus-project.com/packages/postgresql/commit/?id=86b3a8a1f30d94f30fad0e53817dfca09eeaed77)
- [python-distutils-extra: Updated to 2.39 and enabled py3 support](https://git.solus-project.com/packages/python-distutils-extra/commit/?id=5b93d1790984601a441eb15797cc2ffb6decf3ac)
- [python-psutil: Updated to 4.1.0 and enabled py3 support](https://git.solus-project.com/packages/python-psutil/commit/?id=a8aeebec3de9ce8b7c06caf895cc85ef35fbf2b7)
- [sqlite3: Update to 3.12.1, and enable optimize: speed](https://git.solus-project.com/packages/sqlite3/commit/?id=2bfe3511ec6f8359daa308cb2c40374b90e06593)
- [qtpass 1.1.1](https://git.solus-project.com/packages/qtpass/commit/?id=fc03f4167b951728058a7ef6632176f04c01d80b)
- [telegram 0.9.40](https://git.solus-project.com/packages/telegram/commit/?id=45bdd5af0569f76cdfed6d4f3f3bf87c2335b428)
- [thunderbird: Updated to 38.7.2 and enabled locales.](https://git.solus-project.com/packages/thunderbird/commit/?id=b754c31111e0ca49b2c0b1746de95c7f9a353d9d)
- [xz: Enabled PGO.](https://git.solus-project.com/packages/xz/commit/?id=afe39f52dfde7c9846e170c8298ed909ffaa10d7)

  