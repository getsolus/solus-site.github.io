+++
author = "joshua"
categories = [
"News",
"Releases"
]
date =  "2016-09-07T01:51:05Z"
title = "Solus 1.2.0.5 Released"
url = "/2016/09/07/solus-1-2-0-5-released/"
+++

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

-  Ikey Doherty: Enable enca support, build x86 ASM instructions

**liboauth**

-  Ikey Doherty: Update to 1.0.3

**libgeocode-glib**

-  Ikey Doherty: Update to 3.20.1

**colord**

-  Ikey Doherty: Update to 1.3.3, use upstream provided tmpfiles
-  Ikey Doherty: Fix the ownership of /var/lib/colord
-  Ikey Doherty: Update to 1.2.12
-  Ikey Doherty: Fix polkit on native host build
-  Ikey Doherty: Exercise the daemon
-  Ikey Doherty: Add missing user/home combo
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Use a more stateless configuration
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags, convert to ypkg, fix udev dir

**less**

-  Ikey Doherty: Wanton abandonment
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Bump for SC testing

**libpipeline**

-  Ikey Doherty: Convert to ypkg, update to 1.4.1

**llvm**

-  Ikey Doherty: Account for missing yaml-bench
-  Ikey Doherty: Re-enable FileCheck, required for Rust bootstrap
-  Ikey Doherty: Update to 3.8.1, latest upstream version
-  Ikey Doherty: Account for abandoned paths
-  Ikey Doherty: scan-view/build is now part of the install, fix the shared bool
-  Ikey Doherty: Update to 3.8.0 -- don't force relro at this level either

**lz4**

-  Ikey Doherty: Update to 131 for pkgconfig

**a52dec**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libvpx**

-  Joshua Strobl: Simplify packaging, enable multilib, enable gcc5 building.

**evince**

-  Ikey Doherty: Update to 3.20.1
-  Joshua Strobl: Change component to office.
-  Justin Zobel: Update to 3.18.2 and enable djvu support
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**gd**

-  Joshua Strobl: Enable multilib

**unrar**

-  Zach Bacon: Updated unrar and updated package.yml component

**libnspr**

-  Ikey Doherty: Convert to ypkg, enable multilib

**gstreamer-1.0-plugins-good**

-  Ikey Doherty: Update to 1.8.2
-  Ikey Doherty: Rebuild against latest PulseAudio

**firefox**

-  Joshua Strobl: Disable libevent in config.
-  Joshua Strobl: Drop using system libevent due to crashes.
-  Ikey Doherty: Update to Firefox 48.0.2
-  Ikey Doherty: Update langpacks for 48.0.2
-  Ikey Doherty: Explicitly enable MOZ_RUST
-  Ikey Doherty: Add rust to build deps for MP4 decoder
-  Ikey Doherty: Update to 48.0
-  Ikey Doherty: Bump langpacks to 48.0
-  Ikey Doherty: Rebuild to address super instability
-  Ikey Doherty: Chokes on LTO for now, so just enable normal optimize flags
-  Ikey Doherty: Update to 47.0.1, enable -O3/lto
-  Ikey Doherty: langpacks: 47.0.1
-  Ikey Doherty: Force acceleration (Thanks Horst3180!)
-  Ikey Doherty: Update to 47.0
-  Ikey Doherty: Bump langpacks for 47.0
-  Ikey Doherty: Update to 46.0.1
-  Ikey Doherty: Update langpacks for 46.0.1
-  Ikey Doherty: Enable GTK3 integration
-  Ikey Doherty: Update to 46.0
-  Ikey Doherty: Bump langpacks to 46.0
-  Ikey Doherty: Update to 45.0.2, and now ship with all locales
-  Ikey Doherty: Clean up this package, rebuild for debug symbols
-  Ikey Doherty: Fix pspec for cve-check-tool
-  Ikey Doherty: Update to 45.0.1
-  Ikey Doherty: Disable firefox cflag overrides, and temporarily do not use system ICU
-  Ikey Doherty: Update to 45.0

**libxshmfence**

-  Ikey Doherty: Fix the .pc file
-  Ikey Doherty: Optimize for speed

**gstreamer-1.0-plugins-base**

-  Ikey Doherty: Update to 1.8.2, enable Opus

**gobject-introspection**

-  Ikey Doherty: Update to 1.48.0

**libsndfile**

-  Ikey Doherty: Convert to ypkg, enable multilib

**libxdmcp**

-  Ikey Doherty: Cleanup, optimize for speed

**xorg-driver-video-amdgpu**

-  Ikey Doherty: Rebuild for new X.Org
-  Ikey Doherty: Update to 1.1.0

**libnss**

-  Ikey Doherty: Bump for repo inclusion

**gstreamer-1.0**

-  Ikey Doherty: Update to 1.8.2

**aalib**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags
-  Justin Zobel: Change to ypkg

**gnome-calendar**

-  Joshua Strobl: Update to 3.20.3
-  Ikey Doherty: Only use GNOME Shell schemas when using GNOME Shell
-  Ikey Doherty: Update to 3.20.2
-  Joshua Strobl: Change component to office.
-  Justin Zobel: Update to 3.18.3

**dconf-editor**

-  Ikey Doherty: Update to 3.20.3
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**fontconfig**

-  Ikey Doherty: Fix prefix for fontconfig
-  Ikey Doherty: Fix broken -32bit-devel dependency
-  Ikey Doherty: Convert fontconfig to a stateless configuration
-  Ikey Doherty: Bump
-  Ikey Doherty: Remove defunct local.conf file
-  Ikey Doherty: Enforce Solus defaults
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**grub2**

-  Ikey Doherty: Fix broken update-grub2
-  Ikey Doherty: Enforce branding

**colord-gtk**

-  Ikey Doherty: Update to latest

**solus-artwork**

-  Ikey Doherty: Update to v12 for MATE desktop support
-  Ikey Doherty: Update to v11
-  Ikey Doherty: Update to v9 artwork and drop the legacy Evotex link
-  Ikey Doherty: Add icons, took time. Much crying
-  Ikey Doherty: Remove unnecessary dependencies
-  Ikey Doherty: Update to v7

**gstreamer-1.0-plugins-ugly**

-  Ikey Doherty: Update to 1.8.2

**os-prober**

-  Ikey Doherty: Roll back as new os-prober breaks
-  Ikey Doherty: Update to 1.71 -- My laptop does not have Vista..

**gmp**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libusbmuxd**

-  Joshua Strobl: Updated libusbmuxd to address the following CVEs: -- CVE-2016-5104

**glib2**

-  Ikey Doherty: Fix derps in multilib with new GNOME
-  Ikey Doherty: Add missing deps
-  Ikey Doherty: Account for abandoned files
-  Ikey Doherty: Update to 2.48.1
-  Ikey Doherty: Let's not talk about that
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**baselayout**

-  Ikey Doherty: Update to 1.2.0.5
-  Ikey Doherty: Bump to 1.2.1
-  Joshua Strobl: Bump to 1.2
-  Ikey Doherty: Fix branding
-  Ikey Doherty: Bump to 1.1.6
-  Ikey Doherty: Update to 1.1.5
-  Ikey Doherty: Bump to drop sysctl file
-  Ikey Doherty: Nuke dead sysctl.conf file
-  Ikey Doherty: Support stateless shells file

**iptables**

-  Ikey Doherty: Enable multilib

**libpaper**

-  Ikey Doherty: Convert to ypkg, enable multilib for cups

**bc**

-  Ikey Doherty: Update to 1.06.95
-  Ikey Doherty: Ensure we replace dead-dc pkg
-  Ikey Doherty: Rebuild for cflags, convert to ypkg

**libcdio-paranoia**

-  Joshua Strobl: Add cdparanoia symlink to cd-paranoia

**moka-icon-theme**

-  Ikey Doherty: Include missing license (sorry Sam)

**python**

-  Ikey Doherty: Fix dependency situation for now until -sqlite, etc, are split out
-  Ikey Doherty: Convert to ypkg, enable TKinter, and split up the packaging a bit
-  Ikey Doherty: Update to 2.7.12
-  Ikey Doherty: Rebuild due to SSL

**vlc**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild against PulseAudio 9
-  Joshua Strobl: Change component to multimedia.video
-  Ikey Doherty: Update to 2.2.4, enabling run
-  Ikey Doherty: Update to 2.2.3 for bug fixes
-  Ikey Doherty: Enabling round#1
-  Justin Zobel: Enable opus support
-  Ikey Doherty: Rebuild

**libupnp**

-  Ikey Doherty: Update to 1.6.20 to address CVE-2016-6255

**cpio**

-  Ikey Doherty: Address CVE-2016-2037
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**gtk2**

-  Ikey Doherty: Fix broken deps
-  Ikey Doherty: Fix prefix for gtk2 to unbreak theming
-  Joshua Strobl: Bump for ikey
-  Ikey Doherty: Bump for release
-  Ikey Doherty: Enable multilib without cups for now
-  Ikey Doherty: Use a stateless configuration

**gtk3**

-  Ikey Doherty: Update to 3.20.9
-  Ikey Doherty: Stop spammy GTK&#8230; can't handle it anymore
-  Ikey Doherty: Update to 3.20.6 and force multilib workarounds in
-  Ikey Doherty: Rebuild using new colord
-  Ikey Doherty: Fix 64bit build
-  Ikey Doherty: Enable multilib
-  Justin Zobel: Upgrade to 3.18.9
-  Ikey Doherty: Convert to a stateless configuration

**libwacom**

-  Ikey Doherty: Update to 0.22

**os-installer**

-  Ikey Doherty: Hotfix
-  Ikey Doherty: Update to v12.0
-  Ikey Doherty: Fix discoverability
-  Ikey Doherty: Last fixes
-  Ikey Doherty: Explicitly enable external access
-  Ikey Doherty: Sync..
-  Ikey Doherty: Sync again &#8230;
-  Ikey Doherty: Sync with git
-  Ikey Doherty: Sync again
-  Ikey Doherty: Bump and grind
-  Ikey Doherty: Stop everything wanting a terminal
-  Ikey Doherty: Sync. Again.
-  Ikey Doherty: Attempt to fix resize2fs failure
-  Ikey Doherty: Sync with git and use apply_patches for feck sake
-  Ikey Doherty: Don't shit bricks under Qemu
-  Ikey Doherty: Sync with git
-  Ikey Doherty: Fix borky shortcut
-  Ikey Doherty: Stop spamming -- so we can test GRUB without using the terminal
-  Ikey Doherty: Sync with git to fix broken swap mount
-  Ikey Doherty: Sync with git
-  Ikey Doherty: Sync
-  Ikey Doherty: That took far too long to spot.
-  Ikey Doherty: Sync..
-  Ikey Doherty: Sync again.. we'll get this right eventually 😛
-  Ikey Doherty: Hopefully fix UEFI booting..
-  Ikey Doherty: Sync with git again
-  Ikey Doherty: Fix the partuuid issue
-  Ikey Doherty: Sync with git again for fstab fixes
-  Ikey Doherty: Sync latest fixes and lightdm config
-  Ikey Doherty: Yet another rebuild
-  Ikey Doherty: Add GRUB support
-  Ikey Doherty: Sync with git
-  Ikey Doherty: Sync with git, fix up package a bit
-  Ikey Doherty: Make this actually work sorta.
-  Ikey Doherty: Update for testing
-  Ikey Doherty: Fix syntax issue
-  Ikey Doherty: Handle the gschema stuff through packaging of budgie-desktop-branding-livecd

**libdrm**

-  Ikey Doherty: Update to 2.4.68
-  Ikey Doherty: Update to 2.67

**xorg-driver-video-intel**

-  Ikey Doherty: Rebuild against new X.Org
-  Ikey Doherty: Sync with git
-  Ikey Doherty: Enable DRI3 once more
-  Ikey Doherty: Disable DRI3 due to regression with text display
-  Ikey Doherty: Convert to ypkg
-  Ikey Doherty: Sync with git and rebuild against new xorg, using DRI3 by default

**libnotify**

-  Joshua Strobl: Convert to YAML and multilib.

**gnutls**

-  Ikey Doherty: Address CVE-2016-4456 by updating to 3.4.13
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Update to v3.4.9
-  Ikey Doherty: Rebuild for cflags

**pango**

-  Ikey Doherty: Enable multilib

**util-linux**

-  Ikey Doherty: Fix the broken 32-bit pkgconfig file
-  Ikey Doherty: Add missing arch command
-  Ikey Doherty: Enable multilib

**atkmm**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**ca-certs**

-  Ikey Doherty: Rebuild today, and do one tomorrow, for solus-project.com
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Routine update

**freetype2**

-  Ikey Doherty: Fix weird issues in packaging
-  Ikey Doherty: Rebuild for speed
-  Ikey Doherty: Enable subpixel rendering through a subpackage
-  Ikey Doherty: Ensure 64-bit patch is applied
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**dhclient**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libp11-kit**

-  Ikey Doherty: Convert to ypkg, enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Update to v0.23.2
-  Ikey Doherty: Rebuild for cflags

**hexchat**

-  Justin Zobel: Update to 2.12.1
-  Ikey Doherty: Rebuild for new Perl
-  Justin Zobel: Update to 2.12.0

**libcairo**

-  Ikey Doherty: Update to 1.14.6
-  Ikey Doherty: Unbreak our pkgconfig file on 32bit
-  Ikey Doherty: Enable fontconfig on 32bit pkg
-  Ikey Doherty: Finally enable cairo multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**transmission**

-  Joshua Strobl: Update to 2.92

**xorg-server**

-  Ikey Doherty: Update to 1.18.4
-  Ikey Doherty: Disable logind, it's broken. Be explicit in options and fix GCC5 stuff.
-  Ikey Doherty: Rebuild against new mesa, fix CXXFLAGS
-  Ikey Doherty: Update to 1.18.3
-  Ikey Doherty: Rebuild

**dbus**

-  Ikey Doherty: Fix broken 32bit dep releases
-  Ikey Doherty: Fix dependencies, license, and remove conflicting /var/run/dbus
-  Ikey Doherty: Underp that
-  Ikey Doherty: Update to 1.10.8, enable user sessions
-  Ikey Doherty: Disable fatal warnings to stop Steam from coredumping
-  Ikey Doherty: Enable multilib

**libgdata**

-  Ikey Doherty: Rebuild to clean up
-  Ikey Doherty: Update to 0.17.5

**pam**

-  Ikey Doherty: Simplify packaging
-  Ikey Doherty: Use stateless shells file where appropriate
-  Ikey Doherty: Drop /etc/environment file
-  Ikey Doherty: Enable 32-bit libs

**enchant**

-  Joshua Strobl: Bump to rel 7 for repo resolution.
-  Ikey Doherty: Disable static libraries
-  Stefan Ric: Convert to yaml format and fix spellchecker
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libxcomposite**

-  Ikey Doherty: Enable multilib

**gnome-control-center**

-  Ikey Doherty: Add the new dep for gvfs-goa
-  Ikey Doherty: Update to 3.20.1
-  Joshua Strobl: Okay actually build.
-  Joshua Strobl: Rebuild against Pulseaudio 9, drop component.xml file.
-  Ikey Doherty: Add gnome-color-manager rundep
-  Ikey Doherty: Rebuild against new colord
-  Ikey Doherty: Drop icon size to 192, the people have spoken :')
-  Ikey Doherty: Update README
-  Ikey Doherty: Use Solus branding, not Budgie
-  Ikey Doherty: Rebuild

**gnome-system-monitor**

-  Ikey Doherty: Update to 3.20.1

**gnome-online-accounts**

-  Ikey Doherty: Update to 3.20.2
-  Joshua Strobl: Update to 3.18.4

**wayland**

-  Ikey Doherty: Update to 1.10.0 for GTK+ 3.20

**cogl**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Convert to ypkg for cleaning
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libvorbis**

-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Update to 1.3.5, build for speed

**pangomm**

-  Ikey Doherty: Update to 2.40.0

**libxmu**

-  Ikey Doherty: Convert to ypkg, enable multilib, build for speed

**libsm**

-  Ikey Doherty: Bump to fix deps
-  Ikey Doherty: Enable multilib

**findutils**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**kernel**

-  Ikey Doherty: Update to 4.7.2, raise NCPU to 48 (T329)
-  Ikey Doherty: Account for the documentation files
-  Ikey Doherty: Update to 4.7.0, the latest upstream kernel
-  Ikey Doherty: Bump for build
-  Nicolas Laplante: Enable CONFIG_UHID as a module
-  Ikey Doherty: Update to 4.4.16, latest LTS kernel
-  Ikey Doherty: Fix install of kernel-tools
-  Ikey Doherty: Enable kernel-tools again
-  Ikey Doherty: Enable CONFIG_BRCMFMAC_USB
-  Ikey Doherty: Update to the latest LTS kernel (4.4.15)
-  Ikey Doherty: Revert "Address CVE-2016-1237"
-  Ikey Doherty: Address CVE-2016-1237
-  Ikey Doherty: Update to 4.4.14, addressing CVE-2016-4997 and CVE-2016-4998
-  Ikey Doherty: Enable some bits for mmc/nand
-  Ikey Doherty: Update to the latest LTS kernel
-  Ikey Doherty: Enable CONFIG_DRM_AMDGPU_CIK for Kaveri APU support
-  Ikey Doherty: Enable kernel-tools, update to the latest LTS
-  Ikey Doherty: Enable VFIO for VGA, DualShock on Sony, and import Steam's xpad driver
-  Justin Zobel: Update to 4.4.11
-  Justin Zobel: Update to 4.4.10
-  Justin Zobel: Update to 4.4.9
-  Ikey Doherty: Address CVE-2015-8812
-  Ikey Doherty: Address CVE-2016-2847
-  Ikey Doherty: Update to the latest LTS kernel
-  Ikey Doherty: Adopt scheduler tweak (wasted cores) from Clear Linux kernel
-  Ikey Doherty: Disable kernel-tools for now
-  Ikey Doherty: Make various kernel optimisations, drop BFQ, switch to deadline now.
-  Ikey Doherty: Enable kernel-tools subpackage
-  Ikey Doherty: Update to the latest LTS kernel
-  Ikey Doherty: Enable the Logitech Unifying Receiver
-  Ikey Doherty: Update to latest LTS, addressing CVE-2016-2143
-  Ikey Doherty: Enable us to run static binaries
-  Ikey Doherty: Update to 4.4.5, and enable some gaming HIDs
-  Ikey Doherty: Fix this now because I know i'll forget it later
-  Ikey Doherty: Enable CONFIG_SPI_GPIO for Baytrail SD card support
-  Ikey Doherty: Bump to override current kernel
-  Ikey Doherty: Revert "Enable baseline optimisations"
-  Ikey Doherty: Enable baseline optimisations
-  Justin Zobel: Update to 4.4.4

**zlib**

-  Ikey Doherty: Enable .a files as they've been explicitly requested
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libgtop**

-  Ikey Doherty: Update to 2.34.0

**vino**

-  Ikey Doherty: Update to 3.20.2

**json-c**

-  Ikey Doherty: Convert to ypkg, enable multilib

**system-config-printer**

-  Ikey Doherty: Be stateless

**dosfstools**

-  Joshua Strobl: Update to 4.0, ensure we keep compat with 3.x
-  Ikey Doherty: Demote from system.base
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Fix packaging
-  Justin Zobel: Rebuild for cflags and yml

**popt**

-  Ikey Doherty: Convert to ypkg and demote from system.base

**attr**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libpciaccess**

-  Ikey Doherty: Update to 0.13.4, optimize for speed, fix license

**bluez**

-  Ikey Doherty: Update to 5.41, latest upstream release
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libinput**

-  Ikey Doherty: Update to 1.4.0

**libwebp**

-  Ikey Doherty: Convert to ypkg. enable multilib

**libxslt**

-  Ikey Doherty: Enable multilib

**libgtksourceview**

-  Ikey Doherty: Update to 3.20.4

**libfontenc**

-  Ikey Doherty: Update to 1.1.3
-  Ikey Doherty: Convert to ypkg

**libdmx**

-  Ikey Doherty: Convert to ypkg and enable multilib

**libxau**

-  Ikey Doherty: Fix .pc prefix
-  Ikey Doherty: Drop accidental /emul32/ path
-  Ikey Doherty: Optimize for speed

**libaio**

-  Ikey Doherty: Enable multilib

**kmod**

-  Ikey Doherty: Support a stateless configuration

**pulseaudio**

-  Ikey Doherty: Fix linking for wine
-  Ikey Doherty: Update to 9.0
-  Ikey Doherty: Enable multilib for Steam
-  Ikey Doherty: Fix circular dependency
-  Ikey Doherty: Convert to ypkg
-  Ikey Doherty: Support a stateless configuration by default

**v4l-utils**

-  Joshua Strobl: Enable multilib.

**pisi**

-  Ikey Doherty: Fix consistency issues bricking the golang build
-  Ikey Doherty: Fix comar for SC
-  Ikey Doherty: Always use ypkg-gen-history where possible
-  Ikey Doherty: Add initial support for reproducible builds
-  Ikey Doherty: Greatly optimize automatic binary dependencies
-  Ikey Doherty: Need this too.
-  Ikey Doherty: Fix up flags (SSE4a issues, we'll wait for HSBs)
-  Ikey Doherty: Helps if we include this
-  Ikey Doherty: Do not omit framepointer
-  Ikey Doherty: Update default CFLAGS

**nano**

-  Joshua Strobl: Update to 2.7.0
-  Ikey Doherty: Bump for server tests
-  Ikey Doherty: Final build for builder inspection
-  Ikey Doherty: More canary builds
-  Ikey Doherty: Rebuild for canary testing
-  Ikey Doherty: Enable syntax highlighting in git commit messages
-  Ikey Doherty: Rebuild for infra test
-  Ikey Doherty: Rebuild. Again
-  Ikey Doherty: Rebuild. Sorry
-  Ikey Doherty: Moar updates
-  Ikey Doherty: Bump for SC test
-  Ikey Doherty: Demote nano to editor component
-  Ikey Doherty: Canary build for new build systems
-  Ikey Doherty: Fix break in that patch
-  Ikey Doherty: Convert to a stateless configuration
-  Ikey Doherty: Update to v2.5.3
-  Ikey Doherty: Canary build
-  Ikey Doherty: Canary build

**libmodplug**

-  Ikey Doherty: Bump
-  Ikey Doherty: Enable multilib

**lsb-release**

-  Ikey Doherty: Update to 1.2.0.5
-  Ikey Doherty: Bump for 1.2.1
-  Ikey Doherty: Make other distros happy (grr.)
-  Joshua Strobl: Bump to 1.2
-  Ikey Doherty: Fix branding
-  Ikey Doherty: Bump to 1.1.6
-  Ikey Doherty: Fix for 1.1.5
-  Ikey Doherty: Demote from system.base
-  Ikey Doherty: Convert to a stateless configuration

**elfutils**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libproxy**

-  Ikey Doherty: Rebuild against new Perl

**libevdev**

-  Ikey Doherty: Update to 1.5.2

**libgpg-error**

-  Ikey Doherty: Enable multilib

**poppler**

-  Ikey Doherty: Use new ypkg to achieve the level of splitting required
-  Joshua Strobl: Re-add qt5 work but do not build.

**libice**

-  Ikey Doherty: Convert to ypkg and enable multilib

**arc-firefox-theme**

-  Ikey Doherty: Update to 48.20160802
-  Ikey Doherty: Update to latest version
-  Ikey Doherty: Update to 46.20160426
-  Ikey Doherty: Update to 45.20160308

**libxt**

-  Ikey Doherty: Update to 1.1.5, enable multilib

**libxv**

-  Ikey Doherty: Rebuild for speed

**libpng**

-  Ikey Doherty: Rebuild due to ypkg bork
-  Ikey Doherty: Fix .pc, move bins into devel
-  Ikey Doherty: Rebuild for cflags
-  Justin Zobel: Enable 32bit

**libxext**

-  Ikey Doherty: Rebuild for speed, move manpages

**nvidia-304-glx-driver**

-  Ikey Doherty: Rebuild for 4.7.2
-  Ikey Doherty: Port to Linux 4.7.0
-  Ikey Doherty: Rebuild for kernel/toolchain
-  Ikey Doherty: Rebuild for 4.4.16
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild against latest kernel
-  Ikey Doherty: Rebuild for 4.4.14
-  Ikey Doherty: Rebuild for kernel
-  Ikey Doherty: Rebuild for 4.4.13
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild for kernel
-  Ikey Doherty: Rebuild against newer kernel
-  Justin Zobel: Rebuild for 4.4.10
-  Ikey Doherty: Disable mtrr
-  Justin Zobel: Rebuild for 4.4.9
-  Ikey Doherty: Rebuild for kernel
-  Ikey Doherty: Rebuild against new kernel
-  Ikey Doherty: Rebuild against 4.4.8 kernel
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild for new kernel and xorg
-  Ikey Doherty: Rebuild against 4.4.7, move OpenCL to stateless directory
-  Ikey Doherty: Blacklist from initrd, further stateless
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild against 4.4.5, enable VA/VDPAU
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for kernel
-  Justin Zobel: Rebuild for 4.4.4

**libxdamage**

-  Ikey Doherty: Optimize for speed

**disktype**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**gnupg**

-  Ikey Doherty: Update and rebuild to address CVE-2016-6316 (real problem in libgcrypt)

**gnome-terminal**

-  Ikey Doherty: Update to 3.20.2
-  Ikey Doherty: Force-provide x-terminal-emulator to keep the 90s happy
-  Ikey Doherty: Restore Solus defaults
-  Ikey Doherty: Fix new tab icon
-  Ikey Doherty: Import Fedora's notification+transparency patch
-  Ikey Doherty: Purge dead patches
-  Justin Zobel: Update to 3.18.3
-  Ikey Doherty: Rebuild

**libcap2**

-  Ikey Doherty: Fix 32bit libs

**gnome-screenshot**

-  Ikey Doherty: Update to 3.20.1

**coreutils**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**gnome-bluetooth**

-  Ikey Doherty: Update to 3.20.0

**gawk**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**faba-icon-theme**

-  Ikey Doherty: Dependency order wrong way around
-  Ikey Doherty: Add missing runtime dependency

**libicu**

-  Ikey Doherty: Update to 57.1
-  Ikey Doherty: Move data into devel
-  Ikey Doherty: Convert to ypkg, enable multilib

**samba**

-  Ikey Doherty: Fix broken configuration file
-  Ikey Doherty: Update to 4.3.11
-  Ikey Doherty: Fix samba to be usable
-  Ikey Doherty: Rebuild against new Perl
-  Ikey Doherty: Update to 4.3.8 to address multiple CVEs
-  Ikey Doherty: Update to 4.3.6
-  Ikey Doherty: Rebuild

**libsigc++**

-  Ikey Doherty: Update to 2.8.0

**gutenprint**

-  Bridouz: Gutenprint build against CUPS to enable PPDs for several printers

**lightdm-gtk-greeter**

-  Ikey Doherty: Update branding for 1.2
-  Ikey Doherty: Switch to Arc icons

**libxft**

-  Ikey Doherty: Enable multilib, optimize for speed

**orc**

-  Ikey Doherty: Enable multilib

**bash**

-  Ikey Doherty: Ensure to propogate flags into user environment
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags, optimize for size

**evolution-data-server**

-  Joshua Strobl: Update to 3.20.5
-  Ikey Doherty: Update to 3.20.4

**exfat-utils**

-  Ikey Doherty: Demote from system.base
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**seahorse**

-  Ikey Doherty: Update to 3.20.0

**openssh**

-  Ikey Doherty: Enable PAM and update to 7.3p1
-  Joshua Strobl: Update to 7.2p2
-  Justin Zobel: Revert ssh-copy-id enablement as it is insecure and weak
-  Justin Zobel: Enable ssh-copy-id

**baobab**

-  Ikey Doherty: Update to 3.20.1
-  Ikey Doherty: Fix conflict in Google Chrome with Nautilus
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**openssl**

-  Ikey Doherty: Address CVE-2016-2180
-  Ikey Doherty: Address CVE-2016-2177
-  Ikey Doherty: Enable multilib, kill profile for now
-  Ikey Doherty: Fix patch, wake up bro
-  Ikey Doherty: Help Josh finish up the SSL stuff
-  Joshua Strobl: Update to 1.0.2h
-  Ikey Doherty: Remove used of makedepend -- it breaks (somehow) libcrypto.so.1.0.0
-  Ikey Doherty: Convert to ypkg and enable speed/PGO optimizations

**foomatic-db-engine**

-  Ikey Doherty: Rebuild against latest Perl

**libarchive**

-  Ikey Doherty: Address CVE-2016-1541 through update to libarchive 3.2.0
-  Ikey Doherty: Fix splitting
-  Ikey Doherty: Convert to ypkg
-  Ikey Doherty: Rebuild for nettle

**libxtst**

-  Ikey Doherty: Convert to ypkg, enable multilib, optimize for speed

**cairomm**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**accountsservice**

-  Ikey Doherty: Update to 0.6.42
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**xrandr**

-  Ikey Doherty: Update to 1.5.0 for todorov's optimus work

**libxres**

-  Ikey Doherty: Convert to ypkg and enable multilib

**libgweather**

-  Joshua Strobl: Update to 3.20.3
-  Joshua Strobl: Update to 3.20.1, cleanup.

**libgusb**

-  Ikey Doherty: Update to 0.2.9
-  Ikey Doherty: Enable multilib

**xorg-driver-video-vesa**

-  Ikey Doherty: Rebuild against X.Org
-  Ikey Doherty: Update to 2.3.4

**python3**

-  Ikey Doherty: Update to 3.5.2 and enable tkinter
-  Ikey Doherty: Split test stuff into subpackage, as it's huge
-  Ikey Doherty: Brutally fix this package

**at-spi2-atk**

-  Ikey Doherty: Update to 2.20.1
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**cryptsetup**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**reiserfsprogs**

-  Ikey Doherty: Demote from system.base

**mesalib**

-  Ikey Doherty: Update to 12.0.1
-  Ikey Doherty: Update to 12.0.0-rc4
-  Ikey Doherty: Update to 11.2.2 for r600 endian fixes
-  Ikey Doherty: Update to 11.2.1
-  Ikey Doherty: Enable speed optimisations
-  Ikey Doherty: Rebuild against new LLVM
-  Ikey Doherty: Rebuild

**gnome-themes-standard**

-  Ikey Doherty: Update to 3.20.2
-  Ikey Doherty: Enable multilib

**lvm2**

-  Ikey Doherty: Fix systemd files

**libtiff**

-  Joshua Strobl: Simplify packaging, address the following CVEs: * CVE-2015-8665 * CVE-2016-3186
-  Ikey Doherty: Address CVE-2015-8668 and optimize for speed
-  Ikey Doherty: Go back to -O2, benchmarking complete
-  Ikey Doherty: Enable speed: optimize
-  Ikey Doherty: Update to 4.0.6 to drop old patches and clean up
-  Justin Zobel: Convert to yml and enable 32bit

**harfbuzz**

-  Ikey Doherty: Update to 1.3.0 and build against new ICU 57.1
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Enable graphite2

**libxcursor**

-  Ikey Doherty: Optimize for speed, move man

**xz**

-  Ikey Doherty: Fix the .pc file
-  Ikey Doherty: Re-introduce PGO now that ypkg is fixed
-  Ikey Doherty: Redo the unbreak
-  Ikey Doherty: Re-enable PGO
-  Ikey Doherty: Disable PGO temporarily -- causing issues
-  Ikey Doherty: Enable emul32
-  Ikey Doherty: Enable basic PGO
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**ntfs-3g**

-  Ikey Doherty: Update to latest version, demote from system.base

**libndp**

-  Ikey Doherty: Update to 1.6 to address CVE-2016-3698
-  Joshua Strobl: Enable multilib.

**libxcb**

-  Ikey Doherty: Rebuild for speed

**wget**

-  Thomas H: Update to 1.18
-  Ikey Doherty: Optimize for size
-  Ikey Doherty: Convert to ypkg, move to network.clients

**libjson-glib**

-  Ikey Doherty: Update to 1.2.0
-  Ikey Doherty: Enable multilib

**cups**

-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**librest**

-  Ikey Doherty: Fix broken prefix in -32bit-devel
-  Joshua Strobl: Enable multilib

**libvte**

-  Ikey Doherty: Borrow the Fedora notification patches
-  Ikey Doherty: Update to 0.44.2
-  Ikey Doherty: Update to 0.42.5, incorporate Fedora's notify patch
-  Ikey Doherty: Rebuild

**webkitgtk3**

-  Ikey Doherty: Update to 2.4.11

**openconnect**

-  Ikey Doherty: Rebuild

**acl**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libspeex**

-  Ikey Doherty: Convert to ypkg, enable multilib

**gdk-pixbuf**

-  Ikey Doherty: And now rebuild with updated librsvg in place
-  Ikey Doherty: Update to 2.34.0
-  Ikey Doherty: Update to 2.32.3, drop comar, go stateless, optimize for speed
-  Ikey Doherty: Ensure this works for updating gdk pixbuf providers
-  Ikey Doherty: *Fix* multilib
-  Ikey Doherty: Enable multilib for use with Steam
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for CFLAGS

**python3-gobject**

-  Ikey Doherty: Update to 3.20.1

**linux-firmware**

-  Ikey Doherty: Update to 20160620

**networkmanager-openvpn**

-  Ikey Doherty: Add missing dependency on openvpn (T97)

**perl**

-  Ikey Doherty: Address CVE-2016-1238
-  Ikey Doherty: Update to 5.22.1
-  Ikey Doherty: Convert to ypkg, demote from system.base

**opus**

-  Joshua Strobl: Change component to multimedia.codecs.
-  Joshua Strobl: Update to 1.1.2

**libva**

-  Ikey Doherty: Update to 1.7.1 -- per issue T65
-  Ikey Doherty: Enable GLX

**libpeas**

-  Ikey Doherty: Update to 1.18.0

**libxpm**

-  Ikey Doherty: Enable multilib

**libxinerama**

-  Ikey Doherty: Fix .pc prefix
-  Ikey Doherty: Correct the license
-  Peter O'Connor: Enable multilib

**libxml2**

-  Ikey Doherty: Address CVE-2016-5131
-  Ikey Doherty: Update to 2.9.4 and use ypkg's new PGO
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Address CVE-2016-3627 and CVE-2016-3705
-  Ikey Doherty: Add acknowledgement of Clear 🙂
-  Ikey Doherty: Update to 2.9.3 now
-  Ikey Doherty: Rebuild with ypkg for PGO based optimizations

**libpcre**

-  Ikey Doherty: Actually fix pcre prefix
-  Ikey Doherty: Fix .pc, optimize for speed, offload files into -devel
-  Ikey Doherty: Update to 8.38 and address 2 CVEs
-  Ikey Doherty: Update to 8.37, enable multilib

**dracut**

-  Ikey Doherty: Fix off-by-one
-  Ikey Doherty: Hopefully fix update issues
-  Ikey Doherty: Provide /initrd.img to keep other distributions happy

**libxrandr**

-  Ikey Doherty: Update to 1.5.0

**libexif**

-  Joshua Strobl: Simplify packaging, enable multilib.

**libvdpau**

-  Ikey Doherty: Simplify packaging
-  Ikey Doherty: Support a stateless configuration with sane defaults

**libcroco**

-  Ikey Doherty: Update to 0.6.11
-  Ikey Doherty: Enable emul32
-  Ikey Doherty: Convert to ypkg and optimize for speed

**libgphoto2**

-  Joshua Strobl: Enable multilib

**nvidia-glx-driver**

-  Ikey Doherty: Rebuild for 4.7.2
-  Ikey Doherty: Port to Linux 4.7
-  Ikey Doherty: Rebuild for kernel/toolchain
-  Ikey Doherty: Rebuild against 4.4.16
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild against latest kernel
-  Ikey Doherty: Rebuild for 4.4.14
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for 4.4.13
-  Ikey Doherty: Build for kernel
-  Ikey Doherty: Rebuild for new kernel
-  Ikey Doherty: Rebuild against latest kernel
-  Justin Zobel: Rebuild for 4.4.10
-  Justin Zobel: Rebulid for 4.4.9
-  Ikey Doherty: Rebuild for new kernel
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild against 4.4.8 kernel
-  Ikey Doherty: Rebuild for kernel
-  Ikey Doherty: Rebuild for kernel and xorg
-  Ikey Doherty: Rebuild for 4.4.7 -- use stateless OpenCL directory
-  Ikey Doherty: Blacklist nouveau from initrd, more stateless
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild against 4.4.5, enable VA/VDPAU
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for kernel
-  Justin Zobel: Rebuild for 4.4.4

**gnome-settings-daemon**

-  Ikey Doherty: Update to 3.20.1
-  Joshua Strobl: Rebuild against Pulseaudio 9
-  Ikey Doherty: Rebuild against new colord

**ncurses**

-  Ikey Doherty: Move man pages into devel to resolve update conflicts
-  Ikey Doherty: Fix gcc5 building enable multilib

**libxi**

-  Ikey Doherty: Update to 1.7.6, enable multilib

**kerberos**

-  Joshua Strobl: Move examples to devel.
-  Joshua Strobl: Simplify packaging, enable multilib.

**file-roller**

-  Ikey Doherty: Update to 3.20.2
-  Justin Zobel: Upgrade to 3.16.5
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**mutter**

-  Ikey Doherty: Update to 3.20.3

**ibus**

-  Ikey Doherty: Update to 1.5.13

**inxi**

-  Justin Zobel: Update to 2.2.35

**libusb**

-  Ikey Doherty: Workaround the broken parallel build
-  Ikey Doherty: Update to 1.0.20
-  Ikey Doherty: Enable multilib

**libmad**

-  Ikey Doherty: Convert to ypkg

**eog**

-  Ikey Doherty: Update to 3.20.4 to address CVE-2016-6855
-  Ikey Doherty: Update to 3.20.3
-  Joshua Strobl: Change component to multimedia.graphics
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libtheora**

-  Joshua Strobl: Simplified packaging, converted to multilib.

**gnome-keyring**

-  Ikey Doherty: Update to 3.20.0

**grilo**

-  Ikey Doherty: Update to 0.3.1
-  Joshua Strobl: Update to latest 0.2 series release.
-  Ikey Doherty: Rebuild

**grep**

-  Joshua Strobl: Update to 2.25

**nvidia-340-glx-driver**

-  Ikey Doherty: Rebuild for 4.7.2
-  Ikey Doherty: Port to Linux 4.7
-  Ikey Doherty: Rebuild for kernel/toolchain
-  Ikey Doherty: Rebuild against 4.4.16
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild against latest kernel
-  Ikey Doherty: Rebuild for 4.4.14
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for 4.4.13
-  Ikey Doherty: Rebuild for kernel
-  Ikey Doherty: Rebuild against new kernel
-  Ikey Doherty: Rebuild against latest kernel
-  Justin Zobel: Rebuild for 4.4.10
-  Justin Zobel: Rebuild for 4.4.9
-  Ikey Doherty: Rebuild for new kernel
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild against 4.4.8 kernel
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild for kernel and xorg
-  Ikey Doherty: Rebuild against 4.4.7 kernel, use stateless OpenCL directory
-  Ikey Doherty: Blacklist from initrd, more stateless
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for 4.4.5, enable VA/VDPAU
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for kernel
-  Justin Zobel: Rebuild for 4.4.4

**libnl**

-  Ikey Doherty: Convert to ypkg, enable multilib

**libxkbcommon**

-  Joshua Strobl: Simplify packaging, enable multilib.

**libtasn1**

-  Joshua Strobl: Update to 4.8
-  Ikey Doherty: *Actually* enable 32bit.
-  Ikey Doherty: Convert to ypkg enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Update to v4.7

**network-manager-applet**

-  Ikey Doherty: Update to 1.0.10

**networkmanager-openconnect**

-  Ikey Doherty: Rebuild

**faad2**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libepoxy**

-  Ikey Doherty: Enable multilib for gtk3

**libxrender**

-  Ikey Doherty: Fix .pc prefix
-  Ikey Doherty: Rebuild for speed, update to 0.9.9

**upower**

-  Ikey Doherty: Update to 0.99.4

**ffmpeg**

-  Joshua Strobl: Rebuild against x265 10-bit and 12-bit improvements.
-  Joshua Strobl: Enable libx265 support.
-  Peter O'Connor: Enable ffplay for kdenlive
-  Joshua Strobl: Rebuild against Pulseaudio 9.
-  Joshua Strobl: Simplify packaging, fix man3.
-  Joshua Strobl: Enable xvid
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libxvmc**

-  Ikey Doherty: Optimize for speed, enable multilib

**python-gobject**

-  Ikey Doherty: Update to 3.20.1

**avahi**

-  Ikey Doherty: Update to 0.6.32
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**cracklib**

-  Ikey Doherty: Address CVE-2016-6318
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libcanberra**

-  Ikey Doherty: Convert to ypkg, build against latest PulseAudio 9

**gstreamer-1.0-libav**

-  Ikey Doherty: Update to 1.8.2

**alsa-utils**

-  Joshua Strobl: Update to 1.1.1
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**nautilus**

-  Joshua Strobl: Update to 3.20.3, drop icons patch fix.
-  Joshua Strobl: Bump release to land Nautilus patch.
-  Stefan Ric: Introduce upstream patch for the icon chooser dialog
-  Ikey Doherty: Update to 3.20.1
-  Ikey Doherty: Default to displaying "Delete Permanently" in Solus
-  Ikey Doherty: Backport the "Delete files permanently" option

**mtdev**

-  Ikey Doherty: Convert to ypkg

**man-db**

-  Ikey Doherty: Demote from system.base
-  Ikey Doherty: Fix degraded-state of init
-  Ikey Doherty: Incorporate Clear Linux stateless patch
-  Ikey Doherty: Convert to ypkg and update to 2.7.5

**lightdm**

-  Ikey Doherty: Add missing dependencies for minimal images
-  Ikey Doherty: Source environment files on startup, fix pam for gnome keyring too
-  Ikey Doherty: Remove blacklisted path

**expat**

-  Ikey Doherty: Address missing CVE patches, CVE-2016-5300 and CVE-2012-6702
-  Ikey Doherty: Update to 2.1.1
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**xorg-driver-video-vmware**

-  Ikey Doherty: Rebuild against new xorg

**cups-filters**

-  Ikey Doherty: Enable ghostscript, per advice of Nicolas Laplante
-  Ikey Doherty: Ship the foomatic files and completely replace old stuff with new 1.8.3
-  Ikey Doherty: Replace foomatic-filters to drop duplicate CVE from the project
-  Ikey Doherty: Update to 1.4.0 to address CVE-2015-8560
-  Ikey Doherty: Use stateless fontconfig directories
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**gedit**

-  Ikey Doherty: Update to 3.20.2

**clutter-gtk**

-  Ikey Doherty: Update to 1.8.0
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for CFLAGS

**libgcrypt**

-  Ikey Doherty: Address CVE-2016-6316
-  Ikey Doherty: Enable multilib for systemd

**systemd**

-  Ikey Doherty: Fix broken dependency chain
-  Ikey Doherty: Fix missing -32bit deps and fix building with new glib
-  Ikey Doherty: Enable multilib build
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Fix broken handler, thanks to flippedBit

**clutter**

-  Ikey Doherty: Update to 1.26.0
-  Ikey Doherty: Fix component and license
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for CFLAGS

**file**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**zenity**

-  Ikey Doherty: Update to 3.20.0
-  Ikey Doherty: Remove evil runtime dep
-  Bryan T. Meyers: zenity now uses ypkg

**gsettings-desktop-schemas**

-  Ikey Doherty: Fix default touchpad settings (T133)
-  Ikey Doherty: Update to 3.20.0
-  Ikey Doherty: Fix the defaults

**rhythmbox**

-  Ikey Doherty: Update and patch Rhythmbox for 3.4 + continued working extensions
-  Joshua Strobl: Change component to multimedia.audio
-  Joshua Strobl: Update to 3.3.1, dropped component.xml file.
-  Ikey Doherty: Rebuild

**dconf**

-  Ikey Doherty: Update to 0.26.0
-  Ikey Doherty: Convert to ypkg, enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**libtool**

-  Ikey Doherty: Enable multilib for pulseaudio

**curl**

-  Ikey Doherty: Address multiple CVEs in update to 7.50.1
-  Ikey Doherty: Address CVE-2016-4802 through 7.49.1 update
-  Ikey Doherty: Update to 7.49.0 to address CVE-2016-3739
-  Ikey Doherty: Enable multilib for Steam
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**dbus-glib**

-  Ikey Doherty: Rebuild using new systemd/dbus
-  Ikey Doherty: Update to latest dbus-glib
-  Ikey Doherty: Convert to ypkg, enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**network-manager**

-  Ikey Doherty: Rebuild for all the things
-  Ikey Doherty: Fix emul32 .pc
-  Ikey Doherty: Enable multilib (FINALLY.)

**nettle**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Update to v3.2

**gcc**

-  Ikey Doherty: Update to 6.1.0 -- the latest upstream release of GCC
-  Ikey Doherty: Fix CFLAGS_FOR_TARGET, use -O3, fix -32bit links
-  Ikey Doherty: Update to 5.3.0

**solus-hardware-config**

-  Ikey Doherty: Require libinput for GNOME 3.20, per T98
-  Ikey Doherty: Require tlp and thermald, per issue T52
-  Ikey Doherty: Update to v6
-  Ikey Doherty: Update to v5 for sysctl support
-  Ikey Doherty: Update to v4

**gettext**

-  Ikey Doherty: Move man3 over to fix broken upgrade path
-  Ikey Doherty: Fix up for repo inclusion
-  Joshua Strobl: Fix -docs abandonment.
-  Joshua Strobl: Update to 0.19.8.1 and simplify packaging.

**lame**

-  Ikey Doherty: Enable further optimisations to lame
-  Ikey Doherty: Optimize for speed, split out docs

**libflac**

-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Fix flags
-  Ikey Doherty: Work for speed in a different fashion, go straight for funroll-loops
-  Ikey Doherty: Convert to ypkg and optimize for speed (mostly)

**alsa-lib**

-  Ikey Doherty: Switch default asound to being a stateless config
-  Ikey Doherty: Install missing asound.conf
-  Joshua Strobl: Update to 1.1.1
-  Ikey Doherty: Enable multilib for wine
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**glibmm**

-  Ikey Doherty: Update to 2.48.1

**xorg-driver-video-nouveau**

-  Ikey Doherty: Rebuild against new X.Org
-  Ikey Doherty: Rebuild against new Xorg

**librsvg**

-  Ikey Doherty: Build against new gdk-pixbuf
-  Ikey Doherty: Update to 2.40.16
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Convert to ypkg, optimize for speed

**budgie-desktop**

-  Ikey Doherty: Backport keyboard layout fix to give users a fighting chance
-  Ikey Doherty: Include the workspaces fix due to suspicion its crashing Budgie now
-  Ikey Doherty: Rebuild against the GNOME 3.20 stack
-  Ikey Doherty: Rebuild against latest PulseAudio 9
-  Ikey Doherty: Resync with git to unbreak things
-  Ikey Doherty: Sync with git for gaming optimisation testing
-  Ikey Doherty: Update to 10.2.6
-  Ikey Doherty: Sync with git for nice new changes
-  Ikey Doherty: Sync with git for Raven fix (SBZ#491)
-  Ikey Doherty: Use the gnome-screensaver locking, not lightdm
-  Ikey Doherty: Sync with git
-  Ikey Doherty: Fix the battery refresh issues
-  Ikey Doherty: Sync with git for gnome-screensaver integration
-  Ikey Doherty: Fix the polkit dialog icon
-  Ikey Doherty: Sync with git version of Budgie
-  Ikey Doherty: Rebuild for debug symbols
-  Ikey Doherty: Rebuild to drop a billion dependencies
-  Ikey Doherty: Sync with git for all the shiny
-  Ikey Doherty: Update to v10.2.5
-  Ikey Doherty: Convert to stateless configuration
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**gparted**

-  Ikey Doherty: Don't override the icon theme, allow the desktop to handle this

**libxfont**

-  Ikey Doherty: Enable multilib, build for speed

**gcr**

-  Ikey Doherty: Update to 3.20.0, nuke old files

**libsecret**

-  Ikey Doherty: Convert to ypkg

**faba-icon-theme-mono**

-  Ikey Doherty: Add missing runtime dependency
-  Ikey Doherty: Switch to a properly distchecked tarball, version 4.3

**libatk**

-  Ikey Doherty: Update to 2.20.0
-  Ikey Doherty: Fix broken pkgconfig on emul32
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**sqlite3**

-  Ikey Doherty: Enable dbstat for Firefox
-  Ikey Doherty: Update and enable readline on the x86-64 build
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Update to 3.12.1, and enable optimize: speed

**pixman**

-  Ikey Doherty: Rebuild with our PGO changes
-  Ikey Doherty: Fix pkgconfig file
-  Ikey Doherty: Rebuild to drop /emul32/ path
-  Ikey Doherty: Enable PGO, 32-bit, and -O3/lto

**gvfs**

-  Ikey Doherty: Split GNOME Online Accounts out to reduce unneeded deps for Solmate.
-  Ikey Doherty: Update to 1.28.2
-  Joshua Strobl: Update to 1.28.0
-  Ikey Doherty: Rebuild

**libsoup**

-  Ikey Doherty: Update to 2.54.1
-  Ikey Doherty: Enable 32-bit

**libidn**

-  Ikey Doherty: Enable multilib

**udisks**

-  Joshua Strobl: Update to 2.1.7

**glib-networking**

-  Ikey Doherty: Update to 2.48.2
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for gnutls+cflags
-  Ikey Doherty: Rebuild for cflags

**gstreamer-1.0-plugins-bad**

-  Joshua Strobl: Drop component.xml, rebuild against x265 10-bit and 12-bit improvements.
-  Joshua Strobl: Enable libx265 support.
-  Ikey Doherty: Fix file conflict
-  Ikey Doherty: Fix broken origin string
-  Ikey Doherty: Update to 1.8.2
-  Ikey Doherty: Fix linking
-  Ikey Doherty: Rebuild

**faac**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**wireless-tools**

-  Ikey Doherty: Convert to ypkg, migrate to network.base

**cups-pk-helper**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**totem-pl-parser**

-  Ikey Doherty: Rebuild

**gnome-calculator**

-  Ikey Doherty: Update to 3.20.2

**adwaita-icon-theme**

-  Ikey Doherty: Add missing dependency on hicolor-icon-theme
-  Ikey Doherty: Update to 3.20

**polkit**

-  Ikey Doherty: Clean up patch
-  Ikey Doherty: Support a stateless configuration for /etc/shells

**fuse**

-  Ikey Doherty: Enable udev rules
-  Ikey Doherty: Add a fuse group
-  Ikey Doherty: Demote from system.base
-  Ikey Doherty: Support a stateless configuration
-  Ikey Doherty: Update to 2.9.5

**libogg**

-  Ikey Doherty: Update, build for speed, enable emul32

**bash-completion**

-  Ikey Doherty: Use a stateless configuration, and clean up the packaging
-  Ikey Doherty: Patch broken bash-completion

**libffi**

-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**readline**

-  Ikey Doherty: Enable multilib

**libxfixes**

-  Ikey Doherty: Rebuild for speed -- move manpages

**libwnck**

-  Ikey Doherty: Update to 3.20.1, convert to ypkg

**mobile-broadband-provider-info**

-  Ikey Doherty: Update to 20151214

**alsa-plugins**

-  Ikey Doherty: Rebuild against latest PulseAudio
-  Ikey Doherty: Enable multilib
-  Joshua Strobl: Update to 1.1.1
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags
-  Justin Zobel: Corrected license and changed to yml

**liblcms2**

-  Ikey Doherty: Update to 2.8
-  Ikey Doherty: Enable multilib

**xorg-driver-video-fbdev**

-  Ikey Doherty: Rebuild for new X.Org
-  Ikey Doherty: Convert to ypkg for relro fixes
-  Ikey Doherty: Rebuild against new xorg

**libxxf86dga**

-  Ikey Doherty: Enable multilib

**xorg-driver-input-wacom**

-  Ikey Doherty: Update to 0.33.0
-  Ikey Doherty: Rebuild against new X

**libx11**

-  Ikey Doherty: Rebuild for speed

**thunderbird**

-  Ikey Doherty: Update to 45.2.0 to address multiple CVEs
-  Ikey Doherty: langpacks: Update to 45.2.0
-  Ikey Doherty: Update to 45.1.0
-  Ikey Doherty: Update langpacks for 45.1.0
-  Ikey Doherty: Update to 45.0
-  Ikey Doherty: Update langpacks to 45.0
-  Ikey Doherty: Update to 38.7.2 and ship locales by default
-  Ikey Doherty: Update to 38.7.1
-  Ikey Doherty: Fix pspec for cve-check-tool
-  Ikey Doherty: Update to 38.7.0

**libimobiledevice**

-  Joshua Strobl: Updated to address the following CVEs: -- CVE-2016-5104

**e2fsprogs**

-  Joshua Strobl: Disable static, push man3 into devel.
-  Joshua Strobl: Enable multilib e2fsprogs.
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**xorg-driver-video-radeon**

-  Ikey Doherty: Rebuild against X.Org
-  Ikey Doherty: Rebuild against new xorg
-  Justin Zobel: Update to 7.7.0
-  Ikey Doherty: Disable relro

**libxkbfile**

-  Ikey Doherty: Update to 1.0.9, enable multilib, optimize for speed

**arc-gtk-theme**

-  Ikey Doherty: Enable Metacity theming for Marco
-  Ikey Doherty: Switch now to GTK 3.20
-  Ikey Doherty: Update to latest version
-  Justin Zobel: Update to 20160530
-  Ikey Doherty: Add missing dependency on gtk2-engine-murrine
-  Ikey Doherty: Update to latest release

**libxxf86vm**

-  Ikey Doherty: Fix .pc prefix
-  Ikey Doherty: Rebuild for speed, move manpages

**gnome-session**

-  Ikey Doherty: Split sessions off for use by GNOME Shell package only
-  Ikey Doherty: Update to 3.20.2

**pciutils**

-  Ikey Doherty: Force lspci to be world accessible
-  Ikey Doherty: Convert to ypkg, demote from system.base

**gzip**

-  Ikey Doherty: Update to 1.7 and use new flags
-  Ikey Doherty: Optimize for speed
-  Ikey Doherty: Rebuild

**gtk2-engine-murrine**

-  Ikey Doherty: Enable multilib

**at-spi2**

-  Ikey Doherty: Update to 2.20.2
-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Support a stateless configuration
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

**glibc**

-  Ikey Doherty: Update to glibc 2.24, latest upstream version
-  Ikey Doherty: Fix the broken GCC6 patches and condense for maintainence purposes
-  Ikey Doherty: Fix GCC6 build issues, also address issues whereby Python segfaults (hplip)
-  Ikey Doherty: Address CVE-2016-4429
-  Ikey Doherty: Address CVE-2016-3075
-  Ikey Doherty: Rebuild for a working dbginfo
-  Ikey Doherty: Rebuild for older flags
-  Ikey Doherty: Enable baseline optimisations

**bzip2**

-  Ikey Doherty: Address CVE-2016-3189
-  Ikey Doherty: Steam didn't get the memo about 64-bit so you get to back 10 years.
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild for cflags

 