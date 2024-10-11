+++
author = "joshua"
categories = [
"Releases"
]
date =  "2016-03-02T08:16:22Z"
title = "Solus 1.1 Shannon Released"
url = "/2016/03/02/solus-1-1-shannon-released/"
+++ 

#### Overview

We are proud to announce the release of Solus 1.1, the first point release in the Shannon series of releases. Solus 1.1 builds upon the groundwork of 1.0 with subtle refinements and improvements to Budgie, large core and graphics stack improvements, and 
furthers us on our journey to create something that you can just use, something that just works.

#### Solus

Solus is a Linux-based operating system built from scratch for the modern desktop and targeting the x86_64 architecture.

##### Budgie

{{< relimg "budgie.png" >}}

Budgie is our flagship desktop environment, developed and designed for the desktop, with inch of it catering to a desktop workflow. We have continued to improve Budgie, with v10.2.4 shipping in Solus 1.1. This release features a multitude of bugfixes, the 
following highlighted improvements, alongside updated translations:

- We have resolved issues with the some icons, such as network, occasionally rendering inconsistently (sizing, colors).
- We have resolved issues with the volume icon size.
- System locking has been restored in Solus 1.1, as we are now leveraging LightDM. As a result of dropping GDM for LightDM, we are also seeing significant performance improvements with a reduced CPU overhead.
- We have a new logo. Admit it, it's cute.

For more details on Budgie, see [our dedicated Budgie page](https://solus-project.com/budgie/).

##### Core and Graphics Improvements

It isn't tradition for Linux distributions to ship fundamental changes in point releases. But given our tradition of breaking traditions, we've shipped a plethora of optimizations to the core of our operating system and further optimization to the core libraries 
used throughout our display / graphic stack.

1. We now provide preliminary OpenGL 4.1 support.
2. Mesa has been updated to 11.1.2
3. Xorg has been updated to 1.17.4
4. We've synchronized our Intel X11 driver with the last development version in git for improved performance and extended hardware support, including Broadwell, Skylake and preliminary support for future SKUs.
5. Nouveau support is at the latest release.

##### General Improvements

{{< relimg "2WCcF57H2z6O.png" >}}

Let's be honest, printing isn't sexy. Printing isn't even what the cool kids do anymore. Nowadays they send their ol' vintage filtered pictures on the Snapchats and sign documents on their fancy iPotatos. But that doesn't matter. 
Solus 1.1 ships with printing support out of the box. Now when those cool kids grow up and get jobs, their need for printing on old fashion paper will work. Got an HP printer? Install the hplip package!

We've refined our selection of beautiful wallpapers, generously provided by [Twisted Pixels](http://www.twistedpixelsphotography.com/).

We also improved mail support in Solus 1.1 by resolving issues relating to Thunderbird and mime association.

##### Initial Installation Experience

Solus 1.1 builds on our aim to provide a seamless, effortless Linux desktop experience. This experience extends to the installation of Solus, and we have taken the time to evaluate and implement improvements to be made to the 
installer.

1. We've improved timezone configuration.
2. We've ensured that Windows 8 and above are properly detected.
3. We've continued to improve detection of EFI System Partitions.

We also have resolved issues with USB and UEFI booting!

#### Shipped Applications and Packages

##### Applications

Solus 1.1 ships out-of-the-box with numerous applications to enhance the desktop experience. Below are some highlights of applications Solus 1.1 ships:

-  firefox 44.0.2
-  nautilus 3.18.5
-  rhythmbox 3.3
-  thunderbird 38.6.0
-  vlc 2.2.2

#####  Firefox, GTK, and Icon Themes

We enhance the out-of-the-box desktop and Firefox experiences by defaulting to the [Arc GTK Theme](https://github.com/horst3180/Arc-theme) as well as [Arc Firefox Theme](https://github.com/horst3180/arc-firefox-theme), and 
utilize the [Moka Icon Theme](https://github.com/moka-project/moka-icon-theme) to spruce up application iconography.

#####  System

Solus 1.1 ships with gstreamer media libraries, a multitude of system utilized fonts such as Clear Sans, Symbola, and Dejavu and leverages the most updated GTK 3.18 stack.

Solus 1.1 is UEFI enabled via goofiboot, a distribution-agnostic fork of gummiboot, to ensure a wider variety of modern hardware is capable of using Solus, and further hardware enablement with the shipping of Linux kernel 4.4.3.

####  Download

Solus 1.1 ISOs can be downloaded across official and community-supported mirrors internationally, as well as via BitTorrent, via [our Download page](https://solus-project.com/download/).

####  Resources

SOLUS PROJECT CONTACT: joshua@stroblindustries.com

WEBSITE: [https://solus-project.com](https://solus-project.com/)

MEDIA ASSETS: [https://solus-project.com/1-1-media](https://solus-project.com/1-1-media)

---

####  Full Changelog

#####  Packages added to this release:

-  exfat-utils
-  foomatic-db
-  foomatic-db-engine
-  foomatic-filters
-  ghostscript
-  gutenprint
-  libaio
-  libupnp
-  libxvmc
-  lightdm
-  lightdm-gtk-greeter
-  mobile-broadband-provider-info
-  python-requests
-  python3-cairo
-  python3-dbus
-  rhythmbox-alternative-toolbar
-  solus-hardware-config

#####  Packages removed from this release:

-  caribou
-  dash
-  gdm
-  geoclue
-  gjs
-  gnome-initial-setup
-  gnome-shell
-  libgee
-  mozjs
-  polkit-gnome
-  telepathy-logger

#####  Changes in this release:

**python-urlgrabber**

-  Justin Zobel: Rebuild for openssl
-  Ikey Doherty: Rebuild for UCS4 migration

**less**

-  Ikey Doherty: Update to 481, convert to ypkg

**xorg-driver-input-synaptics**

-  Ikey Doherty: Rebuild against new xorg

**libgpg-error**

-  Ikey Doherty: Convert to ypkg, update to 1.21

**gstreamer-1.0-plugins-good**

-  Joshua Strobl: Rebuild against updated taglib

**firefox**

-  Justin Zobel: Update to 44.0.2
-  Justin Zobel: Update to 44.0.1
-  Ikey Doherty: Reset the build
-  Experiment: Attempt speed optimised build"
-  Ikey Doherty: Experiment: Attempt speed optimised build
-  Justin Zobel: Update to 44.0
-  Justin Zobel: Update to 43.0.4
-  Justin Zobel: Update to 43.0.3

**gpgme**

-  Ikey Doherty: Rebuild for gcrypt

**gobject-introspection**

-  Ikey Doherty: Rebuild for UCS4 migration
-  Ikey Doherty: Get back into system.devel you're pissing me off now

**gnome-bluetooth**

-  Justin Zobel: Update to 3.18.2

**samba**

-  Justin Zobel: Bump
-  Ikey Doherty: Update to 4.3.4
-  Ikey Doherty: Add missing component
-  Ikey Doherty: Add tmpfiles
-  Ikey Doherty: Fix derpy file conflicts
-  Ikey Doherty: Fix last commit
-  Ikey Doherty: Update to address numerous CVEs

**xorg-driver-video-amdgpu**

-  Ikey Doherty: Update to 1.0.1

**libpwquality**

-  Ikey Doherty: Rebuild for UCS4 migration

**fontconfig**

-  Ikey Doherty: Bump
-  Ikey Doherty: Enable -32bit

**grub2**

-  Ikey Doherty: Enforce Solus name at bootloader

**python-magic**

-  Ikey Doherty: Rebuild for UCS4 migration

**evolve-sc**

-  Ikey Doherty: Update to 3.1

**baselayout**

-  Ikey Doherty: Fix os-release
-  Ikey Doherty: Update for 1.1

**python**

-  Ikey Doherty: Rebuild against modernised glibc
-  Ikey Doherty: Update to latest 2.7
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Do some enabling
-  Ikey Doherty: Another rebuild
-  Ikey Doherty: Enable UCS4

**python-dbus**

**gtk2**

-  Ikey Doherty: Enable cups, as people happen to like printing

**gtk3**

-  Justin Zobel: Update to 3.18.7

**libwacom**

-  Ikey Doherty: Update to 0.17 to fix wacom

**os-installer**

-  Ikey Doherty: Sync with git
-  Ikey Doherty: Fix derpderpderp
-  Ikey Doherty: Update for ISO
-  Ikey Doherty: Update to 5.3, drop GDM cruft

**libdrm**

-  Ikey Doherty: Optimize for speed

**xorg-driver-video-intel**

-  Ikey Doherty: Enable DRI3, xvmc, and sync with git

**gnutls**

-  Ikey Doherty: Rebuild for gcrypt

**util-linux**

-  Ikey Doherty: Rebuild for UCS4 migration

**python3**

-  Ikey Doherty: Borrow some flags from our friends over at Clear
-  Justin Zobel: Add replaces python3-setuptools
-  Justin Zobel: Update to 3.5.1

**nvidia-340-glx-driver**

-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Rebuild for 4.4.3
-  Ikey Doherty: Rebuild for X
-  Justin Zobel: Rebuild for 4.2.2
-  Ikey Doherty: Rebuild against kernel
-  Justin Zobel: Bump for 4.4.1 kernel
-  Ikey Doherty: Rebuild against 4.4.0 kernel
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild
-  John Holt: changed desktop category for application menu
-  Ikey Doherty: Rebuild against the kernel

**hexchat**

-  Ikey Doherty: Rebuild for UCS4 migration, fix license, kill Clang (slow)

**system-config-printer**

-  Justin Zobel: Rebuild for python 3.5
-  Ikey Doherty: Add missing dependencies

**xorg-server**

-  Ikey Doherty: Update to 1.17.4, re-enable dri3

**comar-api**

**vpnc**

-  Ikey Doherty: Rebuild for gcrypt

**transmission**

-  Justin Zobel: Update to 2.90

**gnome-control-center**

-  Ikey Doherty: Incorporate a derivative of Yuri Henrique's Budgie Logo in the details view
-  Ikey Doherty: Rebuild for new samba
-  Ikey Doherty: Remove dead patch
-  Ikey Doherty: Rebuild due to wacom changes

**gnome-online-accounts**

-  Ikey Doherty: Unbreak gobject

**cogl**

-  Ikey Doherty: Rebuild against new stack

**kernel**

-  Ikey Doherty: Update to 4.4.3, add missing /vmlinuz link
-  Ikey Doherty: Update to 4.4.2, latest LTS kernel
-  Ikey Doherty: Clean up config (shrink it) -- ensure lvm stuff is built-in
-  Justin Zobel: Update to 4.4.1
-  Ikey Doherty: Bai
-  Ikey Doherty: Update to the 4.4.0 LTS kernel
-  Ikey Doherty: Address CVE-2016-0728
-  Ikey Doherty: Disable CONFIG_USB_UAS -- suspect it's responsible for boot failures on XHCI
-  Ikey Doherty: Add BREAK_TRACK for USB inspection
-  Ikey Doherty: Disable early boot vesa framebuffer, cannot switch on Qemu
-  Ikey Doherty: Another enabling round
-  Ikey Doherty: Disable internal framebuffer stuff, enable further instructions and optimisations

**vino**

-  Ikey Doherty: Rebuild for gcrypt

**py2cairo**

-  Ikey Doherty: Rebuild for UCS4 migration

**bluez**

-  Justin Zobel: Update to 5.37 and enable bluez libs

**libxslt**

-  Justin Zobel: Bump
-  Ikey Doherty: Rebuild for UCS4 migration

**libpeas**

-  Ikey Doherty: Rebuild for UCS4 migration
-  Justin Zobel: Rebuild for python 3.5

**nano**

-  Ikey Doherty: Update to 2.5.1
-  Ikey Doherty: Canary build

**elfutils**

-  Ikey Doherty: Move libelf into system.base

**gnome-settings-daemon**

-  Justin Zobel: Update to 3.18.2
-  Ikey Doherty: Rebuild against libwacom

**piksemel**

-  Ikey Doherty: Rebuild for UCS4 migration

**poppler**

-  Joshua Strobl: Revert qt5 support.
-  Joshua Strobl: Proper enabling of qt5 support. Just needed to pass a flag, imagine that.
-  Joshua Strobl: Enable qt5 support.

**arc-firefox-theme**

-  Justin Zobel: Update to 44.20160126

**libpng**

-  Ikey Doherty: Optimize for speed, convert to ypkg
-  Ikey Doherty: Address CVE-2015-8540

**python-pyliblzma**

-  Ikey Doherty: Rebuild for UCS4 migration

**xdg-utils**

-  Ikey Doherty: XML is for newbs
-  Ikey Doherty: Update to 1.1.1

**libxrender**

-  Ikey Doherty: Convert to ypkg, enable 32-bit

**libcap2**

-  Ikey Doherty: Enable 32-bit for 32-bit udev

**tdb**

-  Ikey Doherty: Update to 1.3.7 for new Samba
-  Ikey Doherty: Rebuild for UCS4 migration
-  Ikey Doherty: Update to 1.3.6 for samba

**libqmi**

-  Ikey Doherty: Update to 1.12.6

**systemd**

-  Ikey Doherty: Rebuild against new gcrypt
-  Ikey Doherty: Patch build failure due to kernel changes (stdint)
-  Ikey Doherty: Fix comar
-  Ikey Doherty: Enable acl. Again.
-  Ikey Doherty: Rebuild
-  Update to v221"
-  Fix udev issues"
-  Further fixes"
-  Ikey Doherty: Further fixes
-  Ikey Doherty: Fix udev issues
-  Ikey Doherty: Update to v221

**libgnome-menus**

-  Ikey Doherty: Take upstream patch that's also in Arch to fix XDG_CURRENT_DESKTOP for Budgie

**libgcrypt**

-  Ikey Doherty: Update to 1.6.5

**pygeoip**

-  Ikey Doherty: Rebuild for 3.5
-  Ikey Doherty: Enable python 3.4 extension

**nvidia-304-glx-driver**

-  Ikey Doherty: Rebuild for 4.4.3
-  Ikey Doherty: Rebuild for X changes
-  Justin Zobel: Rebuild for 4.4.2
-  Ikey Doherty: Rebuild against kernel
-  Justin Zobel: Bump for 4.4.1 kernel
-  Ikey Doherty: Rebuild against 4.4.0
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild for all the recent kernel stuff
-  Ikey Doherty: Rebuild against the kernel

**evolution-data-server**

-  Justin Zobel: Update to 3.18.5
-  Justin Zobel: Update to 3.18.4

**seahorse**

-  Joshua Strobl: Rebuild against updated gnupg

**openssh**

-  Ikey Doherty: Address multiple CVEs

**openssl**

-  Ikey Doherty: Update to 1.0.2g to address multiple CVEs
-  Ikey Doherty: Update to 1.0.2f to address CVE-2016-0701 and CVE-2015-3197

**acl**

-  Ikey Doherty: Enable multilib

**glib2**

-  Ikey Doherty: Enable libelf based resource listing

**cryptsetup**

-  Ikey Doherty: Rebuild for gcrypt

**mesalib**

-  Ikey Doherty: Update to 11.1.2 for OpenGL 4.1, enable DRI3 again

**lvm2**

-  Ikey Doherty: Disable this fucking retarded option yet again
-  Ikey Doherty: One last fix run..
-  Ikey Doherty: Getting a bit of a joke now
-  Ikey Doherty: Re-enable udev sync..
-  Ikey Doherty: Disable udev sync for now
-  Ikey Doherty: Update+enabling run
-  Ikey Doherty: Refix lvm2 for dracut/live-image usage

**wpa_supplicant**

-  Ikey Doherty: Add sleep/resume script for systemd (SBZ#335)

**harfbuzz**

-  Ikey Doherty: Rebuild for cflags

**libxcursor**

-  Ikey Doherty: Convert to ypkg, enable 32-bit

**xz**

-  Ikey Doherty: Optimize for speed

**xkeyboard-config**

-  Ikey Doherty: Update to 2.17

**attr**

-  Ikey Doherty: Enable multilib

**python-parted**

-  Ikey Doherty: Rebuild for UCS4 + Python 3.5
-  Ikey Doherty: Enable Python 3.4

**cups**

-  Ikey Doherty: Fix broken postinstall
-  Ikey Doherty: Step 1 in debugging cups

**lsb-release**

-  Ikey Doherty: Update for 1.1

**libmbim**

-  Ikey Doherty: Update to 1.12.2

**python3-gobject**

-  Justin Zobel: Rebuild for python 3.5

**network-manager**

-  Ikey Doherty: Use correct udev directory
-  Ikey Doherty: Explicitly set resume method (SBZ#335)
-  Ikey Doherty: Rebuild to gain modem-manager fixes

**python-pycurl**

-  Ikey Doherty: Rebuild for UCS4 migration

**libxpm**

-  Ikey Doherty: Convert to ypkg, rebuild for cflags

**dracut**

-  Ikey Doherty: Bring back some old modules
-  Ikey Doherty: Go back to 041, this seemed to work better..
-  Ikey Doherty: More fixes..
-  Ikey Doherty: Add some default config
-  Ikey Doherty: Import upstream dmsquash-live patches
-  Ikey Doherty: Re-update to 044, drop dash

**libxrandr**

-  Ikey Doherty: Convert to ypkg for cflags, enable multilib

**nvidia-glx-driver**

-  Ikey Doherty: Rebuild for 4.4.3
-  Ikey Doherty: Rebuild for X
-  Justin Zobel: Bump
-  Justin Zobel: Rebuild for 4.4.2
-  Ikey Doherty: Rebuild
-  Justin Zobel: Bump relno
-  Justin Zobel: Bump for 4.4.1 kernel
-  Justin Zobel: Update to 352.79
-  Ikey Doherty: Build against 4.4.0 kernel
-  Ikey Doherty: Rebuild against kernel
-  Ikey Doherty: Rebuild
-  Ikey Doherty: Rebuild against the kernel

**libusb**

-  Ikey Doherty: Fix incorrect version number (SBZ#602)
-  Ikey Doherty: Rebuild for cflags

**gnome-keyring**

-  Ikey Doherty: Rebuild for gcrypt

**ffmpeg**

-  Justin Zobel: Update to 2.8.6 (resolves CVEs 2016-2330 and CVE-2016-2213
-  Justin Zobel: Update to 2.8.5 and revert CVE changes
-  Ikey Doherty: Address zero-day in ffmpeg
-  Ikey Doherty: Do an enabling run even though it has no associated bug report.
-  Ikey Doherty: Address CVE-2015-8662 and CVE-2015-8663

**zlib**

-  Ikey Doherty: Add missing lib32 build deps, and optimize for speed

**network-manager-applet**

-  Ikey Doherty: Rely on Budgie's own nm-applet desktop file, require mobile-broadband*

**qt5-everywhere**

-  Justin Zobel: Rebuild
-  Ikey Doherty: Support multiple desktops in XDG_CURRENT_DESKTOP, for correct integration

**gnupg**

-  Justin Zobel: Bump for rebuild
-  Joshua Strobl: Update to 2.0.29

**libjpeg-turbo**

-  Ikey Doherty: Enable multilib
-  Ikey Doherty: Optimize for speed

**xorg-driver-input-evdev**

-  Ikey Doherty: Rebuild against new xorg

**python-gobject**

**pixman**

-  Ikey Doherty: Add missing key to spec
-  Ikey Doherty: Convert to ypkg, optimize for speed

**libcanberra**

-  Ikey Doherty: Bump for build
-  Ikey Doherty: Partly unbork canberra

**alsa-utils**

-  Ikey Doherty: Use correct udev rules directory
-  Justin Zobel: Convert to yml

**nautilus**

-  Justin Zobel: Update to 3.18.5

**libassuan**

-  Ikey Doherty: Rebuild for gcrypt

**libxml2**

-  Ikey Doherty: Rebuild for UCS4 migration

**cups-filters**

-  Ikey Doherty: Fix conflicts with foomatic-filters

**gedit**

-  Justin Zobel: Rebuild for python 3.5
-  Justin Zobel: Update to 3.18.3

**pulseaudio**

-  Ikey Doherty: Use correct udev rules directory
-  Joshua Strobl: Rebuild against updated fftw.
-  Ikey Doherty: Enable equalizer

**gsettings-desktop-schemas**

-  Ikey Doherty: Assert 1.1 branding

**rhythmbox**

-  Ikey Doherty: Rebuild for UCS4 migration, and tdb update
-  Justin Zobel: Rebuild for python 3.5
-  Joshua Strobl: Update to 3.3

**curl**

-  Justin Zobel: Rebuild for openssl
-  Justin Zobel: Convert to yml

**gcc**

-  Ikey Doherty: Rebuild to be fully self hosted, and reset component

**alsa-lib**

-  Ikey Doherty: Rebuild for UCS4 migration
-  Justin Zobel: Corrected license and updated to yml

**budgie-desktop**

-  Ikey Doherty: Set the default pins
-  Ikey Doherty: Restore screen locking in lightdm
-  Ikey Doherty: Update to 10.2.4
-  Ikey Doherty: Sync with git patches for tray problems
-  Ikey Doherty: Update to v10.2.3
-  Ikey Doherty: Update to v10.2.2
-  Ikey Doherty: Update for I derp
-  Ikey Doherty: Update to 10.2

**gcr**

-  Ikey Doherty: Rebuild against gcrypt

**libsecret**

-  Justin Zobel: Bump

**xorg-driver-video-vesa**

-  Ikey Doherty: Rebuild against new xorg

**gvfs**

-  Ikey Doherty: Rebuild due to gcrypt
-  Ikey Doherty: Rebuild against new samba

**vlc**

-  Ikey Doherty: Update to 2.2.2
-  Joshua Strobl: Build with upnp support, massive reorg and cleanup of pkgconfigs.
-  Joshua Strobl: Rebuild against updated taglib.

**gstreamer-1.0-plugins-bad**

-  Ikey Doherty: Rebuild for gcrypt

**pinentry**

-  Ikey Doherty: Rebuild for gcrypt

**gnome-calculator**

-  Justin Zobel: Update to 3.18.3

**adwaita-icon-theme**

-  Ikey Doherty: Remove forced xcursor link as GSD now exports cursor icon theme (hurrah!)

**libffi**

-  Ikey Doherty: Rebuild for cflags

**pycups**

-  Ikey Doherty: Rebuild for UCS4 migration
-  Justin Zobel: Rebuild for python 3.5

**comar**

**eog**

-  Justin Zobel: Update to 3.18.2

**xorg-driver-video-fbdev**

-  Ikey Doherty: Rebuild against xorg, kill relro

**thunderbird**

-  Ikey Doherty: Fix file association
-  Justin Zobel: Update to 38.6.0
-  Ikey Doherty: Disable SDK
-  Justin Zobel: Update to 38.5.1

**libimobiledevice**

-  Ikey Doherty: Rebuild due to libgcrypt

**xorg-driver-video-radeon**

-  Ikey Doherty: Rebuild against new xorg

**nettle**

-  Ikey Doherty: Enable 32bit libs
-  Ikey Doherty: Rebuild for flags

**xorg-driver-video-nouveau**

-  Ikey Doherty: Update to 1.0.12
-  Ikey Doherty: Rebuild against new xorg

**taglib**

-  Joshua Strobl: Update to 1.10

**totem-pl-parser**

-  Ikey Doherty: Rebuild for gcrypt

**gzip**

-  Ikey Doherty: Rebuild for cflags

**libksba**

-  Ikey Doherty: Rebuild for gcrypt

**glibc**

-  Ikey Doherty: Update to v2.23
-  Ikey Doherty: Address CVE-2015-7547, fix CFLAGS
-  Ikey Doherty: Normalise configuration
-  Ikey Doherty: Raise minimum kernel version to 3.14.32
-  Ikey Doherty: Address CVE-2015-8777

**bzip2**

-  Ikey Doherty: Enable all cflags, and optimize for speed

  