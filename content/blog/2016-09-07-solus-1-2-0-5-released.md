---
author: Joshua Strobl
categories:
- News
- Releases
date: 2016-09-07T01:51:05Z
id: 1634
title: Solus 1.2.0.5 Released
url: /2016/09/07/solus-1-2-0-5-released/
--- 
Today we are providing a minor update to Solus 1.2 in the form of Solus 1.2.0.5. This release enables us to address a multitude of issues that have since been resolved after the release of Solus 1.2, such as:

- Budgie: 
 - Battery icon refresh issues were solved
 - We resolved an issue where the keyboard layout would revert to the default guessed layout for the locale on login
 - We switched to gnome-screensaver for screen locking and power management
- Installation: 
 - Issues using Solus and the installation media on some hardware configurations, such as NVIDIA Maxwell cards and Intel Skylake processors.
 - We solved an issue whereby the installer might hang scanning disks.
- Software: 
 - We delivered an updated GNOME 3.20 Stack, Pulseaudio 9, as well as Mesa 12. Additionally, we shipped with GCC 6.1.0, glibc 2.24, and the latest stable kernel 4.7.2.

You can download 1.2.0.5 via HTTP direct download and torrents from [here](https://solus-project.com/1-2-0-5/).

---

#### Full Changelog

##### Packages added to this release:

-  appstream-data
-  appstream-glib
-  arc-icon-theme
-  breeze-snow-cursor-theme
-  budgie-desktop-branding
-  budgie-desktop-branding-livecd
-  cyrus-sasl
-  djvulibre
-  docbook-xml
-  enca
-  exiv2
-  font-hack-ttf
-  font-indic-ttf
-  freetype2-subpixel
-  fuse-exfat
-  gcab
-  geoclue
-  gnome-color-manager
-  gnome-doc-utils
-  gnome-screensaver
-  graphite2
-  gspell
-  gvfs-goa
-  kbd
-  libhunspell
-  lzip
-  lzo
-  openldap
-  openvpn
-  rfkill
-  sdl1
-  solus-sc
-  thermald
-  tlp
-  tree
-  unixodbc
-  x265
-  xorg-driver-input-libinput
-  xvidcore
-  yelp
-  yelp-xsl

##### Packages removed from this release:

-  dc
-  evolve-sc
-  foomatic-filters
-  gnome-tweak-tool
-  libmpg123
-  python-configobj
-  rsync
-  texinfo
-  xorg-driver-input-evdev
-  xorg-driver-input-synaptics

##### Changes in this release:

**libass**

-  [Ikey Doherty: Enable enca support, build x86 ASM instructions](https://git.solus-project.com/packages/libass/commit/?id=e38e168)

**liboauth**

-  [Ikey Doherty: Update to 1.0.3](https://git.solus-project.com/packages/liboauth/commit/?id=2e99f46)

**libgeocode-glib**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/libgeocode-glib/commit/?id=a4892fb)

**colord**

-  [Ikey Doherty: Update to 1.3.3, use upstream provided tmpfiles](https://git.solus-project.com/packages/colord/commit/?id=e929de3)
-  [Ikey Doherty: Fix the ownership of /var/lib/colord](https://git.solus-project.com/packages/colord/commit/?id=a011d3a)
-  [Ikey Doherty: Update to 1.2.12](https://git.solus-project.com/packages/colord/commit/?id=bd5a8c4)
-  [Ikey Doherty: Fix polkit on native host build](https://git.solus-project.com/packages/colord/commit/?id=1857172)
-  [Ikey Doherty: Exercise the daemon](https://git.solus-project.com/packages/colord/commit/?id=39fb162)
-  [Ikey Doherty: Add missing user/home combo](https://git.solus-project.com/packages/colord/commit/?id=5637dd9)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/colord/commit/?id=dccaaea)
-  [Ikey Doherty: Use a more stateless configuration](https://git.solus-project.com/packages/colord/commit/?id=80a0936)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/colord/commit/?id=a129abf)
-  [Ikey Doherty: Rebuild for cflags, convert to ypkg, fix udev dir](https://git.solus-project.com/packages/colord/commit/?id=c0a55f4)

**less**

-  [Ikey Doherty: Wanton abandonment](https://git.solus-project.com/packages/less/commit/?id=47019f9)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/less/commit/?id=88ff32e)
-  [Ikey Doherty: Bump for SC testing](https://git.solus-project.com/packages/less/commit/?id=31e97ac)

**libpipeline**

-  [Ikey Doherty: Convert to ypkg, update to 1.4.1](https://git.solus-project.com/packages/libpipeline/commit/?id=06ec9da)

**llvm**

-  [Ikey Doherty: Account for missing yaml-bench](https://git.solus-project.com/packages/llvm/commit/?id=c445e30)
-  [Ikey Doherty: Re-enable FileCheck, required for Rust bootstrap](https://git.solus-project.com/packages/llvm/commit/?id=d7f5258)
-  [Ikey Doherty: Update to 3.8.1, latest upstream version](https://git.solus-project.com/packages/llvm/commit/?id=b3e9be1)
-  [Ikey Doherty: Account for abandoned paths](https://git.solus-project.com/packages/llvm/commit/?id=1504cdf)
-  [Ikey Doherty: scan-view/build is now part of the install, fix the shared bool](https://git.solus-project.com/packages/llvm/commit/?id=7c4421e)
-  [Ikey Doherty: Update to 3.8.0 -- don't force relro at this level either](https://git.solus-project.com/packages/llvm/commit/?id=34d4f29)

**lz4**

-  [Ikey Doherty: Update to 131 for pkgconfig](https://git.solus-project.com/packages/lz4/commit/?id=ecc9f33)

**a52dec**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/a52dec/commit/?id=6158437)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/a52dec/commit/?id=1a36401)

**libvpx**

-  [Joshua Strobl: Simplify packaging, enable multilib, enable gcc5 building.](https://git.solus-project.com/packages/libvpx/commit/?id=ad8b524)

**evince**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/evince/commit/?id=65d082f)
-  [Joshua Strobl: Change component to office.](https://git.solus-project.com/packages/evince/commit/?id=8c48b38)
-  [Justin Zobel: Update to 3.18.2 and enable djvu support](https://git.solus-project.com/packages/evince/commit/?id=462119c)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/evince/commit/?id=17b2ce4)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/evince/commit/?id=0937c68)

**gd**

-  [Joshua Strobl: Enable multilib](https://git.solus-project.com/packages/gd/commit/?id=1d3ca83)

**unrar**

-  [Zach Bacon: Updated unrar and updated package.yml component](https://git.solus-project.com/packages/unrar/commit/?id=7111ed1)

**libnspr**

-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/libnspr/commit/?id=71a6a1b)

**gstreamer-1.0-plugins-good**

-  [Ikey Doherty: Update to 1.8.2](https://git.solus-project.com/packages/gstreamer-1.0-plugins-good/commit/?id=b62898a)
-  [Ikey Doherty: Rebuild against latest PulseAudio](https://git.solus-project.com/packages/gstreamer-1.0-plugins-good/commit/?id=17bc341)

**firefox**

-  [Joshua Strobl: Disable libevent in config.](https://git.solus-project.com/packages/firefox/commit/?id=2cfd33c)
-  [Joshua Strobl: Drop using system libevent due to crashes.](https://git.solus-project.com/packages/firefox/commit/?id=6bacb09)
-  [Ikey Doherty: Update to Firefox 48.0.2](https://git.solus-project.com/packages/firefox/commit/?id=b204dfa)
-  [Ikey Doherty: Update langpacks for 48.0.2](https://git.solus-project.com/packages/firefox/commit/?id=d0c57bd)
-  [Ikey Doherty: Explicitly enable MOZ_RUST](https://git.solus-project.com/packages/firefox/commit/?id=84de435)
-  [Ikey Doherty: Add rust to build deps for MP4 decoder](https://git.solus-project.com/packages/firefox/commit/?id=a2d7365)
-  [Ikey Doherty: Update to 48.0](https://git.solus-project.com/packages/firefox/commit/?id=0369e5c)
-  [Ikey Doherty: Bump langpacks to 48.0](https://git.solus-project.com/packages/firefox/commit/?id=1d3b054)
-  [Ikey Doherty: Rebuild to address super instability](https://git.solus-project.com/packages/firefox/commit/?id=4b58fb0)
-  [Ikey Doherty: Chokes on LTO for now, so just enable normal optimize flags](https://git.solus-project.com/packages/firefox/commit/?id=40c0e14)
-  [Ikey Doherty: Update to 47.0.1, enable -O3/lto](https://git.solus-project.com/packages/firefox/commit/?id=84e4a70)
-  [Ikey Doherty: langpacks: 47.0.1](https://git.solus-project.com/packages/firefox/commit/?id=8d026fb)
-  [Ikey Doherty: Force acceleration (Thanks Horst3180!)](https://git.solus-project.com/packages/firefox/commit/?id=33a77ea)
-  [Ikey Doherty: Update to 47.0](https://git.solus-project.com/packages/firefox/commit/?id=96cdc1d)
-  [Ikey Doherty: Bump langpacks for 47.0](https://git.solus-project.com/packages/firefox/commit/?id=432ec0b)
-  [Ikey Doherty: Update to 46.0.1](https://git.solus-project.com/packages/firefox/commit/?id=376448f)
-  [Ikey Doherty: Update langpacks for 46.0.1](https://git.solus-project.com/packages/firefox/commit/?id=0d42157)
-  [Ikey Doherty: Enable GTK3 integration](https://git.solus-project.com/packages/firefox/commit/?id=1763895)
-  [Ikey Doherty: Update to 46.0](https://git.solus-project.com/packages/firefox/commit/?id=46890c5)
-  [Ikey Doherty: Bump langpacks to 46.0](https://git.solus-project.com/packages/firefox/commit/?id=c9418e3)
-  [Ikey Doherty: Update to 45.0.2, and now ship with all locales](https://git.solus-project.com/packages/firefox/commit/?id=f7dd186)
-  [Ikey Doherty: Clean up this package, rebuild for debug symbols](https://git.solus-project.com/packages/firefox/commit/?id=45eb9f1)
-  [Ikey Doherty: Fix pspec for cve-check-tool](https://git.solus-project.com/packages/firefox/commit/?id=0219a71)
-  [Ikey Doherty: Update to 45.0.1](https://git.solus-project.com/packages/firefox/commit/?id=59b8bc4)
-  [Ikey Doherty: Disable firefox cflag overrides, and temporarily do not use system ICU](https://git.solus-project.com/packages/firefox/commit/?id=7c1b480)
-  [Ikey Doherty: Update to 45.0](https://git.solus-project.com/packages/firefox/commit/?id=b258d24)

**libxshmfence**

-  [Ikey Doherty: Fix the .pc file](https://git.solus-project.com/packages/libxshmfence/commit/?id=9047ac9)
-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/libxshmfence/commit/?id=791b733)

**gstreamer-1.0-plugins-base**

-  [Ikey Doherty: Update to 1.8.2, enable Opus](https://git.solus-project.com/packages/gstreamer-1.0-plugins-base/commit/?id=b3ea944)

**gobject-introspection**

-  [Ikey Doherty: Update to 1.48.0](https://git.solus-project.com/packages/gobject-introspection/commit/?id=c21fbb8)

**libsndfile**

-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/libsndfile/commit/?id=2910059)

**libxdmcp**

-  [Ikey Doherty: Cleanup, optimize for speed](https://git.solus-project.com/packages/libxdmcp/commit/?id=1e85e73)

**xorg-driver-video-amdgpu**

-  [Ikey Doherty: Rebuild for new X.Org](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=885bac3)
-  [Ikey Doherty: Update to 1.1.0](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=0edb1d3)

**libnss**

-  [Ikey Doherty: Bump for repo inclusion](https://git.solus-project.com/packages/libnss/commit/?id=c8fe3a8)

**gstreamer-1.0**

-  [Ikey Doherty: Update to 1.8.2](https://git.solus-project.com/packages/gstreamer-1.0/commit/?id=a20455c)

**aalib**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/aalib/commit/?id=9c98391)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/aalib/commit/?id=509ade7)
-  [Justin Zobel: Change to ypkg](https://git.solus-project.com/packages/aalib/commit/?id=fff71bc)

**gnome-calendar**

-  [Joshua Strobl: Update to 3.20.3](https://git.solus-project.com/packages/gnome-calendar/commit/?id=5d4bd92)
-  [Ikey Doherty: Only use GNOME Shell schemas when using GNOME Shell](https://git.solus-project.com/packages/gnome-calendar/commit/?id=b6788d1)
-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gnome-calendar/commit/?id=9808d5a)
-  [Joshua Strobl: Change component to office.](https://git.solus-project.com/packages/gnome-calendar/commit/?id=b09eb9a)
-  [Justin Zobel: Update to 3.18.3](https://git.solus-project.com/packages/gnome-calendar/commit/?id=71e7ee9)

**dconf-editor**

-  [Ikey Doherty: Update to 3.20.3](https://git.solus-project.com/packages/dconf-editor/commit/?id=c1ac4e6)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/dconf-editor/commit/?id=5b054ef)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dconf-editor/commit/?id=d62c011)

**fontconfig**

-  [Ikey Doherty: Fix prefix for fontconfig](https://git.solus-project.com/packages/fontconfig/commit/?id=33cabfd)
-  [Ikey Doherty: Fix broken -32bit-devel dependency](https://git.solus-project.com/packages/fontconfig/commit/?id=0068b58)
-  [Ikey Doherty: Convert fontconfig to a stateless configuration](https://git.solus-project.com/packages/fontconfig/commit/?id=f4abf11)
-  [Ikey Doherty: Bump](https://git.solus-project.com/packages/fontconfig/commit/?id=81ba5a5)
-  [Ikey Doherty: Remove defunct local.conf file](https://git.solus-project.com/packages/fontconfig/commit/?id=bd8ccfb)
-  [Ikey Doherty: Enforce Solus defaults](https://git.solus-project.com/packages/fontconfig/commit/?id=bb8199b)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/fontconfig/commit/?id=07883ae)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/fontconfig/commit/?id=ccba175)

**grub2**

-  [Ikey Doherty: Fix broken update-grub2](https://git.solus-project.com/packages/grub2/commit/?id=449cb2e)
-  [Ikey Doherty: Enforce branding](https://git.solus-project.com/packages/grub2/commit/?id=eef29d5)

**colord-gtk**

-  [Ikey Doherty: Update to latest](https://git.solus-project.com/packages/colord-gtk/commit/?id=de70f4e)

**solus-artwork**

-  [Ikey Doherty: Update to v12 for MATE desktop support](https://git.solus-project.com/packages/solus-artwork/commit/?id=ddf3063)
-  [Ikey Doherty: Update to v11](https://git.solus-project.com/packages/solus-artwork/commit/?id=d8faa1d)
-  [Ikey Doherty: Update to v9 artwork and drop the legacy Evotex link](https://git.solus-project.com/packages/solus-artwork/commit/?id=b41ffc5)
-  [Ikey Doherty: Add icons, took time. Much crying](https://git.solus-project.com/packages/solus-artwork/commit/?id=323a699)
-  [Ikey Doherty: Remove unnecessary dependencies](https://git.solus-project.com/packages/solus-artwork/commit/?id=0a5df9a)
-  [Ikey Doherty: Update to v7](https://git.solus-project.com/packages/solus-artwork/commit/?id=cfc9a2f)

**gstreamer-1.0-plugins-ugly**

-  [Ikey Doherty: Update to 1.8.2](https://git.solus-project.com/packages/gstreamer-1.0-plugins-ugly/commit/?id=a543b6d)

**os-prober**

-  [Ikey Doherty: Roll back as new os-prober breaks](https://git.solus-project.com/packages/os-prober/commit/?id=d15c50e)
-  [Ikey Doherty: Update to 1.71 -- My laptop does not have Vista..](https://git.solus-project.com/packages/os-prober/commit/?id=ef8685e)

**gmp**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gmp/commit/?id=7bff9f5)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gmp/commit/?id=9304038)

**libusbmuxd**

-  [Joshua Strobl: Updated libusbmuxd to address the following CVEs: -- CVE-2016-5104](https://git.solus-project.com/packages/libusbmuxd/commit/?id=be384bd)

**glib2**

-  [Ikey Doherty: Fix derps in multilib with new GNOME](https://git.solus-project.com/packages/glib2/commit/?id=ae66b28)
-  [Ikey Doherty: Add missing deps](https://git.solus-project.com/packages/glib2/commit/?id=7c0f4a1)
-  [Ikey Doherty: Account for abandoned files](https://git.solus-project.com/packages/glib2/commit/?id=229bba4)
-  [Ikey Doherty: Update to 2.48.1](https://git.solus-project.com/packages/glib2/commit/?id=03b6250)
-  [Ikey Doherty: Let's not talk about that](https://git.solus-project.com/packages/glib2/commit/?id=8b45073)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/glib2/commit/?id=135cb33)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/glib2/commit/?id=d76c36e)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/glib2/commit/?id=42e6788)

**baselayout**

-  [Ikey Doherty: Update to 1.2.0.5](https://git.solus-project.com/packages/baselayout/commit/?id=d920861)
-  [Ikey Doherty: Bump to 1.2.1](https://git.solus-project.com/packages/baselayout/commit/?id=c12ee78)
-  [Joshua Strobl: Bump to 1.2](https://git.solus-project.com/packages/baselayout/commit/?id=193ff74)
-  [Ikey Doherty: Fix branding](https://git.solus-project.com/packages/baselayout/commit/?id=03cd177)
-  [Ikey Doherty: Bump to 1.1.6](https://git.solus-project.com/packages/baselayout/commit/?id=3334619)
-  [Ikey Doherty: Update to 1.1.5](https://git.solus-project.com/packages/baselayout/commit/?id=af4dc0d)
-  [Ikey Doherty: Bump to drop sysctl file](https://git.solus-project.com/packages/baselayout/commit/?id=75e03dd)
-  [Ikey Doherty: Nuke dead sysctl.conf file](https://git.solus-project.com/packages/baselayout/commit/?id=dca3500)
-  [Ikey Doherty: Support stateless shells file](https://git.solus-project.com/packages/baselayout/commit/?id=074e97f)

**iptables**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/iptables/commit/?id=2ec450a)

**libpaper**

-  [Ikey Doherty: Convert to ypkg, enable multilib for cups](https://git.solus-project.com/packages/libpaper/commit/?id=10ce71e)

**bc**

-  [Ikey Doherty: Update to 1.06.95](https://git.solus-project.com/packages/bc/commit/?id=fec39ea)
-  [Ikey Doherty: Ensure we replace dead-dc pkg](https://git.solus-project.com/packages/bc/commit/?id=36e0aef)
-  [Ikey Doherty: Rebuild for cflags, convert to ypkg](https://git.solus-project.com/packages/bc/commit/?id=dcfda62)

**libcdio-paranoia**

-  [Joshua Strobl: Add cdparanoia symlink to cd-paranoia](https://git.solus-project.com/packages/libcdio-paranoia/commit/?id=cbc397b)

**moka-icon-theme**

-  [Ikey Doherty: Include missing license (sorry Sam)](https://git.solus-project.com/packages/moka-icon-theme/commit/?id=6c6a4ea)

**python**

-  [Ikey Doherty: Fix dependency situation for now until -sqlite, etc, are split out](https://git.solus-project.com/packages/python/commit/?id=bf6abe5)
-  [Ikey Doherty: Convert to ypkg, enable TKinter, and split up the packaging a bit](https://git.solus-project.com/packages/python/commit/?id=459aca3)
-  [Ikey Doherty: Update to 2.7.12](https://git.solus-project.com/packages/python/commit/?id=342bfda)
-  [Ikey Doherty: Rebuild due to SSL](https://git.solus-project.com/packages/python/commit/?id=3c51218)

**vlc**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/vlc/commit/?id=9767dbf)
-  [Ikey Doherty: Rebuild against PulseAudio 9](https://git.solus-project.com/packages/vlc/commit/?id=70ab0ad)
-  [Joshua Strobl: Change component to multimedia.video](https://git.solus-project.com/packages/vlc/commit/?id=10a3344)
-  [Ikey Doherty: Update to 2.2.4, enabling run](https://git.solus-project.com/packages/vlc/commit/?id=59579c8)
-  [Ikey Doherty: Update to 2.2.3 for bug fixes](https://git.solus-project.com/packages/vlc/commit/?id=2427251)
-  [Ikey Doherty: Enabling round#1](https://git.solus-project.com/packages/vlc/commit/?id=f115b90)
-  [Justin Zobel: Enable opus support](https://git.solus-project.com/packages/vlc/commit/?id=dfc3daf)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/vlc/commit/?id=9eb37e7)

**libupnp**

-  [Ikey Doherty: Update to 1.6.20 to address CVE-2016-6255](https://git.solus-project.com/packages/libupnp/commit/?id=d6fc2fe)

**cpio**

-  [Ikey Doherty: Address CVE-2016-2037](https://git.solus-project.com/packages/cpio/commit/?id=cc6b874)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cpio/commit/?id=9eb62cb)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cpio/commit/?id=42cfe80)

**gtk2**

-  [Ikey Doherty: Fix broken deps](https://git.solus-project.com/packages/gtk2/commit/?id=fd5dab6)
-  [Ikey Doherty: Fix prefix for gtk2 to unbreak theming](https://git.solus-project.com/packages/gtk2/commit/?id=69f956d)
-  [Joshua Strobl: Bump for ikey](https://git.solus-project.com/packages/gtk2/commit/?id=c779d2b)
-  [Ikey Doherty: Bump for release](https://git.solus-project.com/packages/gtk2/commit/?id=cfe0349)
-  [Ikey Doherty: Enable multilib without cups for now](https://git.solus-project.com/packages/gtk2/commit/?id=68efce0)
-  [Ikey Doherty: Use a stateless configuration](https://git.solus-project.com/packages/gtk2/commit/?id=5326157)

**gtk3**

-  [Ikey Doherty: Update to 3.20.9](https://git.solus-project.com/packages/gtk3/commit/?id=4d50100)
-  [Ikey Doherty: Stop spammy GTK&#8230; can't handle it anymore](https://git.solus-project.com/packages/gtk3/commit/?id=46ce8ec)
-  [Ikey Doherty: Update to 3.20.6 and force multilib workarounds in](https://git.solus-project.com/packages/gtk3/commit/?id=0599820)
-  [Ikey Doherty: Rebuild using new colord](https://git.solus-project.com/packages/gtk3/commit/?id=b0e1be2)
-  [Ikey Doherty: Fix 64bit build](https://git.solus-project.com/packages/gtk3/commit/?id=394dfc4)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/gtk3/commit/?id=f8a4a1d)
-  [Justin Zobel: Upgrade to 3.18.9](https://git.solus-project.com/packages/gtk3/commit/?id=0e0b255)
-  [Ikey Doherty: Convert to a stateless configuration](https://git.solus-project.com/packages/gtk3/commit/?id=887d3f1)

**libwacom**

-  [Ikey Doherty: Update to 0.22](https://git.solus-project.com/packages/libwacom/commit/?id=90cf405)

**os-installer**

-  [Ikey Doherty: Hotfix](https://git.solus-project.com/packages/os-installer/commit/?id=5583dae)
-  [Ikey Doherty: Update to v12.0](https://git.solus-project.com/packages/os-installer/commit/?id=f0bf3c1)
-  [Ikey Doherty: Fix discoverability](https://git.solus-project.com/packages/os-installer/commit/?id=c508055)
-  [Ikey Doherty: Last fixes](https://git.solus-project.com/packages/os-installer/commit/?id=6592667)
-  [Ikey Doherty: Explicitly enable external access](https://git.solus-project.com/packages/os-installer/commit/?id=821ecb4)
-  [Ikey Doherty: Sync..](https://git.solus-project.com/packages/os-installer/commit/?id=2bf5d87)
-  [Ikey Doherty: Sync again &#8230;](https://git.solus-project.com/packages/os-installer/commit/?id=16976cf)
-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/os-installer/commit/?id=03d0be6)
-  [Ikey Doherty: Sync again](https://git.solus-project.com/packages/os-installer/commit/?id=41619fa)
-  [Ikey Doherty: Bump and grind](https://git.solus-project.com/packages/os-installer/commit/?id=95d1491)
-  [Ikey Doherty: Stop everything wanting a terminal](https://git.solus-project.com/packages/os-installer/commit/?id=8f83389)
-  [Ikey Doherty: Sync. Again.](https://git.solus-project.com/packages/os-installer/commit/?id=783ee96)
-  [Ikey Doherty: Attempt to fix resize2fs failure](https://git.solus-project.com/packages/os-installer/commit/?id=fe7ce7b)
-  [Ikey Doherty: Sync with git and use apply_patches for feck sake](https://git.solus-project.com/packages/os-installer/commit/?id=aefe780)
-  [Ikey Doherty: Don't shit bricks under Qemu](https://git.solus-project.com/packages/os-installer/commit/?id=60c2529)
-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/os-installer/commit/?id=074ffcd)
-  [Ikey Doherty: Fix borky shortcut](https://git.solus-project.com/packages/os-installer/commit/?id=2ec82e2)
-  [Ikey Doherty: Stop spamming -- so we can test GRUB without using the terminal](https://git.solus-project.com/packages/os-installer/commit/?id=71da2e6)
-  [Ikey Doherty: Sync with git to fix broken swap mount](https://git.solus-project.com/packages/os-installer/commit/?id=a7180e8)
-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/os-installer/commit/?id=eb91ad2)
-  [Ikey Doherty: Sync](https://git.solus-project.com/packages/os-installer/commit/?id=11ecee3)
-  [Ikey Doherty: That took far too long to spot.](https://git.solus-project.com/packages/os-installer/commit/?id=e4d9f00)
-  [Ikey Doherty: Sync..](https://git.solus-project.com/packages/os-installer/commit/?id=75bf9cf)
-  [Ikey Doherty: Sync again.. we'll get this right eventually 😛](https://git.solus-project.com/packages/os-installer/commit/?id=85eda5a)
-  [Ikey Doherty: Hopefully fix UEFI booting..](https://git.solus-project.com/packages/os-installer/commit/?id=b48a205)
-  [Ikey Doherty: Sync with git again](https://git.solus-project.com/packages/os-installer/commit/?id=04d6a25)
-  [Ikey Doherty: Fix the partuuid issue](https://git.solus-project.com/packages/os-installer/commit/?id=d03495d)
-  [Ikey Doherty: Sync with git again for fstab fixes](https://git.solus-project.com/packages/os-installer/commit/?id=5eea76d)
-  [Ikey Doherty: Sync latest fixes and lightdm config](https://git.solus-project.com/packages/os-installer/commit/?id=d21e7ac)
-  [Ikey Doherty: Yet another rebuild](https://git.solus-project.com/packages/os-installer/commit/?id=a7f1657)
-  [Ikey Doherty: Add GRUB support](https://git.solus-project.com/packages/os-installer/commit/?id=a4f0cbe)
-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/os-installer/commit/?id=d6e0bca)
-  [Ikey Doherty: Sync with git, fix up package a bit](https://git.solus-project.com/packages/os-installer/commit/?id=6a5a06e)
-  [Ikey Doherty: Make this actually work sorta.](https://git.solus-project.com/packages/os-installer/commit/?id=a5c2e83)
-  [Ikey Doherty: Update for testing](https://git.solus-project.com/packages/os-installer/commit/?id=fd3c48a)
-  [Ikey Doherty: Fix syntax issue](https://git.solus-project.com/packages/os-installer/commit/?id=7e28ff1)
-  [Ikey Doherty: Handle the gschema stuff through packaging of budgie-desktop-branding-livecd](https://git.solus-project.com/packages/os-installer/commit/?id=e8d827d)

**libdrm**

-  [Ikey Doherty: Update to 2.4.68](https://git.solus-project.com/packages/libdrm/commit/?id=7135842)
-  [Ikey Doherty: Update to 2.67](https://git.solus-project.com/packages/libdrm/commit/?id=b8f4354)

**xorg-driver-video-intel**

-  [Ikey Doherty: Rebuild against new X.Org](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=51b02a7)
-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=9a7ddae)
-  [Ikey Doherty: Enable DRI3 once more](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=e3f0743)
-  [Ikey Doherty: Disable DRI3 due to regression with text display](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=e4662c7)
-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=353eda3)
-  [Ikey Doherty: Sync with git and rebuild against new xorg, using DRI3 by default](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=30b7424)

**libnotify**

-  [Joshua Strobl: Convert to YAML and multilib.](https://git.solus-project.com/packages/libnotify/commit/?id=6ba4130)

**gnutls**

-  [Ikey Doherty: Address CVE-2016-4456 by updating to 3.4.13](https://git.solus-project.com/packages/gnutls/commit/?id=1e01c86)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/gnutls/commit/?id=f2e82be)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gnutls/commit/?id=c02444d)
-  [Ikey Doherty: Update to v3.4.9](https://git.solus-project.com/packages/gnutls/commit/?id=fb18259)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gnutls/commit/?id=0cba6c3)

**pango**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/pango/commit/?id=f4331a5)

**util-linux**

-  [Ikey Doherty: Fix the broken 32-bit pkgconfig file](https://git.solus-project.com/packages/util-linux/commit/?id=0a5c25c)
-  [Ikey Doherty: Add missing arch command](https://git.solus-project.com/packages/util-linux/commit/?id=c1e3b79)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/util-linux/commit/?id=62713c3)

**atkmm**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/atkmm/commit/?id=3c9d404)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/atkmm/commit/?id=b9c527f)

**ca-certs**

-  [Ikey Doherty: Rebuild today, and do one tomorrow, for solus-project.com](https://git.solus-project.com/packages/ca-certs/commit/?id=1075178)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/ca-certs/commit/?id=20a3c64)
-  [Ikey Doherty: Routine update](https://git.solus-project.com/packages/ca-certs/commit/?id=17262fa)

**freetype2**

-  [Ikey Doherty: Fix weird issues in packaging](https://git.solus-project.com/packages/freetype2/commit/?id=2d58eca)
-  [Ikey Doherty: Rebuild for speed](https://git.solus-project.com/packages/freetype2/commit/?id=491d416)
-  [Ikey Doherty: Enable subpixel rendering through a subpackage](https://git.solus-project.com/packages/freetype2/commit/?id=175c6f6)
-  [Ikey Doherty: Ensure 64-bit patch is applied](https://git.solus-project.com/packages/freetype2/commit/?id=d6aea89)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/freetype2/commit/?id=af1c51a)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/freetype2/commit/?id=73c071e)

**dhclient**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/dhclient/commit/?id=dfa6c7e)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dhclient/commit/?id=75e232e)

**libp11-kit**

-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/libp11-kit/commit/?id=9c1b6a7)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libp11-kit/commit/?id=25704e8)
-  [Ikey Doherty: Update to v0.23.2](https://git.solus-project.com/packages/libp11-kit/commit/?id=130fc06)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libp11-kit/commit/?id=e2c5526)

**hexchat**

-  [Justin Zobel: Update to 2.12.1](https://git.solus-project.com/packages/hexchat/commit/?id=51f8d15)
-  [Ikey Doherty: Rebuild for new Perl](https://git.solus-project.com/packages/hexchat/commit/?id=7db4786)
-  [Justin Zobel: Update to 2.12.0](https://git.solus-project.com/packages/hexchat/commit/?id=3496bcb)

**libcairo**

-  [Ikey Doherty: Update to 1.14.6](https://git.solus-project.com/packages/libcairo/commit/?id=ea0b238)
-  [Ikey Doherty: Unbreak our pkgconfig file on 32bit](https://git.solus-project.com/packages/libcairo/commit/?id=a1c9194)
-  [Ikey Doherty: Enable fontconfig on 32bit pkg](https://git.solus-project.com/packages/libcairo/commit/?id=ac9d94c)
-  [Ikey Doherty: Finally enable cairo multilib](https://git.solus-project.com/packages/libcairo/commit/?id=ebfb4d4)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libcairo/commit/?id=b4d1778)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libcairo/commit/?id=45482f7)

**transmission**

-  [Joshua Strobl: Update to 2.92](https://git.solus-project.com/packages/transmission/commit/?id=1a6b029)

**xorg-server**

-  [Ikey Doherty: Update to 1.18.4](https://git.solus-project.com/packages/xorg-server/commit/?id=5a46b5a)
-  [Ikey Doherty: Disable logind, it's broken. Be explicit in options and fix GCC5 stuff.](https://git.solus-project.com/packages/xorg-server/commit/?id=1361caf)
-  [Ikey Doherty: Rebuild against new mesa, fix CXXFLAGS](https://git.solus-project.com/packages/xorg-server/commit/?id=ccd3482)
-  [Ikey Doherty: Update to 1.18.3](https://git.solus-project.com/packages/xorg-server/commit/?id=ec4b810)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/xorg-server/commit/?id=53c6ed4)

**dbus**

-  [Ikey Doherty: Fix broken 32bit dep releases](https://git.solus-project.com/packages/dbus/commit/?id=9080db4)
-  [Ikey Doherty: Fix dependencies, license, and remove conflicting /var/run/dbus](https://git.solus-project.com/packages/dbus/commit/?id=b4a4be6)
-  [Ikey Doherty: Underp that](https://git.solus-project.com/packages/dbus/commit/?id=8e5f2e4)
-  [Ikey Doherty: Update to 1.10.8, enable user sessions](https://git.solus-project.com/packages/dbus/commit/?id=0b656ad)
-  [Ikey Doherty: Disable fatal warnings to stop Steam from coredumping](https://git.solus-project.com/packages/dbus/commit/?id=540f88d)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/dbus/commit/?id=d861c1b)

**libgdata**

-  [Ikey Doherty: Rebuild to clean up](https://git.solus-project.com/packages/libgdata/commit/?id=66ed41e)
-  [Ikey Doherty: Update to 0.17.5](https://git.solus-project.com/packages/libgdata/commit/?id=b861393)

**pam**

-  [Ikey Doherty: Simplify packaging](https://git.solus-project.com/packages/pam/commit/?id=4e876ed)
-  [Ikey Doherty: Use stateless shells file where appropriate](https://git.solus-project.com/packages/pam/commit/?id=b40e46c)
-  [Ikey Doherty: Drop /etc/environment file](https://git.solus-project.com/packages/pam/commit/?id=61525fa)
-  [Ikey Doherty: Enable 32-bit libs](https://git.solus-project.com/packages/pam/commit/?id=291decf)

**enchant**

-  [Joshua Strobl: Bump to rel 7 for repo resolution.](https://git.solus-project.com/packages/enchant/commit/?id=8a26317)
-  [Ikey Doherty: Disable static libraries](https://git.solus-project.com/packages/enchant/commit/?id=a44e4c4)
-  [Stefan Ric: Convert to yaml format and fix spellchecker](https://git.solus-project.com/packages/enchant/commit/?id=f1485d3)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/enchant/commit/?id=605020a)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/enchant/commit/?id=558417d)

**libxcomposite**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libxcomposite/commit/?id=07115b1)

**gnome-control-center**

-  [Ikey Doherty: Add the new dep for gvfs-goa](https://git.solus-project.com/packages/gnome-control-center/commit/?id=5f83701)
-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/gnome-control-center/commit/?id=53b919e)
-  [Joshua Strobl: Okay actually build.](https://git.solus-project.com/packages/gnome-control-center/commit/?id=194025a)
-  [Joshua Strobl: Rebuild against Pulseaudio 9, drop component.xml file.](https://git.solus-project.com/packages/gnome-control-center/commit/?id=f6a9c53)
-  [Ikey Doherty: Add gnome-color-manager rundep](https://git.solus-project.com/packages/gnome-control-center/commit/?id=938c344)
-  [Ikey Doherty: Rebuild against new colord](https://git.solus-project.com/packages/gnome-control-center/commit/?id=981ea49)
-  [Ikey Doherty: Drop icon size to 192, the people have spoken :')](https://git.solus-project.com/packages/gnome-control-center/commit/?id=d60fad6)
-  [Ikey Doherty: Update README](https://git.solus-project.com/packages/gnome-control-center/commit/?id=7cebc93)
-  [Ikey Doherty: Use Solus branding, not Budgie](https://git.solus-project.com/packages/gnome-control-center/commit/?id=e5e813d)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gnome-control-center/commit/?id=b654b86)

**gnome-system-monitor**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=c7c91e0)

**gnome-online-accounts**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=1ad0868)
-  [Joshua Strobl: Update to 3.18.4](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=ec850bf)

**wayland**

-  [Ikey Doherty: Update to 1.10.0 for GTK+ 3.20](https://git.solus-project.com/packages/wayland/commit/?id=edd2406)

**cogl**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cogl/commit/?id=24beb99)
-  [Ikey Doherty: Convert to ypkg for cleaning](https://git.solus-project.com/packages/cogl/commit/?id=38482db)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cogl/commit/?id=d7016d9)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cogl/commit/?id=cef0d1c)

**libvorbis**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libvorbis/commit/?id=d38b1be)
-  [Ikey Doherty: Update to 1.3.5, build for speed](https://git.solus-project.com/packages/libvorbis/commit/?id=28d7287)

**pangomm**

-  [Ikey Doherty: Update to 2.40.0](https://git.solus-project.com/packages/pangomm/commit/?id=310ce89)

**libxmu**

-  [Ikey Doherty: Convert to ypkg, enable multilib, build for speed](https://git.solus-project.com/packages/libxmu/commit/?id=a6344b7)

**libsm**

-  [Ikey Doherty: Bump to fix deps](https://git.solus-project.com/packages/libsm/commit/?id=a26382f)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libsm/commit/?id=2194e1b)

**findutils**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/findutils/commit/?id=c42588a)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/findutils/commit/?id=9540aa8)

**kernel**

-  [Ikey Doherty: Update to 4.7.2, raise NCPU to 48 (T329)](https://git.solus-project.com/packages/kernel/commit/?id=1783513)
-  [Ikey Doherty: Account for the documentation files](https://git.solus-project.com/packages/kernel/commit/?id=eec934d)
-  [Ikey Doherty: Update to 4.7.0, the latest upstream kernel](https://git.solus-project.com/packages/kernel/commit/?id=788256a)
-  [Ikey Doherty: Bump for build](https://git.solus-project.com/packages/kernel/commit/?id=838db89)
-  [Nicolas Laplante: Enable CONFIG_UHID as a module](https://git.solus-project.com/packages/kernel/commit/?id=c9b2028)
-  [Ikey Doherty: Update to 4.4.16, latest LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=622e2c8)
-  [Ikey Doherty: Fix install of kernel-tools](https://git.solus-project.com/packages/kernel/commit/?id=039f75c)
-  [Ikey Doherty: Enable kernel-tools again](https://git.solus-project.com/packages/kernel/commit/?id=0f547a5)
-  [Ikey Doherty: Enable CONFIG_BRCMFMAC_USB](https://git.solus-project.com/packages/kernel/commit/?id=3c0b121)
-  [Ikey Doherty: Update to the latest LTS kernel (4.4.15)](https://git.solus-project.com/packages/kernel/commit/?id=f4706a7)
-  [Ikey Doherty: Revert "Address CVE-2016-1237"](https://git.solus-project.com/packages/kernel/commit/?id=5294feb)
-  [Ikey Doherty: Address CVE-2016-1237](https://git.solus-project.com/packages/kernel/commit/?id=dc750fb)
-  [Ikey Doherty: Update to 4.4.14, addressing CVE-2016-4997 and CVE-2016-4998](https://git.solus-project.com/packages/kernel/commit/?id=e082e7f)
-  [Ikey Doherty: Enable some bits for mmc/nand](https://git.solus-project.com/packages/kernel/commit/?id=5da0fba)
-  [Ikey Doherty: Update to the latest LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=06a6a6c)
-  [Ikey Doherty: Enable CONFIG_DRM_AMDGPU_CIK for Kaveri APU support](https://git.solus-project.com/packages/kernel/commit/?id=00a39ec)
-  [Ikey Doherty: Enable kernel-tools, update to the latest LTS](https://git.solus-project.com/packages/kernel/commit/?id=bebb0d8)
-  [Ikey Doherty: Enable VFIO for VGA, DualShock on Sony, and import Steam's xpad driver](https://git.solus-project.com/packages/kernel/commit/?id=145f210)
-  [Justin Zobel: Update to 4.4.11](https://git.solus-project.com/packages/kernel/commit/?id=af337a4)
-  [Justin Zobel: Update to 4.4.10](https://git.solus-project.com/packages/kernel/commit/?id=44da832)
-  [Justin Zobel: Update to 4.4.9](https://git.solus-project.com/packages/kernel/commit/?id=b7ad5aa)
-  [Ikey Doherty: Address CVE-2015-8812](https://git.solus-project.com/packages/kernel/commit/?id=ae9727e)
-  [Ikey Doherty: Address CVE-2016-2847](https://git.solus-project.com/packages/kernel/commit/?id=96d7439)
-  [Ikey Doherty: Update to the latest LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=db3a6a5)
-  [Ikey Doherty: Adopt scheduler tweak (wasted cores) from Clear Linux kernel](https://git.solus-project.com/packages/kernel/commit/?id=ba0d14e)
-  [Ikey Doherty: Disable kernel-tools for now](https://git.solus-project.com/packages/kernel/commit/?id=021c1d5)
-  [Ikey Doherty: Make various kernel optimisations, drop BFQ, switch to deadline now.](https://git.solus-project.com/packages/kernel/commit/?id=09d6851)
-  [Ikey Doherty: Enable kernel-tools subpackage](https://git.solus-project.com/packages/kernel/commit/?id=17401c8)
-  [Ikey Doherty: Update to the latest LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=259d119)
-  [Ikey Doherty: Enable the Logitech Unifying Receiver](https://git.solus-project.com/packages/kernel/commit/?id=1786989)
-  [Ikey Doherty: Update to latest LTS, addressing CVE-2016-2143](https://git.solus-project.com/packages/kernel/commit/?id=84c6bf4)
-  [Ikey Doherty: Enable us to run static binaries](https://git.solus-project.com/packages/kernel/commit/?id=4775462)
-  [Ikey Doherty: Update to 4.4.5, and enable some gaming HIDs](https://git.solus-project.com/packages/kernel/commit/?id=5902b0b)
-  [Ikey Doherty: Fix this now because I know i'll forget it later](https://git.solus-project.com/packages/kernel/commit/?id=a80a038)
-  [Ikey Doherty: Enable CONFIG_SPI_GPIO for Baytrail SD card support](https://git.solus-project.com/packages/kernel/commit/?id=e17ca18)
-  [Ikey Doherty: Bump to override current kernel](https://git.solus-project.com/packages/kernel/commit/?id=6cdef8e)
-  [Ikey Doherty: Revert "Enable baseline optimisations"](https://git.solus-project.com/packages/kernel/commit/?id=545871a)
-  [Ikey Doherty: Enable baseline optimisations](https://git.solus-project.com/packages/kernel/commit/?id=c67c6d6)
-  [Justin Zobel: Update to 4.4.4](https://git.solus-project.com/packages/kernel/commit/?id=4f5fd4c)

**zlib**

-  [Ikey Doherty: Enable .a files as they've been explicitly requested](https://git.solus-project.com/packages/zlib/commit/?id=ff40374)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/zlib/commit/?id=5272b2c)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/zlib/commit/?id=4fd7021)

**libgtop**

-  [Ikey Doherty: Update to 2.34.0](https://git.solus-project.com/packages/libgtop/commit/?id=45b64b5)

**vino**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/vino/commit/?id=8c79b4a)

**json-c**

-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/json-c/commit/?id=862d1b1)

**system-config-printer**

-  [Ikey Doherty: Be stateless](https://git.solus-project.com/packages/system-config-printer/commit/?id=1d0ec46)

**dosfstools**

-  [Joshua Strobl: Update to 4.0, ensure we keep compat with 3.x](https://git.solus-project.com/packages/dosfstools/commit/?id=9ba0772)
-  [Ikey Doherty: Demote from system.base](https://git.solus-project.com/packages/dosfstools/commit/?id=2ffce7c)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/dosfstools/commit/?id=018844a)
-  [Ikey Doherty: Fix packaging](https://git.solus-project.com/packages/dosfstools/commit/?id=877e540)
-  [Justin Zobel: Rebuild for cflags and yml](https://git.solus-project.com/packages/dosfstools/commit/?id=e4783cf)

**popt**

-  [Ikey Doherty: Convert to ypkg and demote from system.base](https://git.solus-project.com/packages/popt/commit/?id=bf4f1bf)

**attr**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/attr/commit/?id=7e6f352)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/attr/commit/?id=cd95a46)

**libpciaccess**

-  [Ikey Doherty: Update to 0.13.4, optimize for speed, fix license](https://git.solus-project.com/packages/libpciaccess/commit/?id=b86f114)

**bluez**

-  [Ikey Doherty: Update to 5.41, latest upstream release](https://git.solus-project.com/packages/bluez/commit/?id=db1a8de)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/bluez/commit/?id=a016288)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/bluez/commit/?id=3f27d24)

**libinput**

-  [Ikey Doherty: Update to 1.4.0](https://git.solus-project.com/packages/libinput/commit/?id=9749744)

**libwebp**

-  [Ikey Doherty: Convert to ypkg. enable multilib](https://git.solus-project.com/packages/libwebp/commit/?id=b8dfa39)

**libxslt**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libxslt/commit/?id=6b1190e)

**libgtksourceview**

-  [Ikey Doherty: Update to 3.20.4](https://git.solus-project.com/packages/libgtksourceview/commit/?id=35e0da7)

**libfontenc**

-  [Ikey Doherty: Update to 1.1.3](https://git.solus-project.com/packages/libfontenc/commit/?id=cdb3784)
-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/libfontenc/commit/?id=caf51a3)

**libdmx**

-  [Ikey Doherty: Convert to ypkg and enable multilib](https://git.solus-project.com/packages/libdmx/commit/?id=52c4480)

**libxau**

-  [Ikey Doherty: Fix .pc prefix](https://git.solus-project.com/packages/libxau/commit/?id=8e684e6)
-  [Ikey Doherty: Drop accidental /emul32/ path](https://git.solus-project.com/packages/libxau/commit/?id=9b958f7)
-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/libxau/commit/?id=6bef5b4)

**libaio**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libaio/commit/?id=4256bd8)

**kmod**

-  [Ikey Doherty: Support a stateless configuration](https://git.solus-project.com/packages/kmod/commit/?id=82f0c3a)

**pulseaudio**

-  [Ikey Doherty: Fix linking for wine](https://git.solus-project.com/packages/pulseaudio/commit/?id=052478a)
-  [Ikey Doherty: Update to 9.0](https://git.solus-project.com/packages/pulseaudio/commit/?id=9a2597e)
-  [Ikey Doherty: Enable multilib for Steam](https://git.solus-project.com/packages/pulseaudio/commit/?id=ed43b0e)
-  [Ikey Doherty: Fix circular dependency](https://git.solus-project.com/packages/pulseaudio/commit/?id=4522ca4)
-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/pulseaudio/commit/?id=addbddc)
-  [Ikey Doherty: Support a stateless configuration by default](https://git.solus-project.com/packages/pulseaudio/commit/?id=59c9393)

**v4l-utils**

-  [Joshua Strobl: Enable multilib.](https://git.solus-project.com/packages/v4l-utils/commit/?id=cd7d46d)

**pisi**

-  [Ikey Doherty: Fix consistency issues bricking the golang build](https://git.solus-project.com/packages/pisi/commit/?id=4a545ba)
-  [Ikey Doherty: Fix comar for SC](https://git.solus-project.com/packages/pisi/commit/?id=1e76190)
-  [Ikey Doherty: Always use ypkg-gen-history where possible](https://git.solus-project.com/packages/pisi/commit/?id=f5bdbfd)
-  [Ikey Doherty: Add initial support for reproducible builds](https://git.solus-project.com/packages/pisi/commit/?id=58c1558)
-  [Ikey Doherty: Greatly optimize automatic binary dependencies](https://git.solus-project.com/packages/pisi/commit/?id=32284f1)
-  [Ikey Doherty: Need this too.](https://git.solus-project.com/packages/pisi/commit/?id=8041081)
-  [Ikey Doherty: Fix up flags (SSE4a issues, we'll wait for HSBs)](https://git.solus-project.com/packages/pisi/commit/?id=1437351)
-  [Ikey Doherty: Helps if we include this](https://git.solus-project.com/packages/pisi/commit/?id=ff451bf)
-  [Ikey Doherty: Do not omit framepointer](https://git.solus-project.com/packages/pisi/commit/?id=5b603f9)
-  [Ikey Doherty: Update default CFLAGS](https://git.solus-project.com/packages/pisi/commit/?id=7e65d02)

**nano**

-  [Joshua Strobl: Update to 2.7.0](https://git.solus-project.com/packages/nano/commit/?id=78fe928)
-  [Ikey Doherty: Bump for server tests](https://git.solus-project.com/packages/nano/commit/?id=a4d55c1)
-  [Ikey Doherty: Final build for builder inspection](https://git.solus-project.com/packages/nano/commit/?id=b96c965)
-  [Ikey Doherty: More canary builds](https://git.solus-project.com/packages/nano/commit/?id=95df7d9)
-  [Ikey Doherty: Rebuild for canary testing](https://git.solus-project.com/packages/nano/commit/?id=86a057b)
-  [Ikey Doherty: Enable syntax highlighting in git commit messages](https://git.solus-project.com/packages/nano/commit/?id=72770b9)
-  [Ikey Doherty: Rebuild for infra test](https://git.solus-project.com/packages/nano/commit/?id=5ab9a18)
-  [Ikey Doherty: Rebuild. Again](https://git.solus-project.com/packages/nano/commit/?id=34b9d38)
-  [Ikey Doherty: Rebuild. Sorry](https://git.solus-project.com/packages/nano/commit/?id=60f0f1b)
-  [Ikey Doherty: Moar updates](https://git.solus-project.com/packages/nano/commit/?id=0229225)
-  [Ikey Doherty: Bump for SC test](https://git.solus-project.com/packages/nano/commit/?id=85cdbfc)
-  [Ikey Doherty: Demote nano to editor component](https://git.solus-project.com/packages/nano/commit/?id=c87e0d7)
-  [Ikey Doherty: Canary build for new build systems](https://git.solus-project.com/packages/nano/commit/?id=4a6b890)
-  [Ikey Doherty: Fix break in that patch](https://git.solus-project.com/packages/nano/commit/?id=135f6e1)
-  [Ikey Doherty: Convert to a stateless configuration](https://git.solus-project.com/packages/nano/commit/?id=109d32f)
-  [Ikey Doherty: Update to v2.5.3](https://git.solus-project.com/packages/nano/commit/?id=44faa1f)
-  [Ikey Doherty: Canary build](https://git.solus-project.com/packages/nano/commit/?id=e4e50f5)
-  [Ikey Doherty: Canary build](https://git.solus-project.com/packages/nano/commit/?id=c2ba52d)

**libmodplug**

-  [Ikey Doherty: Bump](https://git.solus-project.com/packages/libmodplug/commit/?id=0742f1b)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libmodplug/commit/?id=2014de2)

**lsb-release**

-  [Ikey Doherty: Update to 1.2.0.5](https://git.solus-project.com/packages/lsb-release/commit/?id=a4a5bb8)
-  [Ikey Doherty: Bump for 1.2.1](https://git.solus-project.com/packages/lsb-release/commit/?id=f6f8cf6)
-  [Ikey Doherty: Make other distros happy (grr.)](https://git.solus-project.com/packages/lsb-release/commit/?id=61666b3)
-  [Joshua Strobl: Bump to 1.2](https://git.solus-project.com/packages/lsb-release/commit/?id=3038594)
-  [Ikey Doherty: Fix branding](https://git.solus-project.com/packages/lsb-release/commit/?id=e4493a5)
-  [Ikey Doherty: Bump to 1.1.6](https://git.solus-project.com/packages/lsb-release/commit/?id=e383e01)
-  [Ikey Doherty: Fix for 1.1.5](https://git.solus-project.com/packages/lsb-release/commit/?id=78f6d6f)
-  [Ikey Doherty: Demote from system.base](https://git.solus-project.com/packages/lsb-release/commit/?id=8c10a03)
-  [Ikey Doherty: Convert to a stateless configuration](https://git.solus-project.com/packages/lsb-release/commit/?id=938f84a)

**elfutils**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/elfutils/commit/?id=e7fab1d)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/elfutils/commit/?id=cad3087)

**libproxy**

-  [Ikey Doherty: Rebuild against new Perl](https://git.solus-project.com/packages/libproxy/commit/?id=76241f3)

**libevdev**

-  [Ikey Doherty: Update to 1.5.2](https://git.solus-project.com/packages/libevdev/commit/?id=fb16b80)

**libgpg-error**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libgpg-error/commit/?id=cd977b2)

**poppler**

-  [Ikey Doherty: Use new ypkg to achieve the level of splitting required](https://git.solus-project.com/packages/poppler/commit/?id=79f7718)
-  [Joshua Strobl: Re-add qt5 work but do not build.](https://git.solus-project.com/packages/poppler/commit/?id=eee69a5)

**libice**

-  [Ikey Doherty: Convert to ypkg and enable multilib](https://git.solus-project.com/packages/libice/commit/?id=065081e)

**arc-firefox-theme**

-  [Ikey Doherty: Update to 48.20160802](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=d93afdf)
-  [Ikey Doherty: Update to latest version](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=e34e6c9)
-  [Ikey Doherty: Update to 46.20160426](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=ec22ec5)
-  [Ikey Doherty: Update to 45.20160308](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=364b844)

**libxt**

-  [Ikey Doherty: Update to 1.1.5, enable multilib](https://git.solus-project.com/packages/libxt/commit/?id=a38535d)

**libxv**

-  [Ikey Doherty: Rebuild for speed](https://git.solus-project.com/packages/libxv/commit/?id=2f4d073)

**libpng**

-  [Ikey Doherty: Rebuild due to ypkg bork](https://git.solus-project.com/packages/libpng/commit/?id=d9c254c)
-  [Ikey Doherty: Fix .pc, move bins into devel](https://git.solus-project.com/packages/libpng/commit/?id=0f270cd)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libpng/commit/?id=f705930)
-  [Justin Zobel: Enable 32bit](https://git.solus-project.com/packages/libpng/commit/?id=3e0ccc0)

**libxext**

-  [Ikey Doherty: Rebuild for speed, move manpages](https://git.solus-project.com/packages/libxext/commit/?id=b72f1c5)

**nvidia-304-glx-driver**

-  [Ikey Doherty: Rebuild for 4.7.2](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=604ae73)
-  [Ikey Doherty: Port to Linux 4.7.0](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=459087b)
-  [Ikey Doherty: Rebuild for kernel/toolchain](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=89a2c22)
-  [Ikey Doherty: Rebuild for 4.4.16](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=56c1956)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=1895f16)
-  [Ikey Doherty: Rebuild against latest kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=1f42b7e)
-  [Ikey Doherty: Rebuild for 4.4.14](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=5c7eaa2)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=8ed72ef)
-  [Ikey Doherty: Rebuild for 4.4.13](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=51c945d)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=914c11f)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=f9caba0)
-  [Ikey Doherty: Rebuild against newer kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=a3c3632)
-  [Justin Zobel: Rebuild for 4.4.10](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=3d15ff5)
-  [Ikey Doherty: Disable mtrr](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=9bf874c)
-  [Justin Zobel: Rebuild for 4.4.9](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=fa25695)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=bb277aa)
-  [Ikey Doherty: Rebuild against new kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=b8ae728)
-  [Ikey Doherty: Rebuild against 4.4.8 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=932af7b)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=454f62b)
-  [Ikey Doherty: Rebuild for new kernel and xorg](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=90379f8)
-  [Ikey Doherty: Rebuild against 4.4.7, move OpenCL to stateless directory](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=ed74469)
-  [Ikey Doherty: Blacklist from initrd, further stateless](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=f6a1f77)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=39ee7a4)
-  [Ikey Doherty: Rebuild against 4.4.5, enable VA/VDPAU](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=df546b8)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=22ccd9a)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=1beccdd)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=af8cb45)
-  [Justin Zobel: Rebuild for 4.4.4](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=b2dfc2f)

**libxdamage**

-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/libxdamage/commit/?id=6d398cb)

**disktype**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/disktype/commit/?id=8650539)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/disktype/commit/?id=e7f32a8)

**gnupg**

-  [Ikey Doherty: Update and rebuild to address CVE-2016-6316 (real problem in libgcrypt)](https://git.solus-project.com/packages/gnupg/commit/?id=0a8bdf0)

**gnome-terminal**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gnome-terminal/commit/?id=c000c55)
-  [Ikey Doherty: Force-provide x-terminal-emulator to keep the 90s happy](https://git.solus-project.com/packages/gnome-terminal/commit/?id=558ecb7)
-  [Ikey Doherty: Restore Solus defaults](https://git.solus-project.com/packages/gnome-terminal/commit/?id=3516bed)
-  [Ikey Doherty: Fix new tab icon](https://git.solus-project.com/packages/gnome-terminal/commit/?id=53b321b)
-  [Ikey Doherty: Import Fedora's notification+transparency patch](https://git.solus-project.com/packages/gnome-terminal/commit/?id=6267466)
-  [Ikey Doherty: Purge dead patches](https://git.solus-project.com/packages/gnome-terminal/commit/?id=f239b83)
-  [Justin Zobel: Update to 3.18.3](https://git.solus-project.com/packages/gnome-terminal/commit/?id=a3996e1)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gnome-terminal/commit/?id=0327a1f)

**libcap2**

-  [Ikey Doherty: Fix 32bit libs](https://git.solus-project.com/packages/libcap2/commit/?id=0d5ee70)

**gnome-screenshot**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/gnome-screenshot/commit/?id=fe60871)

**coreutils**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/coreutils/commit/?id=1256009)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/coreutils/commit/?id=3cfbbc8)

**gnome-bluetooth**

-  [Ikey Doherty: Update to 3.20.0](https://git.solus-project.com/packages/gnome-bluetooth/commit/?id=870c47d)

**gawk**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gawk/commit/?id=eedba6c)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gawk/commit/?id=41256cf)

**faba-icon-theme**

-  [Ikey Doherty: Dependency order wrong way around](https://git.solus-project.com/packages/faba-icon-theme/commit/?id=a8e8899)
-  [Ikey Doherty: Add missing runtime dependency](https://git.solus-project.com/packages/faba-icon-theme/commit/?id=5da1bc6)

**libicu**

-  [Ikey Doherty: Update to 57.1](https://git.solus-project.com/packages/libicu/commit/?id=540b267)
-  [Ikey Doherty: Move data into devel](https://git.solus-project.com/packages/libicu/commit/?id=1673ab3)
-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/libicu/commit/?id=0f12b7c)

**samba**

-  [Ikey Doherty: Fix broken configuration file](https://git.solus-project.com/packages/samba/commit/?id=d50066a)
-  [Ikey Doherty: Update to 4.3.11](https://git.solus-project.com/packages/samba/commit/?id=db9f56a)
-  [Ikey Doherty: Fix samba to be usable](https://git.solus-project.com/packages/samba/commit/?id=5486575)
-  [Ikey Doherty: Rebuild against new Perl](https://git.solus-project.com/packages/samba/commit/?id=b9ac60f)
-  [Ikey Doherty: Update to 4.3.8 to address multiple CVEs](https://git.solus-project.com/packages/samba/commit/?id=12e5f43)
-  [Ikey Doherty: Update to 4.3.6](https://git.solus-project.com/packages/samba/commit/?id=3c2943f)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/samba/commit/?id=70dcfca)

**libsigc++**

-  [Ikey Doherty: Update to 2.8.0](https://git.solus-project.com/packages/libsigc++/commit/?id=92edbb3)

**gutenprint**

-  [Bridouz: Gutenprint build against CUPS to enable PPDs for several printers](https://git.solus-project.com/packages/gutenprint/commit/?id=9fb6e44)

**lightdm-gtk-greeter**

-  [Ikey Doherty: Update branding for 1.2](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=8f90051)
-  [Ikey Doherty: Switch to Arc icons](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=7c26d69)

**libxft**

-  [Ikey Doherty: Enable multilib, optimize for speed](https://git.solus-project.com/packages/libxft/commit/?id=6812ada)

**orc**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/orc/commit/?id=69f4fba)

**bash**

-  [Ikey Doherty: Ensure to propogate flags into user environment](https://git.solus-project.com/packages/bash/commit/?id=1e0bf51)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/bash/commit/?id=ffb82e6)
-  [Ikey Doherty: Rebuild for cflags, optimize for size](https://git.solus-project.com/packages/bash/commit/?id=ef3922e)

**evolution-data-server**

-  [Joshua Strobl: Update to 3.20.5](https://git.solus-project.com/packages/evolution-data-server/commit/?id=dd03089)
-  [Ikey Doherty: Update to 3.20.4](https://git.solus-project.com/packages/evolution-data-server/commit/?id=e29e360)

**exfat-utils**

-  [Ikey Doherty: Demote from system.base](https://git.solus-project.com/packages/exfat-utils/commit/?id=2d19a33)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/exfat-utils/commit/?id=908ea91)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/exfat-utils/commit/?id=9b6aded)

**seahorse**

-  [Ikey Doherty: Update to 3.20.0](https://git.solus-project.com/packages/seahorse/commit/?id=766cf7c)

**openssh**

-  [Ikey Doherty: Enable PAM and update to 7.3p1](https://git.solus-project.com/packages/openssh/commit/?id=dc02fef)
-  [Joshua Strobl: Update to 7.2p2](https://git.solus-project.com/packages/openssh/commit/?id=a1e48ee)
-  [Justin Zobel: Revert ssh-copy-id enablement as it is insecure and weak](https://git.solus-project.com/packages/openssh/commit/?id=3bbc0c9)
-  [Justin Zobel: Enable ssh-copy-id](https://git.solus-project.com/packages/openssh/commit/?id=9c66a03)

**baobab**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/baobab/commit/?id=73fef44)
-  [Ikey Doherty: Fix conflict in Google Chrome with Nautilus](https://git.solus-project.com/packages/baobab/commit/?id=a96703a)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/baobab/commit/?id=9c48e21)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/baobab/commit/?id=4520c85)

**openssl**

-  [Ikey Doherty: Address CVE-2016-2180](https://git.solus-project.com/packages/openssl/commit/?id=459c97a)
-  [Ikey Doherty: Address CVE-2016-2177](https://git.solus-project.com/packages/openssl/commit/?id=3827e39)
-  [Ikey Doherty: Enable multilib, kill profile for now](https://git.solus-project.com/packages/openssl/commit/?id=41f56a7)
-  [Ikey Doherty: Fix patch, wake up bro](https://git.solus-project.com/packages/openssl/commit/?id=22461ec)
-  [Ikey Doherty: Help Josh finish up the SSL stuff](https://git.solus-project.com/packages/openssl/commit/?id=1c92ded)
-  [Joshua Strobl: Update to 1.0.2h](https://git.solus-project.com/packages/openssl/commit/?id=6c177d9)
-  [Ikey Doherty: Remove used of makedepend -- it breaks (somehow) libcrypto.so.1.0.0](https://git.solus-project.com/packages/openssl/commit/?id=7e166da)
-  [Ikey Doherty: Convert to ypkg and enable speed/PGO optimizations](https://git.solus-project.com/packages/openssl/commit/?id=fb1c722)

**foomatic-db-engine**

-  [Ikey Doherty: Rebuild against latest Perl](https://git.solus-project.com/packages/foomatic-db-engine/commit/?id=f843b71)

**libarchive**

-  [Ikey Doherty: Address CVE-2016-1541 through update to libarchive 3.2.0](https://git.solus-project.com/packages/libarchive/commit/?id=844a66a)
-  [Ikey Doherty: Fix splitting](https://git.solus-project.com/packages/libarchive/commit/?id=99c1a6a)
-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/libarchive/commit/?id=2ae5b52)
-  [Ikey Doherty: Rebuild for nettle](https://git.solus-project.com/packages/libarchive/commit/?id=8cad33b)

**libxtst**

-  [Ikey Doherty: Convert to ypkg, enable multilib, optimize for speed](https://git.solus-project.com/packages/libxtst/commit/?id=3dae9ba)

**cairomm**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cairomm/commit/?id=3045bd1)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cairomm/commit/?id=dbd56c8)

**accountsservice**

-  [Ikey Doherty: Update to 0.6.42](https://git.solus-project.com/packages/accountsservice/commit/?id=61888ff)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/accountsservice/commit/?id=bee2ea8)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/accountsservice/commit/?id=87c2302)

**xrandr**

-  [Ikey Doherty: Update to 1.5.0 for todorov's optimus work](https://git.solus-project.com/packages/xrandr/commit/?id=7a224c4)

**libxres**

-  [Ikey Doherty: Convert to ypkg and enable multilib](https://git.solus-project.com/packages/libxres/commit/?id=b668d43)

**libgweather**

-  [Joshua Strobl: Update to 3.20.3](https://git.solus-project.com/packages/libgweather/commit/?id=81b106e)
-  [Joshua Strobl: Update to 3.20.1, cleanup.](https://git.solus-project.com/packages/libgweather/commit/?id=33dcb90)

**libgusb**

-  [Ikey Doherty: Update to 0.2.9](https://git.solus-project.com/packages/libgusb/commit/?id=673a1cb)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libgusb/commit/?id=7a17b61)

**xorg-driver-video-vesa**

-  [Ikey Doherty: Rebuild against X.Org](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=1b85e06)
-  [Ikey Doherty: Update to 2.3.4](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=dc79984)

**python3**

-  [Ikey Doherty: Update to 3.5.2 and enable tkinter](https://git.solus-project.com/packages/python3/commit/?id=d172481)
-  [Ikey Doherty: Split test stuff into subpackage, as it's huge](https://git.solus-project.com/packages/python3/commit/?id=d7c757f)
-  [Ikey Doherty: Brutally fix this package](https://git.solus-project.com/packages/python3/commit/?id=4fcc2e6)

**at-spi2-atk**

-  [Ikey Doherty: Update to 2.20.1](https://git.solus-project.com/packages/at-spi2-atk/commit/?id=153f986)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/at-spi2-atk/commit/?id=5decca1)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/at-spi2-atk/commit/?id=fcadb42)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/at-spi2-atk/commit/?id=ca27a35)

**cryptsetup**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cryptsetup/commit/?id=c6bb9dc)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cryptsetup/commit/?id=8d14864)

**reiserfsprogs**

-  [Ikey Doherty: Demote from system.base](https://git.solus-project.com/packages/reiserfsprogs/commit/?id=49c0f67)

**mesalib**

-  [Ikey Doherty: Update to 12.0.1](https://git.solus-project.com/packages/mesalib/commit/?id=ebf2cff)
-  [Ikey Doherty: Update to 12.0.0-rc4](https://git.solus-project.com/packages/mesalib/commit/?id=2762dac)
-  [Ikey Doherty: Update to 11.2.2 for r600 endian fixes](https://git.solus-project.com/packages/mesalib/commit/?id=6c211ff)
-  [Ikey Doherty: Update to 11.2.1](https://git.solus-project.com/packages/mesalib/commit/?id=f3a6c6a)
-  [Ikey Doherty: Enable speed optimisations](https://git.solus-project.com/packages/mesalib/commit/?id=cf46db5)
-  [Ikey Doherty: Rebuild against new LLVM](https://git.solus-project.com/packages/mesalib/commit/?id=bb4aeab)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/mesalib/commit/?id=d9e74e2)

**gnome-themes-standard**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gnome-themes-standard/commit/?id=69f717f)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/gnome-themes-standard/commit/?id=b2ca00c)

**lvm2**

-  [Ikey Doherty: Fix systemd files](https://git.solus-project.com/packages/lvm2/commit/?id=2c1da01)

**libtiff**

-  [Joshua Strobl: Simplify packaging, address the following CVEs: * CVE-2015-8665 * CVE-2016-3186](https://git.solus-project.com/packages/libtiff/commit/?id=857f8e5)
-  [Ikey Doherty: Address CVE-2015-8668 and optimize for speed](https://git.solus-project.com/packages/libtiff/commit/?id=8d2445b)
-  [Ikey Doherty: Go back to -O2, benchmarking complete](https://git.solus-project.com/packages/libtiff/commit/?id=54fb447)
-  [Ikey Doherty: Enable speed: optimize](https://git.solus-project.com/packages/libtiff/commit/?id=e1ef44e)
-  [Ikey Doherty: Update to 4.0.6 to drop old patches and clean up](https://git.solus-project.com/packages/libtiff/commit/?id=2643049)
-  [Justin Zobel: Convert to yml and enable 32bit](https://git.solus-project.com/packages/libtiff/commit/?id=eca7a24)

**harfbuzz**

-  [Ikey Doherty: Update to 1.3.0 and build against new ICU 57.1](https://git.solus-project.com/packages/harfbuzz/commit/?id=f7b87fc)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/harfbuzz/commit/?id=0b2eb48)
-  [Ikey Doherty: Enable graphite2](https://git.solus-project.com/packages/harfbuzz/commit/?id=dda89fe)

**libxcursor**

-  [Ikey Doherty: Optimize for speed, move man](https://git.solus-project.com/packages/libxcursor/commit/?id=30178f0)

**xz**

-  [Ikey Doherty: Fix the .pc file](https://git.solus-project.com/packages/xz/commit/?id=3744157)
-  [Ikey Doherty: Re-introduce PGO now that ypkg is fixed](https://git.solus-project.com/packages/xz/commit/?id=ff98b83)
-  [Ikey Doherty: Redo the unbreak](https://git.solus-project.com/packages/xz/commit/?id=5b0a24a)
-  [Ikey Doherty: Re-enable PGO](https://git.solus-project.com/packages/xz/commit/?id=08ba530)
-  [Ikey Doherty: Disable PGO temporarily -- causing issues](https://git.solus-project.com/packages/xz/commit/?id=3fcbc58)
-  [Ikey Doherty: Enable emul32](https://git.solus-project.com/packages/xz/commit/?id=0c78404)
-  [Ikey Doherty: Enable basic PGO](https://git.solus-project.com/packages/xz/commit/?id=afe39f5)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/xz/commit/?id=e750058)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/xz/commit/?id=edf5718)

**ntfs-3g**

-  [Ikey Doherty: Update to latest version, demote from system.base](https://git.solus-project.com/packages/ntfs-3g/commit/?id=5611c48)

**libndp**

-  [Ikey Doherty: Update to 1.6 to address CVE-2016-3698](https://git.solus-project.com/packages/libndp/commit/?id=1ea7a2a)
-  [Joshua Strobl: Enable multilib.](https://git.solus-project.com/packages/libndp/commit/?id=80968a5)

**libxcb**

-  [Ikey Doherty: Rebuild for speed](https://git.solus-project.com/packages/libxcb/commit/?id=11294b4)

**wget**

-  [Thomas H: Update to 1.18](https://git.solus-project.com/packages/wget/commit/?id=5abe5b3)
-  [Ikey Doherty: Optimize for size](https://git.solus-project.com/packages/wget/commit/?id=a484cc7)
-  [Ikey Doherty: Convert to ypkg, move to network.clients](https://git.solus-project.com/packages/wget/commit/?id=53c012b)

**libjson-glib**

-  [Ikey Doherty: Update to 1.2.0](https://git.solus-project.com/packages/libjson-glib/commit/?id=b7dff0e)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libjson-glib/commit/?id=1afb59c)

**cups**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/cups/commit/?id=ea7ed12)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cups/commit/?id=d43aa4d)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cups/commit/?id=44e8b02)

**librest**

-  [Ikey Doherty: Fix broken prefix in -32bit-devel](https://git.solus-project.com/packages/librest/commit/?id=21f1897)
-  [Joshua Strobl: Enable multilib](https://git.solus-project.com/packages/librest/commit/?id=7cceaf7)

**libvte**

-  [Ikey Doherty: Borrow the Fedora notification patches](https://git.solus-project.com/packages/libvte/commit/?id=6af0a0e)
-  [Ikey Doherty: Update to 0.44.2](https://git.solus-project.com/packages/libvte/commit/?id=b452afc)
-  [Ikey Doherty: Update to 0.42.5, incorporate Fedora's notify patch](https://git.solus-project.com/packages/libvte/commit/?id=4ffc2fe)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libvte/commit/?id=99689f5)

**webkitgtk3**

-  [Ikey Doherty: Update to 2.4.11](https://git.solus-project.com/packages/webkitgtk3/commit/?id=03faac8)

**openconnect**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/openconnect/commit/?id=95ea909)

**acl**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/acl/commit/?id=32698fa)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/acl/commit/?id=37a8cf0)

**libspeex**

-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/libspeex/commit/?id=4408609)

**gdk-pixbuf**

-  [Ikey Doherty: And now rebuild with updated librsvg in place](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=7a66229)
-  [Ikey Doherty: Update to 2.34.0](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=abb21fa)
-  [Ikey Doherty: Update to 2.32.3, drop comar, go stateless, optimize for speed](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=3415955)
-  [Ikey Doherty: Ensure this works for updating gdk pixbuf providers](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=104810f)
-  [Ikey Doherty: *Fix* multilib](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=f9d94ab)
-  [Ikey Doherty: Enable multilib for use with Steam](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=f1d5512)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=c93108d)
-  [Ikey Doherty: Rebuild for CFLAGS](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=d6f23fe)

**python3-gobject**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/python3-gobject/commit/?id=85683d3)

**linux-firmware**

-  [Ikey Doherty: Update to 20160620](https://git.solus-project.com/packages/linux-firmware/commit/?id=9dc6661)

**networkmanager-openvpn**

-  [Ikey Doherty: Add missing dependency on openvpn (T97)](https://git.solus-project.com/packages/networkmanager-openvpn/commit/?id=bbd0151)

**perl**

-  [Ikey Doherty: Address CVE-2016-1238](https://git.solus-project.com/packages/perl/commit/?id=9134159)
-  [Ikey Doherty: Update to 5.22.1](https://git.solus-project.com/packages/perl/commit/?id=34005cd)
-  [Ikey Doherty: Convert to ypkg, demote from system.base](https://git.solus-project.com/packages/perl/commit/?id=23babbe)

**opus**

-  [Joshua Strobl: Change component to multimedia.codecs.](https://git.solus-project.com/packages/opus/commit/?id=e5afa87)
-  [Joshua Strobl: Update to 1.1.2](https://git.solus-project.com/packages/opus/commit/?id=ea54c34)

**libva**

-  [Ikey Doherty: Update to 1.7.1 -- per issue T65](https://git.solus-project.com/packages/libva/commit/?id=6b3f1dd)
-  [Ikey Doherty: Enable GLX](https://git.solus-project.com/packages/libva/commit/?id=d56701b)

**libpeas**

-  [Ikey Doherty: Update to 1.18.0](https://git.solus-project.com/packages/libpeas/commit/?id=c1394db)

**libxpm**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libxpm/commit/?id=996973b)

**libxinerama**

-  [Ikey Doherty: Fix .pc prefix](https://git.solus-project.com/packages/libxinerama/commit/?id=13736a0)
-  [Ikey Doherty: Correct the license](https://git.solus-project.com/packages/libxinerama/commit/?id=14231bb)
-  [Peter O'Connor: Enable multilib](https://git.solus-project.com/packages/libxinerama/commit/?id=fc91bb4)

**libxml2**

-  [Ikey Doherty: Address CVE-2016-5131](https://git.solus-project.com/packages/libxml2/commit/?id=f24d2b7)
-  [Ikey Doherty: Update to 2.9.4 and use ypkg's new PGO](https://git.solus-project.com/packages/libxml2/commit/?id=0be4f7e)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libxml2/commit/?id=115c211)
-  [Ikey Doherty: Address CVE-2016-3627 and CVE-2016-3705](https://git.solus-project.com/packages/libxml2/commit/?id=21c279c)
-  [Ikey Doherty: Add acknowledgement of Clear 🙂](https://git.solus-project.com/packages/libxml2/commit/?id=cc9d4e2)
-  [Ikey Doherty: Update to 2.9.3 now](https://git.solus-project.com/packages/libxml2/commit/?id=667a380)
-  [Ikey Doherty: Rebuild with ypkg for PGO based optimizations](https://git.solus-project.com/packages/libxml2/commit/?id=dde87a9)

**libpcre**

-  [Ikey Doherty: Actually fix pcre prefix](https://git.solus-project.com/packages/libpcre/commit/?id=50c1220)
-  [Ikey Doherty: Fix .pc, optimize for speed, offload files into -devel](https://git.solus-project.com/packages/libpcre/commit/?id=a011f52)
-  [Ikey Doherty: Update to 8.38 and address 2 CVEs](https://git.solus-project.com/packages/libpcre/commit/?id=45a700f)
-  [Ikey Doherty: Update to 8.37, enable multilib](https://git.solus-project.com/packages/libpcre/commit/?id=14348ef)

**dracut**

-  [Ikey Doherty: Fix off-by-one](https://git.solus-project.com/packages/dracut/commit/?id=a8c3bf6)
-  [Ikey Doherty: Hopefully fix update issues](https://git.solus-project.com/packages/dracut/commit/?id=b980a31)
-  [Ikey Doherty: Provide /initrd.img to keep other distributions happy](https://git.solus-project.com/packages/dracut/commit/?id=d5abfbc)

**libxrandr**

-  [Ikey Doherty: Update to 1.5.0](https://git.solus-project.com/packages/libxrandr/commit/?id=6f10017)

**libexif**

-  [Joshua Strobl: Simplify packaging, enable multilib.](https://git.solus-project.com/packages/libexif/commit/?id=4218b28)

**libvdpau**

-  [Ikey Doherty: Simplify packaging](https://git.solus-project.com/packages/libvdpau/commit/?id=660b330)
-  [Ikey Doherty: Support a stateless configuration with sane defaults](https://git.solus-project.com/packages/libvdpau/commit/?id=8054284)

**libcroco**

-  [Ikey Doherty: Update to 0.6.11](https://git.solus-project.com/packages/libcroco/commit/?id=a304f3f)
-  [Ikey Doherty: Enable emul32](https://git.solus-project.com/packages/libcroco/commit/?id=d873323)
-  [Ikey Doherty: Convert to ypkg and optimize for speed](https://git.solus-project.com/packages/libcroco/commit/?id=9194bd8)

**libgphoto2**

-  [Joshua Strobl: Enable multilib](https://git.solus-project.com/packages/libgphoto2/commit/?id=d2855c6)

**nvidia-glx-driver**

-  [Ikey Doherty: Rebuild for 4.7.2](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2c4e77b)
-  [Ikey Doherty: Port to Linux 4.7](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=73758f4)
-  [Ikey Doherty: Rebuild for kernel/toolchain](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=4be2772)
-  [Ikey Doherty: Rebuild against 4.4.16](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=db6062f)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=37f6030)
-  [Ikey Doherty: Rebuild against latest kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=dd7a8b5)
-  [Ikey Doherty: Rebuild for 4.4.14](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=13b5893)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d8f4479)
-  [Ikey Doherty: Rebuild for 4.4.13](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=b3318ab)
-  [Ikey Doherty: Build for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=91ef7a1)
-  [Ikey Doherty: Rebuild for new kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=ab77d1d)
-  [Ikey Doherty: Rebuild against latest kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=0eb2c6a)
-  [Justin Zobel: Rebuild for 4.4.10](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d1aa202)
-  [Justin Zobel: Rebulid for 4.4.9](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d1d2abe)
-  [Ikey Doherty: Rebuild for new kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=00c9589)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2e9bcb7)
-  [Ikey Doherty: Rebuild against 4.4.8 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=213a57e)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=be18eed)
-  [Ikey Doherty: Rebuild for kernel and xorg](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=ca8988c)
-  [Ikey Doherty: Rebuild for 4.4.7 -- use stateless OpenCL directory](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=29beef9)
-  [Ikey Doherty: Blacklist nouveau from initrd, more stateless](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=1fadc68)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c07884d)
-  [Ikey Doherty: Rebuild against 4.4.5, enable VA/VDPAU](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c6ff646)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=1f4548c)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=24ae387)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a7dfb86)
-  [Justin Zobel: Rebuild for 4.4.4](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=b4b0367)

**gnome-settings-daemon**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=a8c5bab)
-  [Joshua Strobl: Rebuild against Pulseaudio 9](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=450ce0f)
-  [Ikey Doherty: Rebuild against new colord](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=dd830b8)

**ncurses**

-  [Ikey Doherty: Move man pages into devel to resolve update conflicts](https://git.solus-project.com/packages/ncurses/commit/?id=ac4f50d)
-  [Ikey Doherty: Fix gcc5 building enable multilib](https://git.solus-project.com/packages/ncurses/commit/?id=58b3a86)

**libxi**

-  [Ikey Doherty: Update to 1.7.6, enable multilib](https://git.solus-project.com/packages/libxi/commit/?id=95b6049)

**kerberos**

-  [Joshua Strobl: Move examples to devel.](https://git.solus-project.com/packages/kerberos/commit/?id=6f5edd1)
-  [Joshua Strobl: Simplify packaging, enable multilib.](https://git.solus-project.com/packages/kerberos/commit/?id=4f841d8)

**file-roller**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/file-roller/commit/?id=aa8e395)
-  [Justin Zobel: Upgrade to 3.16.5](https://git.solus-project.com/packages/file-roller/commit/?id=30cd879)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/file-roller/commit/?id=86a68d9)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/file-roller/commit/?id=b5570ab)

**mutter**

-  [Ikey Doherty: Update to 3.20.3](https://git.solus-project.com/packages/mutter/commit/?id=2b00b79)

**ibus**

-  [Ikey Doherty: Update to 1.5.13](https://git.solus-project.com/packages/ibus/commit/?id=d126d04)

**inxi**

-  [Justin Zobel: Update to 2.2.35](https://git.solus-project.com/packages/inxi/commit/?id=654f51d)

**libusb**

-  [Ikey Doherty: Workaround the broken parallel build](https://git.solus-project.com/packages/libusb/commit/?id=f00b3ab)
-  [Ikey Doherty: Update to 1.0.20](https://git.solus-project.com/packages/libusb/commit/?id=23321fc)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libusb/commit/?id=0fc7944)

**libmad**

-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/libmad/commit/?id=01cbf66)

**eog**

-  [Ikey Doherty: Update to 3.20.4 to address CVE-2016-6855](https://git.solus-project.com/packages/eog/commit/?id=6b0aa11)
-  [Ikey Doherty: Update to 3.20.3](https://git.solus-project.com/packages/eog/commit/?id=792b0e6)
-  [Joshua Strobl: Change component to multimedia.graphics](https://git.solus-project.com/packages/eog/commit/?id=6f05ec8)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/eog/commit/?id=91c56f8)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/eog/commit/?id=95d0baa)

**libtheora**

-  [Joshua Strobl: Simplified packaging, converted to multilib.](https://git.solus-project.com/packages/libtheora/commit/?id=6b64713)

**gnome-keyring**

-  [Ikey Doherty: Update to 3.20.0](https://git.solus-project.com/packages/gnome-keyring/commit/?id=b54e332)

**grilo**

-  [Ikey Doherty: Update to 0.3.1](https://git.solus-project.com/packages/grilo/commit/?id=eb19b21)
-  [Joshua Strobl: Update to latest 0.2 series release.](https://git.solus-project.com/packages/grilo/commit/?id=0b40bf4)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/grilo/commit/?id=90be0ad)

**grep**

-  [Joshua Strobl: Update to 2.25](https://git.solus-project.com/packages/grep/commit/?id=dab62ae)

**nvidia-340-glx-driver**

-  [Ikey Doherty: Rebuild for 4.7.2](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=9ef70d0)
-  [Ikey Doherty: Port to Linux 4.7](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=1c65eff)
-  [Ikey Doherty: Rebuild for kernel/toolchain](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=dd83f92)
-  [Ikey Doherty: Rebuild against 4.4.16](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a9a8e4c)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=9bfd51c)
-  [Ikey Doherty: Rebuild against latest kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=2f0eedc)
-  [Ikey Doherty: Rebuild for 4.4.14](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=ef61c7c)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=8c1ac0b)
-  [Ikey Doherty: Rebuild for 4.4.13](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=2b4eb34)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=f1e55a8)
-  [Ikey Doherty: Rebuild against new kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=ed14e99)
-  [Ikey Doherty: Rebuild against latest kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=9404d06)
-  [Justin Zobel: Rebuild for 4.4.10](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=f01e467)
-  [Justin Zobel: Rebuild for 4.4.9](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=484f9ad)
-  [Ikey Doherty: Rebuild for new kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=16ecd40)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=bac8697)
-  [Ikey Doherty: Rebuild against 4.4.8 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a17118c)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=ad26c5d)
-  [Ikey Doherty: Rebuild for kernel and xorg](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=ad02331)
-  [Ikey Doherty: Rebuild against 4.4.7 kernel, use stateless OpenCL directory](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c3018f5)
-  [Ikey Doherty: Blacklist from initrd, more stateless](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=b60074f)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=f522aac)
-  [Ikey Doherty: Rebuild for 4.4.5, enable VA/VDPAU](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=4af5698)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c93fc1d)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=92e4689)
-  [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=8794c98)
-  [Justin Zobel: Rebuild for 4.4.4](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a42fef6)

**libnl**

-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/libnl/commit/?id=6c04015)

**libxkbcommon**

-  [Joshua Strobl: Simplify packaging, enable multilib.](https://git.solus-project.com/packages/libxkbcommon/commit/?id=c65cc1f)

**libtasn1**

-  [Joshua Strobl: Update to 4.8](https://git.solus-project.com/packages/libtasn1/commit/?id=42c59b5)
-  [Ikey Doherty: *Actually* enable 32bit.](https://git.solus-project.com/packages/libtasn1/commit/?id=cc10c5f)
-  [Ikey Doherty: Convert to ypkg enable multilib](https://git.solus-project.com/packages/libtasn1/commit/?id=1dc7318)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libtasn1/commit/?id=5c0faa0)
-  [Ikey Doherty: Update to v4.7](https://git.solus-project.com/packages/libtasn1/commit/?id=2b48065)

**network-manager-applet**

-  [Ikey Doherty: Update to 1.0.10](https://git.solus-project.com/packages/network-manager-applet/commit/?id=2804de1)

**networkmanager-openconnect**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/networkmanager-openconnect/commit/?id=84db04b)

**faad2**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/faad2/commit/?id=9d286b5)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/faad2/commit/?id=74e86f1)

**libepoxy**

-  [Ikey Doherty: Enable multilib for gtk3](https://git.solus-project.com/packages/libepoxy/commit/?id=2cff409)

**libxrender**

-  [Ikey Doherty: Fix .pc prefix](https://git.solus-project.com/packages/libxrender/commit/?id=4ef3665)
-  [Ikey Doherty: Rebuild for speed, update to 0.9.9](https://git.solus-project.com/packages/libxrender/commit/?id=5237868)

**upower**

-  [Ikey Doherty: Update to 0.99.4](https://git.solus-project.com/packages/upower/commit/?id=251bdec)

**ffmpeg**

-  [Joshua Strobl: Rebuild against x265 10-bit and 12-bit improvements.](https://git.solus-project.com/packages/ffmpeg/commit/?id=ff31eca)
-  [Joshua Strobl: Enable libx265 support.](https://git.solus-project.com/packages/ffmpeg/commit/?id=743e1a3)
-  [Peter O'Connor: Enable ffplay for kdenlive](https://git.solus-project.com/packages/ffmpeg/commit/?id=bdd83ad)
-  [Joshua Strobl: Rebuild against Pulseaudio 9.](https://git.solus-project.com/packages/ffmpeg/commit/?id=76aa637)
-  [Joshua Strobl: Simplify packaging, fix man3.](https://git.solus-project.com/packages/ffmpeg/commit/?id=27bba2b)
-  [Joshua Strobl: Enable xvid](https://git.solus-project.com/packages/ffmpeg/commit/?id=f825278)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/ffmpeg/commit/?id=60ac732)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/ffmpeg/commit/?id=26ac3f4)

**libxvmc**

-  [Ikey Doherty: Optimize for speed, enable multilib](https://git.solus-project.com/packages/libxvmc/commit/?id=a0f31fb)

**python-gobject**

-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/python-gobject/commit/?id=620dcc4)

**avahi**

-  [Ikey Doherty: Update to 0.6.32](https://git.solus-project.com/packages/avahi/commit/?id=32f4100)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/avahi/commit/?id=fdaac87)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/avahi/commit/?id=8c1dcce)

**cracklib**

-  [Ikey Doherty: Address CVE-2016-6318](https://git.solus-project.com/packages/cracklib/commit/?id=275af31)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cracklib/commit/?id=73eb108)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cracklib/commit/?id=68c3760)

**libcanberra**

-  [Ikey Doherty: Convert to ypkg, build against latest PulseAudio 9](https://git.solus-project.com/packages/libcanberra/commit/?id=9180f62)

**gstreamer-1.0-libav**

-  [Ikey Doherty: Update to 1.8.2](https://git.solus-project.com/packages/gstreamer-1.0-libav/commit/?id=8263181)

**alsa-utils**

-  [Joshua Strobl: Update to 1.1.1](https://git.solus-project.com/packages/alsa-utils/commit/?id=49cecc6)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/alsa-utils/commit/?id=23d056d)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/alsa-utils/commit/?id=0ac057f)

**nautilus**

-  [Joshua Strobl: Update to 3.20.3, drop icons patch fix.](https://git.solus-project.com/packages/nautilus/commit/?id=30df1c5)
-  [Joshua Strobl: Bump release to land Nautilus patch.](https://git.solus-project.com/packages/nautilus/commit/?id=6d4993d)
-  [Stefan Ric: Introduce upstream patch for the icon chooser dialog](https://git.solus-project.com/packages/nautilus/commit/?id=02eb259)
-  [Ikey Doherty: Update to 3.20.1](https://git.solus-project.com/packages/nautilus/commit/?id=959d0ac)
-  [Ikey Doherty: Default to displaying "Delete Permanently" in Solus](https://git.solus-project.com/packages/nautilus/commit/?id=bee7857)
-  [Ikey Doherty: Backport the "Delete files permanently" option](https://git.solus-project.com/packages/nautilus/commit/?id=88bcd51)

**mtdev**

-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/mtdev/commit/?id=94e5e82)

**man-db**

-  [Ikey Doherty: Demote from system.base](https://git.solus-project.com/packages/man-db/commit/?id=d14845b)
-  [Ikey Doherty: Fix degraded-state of init](https://git.solus-project.com/packages/man-db/commit/?id=5fe87f6)
-  [Ikey Doherty: Incorporate Clear Linux stateless patch](https://git.solus-project.com/packages/man-db/commit/?id=04409de)
-  [Ikey Doherty: Convert to ypkg and update to 2.7.5](https://git.solus-project.com/packages/man-db/commit/?id=c8d56e8)

**lightdm**

-  [Ikey Doherty: Add missing dependencies for minimal images](https://git.solus-project.com/packages/lightdm/commit/?id=fda50c9)
-  [Ikey Doherty: Source environment files on startup, fix pam for gnome keyring too](https://git.solus-project.com/packages/lightdm/commit/?id=26c90cf)
-  [Ikey Doherty: Remove blacklisted path](https://git.solus-project.com/packages/lightdm/commit/?id=26c1579)

**expat**

-  [Ikey Doherty: Address missing CVE patches, CVE-2016-5300 and CVE-2012-6702](https://git.solus-project.com/packages/expat/commit/?id=cd6c85d)
-  [Ikey Doherty: Update to 2.1.1](https://git.solus-project.com/packages/expat/commit/?id=1a23fee)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/expat/commit/?id=c7d8648)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/expat/commit/?id=d4120fb)

**xorg-driver-video-vmware**

-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=18687a5)

**cups-filters**

-  [Ikey Doherty: Enable ghostscript, per advice of Nicolas Laplante](https://git.solus-project.com/packages/cups-filters/commit/?id=c67ab7e)
-  [Ikey Doherty: Ship the foomatic files and completely replace old stuff with new 1.8.3](https://git.solus-project.com/packages/cups-filters/commit/?id=edda358)
-  [Ikey Doherty: Replace foomatic-filters to drop duplicate CVE from the project](https://git.solus-project.com/packages/cups-filters/commit/?id=58ddb95)
-  [Ikey Doherty: Update to 1.4.0 to address CVE-2015-8560](https://git.solus-project.com/packages/cups-filters/commit/?id=2d6569b)
-  [Ikey Doherty: Use stateless fontconfig directories](https://git.solus-project.com/packages/cups-filters/commit/?id=cf7f78c)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cups-filters/commit/?id=9653fa6)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cups-filters/commit/?id=b4b8b6a)

**gedit**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gedit/commit/?id=ef833ed)

**clutter-gtk**

-  [Ikey Doherty: Update to 1.8.0](https://git.solus-project.com/packages/clutter-gtk/commit/?id=37d019d)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/clutter-gtk/commit/?id=186ee5d)
-  [Ikey Doherty: Rebuild for CFLAGS](https://git.solus-project.com/packages/clutter-gtk/commit/?id=e64b528)

**libgcrypt**

-  [Ikey Doherty: Address CVE-2016-6316](https://git.solus-project.com/packages/libgcrypt/commit/?id=db85c94)
-  [Ikey Doherty: Enable multilib for systemd](https://git.solus-project.com/packages/libgcrypt/commit/?id=8a8a37d)

**systemd**

-  [Ikey Doherty: Fix broken dependency chain](https://git.solus-project.com/packages/systemd/commit/?id=556352f)
-  [Ikey Doherty: Fix missing -32bit deps and fix building with new glib](https://git.solus-project.com/packages/systemd/commit/?id=437bb7b)
-  [Ikey Doherty: Enable multilib build](https://git.solus-project.com/packages/systemd/commit/?id=b009bb5)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/systemd/commit/?id=142af9b)
-  [Ikey Doherty: Fix broken handler, thanks to flippedBit](https://git.solus-project.com/packages/systemd/commit/?id=79ef870)

**clutter**

-  [Ikey Doherty: Update to 1.26.0](https://git.solus-project.com/packages/clutter/commit/?id=400d817)
-  [Ikey Doherty: Fix component and license](https://git.solus-project.com/packages/clutter/commit/?id=a85edb7)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/clutter/commit/?id=3055d4b)
-  [Ikey Doherty: Rebuild for CFLAGS](https://git.solus-project.com/packages/clutter/commit/?id=0b7a3e1)

**file**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/file/commit/?id=a73c345)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/file/commit/?id=d25308e)

**zenity**

-  [Ikey Doherty: Update to 3.20.0](https://git.solus-project.com/packages/zenity/commit/?id=fa09617)
-  [Ikey Doherty: Remove evil runtime dep](https://git.solus-project.com/packages/zenity/commit/?id=4839d21)
-  [Bryan T. Meyers: zenity now uses ypkg](https://git.solus-project.com/packages/zenity/commit/?id=65094e1)

**gsettings-desktop-schemas**

-  [Ikey Doherty: Fix default touchpad settings (T133)](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=c9389fb)
-  [Ikey Doherty: Update to 3.20.0](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=34b5199)
-  [Ikey Doherty: Fix the defaults](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=691d3c6)

**rhythmbox**

-  [Ikey Doherty: Update and patch Rhythmbox for 3.4 + continued working extensions](https://git.solus-project.com/packages/rhythmbox/commit/?id=603820d)
-  [Joshua Strobl: Change component to multimedia.audio](https://git.solus-project.com/packages/rhythmbox/commit/?id=3459325)
-  [Joshua Strobl: Update to 3.3.1, dropped component.xml file.](https://git.solus-project.com/packages/rhythmbox/commit/?id=754683a)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/rhythmbox/commit/?id=fe1a8db)

**dconf**

-  [Ikey Doherty: Update to 0.26.0](https://git.solus-project.com/packages/dconf/commit/?id=fa99b17)
-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/dconf/commit/?id=1dd3dc0)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/dconf/commit/?id=70fab7c)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dconf/commit/?id=ecf8262)

**libtool**

-  [Ikey Doherty: Enable multilib for pulseaudio](https://git.solus-project.com/packages/libtool/commit/?id=4d07a43)

**curl**

-  [Ikey Doherty: Address multiple CVEs in update to 7.50.1](https://git.solus-project.com/packages/curl/commit/?id=cc9d444)
-  [Ikey Doherty: Address CVE-2016-4802 through 7.49.1 update](https://git.solus-project.com/packages/curl/commit/?id=23d372e)
-  [Ikey Doherty: Update to 7.49.0 to address CVE-2016-3739](https://git.solus-project.com/packages/curl/commit/?id=58c64c8)
-  [Ikey Doherty: Enable multilib for Steam](https://git.solus-project.com/packages/curl/commit/?id=a6e16b2)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/curl/commit/?id=9a687a6)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/curl/commit/?id=3ad4307)

**dbus-glib**

-  [Ikey Doherty: Rebuild using new systemd/dbus](https://git.solus-project.com/packages/dbus-glib/commit/?id=f8d7fa8)
-  [Ikey Doherty: Update to latest dbus-glib](https://git.solus-project.com/packages/dbus-glib/commit/?id=d0c4a2a)
-  [Ikey Doherty: Convert to ypkg, enable multilib](https://git.solus-project.com/packages/dbus-glib/commit/?id=79ed324)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/dbus-glib/commit/?id=8ad9b6b)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dbus-glib/commit/?id=bbbbe5a)

**network-manager**

-  [Ikey Doherty: Rebuild for all the things](https://git.solus-project.com/packages/network-manager/commit/?id=a0021cd)
-  [Ikey Doherty: Fix emul32 .pc](https://git.solus-project.com/packages/network-manager/commit/?id=a1a702b)
-  [Ikey Doherty: Enable multilib (FINALLY.)](https://git.solus-project.com/packages/network-manager/commit/?id=34b6a6f)

**nettle**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nettle/commit/?id=0c94071)
-  [Ikey Doherty: Update to v3.2](https://git.solus-project.com/packages/nettle/commit/?id=aaff0b4)

**gcc**

-  [Ikey Doherty: Update to 6.1.0 -- the latest upstream release of GCC](https://git.solus-project.com/packages/gcc/commit/?id=1822574)
-  [Ikey Doherty: Fix CFLAGS_FOR_TARGET, use -O3, fix -32bit links](https://git.solus-project.com/packages/gcc/commit/?id=6600750)
-  [Ikey Doherty: Update to 5.3.0](https://git.solus-project.com/packages/gcc/commit/?id=9cc83d0)

**solus-hardware-config**

-  [Ikey Doherty: Require libinput for GNOME 3.20, per T98](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=fdbd1d0)
-  [Ikey Doherty: Require tlp and thermald, per issue T52](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=6747af6)
-  [Ikey Doherty: Update to v6](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=3946c26)
-  [Ikey Doherty: Update to v5 for sysctl support](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=521e9fd)
-  [Ikey Doherty: Update to v4](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=a8bf99c)

**gettext**

-  [Ikey Doherty: Move man3 over to fix broken upgrade path](https://git.solus-project.com/packages/gettext/commit/?id=b87428f)
-  [Ikey Doherty: Fix up for repo inclusion](https://git.solus-project.com/packages/gettext/commit/?id=6211bb0)
-  [Joshua Strobl: Fix -docs abandonment.](https://git.solus-project.com/packages/gettext/commit/?id=e55a4f0)
-  [Joshua Strobl: Update to 0.19.8.1 and simplify packaging.](https://git.solus-project.com/packages/gettext/commit/?id=7ac2dc8)

**lame**

-  [Ikey Doherty: Enable further optimisations to lame](https://git.solus-project.com/packages/lame/commit/?id=533a6a9)
-  [Ikey Doherty: Optimize for speed, split out docs](https://git.solus-project.com/packages/lame/commit/?id=fca0098)

**libflac**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libflac/commit/?id=6ef3111)
-  [Ikey Doherty: Fix flags](https://git.solus-project.com/packages/libflac/commit/?id=c229a53)
-  [Ikey Doherty: Work for speed in a different fashion, go straight for funroll-loops](https://git.solus-project.com/packages/libflac/commit/?id=d655e38)
-  [Ikey Doherty: Convert to ypkg and optimize for speed (mostly)](https://git.solus-project.com/packages/libflac/commit/?id=9cb5338)

**alsa-lib**

-  [Ikey Doherty: Switch default asound to being a stateless config](https://git.solus-project.com/packages/alsa-lib/commit/?id=9379dca)
-  [Ikey Doherty: Install missing asound.conf](https://git.solus-project.com/packages/alsa-lib/commit/?id=2251cad)
-  [Joshua Strobl: Update to 1.1.1](https://git.solus-project.com/packages/alsa-lib/commit/?id=52cab62)
-  [Ikey Doherty: Enable multilib for wine](https://git.solus-project.com/packages/alsa-lib/commit/?id=1751403)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/alsa-lib/commit/?id=710bdf1)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/alsa-lib/commit/?id=f6f9c7f)

**glibmm**

-  [Ikey Doherty: Update to 2.48.1](https://git.solus-project.com/packages/glibmm/commit/?id=df44071)

**xorg-driver-video-nouveau**

-  [Ikey Doherty: Rebuild against new X.Org](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=3210e53)
-  [Ikey Doherty: Rebuild against new Xorg](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=4451642)

**librsvg**

-  [Ikey Doherty: Build against new gdk-pixbuf](https://git.solus-project.com/packages/librsvg/commit/?id=3b238d8)
-  [Ikey Doherty: Update to 2.40.16](https://git.solus-project.com/packages/librsvg/commit/?id=d25c384)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/librsvg/commit/?id=54aa0a3)
-  [Ikey Doherty: Convert to ypkg, optimize for speed](https://git.solus-project.com/packages/librsvg/commit/?id=bdb16cb)

**budgie-desktop**

-  [Ikey Doherty: Backport keyboard layout fix to give users a fighting chance](https://git.solus-project.com/packages/budgie-desktop/commit/?id=9f8827c)
-  [Ikey Doherty: Include the workspaces fix due to suspicion its crashing Budgie now](https://git.solus-project.com/packages/budgie-desktop/commit/?id=7dc6831)
-  [Ikey Doherty: Rebuild against the GNOME 3.20 stack](https://git.solus-project.com/packages/budgie-desktop/commit/?id=8d8bd92)
-  [Ikey Doherty: Rebuild against latest PulseAudio 9](https://git.solus-project.com/packages/budgie-desktop/commit/?id=6e6fc7b)
-  [Ikey Doherty: Resync with git to unbreak things](https://git.solus-project.com/packages/budgie-desktop/commit/?id=a010fb7)
-  [Ikey Doherty: Sync with git for gaming optimisation testing](https://git.solus-project.com/packages/budgie-desktop/commit/?id=d23a410)
-  [Ikey Doherty: Update to 10.2.6](https://git.solus-project.com/packages/budgie-desktop/commit/?id=b58a3e0)
-  [Ikey Doherty: Sync with git for nice new changes](https://git.solus-project.com/packages/budgie-desktop/commit/?id=353dfdd)
-  [Ikey Doherty: Sync with git for Raven fix (SBZ#491)](https://git.solus-project.com/packages/budgie-desktop/commit/?id=93fb53e)
-  [Ikey Doherty: Use the gnome-screensaver locking, not lightdm](https://git.solus-project.com/packages/budgie-desktop/commit/?id=2f5d4ce)
-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/budgie-desktop/commit/?id=d2d9964)
-  [Ikey Doherty: Fix the battery refresh issues](https://git.solus-project.com/packages/budgie-desktop/commit/?id=6476932)
-  [Ikey Doherty: Sync with git for gnome-screensaver integration](https://git.solus-project.com/packages/budgie-desktop/commit/?id=d711ea5)
-  [Ikey Doherty: Fix the polkit dialog icon](https://git.solus-project.com/packages/budgie-desktop/commit/?id=8b2eb24)
-  [Ikey Doherty: Sync with git version of Budgie](https://git.solus-project.com/packages/budgie-desktop/commit/?id=ea8eded)
-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/budgie-desktop/commit/?id=de385dd)
-  [Ikey Doherty: Rebuild to drop a billion dependencies](https://git.solus-project.com/packages/budgie-desktop/commit/?id=b6790ff)
-  [Ikey Doherty: Sync with git for all the shiny](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e23628f)
-  [Ikey Doherty: Update to v10.2.5](https://git.solus-project.com/packages/budgie-desktop/commit/?id=852e904)
-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/budgie-desktop/commit/?id=d54f286)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/budgie-desktop/commit/?id=50a21ab)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/budgie-desktop/commit/?id=8a3f72a)

**gparted**

-  [Ikey Doherty: Don't override the icon theme, allow the desktop to handle this](https://git.solus-project.com/packages/gparted/commit/?id=944d5fa)

**libxfont**

-  [Ikey Doherty: Enable multilib, build for speed](https://git.solus-project.com/packages/libxfont/commit/?id=dc9222b)

**gcr**

-  [Ikey Doherty: Update to 3.20.0, nuke old files](https://git.solus-project.com/packages/gcr/commit/?id=563c2be)

**libsecret**

-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/libsecret/commit/?id=df54fbc)

**faba-icon-theme-mono**

-  [Ikey Doherty: Add missing runtime dependency](https://git.solus-project.com/packages/faba-icon-theme-mono/commit/?id=7991007)
-  [Ikey Doherty: Switch to a properly distchecked tarball, version 4.3](https://git.solus-project.com/packages/faba-icon-theme-mono/commit/?id=1e00cdf)

**libatk**

-  [Ikey Doherty: Update to 2.20.0](https://git.solus-project.com/packages/libatk/commit/?id=d8d3ff3)
-  [Ikey Doherty: Fix broken pkgconfig on emul32](https://git.solus-project.com/packages/libatk/commit/?id=384a8af)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libatk/commit/?id=906341f)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libatk/commit/?id=f7470e6)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libatk/commit/?id=5ce4649)

**sqlite3**

-  [Ikey Doherty: Enable dbstat for Firefox](https://git.solus-project.com/packages/sqlite3/commit/?id=8f374ac)
-  [Ikey Doherty: Update and enable readline on the x86-64 build](https://git.solus-project.com/packages/sqlite3/commit/?id=8cdeea7)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/sqlite3/commit/?id=cdd44e3)
-  [Ikey Doherty: Update to 3.12.1, and enable optimize: speed](https://git.solus-project.com/packages/sqlite3/commit/?id=2bfe351)

**pixman**

-  [Ikey Doherty: Rebuild with our PGO changes](https://git.solus-project.com/packages/pixman/commit/?id=8cbdb27)
-  [Ikey Doherty: Fix pkgconfig file](https://git.solus-project.com/packages/pixman/commit/?id=cc8d811)
-  [Ikey Doherty: Rebuild to drop /emul32/ path](https://git.solus-project.com/packages/pixman/commit/?id=83ab48b)
-  [Ikey Doherty: Enable PGO, 32-bit, and -O3/lto](https://git.solus-project.com/packages/pixman/commit/?id=5a14a72)

**gvfs**

-  [Ikey Doherty: Split GNOME Online Accounts out to reduce unneeded deps for Solmate.](https://git.solus-project.com/packages/gvfs/commit/?id=04c2868)
-  [Ikey Doherty: Update to 1.28.2](https://git.solus-project.com/packages/gvfs/commit/?id=dda37fb)
-  [Joshua Strobl: Update to 1.28.0](https://git.solus-project.com/packages/gvfs/commit/?id=46b4e49)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gvfs/commit/?id=386f95c)

**libsoup**

-  [Ikey Doherty: Update to 2.54.1](https://git.solus-project.com/packages/libsoup/commit/?id=8350b35)
-  [Ikey Doherty: Enable 32-bit](https://git.solus-project.com/packages/libsoup/commit/?id=8eef6c7)

**libidn**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libidn/commit/?id=514b18c)

**udisks**

-  [Joshua Strobl: Update to 2.1.7](https://git.solus-project.com/packages/udisks/commit/?id=fc74c8d)

**glib-networking**

-  [Ikey Doherty: Update to 2.48.2](https://git.solus-project.com/packages/glib-networking/commit/?id=a390894)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/glib-networking/commit/?id=ca09e4d)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/glib-networking/commit/?id=d0d817b)
-  [Ikey Doherty: Rebuild for gnutls+cflags](https://git.solus-project.com/packages/glib-networking/commit/?id=7588edd)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/glib-networking/commit/?id=110a3e0)

**gstreamer-1.0-plugins-bad**

-  [Joshua Strobl: Drop component.xml, rebuild against x265 10-bit and 12-bit improvements.](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=ec71f80)
-  [Joshua Strobl: Enable libx265 support.](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=c6cdde3)
-  [Ikey Doherty: Fix file conflict](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=42db836)
-  [Ikey Doherty: Fix broken origin string](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=1810e78)
-  [Ikey Doherty: Update to 1.8.2](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=c0a2020)
-  [Ikey Doherty: Fix linking](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=e74f335)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=1ced8eb)

**faac**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/faac/commit/?id=5d63ac1)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/faac/commit/?id=241a699)

**wireless-tools**

-  [Ikey Doherty: Convert to ypkg, migrate to network.base](https://git.solus-project.com/packages/wireless-tools/commit/?id=db12133)

**cups-pk-helper**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/cups-pk-helper/commit/?id=d50fb81)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cups-pk-helper/commit/?id=46b87bd)

**totem-pl-parser**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/totem-pl-parser/commit/?id=1a34666)

**gnome-calculator**

-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gnome-calculator/commit/?id=dbfe65c)

**adwaita-icon-theme**

-  [Ikey Doherty: Add missing dependency on hicolor-icon-theme](https://git.solus-project.com/packages/adwaita-icon-theme/commit/?id=6e3cbd2)
-  [Ikey Doherty: Update to 3.20](https://git.solus-project.com/packages/adwaita-icon-theme/commit/?id=5d557e7)

**polkit**

-  [Ikey Doherty: Clean up patch](https://git.solus-project.com/packages/polkit/commit/?id=b3a0907)
-  [Ikey Doherty: Support a stateless configuration for /etc/shells](https://git.solus-project.com/packages/polkit/commit/?id=c858c5a)

**fuse**

-  [Ikey Doherty: Enable udev rules](https://git.solus-project.com/packages/fuse/commit/?id=6b1c49d)
-  [Ikey Doherty: Add a fuse group](https://git.solus-project.com/packages/fuse/commit/?id=85a8924)
-  [Ikey Doherty: Demote from system.base](https://git.solus-project.com/packages/fuse/commit/?id=75bb2e2)
-  [Ikey Doherty: Support a stateless configuration](https://git.solus-project.com/packages/fuse/commit/?id=5451a00)
-  [Ikey Doherty: Update to 2.9.5](https://git.solus-project.com/packages/fuse/commit/?id=fe1d3bd)

**libogg**

-  [Ikey Doherty: Update, build for speed, enable emul32](https://git.solus-project.com/packages/libogg/commit/?id=4aae133)

**bash-completion**

-  [Ikey Doherty: Use a stateless configuration, and clean up the packaging](https://git.solus-project.com/packages/bash-completion/commit/?id=beed8a3)
-  [Ikey Doherty: Patch broken bash-completion](https://git.solus-project.com/packages/bash-completion/commit/?id=562cb52)

**libffi**

-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libffi/commit/?id=6fe5f2c)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libffi/commit/?id=412f98e)

**readline**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/readline/commit/?id=3e37b1f)

**libxfixes**

-  [Ikey Doherty: Rebuild for speed -- move manpages](https://git.solus-project.com/packages/libxfixes/commit/?id=d0c8bad)

**libwnck**

-  [Ikey Doherty: Update to 3.20.1, convert to ypkg](https://git.solus-project.com/packages/libwnck/commit/?id=178d42e)

**mobile-broadband-provider-info**

-  [Ikey Doherty: Update to 20151214](https://git.solus-project.com/packages/mobile-broadband-provider-info/commit/?id=adf75b9)

**alsa-plugins**

-  [Ikey Doherty: Rebuild against latest PulseAudio](https://git.solus-project.com/packages/alsa-plugins/commit/?id=4f8738f)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/alsa-plugins/commit/?id=bfaf910)
-  [Joshua Strobl: Update to 1.1.1](https://git.solus-project.com/packages/alsa-plugins/commit/?id=61b8e36)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/alsa-plugins/commit/?id=9aa48a7)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/alsa-plugins/commit/?id=3932a30)
-  [Justin Zobel: Corrected license and changed to yml](https://git.solus-project.com/packages/alsa-plugins/commit/?id=ebc52f2)

**liblcms2**

-  [Ikey Doherty: Update to 2.8](https://git.solus-project.com/packages/liblcms2/commit/?id=559a9c5)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/liblcms2/commit/?id=c1da59f)

**xorg-driver-video-fbdev**

-  [Ikey Doherty: Rebuild for new X.Org](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=b2c70fe)
-  [Ikey Doherty: Convert to ypkg for relro fixes](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=b744b72)
-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=066f6dc)

**libxxf86dga**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libxxf86dga/commit/?id=21fe0e7)

**xorg-driver-input-wacom**

-  [Ikey Doherty: Update to 0.33.0](https://git.solus-project.com/packages/xorg-driver-input-wacom/commit/?id=920ea40)
-  [Ikey Doherty: Rebuild against new X](https://git.solus-project.com/packages/xorg-driver-input-wacom/commit/?id=ff554df)

**libx11**

-  [Ikey Doherty: Rebuild for speed](https://git.solus-project.com/packages/libx11/commit/?id=d148518)

**thunderbird**

-  [Ikey Doherty: Update to 45.2.0 to address multiple CVEs](https://git.solus-project.com/packages/thunderbird/commit/?id=0ae4288)
-  [Ikey Doherty: langpacks: Update to 45.2.0](https://git.solus-project.com/packages/thunderbird/commit/?id=a8c84cb)
-  [Ikey Doherty: Update to 45.1.0](https://git.solus-project.com/packages/thunderbird/commit/?id=d5b816a)
-  [Ikey Doherty: Update langpacks for 45.1.0](https://git.solus-project.com/packages/thunderbird/commit/?id=1728852)
-  [Ikey Doherty: Update to 45.0](https://git.solus-project.com/packages/thunderbird/commit/?id=4b66913)
-  [Ikey Doherty: Update langpacks to 45.0](https://git.solus-project.com/packages/thunderbird/commit/?id=a3d125d)
-  [Ikey Doherty: Update to 38.7.2 and ship locales by default](https://git.solus-project.com/packages/thunderbird/commit/?id=b754c31)
-  [Ikey Doherty: Update to 38.7.1](https://git.solus-project.com/packages/thunderbird/commit/?id=29bafc7)
-  [Ikey Doherty: Fix pspec for cve-check-tool](https://git.solus-project.com/packages/thunderbird/commit/?id=9b93aae)
-  [Ikey Doherty: Update to 38.7.0](https://git.solus-project.com/packages/thunderbird/commit/?id=2577150)

**libimobiledevice**

-  [Joshua Strobl: Updated to address the following CVEs: -- CVE-2016-5104](https://git.solus-project.com/packages/libimobiledevice/commit/?id=b243604)

**e2fsprogs**

-  [Joshua Strobl: Disable static, push man3 into devel.](https://git.solus-project.com/packages/e2fsprogs/commit/?id=90fe483)
-  [Joshua Strobl: Enable multilib e2fsprogs.](https://git.solus-project.com/packages/e2fsprogs/commit/?id=84723ef)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/e2fsprogs/commit/?id=ec7f2f7)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/e2fsprogs/commit/?id=f575fc5)

**xorg-driver-video-radeon**

-  [Ikey Doherty: Rebuild against X.Org](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=0f2b775)
-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=ebf6a60)
-  [Justin Zobel: Update to 7.7.0](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=aafab2f)
-  [Ikey Doherty: Disable relro](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=78ab57e)

**libxkbfile**

-  [Ikey Doherty: Update to 1.0.9, enable multilib, optimize for speed](https://git.solus-project.com/packages/libxkbfile/commit/?id=e8a4d80)

**arc-gtk-theme**

-  [Ikey Doherty: Enable Metacity theming for Marco](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=2cb9b55)
-  [Ikey Doherty: Switch now to GTK 3.20](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=fb79fd3)
-  [Ikey Doherty: Update to latest version](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=df9e8c6)
-  [Justin Zobel: Update to 20160530](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=26f7ff8)
-  [Ikey Doherty: Add missing dependency on gtk2-engine-murrine](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=8ab0d5f)
-  [Ikey Doherty: Update to latest release](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=821245b)

**libxxf86vm**

-  [Ikey Doherty: Fix .pc prefix](https://git.solus-project.com/packages/libxxf86vm/commit/?id=58b4540)
-  [Ikey Doherty: Rebuild for speed, move manpages](https://git.solus-project.com/packages/libxxf86vm/commit/?id=d82d026)

**gnome-session**

-  [Ikey Doherty: Split sessions off for use by GNOME Shell package only](https://git.solus-project.com/packages/gnome-session/commit/?id=02b389d)
-  [Ikey Doherty: Update to 3.20.2](https://git.solus-project.com/packages/gnome-session/commit/?id=e93187f)

**pciutils**

-  [Ikey Doherty: Force lspci to be world accessible](https://git.solus-project.com/packages/pciutils/commit/?id=2e4ffd5)
-  [Ikey Doherty: Convert to ypkg, demote from system.base](https://git.solus-project.com/packages/pciutils/commit/?id=446ae45)

**gzip**

-  [Ikey Doherty: Update to 1.7 and use new flags](https://git.solus-project.com/packages/gzip/commit/?id=cb6aa3e)
-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/gzip/commit/?id=d1b6704)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/gzip/commit/?id=e0da8c8)

**gtk2-engine-murrine**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/gtk2-engine-murrine/commit/?id=f112bc1)

**at-spi2**

-  [Ikey Doherty: Update to 2.20.2](https://git.solus-project.com/packages/at-spi2/commit/?id=6026755)
-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/at-spi2/commit/?id=6a83a48)
-  [Ikey Doherty: Support a stateless configuration](https://git.solus-project.com/packages/at-spi2/commit/?id=76178ba)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/at-spi2/commit/?id=afaae2c)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/at-spi2/commit/?id=dc975b5)

**glibc**

-  [Ikey Doherty: Update to glibc 2.24, latest upstream version](https://git.solus-project.com/packages/glibc/commit/?id=fb334e2)
-  [Ikey Doherty: Fix the broken GCC6 patches and condense for maintainence purposes](https://git.solus-project.com/packages/glibc/commit/?id=e852824)
-  [Ikey Doherty: Fix GCC6 build issues, also address issues whereby Python segfaults (hplip)](https://git.solus-project.com/packages/glibc/commit/?id=b3b49bd)
-  [Ikey Doherty: Address CVE-2016-4429](https://git.solus-project.com/packages/glibc/commit/?id=2624b88)
-  [Ikey Doherty: Address CVE-2016-3075](https://git.solus-project.com/packages/glibc/commit/?id=d0a2637)
-  [Ikey Doherty: Rebuild for a working dbginfo](https://git.solus-project.com/packages/glibc/commit/?id=3aa4e3d)
-  [Ikey Doherty: Rebuild for older flags](https://git.solus-project.com/packages/glibc/commit/?id=e993113)
-  [Ikey Doherty: Enable baseline optimisations](https://git.solus-project.com/packages/glibc/commit/?id=71b898e)

**bzip2**

-  [Ikey Doherty: Address CVE-2016-3189](https://git.solus-project.com/packages/bzip2/commit/?id=cb60454)
-  [Ikey Doherty: Steam didn't get the memo about 64-bit so you get to back 10 years.](https://git.solus-project.com/packages/bzip2/commit/?id=2de4363)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/bzip2/commit/?id=9dbceca)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/bzip2/commit/?id=c157880)

 