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

{{< altimg "2016/02/budgie.png" >}}

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

{{< altimg "2016/02/2WCcF57H2z6O.png" >}}

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

-  [Justin Zobel: Rebuild for openssl](https://git.solus-project.com/packages/python-urlgrabber/commit/?id=3830e17)
-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/python-urlgrabber/commit/?id=d7221aa)

**less**

-  [Ikey Doherty: Update to 481, convert to ypkg](https://git.solus-project.com/packages/less/commit/?id=cd26eab)

**xorg-driver-input-synaptics**

-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-input-synaptics/commit/?id=a3ab8e3)

**libgpg-error**

-  [Ikey Doherty: Convert to ypkg, update to 1.21](https://git.solus-project.com/packages/libgpg-error/commit/?id=7b93243)

**gstreamer-1.0-plugins-good**

-  [Joshua Strobl: Rebuild against updated taglib](https://git.solus-project.com/packages/gstreamer-1.0-plugins-good/commit/?id=635e4ec)

**firefox**

-  [Justin Zobel: Update to 44.0.2](https://git.solus-project.com/packages/firefox/commit/?id=4720ded)
-  [Justin Zobel: Update to 44.0.1](https://git.solus-project.com/packages/firefox/commit/?id=3da7ec4)
-  [Ikey Doherty: Reset the build](https://git.solus-project.com/packages/firefox/commit/?id=6ee6c39)
-  [Experiment: Attempt speed optimised build"](https://git.solus-project.com/packages/firefox/commit/?id=9989dcd">Ikey Doherty: Revert )
-  [Ikey Doherty: Experiment: Attempt speed optimised build](https://git.solus-project.com/packages/firefox/commit/?id=059fa3b)
-  [Justin Zobel: Update to 44.0](https://git.solus-project.com/packages/firefox/commit/?id=c256d5b)
-  [Justin Zobel: Update to 43.0.4](https://git.solus-project.com/packages/firefox/commit/?id=6d9c5bb)
-  [Justin Zobel: Update to 43.0.3](https://git.solus-project.com/packages/firefox/commit/?id=3398ce0)

**gpgme**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/gpgme/commit/?id=6b16d86)

**gobject-introspection**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/gobject-introspection/commit/?id=941bf4d)
-  [Ikey Doherty: Get back into system.devel you're pissing me off now](https://git.solus-project.com/packages/gobject-introspection/commit/?id=d9af1c8)

**gnome-bluetooth**

-  [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-bluetooth/commit/?id=5205838)

**samba**

-  [Justin Zobel: Bump](https://git.solus-project.com/packages/samba/commit/?id=956a37e)
-  [Ikey Doherty: Update to 4.3.4](https://git.solus-project.com/packages/samba/commit/?id=001b933)
-  [Ikey Doherty: Add missing component](https://git.solus-project.com/packages/samba/commit/?id=eba09d7)
-  [Ikey Doherty: Add tmpfiles](https://git.solus-project.com/packages/samba/commit/?id=079a79d)
-  [Ikey Doherty: Fix derpy file conflicts](https://git.solus-project.com/packages/samba/commit/?id=5480654)
-  [Ikey Doherty: Fix last commit](https://git.solus-project.com/packages/samba/commit/?id=977720e)
-  [Ikey Doherty: Update to address numerous CVEs](https://git.solus-project.com/packages/samba/commit/?id=3a1834b)

**xorg-driver-video-amdgpu**

-  [Ikey Doherty: Update to 1.0.1](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=66fa82b)

**libpwquality**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/libpwquality/commit/?id=167edbd)

**fontconfig**

-  [Ikey Doherty: Bump](https://git.solus-project.com/packages/fontconfig/commit/?id=4812dfd)
-  [Ikey Doherty: Enable -32bit](https://git.solus-project.com/packages/fontconfig/commit/?id=114893e)

**grub2**

-  [Ikey Doherty: Enforce Solus name at bootloader](https://git.solus-project.com/packages/grub2/commit/?id=e09b5f9)

**python-magic**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/python-magic/commit/?id=d7c34e4)

**evolve-sc**

-  [Ikey Doherty: Update to 3.1](https://git.solus-project.com/packages/evolve-sc/commit/?id=da5216f)

**baselayout**

-  [Ikey Doherty: Fix os-release](https://git.solus-project.com/packages/baselayout/commit/?id=9985459)
-  [Ikey Doherty: Update for 1.1](https://git.solus-project.com/packages/baselayout/commit/?id=be2025e)

**python**

-  [Ikey Doherty: Rebuild against modernised glibc](https://git.solus-project.com/packages/python/commit/?id=bfd6927)
-  [Ikey Doherty: Update to latest 2.7](https://git.solus-project.com/packages/python/commit/?id=dbc9dbf)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/python/commit/?id=b0c309c)
-  [Ikey Doherty: Do some enabling](https://git.solus-project.com/packages/python/commit/?id=134bfd0)
-  [Ikey Doherty: Another rebuild](https://git.solus-project.com/packages/python/commit/?id=583407e)
-  [Ikey Doherty: Enable UCS4](https://git.solus-project.com/packages/python/commit/?id=1eaebe0)

**python-dbus**

**gtk2**

-  [Ikey Doherty: Enable cups, as people happen to like printing](https://git.solus-project.com/packages/gtk2/commit/?id=8837b20)

**gtk3**

-  [Justin Zobel: Update to 3.18.7](https://git.solus-project.com/packages/gtk3/commit/?id=8b26249)

**libwacom**

-  [Ikey Doherty: Update to 0.17 to fix wacom](https://git.solus-project.com/packages/libwacom/commit/?id=eb99179)

**os-installer**

-  [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/os-installer/commit/?id=d62bc74)
-  [Ikey Doherty: Fix derpderpderp](https://git.solus-project.com/packages/os-installer/commit/?id=15835c5)
-  [Ikey Doherty: Update for ISO](https://git.solus-project.com/packages/os-installer/commit/?id=01e90dd)
-  [Ikey Doherty: Update to 5.3, drop GDM cruft](https://git.solus-project.com/packages/os-installer/commit/?id=02eb216)

**libdrm**

-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/libdrm/commit/?id=433a3a3)

**xorg-driver-video-intel**

-  [Ikey Doherty: Enable DRI3, xvmc, and sync with git](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=9547e83)

**gnutls**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/gnutls/commit/?id=1484217)

**util-linux**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/util-linux/commit/?id=e870524)

**python3**

-  [Ikey Doherty: Borrow some flags from our friends over at Clear](https://git.solus-project.com/packages/python3/commit/?id=149ff36)
-  [Justin Zobel: Add replaces python3-setuptools](https://git.solus-project.com/packages/python3/commit/?id=55ff961)
-  [Justin Zobel: Update to 3.5.1](https://git.solus-project.com/packages/python3/commit/?id=82c1d02)

**nvidia-340-glx-driver**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=9f43aef)
-  [Ikey Doherty: Rebuild for 4.4.3](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=dd69583)
-  [Ikey Doherty: Rebuild for X](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=384de6b)
-  [Justin Zobel: Rebuild for 4.2.2](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=de2dcc4)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=82e6fde)
-  [Justin Zobel: Bump for 4.4.1 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=f1a62c4)
-  [Ikey Doherty: Rebuild against 4.4.0 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=19776a8)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=9bfaac7)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=73f78d3)
-  [John Holt: changed desktop category for application menu](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=b26a754)
-  [Ikey Doherty: Rebuild against the kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=b87ef06)

**hexchat**

-  [Ikey Doherty: Rebuild for UCS4 migration, fix license, kill Clang (slow)](https://git.solus-project.com/packages/hexchat/commit/?id=126641d)

**system-config-printer**

-  [Justin Zobel: Rebuild for python 3.5](https://git.solus-project.com/packages/system-config-printer/commit/?id=6ab6306)
-  [Ikey Doherty: Add missing dependencies](https://git.solus-project.com/packages/system-config-printer/commit/?id=6fa8257)

**xorg-server**

-  [Ikey Doherty: Update to 1.17.4, re-enable dri3](https://git.solus-project.com/packages/xorg-server/commit/?id=77c956a)

**comar-api**

**vpnc**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/vpnc/commit/?id=7e2ed89)

**transmission**

-  [Justin Zobel: Update to 2.90](https://git.solus-project.com/packages/transmission/commit/?id=0bf5394)

**gnome-control-center**

-  [Ikey Doherty: Incorporate a derivative of Yuri Henrique's Budgie Logo in the details view](https://git.solus-project.com/packages/gnome-control-center/commit/?id=457435f)
-  [Ikey Doherty: Rebuild for new samba](https://git.solus-project.com/packages/gnome-control-center/commit/?id=a778799)
-  [Ikey Doherty: Remove dead patch](https://git.solus-project.com/packages/gnome-control-center/commit/?id=22ce485)
-  [Ikey Doherty: Rebuild due to wacom changes](https://git.solus-project.com/packages/gnome-control-center/commit/?id=0f2a4b3)

**gnome-online-accounts**

-  [Ikey Doherty: Unbreak gobject](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=613088d)

**cogl**

-  [Ikey Doherty: Rebuild against new stack](https://git.solus-project.com/packages/cogl/commit/?id=e6bc442)

**kernel**

-  [Ikey Doherty: Update to 4.4.3, add missing /vmlinuz link](https://git.solus-project.com/packages/kernel/commit/?id=ea5fc9d)
-  [Ikey Doherty: Update to 4.4.2, latest LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=c97aa3e)
-  [Ikey Doherty: Clean up config (shrink it) -- ensure lvm stuff is built-in](https://git.solus-project.com/packages/kernel/commit/?id=b4416aa)
-  [Justin Zobel: Update to 4.4.1](https://git.solus-project.com/packages/kernel/commit/?id=fc47420)
-  [Ikey Doherty: Bai](https://git.solus-project.com/packages/kernel/commit/?id=f7a8516)
-  [Ikey Doherty: Update to the 4.4.0 LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=a2fa067)
-  [Ikey Doherty: Address CVE-2016-0728](https://git.solus-project.com/packages/kernel/commit/?id=f11cc11)
-  [Ikey Doherty: Disable CONFIG_USB_UAS -- suspect it's responsible for boot failures on XHCI](https://git.solus-project.com/packages/kernel/commit/?id=46c0ea3)
-  [Ikey Doherty: Add BREAK_TRACK for USB inspection](https://git.solus-project.com/packages/kernel/commit/?id=82a7e44)
-  [Ikey Doherty: Disable early boot vesa framebuffer, cannot switch on Qemu](https://git.solus-project.com/packages/kernel/commit/?id=adfb6ce)
-  [Ikey Doherty: Another enabling round](https://git.solus-project.com/packages/kernel/commit/?id=3f0df2e)
-  [Ikey Doherty: Disable internal framebuffer stuff, enable further instructions and optimisations](https://git.solus-project.com/packages/kernel/commit/?id=acc188d)

**vino**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/vino/commit/?id=4160cfc)

**py2cairo**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/py2cairo/commit/?id=18b68eb)

**bluez**

-  [Justin Zobel: Update to 5.37 and enable bluez libs](https://git.solus-project.com/packages/bluez/commit/?id=bb95076)

**libxslt**

-  [Justin Zobel: Bump](https://git.solus-project.com/packages/libxslt/commit/?id=606c682)
-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/libxslt/commit/?id=8a9aaa0)

**libpeas**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/libpeas/commit/?id=f350e5b)
-  [Justin Zobel: Rebuild for python 3.5](https://git.solus-project.com/packages/libpeas/commit/?id=a60d12f)

**nano**

-  [Ikey Doherty: Update to 2.5.1](https://git.solus-project.com/packages/nano/commit/?id=3aa5378)
-  [Ikey Doherty: Canary build](https://git.solus-project.com/packages/nano/commit/?id=76675ef)

**elfutils**

-  [Ikey Doherty: Move libelf into system.base](https://git.solus-project.com/packages/elfutils/commit/?id=41adb88)

**gnome-settings-daemon**

-  [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=b16508a)
-  [Ikey Doherty: Rebuild against libwacom](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=d6e849b)

**piksemel**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/piksemel/commit/?id=a0dd217)

**poppler**

-  [Joshua Strobl: Revert qt5 support.](https://git.solus-project.com/packages/poppler/commit/?id=446521d)
-  [Joshua Strobl: Proper enabling of qt5 support. Just needed to pass a flag, imagine that.](https://git.solus-project.com/packages/poppler/commit/?id=13b5c9e)
-  [Joshua Strobl: Enable qt5 support.](https://git.solus-project.com/packages/poppler/commit/?id=65f4563)

**arc-firefox-theme**

-  [Justin Zobel: Update to 44.20160126](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=b0635fa)

**libpng**

-  [Ikey Doherty: Optimize for speed, convert to ypkg](https://git.solus-project.com/packages/libpng/commit/?id=88e43ec)
-  [Ikey Doherty: Address CVE-2015-8540](https://git.solus-project.com/packages/libpng/commit/?id=844e263)

**python-pyliblzma**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/python-pyliblzma/commit/?id=349703d)

**xdg-utils**

-  [Ikey Doherty: XML is for newbs](https://git.solus-project.com/packages/xdg-utils/commit/?id=82a769e)
-  [Ikey Doherty: Update to 1.1.1](https://git.solus-project.com/packages/xdg-utils/commit/?id=e4037e0)

**libxrender**

-  [Ikey Doherty: Convert to ypkg, enable 32-bit](https://git.solus-project.com/packages/libxrender/commit/?id=c711af2)

**libcap2**

-  [Ikey Doherty: Enable 32-bit for 32-bit udev](https://git.solus-project.com/packages/libcap2/commit/?id=04a4166)

**tdb**

-  [Ikey Doherty: Update to 1.3.7 for new Samba](https://git.solus-project.com/packages/tdb/commit/?id=db9164d)
-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/tdb/commit/?id=0e221fd)
-  [Ikey Doherty: Update to 1.3.6 for samba](https://git.solus-project.com/packages/tdb/commit/?id=797dec4)

**libqmi**

-  [Ikey Doherty: Update to 1.12.6](https://git.solus-project.com/packages/libqmi/commit/?id=837dc05)

**systemd**

-  [Ikey Doherty: Rebuild against new gcrypt](https://git.solus-project.com/packages/systemd/commit/?id=f7b5e39)
-  [Ikey Doherty: Patch build failure due to kernel changes (stdint)](https://git.solus-project.com/packages/systemd/commit/?id=222aa25)
-  [Ikey Doherty: Fix comar](https://git.solus-project.com/packages/systemd/commit/?id=608a2d7)
-  [Ikey Doherty: Enable acl. Again.](https://git.solus-project.com/packages/systemd/commit/?id=c2ab631)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/systemd/commit/?id=812857f)
-  [Update to v221"](https://git.solus-project.com/packages/systemd/commit/?id=4584960">Ikey Doherty: Revert )
-  [Fix udev issues"](https://git.solus-project.com/packages/systemd/commit/?id=a4699ea">Ikey Doherty: Revert )
-  [Further fixes"](https://git.solus-project.com/packages/systemd/commit/?id=eb4017b">Ikey Doherty: Revert )
-  [Ikey Doherty: Further fixes](https://git.solus-project.com/packages/systemd/commit/?id=c0a8df1)
-  [Ikey Doherty: Fix udev issues](https://git.solus-project.com/packages/systemd/commit/?id=f6c5775)
-  [Ikey Doherty: Update to v221](https://git.solus-project.com/packages/systemd/commit/?id=111ff5c)

**libgnome-menus**

-  [Ikey Doherty: Take upstream patch that's also in Arch to fix XDG_CURRENT_DESKTOP for Budgie](https://git.solus-project.com/packages/libgnome-menus/commit/?id=044d857)

**libgcrypt**

-  [Ikey Doherty: Update to 1.6.5](https://git.solus-project.com/packages/libgcrypt/commit/?id=b4f129a)

**pygeoip**

-  [Ikey Doherty: Rebuild for 3.5](https://git.solus-project.com/packages/pygeoip/commit/?id=23f9faf)
-  [Ikey Doherty: Enable python 3.4 extension](https://git.solus-project.com/packages/pygeoip/commit/?id=476cdda)

**nvidia-304-glx-driver**

-  [Ikey Doherty: Rebuild for 4.4.3](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=ded6a1d)
-  [Ikey Doherty: Rebuild for X changes](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=218d0d8)
-  [Justin Zobel: Rebuild for 4.4.2](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=8ef5bed)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=36e5a97)
-  [Justin Zobel: Bump for 4.4.1 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=07476af)
-  [Ikey Doherty: Rebuild against 4.4.0](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=a1e1c7c)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=f747c04)
-  [Ikey Doherty: Rebuild for all the recent kernel stuff](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=b84b7d4)
-  [Ikey Doherty: Rebuild against the kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=5462835)

**evolution-data-server**

-  [Justin Zobel: Update to 3.18.5](https://git.solus-project.com/packages/evolution-data-server/commit/?id=20e290f)
-  [Justin Zobel: Update to 3.18.4](https://git.solus-project.com/packages/evolution-data-server/commit/?id=126399a)

**seahorse**

-  [Joshua Strobl: Rebuild against updated gnupg](https://git.solus-project.com/packages/seahorse/commit/?id=6289d87)

**openssh**

-  [Ikey Doherty: Address multiple CVEs](https://git.solus-project.com/packages/openssh/commit/?id=0bd6e2f)

**openssl**

-  [Ikey Doherty: Update to 1.0.2g to address multiple CVEs](https://git.solus-project.com/packages/openssl/commit/?id=bcf0c8c)
-  [Ikey Doherty: Update to 1.0.2f to address CVE-2016-0701 and CVE-2015-3197](https://git.solus-project.com/packages/openssl/commit/?id=dd85570)

**acl**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/acl/commit/?id=69133f5)

**glib2**

-  [Ikey Doherty: Enable libelf based resource listing](https://git.solus-project.com/packages/glib2/commit/?id=7a6689c)

**cryptsetup**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/cryptsetup/commit/?id=4700dd5)

**mesalib**

-  [Ikey Doherty: Update to 11.1.2 for OpenGL 4.1, enable DRI3 again](https://git.solus-project.com/packages/mesalib/commit/?id=46f53c7)

**lvm2**

-  [Ikey Doherty: Disable this fucking retarded option yet again](https://git.solus-project.com/packages/lvm2/commit/?id=872841d)
-  [Ikey Doherty: One last fix run..](https://git.solus-project.com/packages/lvm2/commit/?id=4eb95ff)
-  [Ikey Doherty: Getting a bit of a joke now](https://git.solus-project.com/packages/lvm2/commit/?id=e0c629f)
-  [Ikey Doherty: Re-enable udev sync..](https://git.solus-project.com/packages/lvm2/commit/?id=24e2418)
-  [Ikey Doherty: Disable udev sync for now](https://git.solus-project.com/packages/lvm2/commit/?id=2b4c2b7)
-  [Ikey Doherty: Update+enabling run](https://git.solus-project.com/packages/lvm2/commit/?id=c281785)
-  [Ikey Doherty: Refix lvm2 for dracut/live-image usage](https://git.solus-project.com/packages/lvm2/commit/?id=11deb13)

**wpa_supplicant**

-  [Ikey Doherty: Add sleep/resume script for systemd (SBZ#335)](https://git.solus-project.com/packages/wpa_supplicant/commit/?id=5abfc6b)

**harfbuzz**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/harfbuzz/commit/?id=b555b56)

**libxcursor**

-  [Ikey Doherty: Convert to ypkg, enable 32-bit](https://git.solus-project.com/packages/libxcursor/commit/?id=68e4ac6)

**xz**

-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/xz/commit/?id=a4b3252)

**xkeyboard-config**

-  [Ikey Doherty: Update to 2.17](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=e0cc952)

**attr**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/attr/commit/?id=0190dff)

**python-parted**

-  [Ikey Doherty: Rebuild for UCS4 + Python 3.5](https://git.solus-project.com/packages/python-parted/commit/?id=480cfe5)
-  [Ikey Doherty: Enable Python 3.4](https://git.solus-project.com/packages/python-parted/commit/?id=b31d05f)

**cups**

-  [Ikey Doherty: Fix broken postinstall](https://git.solus-project.com/packages/cups/commit/?id=7c4c717)
-  [Ikey Doherty: Step 1 in debugging cups](https://git.solus-project.com/packages/cups/commit/?id=9e5b96f)

**lsb-release**

-  [Ikey Doherty: Update for 1.1](https://git.solus-project.com/packages/lsb-release/commit/?id=32e4299)

**libmbim**

-  [Ikey Doherty: Update to 1.12.2](https://git.solus-project.com/packages/libmbim/commit/?id=3c631f5)

**python3-gobject**

-  [Justin Zobel: Rebuild for python 3.5](https://git.solus-project.com/packages/python3-gobject/commit/?id=5a39186)

**network-manager**

-  [Ikey Doherty: Use correct udev directory](https://git.solus-project.com/packages/network-manager/commit/?id=734c89f)
-  [Ikey Doherty: Explicitly set resume method (SBZ#335)](https://git.solus-project.com/packages/network-manager/commit/?id=1fb15d2)
-  [Ikey Doherty: Rebuild to gain modem-manager fixes](https://git.solus-project.com/packages/network-manager/commit/?id=76b308f)

**python-pycurl**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/python-pycurl/commit/?id=63f4647)

**libxpm**

-  [Ikey Doherty: Convert to ypkg, rebuild for cflags](https://git.solus-project.com/packages/libxpm/commit/?id=39f1c50)

**dracut**

-  [Ikey Doherty: Bring back some old modules](https://git.solus-project.com/packages/dracut/commit/?id=326d54f)
-  [Ikey Doherty: Go back to 041, this seemed to work better..](https://git.solus-project.com/packages/dracut/commit/?id=7b15fcb)
-  [Ikey Doherty: More fixes..](https://git.solus-project.com/packages/dracut/commit/?id=879a782)
-  [Ikey Doherty: Add some default config](https://git.solus-project.com/packages/dracut/commit/?id=f52fe04)
-  [Ikey Doherty: Import upstream dmsquash-live patches](https://git.solus-project.com/packages/dracut/commit/?id=4ead90c)
-  [Ikey Doherty: Re-update to 044, drop dash](https://git.solus-project.com/packages/dracut/commit/?id=84ae249)

**libxrandr**

-  [Ikey Doherty: Convert to ypkg for cflags, enable multilib](https://git.solus-project.com/packages/libxrandr/commit/?id=c4a48de)

**nvidia-glx-driver**

-  [Ikey Doherty: Rebuild for 4.4.3](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=7e1717b)
-  [Ikey Doherty: Rebuild for X](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=270f0e5)
-  [Justin Zobel: Bump](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=5eb422a)
-  [Justin Zobel: Rebuild for 4.4.2](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=f198558)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=8fe7902)
-  [Justin Zobel: Bump relno](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=8a2f073)
-  [Justin Zobel: Bump for 4.4.1 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=589d943)
-  [Justin Zobel: Update to 352.79](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=fc1dbe7)
-  [Ikey Doherty: Build against 4.4.0 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=5a171fd)
-  [Ikey Doherty: Rebuild against kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=337ec1f)
-  [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=ec8db8f)
-  [Ikey Doherty: Rebuild against the kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=177173d)

**libusb**

-  [Ikey Doherty: Fix incorrect version number (SBZ#602)](https://git.solus-project.com/packages/libusb/commit/?id=9a81a31)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libusb/commit/?id=dd2aa12)

**gnome-keyring**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/gnome-keyring/commit/?id=0a5a1e0)

**ffmpeg**

-  [Justin Zobel: Update to 2.8.6 (resolves CVEs 2016-2330 and CVE-2016-2213](https://git.solus-project.com/packages/ffmpeg/commit/?id=bffcd20)
-  [Justin Zobel: Update to 2.8.5 and revert CVE changes](https://git.solus-project.com/packages/ffmpeg/commit/?id=9d32bf9)
-  [Ikey Doherty: Address zero-day in ffmpeg](https://git.solus-project.com/packages/ffmpeg/commit/?id=582b889)
-  [Ikey Doherty: Do an enabling run even though it has no associated bug report.](https://git.solus-project.com/packages/ffmpeg/commit/?id=e90f014)
-  [Ikey Doherty: Address CVE-2015-8662 and CVE-2015-8663](https://git.solus-project.com/packages/ffmpeg/commit/?id=611d33a)

**zlib**

-  [Ikey Doherty: Add missing lib32 build deps, and optimize for speed](https://git.solus-project.com/packages/zlib/commit/?id=ea5e3c1)

**network-manager-applet**

-  [Ikey Doherty: Rely on Budgie's own nm-applet desktop file, require mobile-broadband*](https://git.solus-project.com/packages/network-manager-applet/commit/?id=590c07e)

**qt5-everywhere**

-  [Justin Zobel: Rebuild](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=af77bd4)
-  [Ikey Doherty: Support multiple desktops in XDG_CURRENT_DESKTOP, for correct integration](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=f43e06e)

**gnupg**

-  [Justin Zobel: Bump for rebuild](https://git.solus-project.com/packages/gnupg/commit/?id=013e7a3)
-  [Joshua Strobl: Update to 2.0.29](https://git.solus-project.com/packages/gnupg/commit/?id=0adf938)

**libjpeg-turbo**

-  [Ikey Doherty: Enable multilib](https://git.solus-project.com/packages/libjpeg-turbo/commit/?id=c0b50e1)
-  [Ikey Doherty: Optimize for speed](https://git.solus-project.com/packages/libjpeg-turbo/commit/?id=d6a285f)

**xorg-driver-input-evdev**

-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-input-evdev/commit/?id=fa5aab0)

**python-gobject**

**pixman**

-  [Ikey Doherty: Add missing key to spec](https://git.solus-project.com/packages/pixman/commit/?id=f3e13a1)
-  [Ikey Doherty: Convert to ypkg, optimize for speed](https://git.solus-project.com/packages/pixman/commit/?id=dd944f3)

**libcanberra**

-  [Ikey Doherty: Bump for build](https://git.solus-project.com/packages/libcanberra/commit/?id=36ab6e7)
-  [Ikey Doherty: Partly unbork canberra](https://git.solus-project.com/packages/libcanberra/commit/?id=dc845bf)

**alsa-utils**

-  [Ikey Doherty: Use correct udev rules directory](https://git.solus-project.com/packages/alsa-utils/commit/?id=85b2735)
-  [Justin Zobel: Convert to yml](https://git.solus-project.com/packages/alsa-utils/commit/?id=1301211)

**nautilus**

-  [Justin Zobel: Update to 3.18.5](https://git.solus-project.com/packages/nautilus/commit/?id=b0de0e5)

**libassuan**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/libassuan/commit/?id=e617bc7)

**libxml2**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/libxml2/commit/?id=310b518)

**cups-filters**

-  [Ikey Doherty: Fix conflicts with foomatic-filters](https://git.solus-project.com/packages/cups-filters/commit/?id=7fb274c)

**gedit**

-  [Justin Zobel: Rebuild for python 3.5](https://git.solus-project.com/packages/gedit/commit/?id=50af410)
-  [Justin Zobel: Update to 3.18.3](https://git.solus-project.com/packages/gedit/commit/?id=9da3db7)

**pulseaudio**

-  [Ikey Doherty: Use correct udev rules directory](https://git.solus-project.com/packages/pulseaudio/commit/?id=f553a10)
-  [Joshua Strobl: Rebuild against updated fftw.](https://git.solus-project.com/packages/pulseaudio/commit/?id=71c65e7)
-  [Ikey Doherty: Enable equalizer](https://git.solus-project.com/packages/pulseaudio/commit/?id=211eb50)

**gsettings-desktop-schemas**

-  [Ikey Doherty: Assert 1.1 branding](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=76495f6)

**rhythmbox**

-  [Ikey Doherty: Rebuild for UCS4 migration, and tdb update](https://git.solus-project.com/packages/rhythmbox/commit/?id=b4a8f53)
-  [Justin Zobel: Rebuild for python 3.5](https://git.solus-project.com/packages/rhythmbox/commit/?id=62cb8b8)
-  [Joshua Strobl: Update to 3.3](https://git.solus-project.com/packages/rhythmbox/commit/?id=4742e3a)

**curl**

-  [Justin Zobel: Rebuild for openssl](https://git.solus-project.com/packages/curl/commit/?id=c447df0)
-  [Justin Zobel: Convert to yml](https://git.solus-project.com/packages/curl/commit/?id=982ca6a)

**gcc**

-  [Ikey Doherty: Rebuild to be fully self hosted, and reset component](https://git.solus-project.com/packages/gcc/commit/?id=d084171)

**alsa-lib**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/alsa-lib/commit/?id=3a18faf)
-  [Justin Zobel: Corrected license and updated to yml](https://git.solus-project.com/packages/alsa-lib/commit/?id=ee5d55d)

**budgie-desktop**

-  [Ikey Doherty: Set the default pins](https://git.solus-project.com/packages/budgie-desktop/commit/?id=5c3699c)
-  [Ikey Doherty: Restore screen locking in lightdm](https://git.solus-project.com/packages/budgie-desktop/commit/?id=93013e6)
-  [Ikey Doherty: Update to 10.2.4](https://git.solus-project.com/packages/budgie-desktop/commit/?id=bb1a593)
-  [Ikey Doherty: Sync with git patches for tray problems](https://git.solus-project.com/packages/budgie-desktop/commit/?id=0fd822f)
-  [Ikey Doherty: Update to v10.2.3](https://git.solus-project.com/packages/budgie-desktop/commit/?id=25148d7)
-  [Ikey Doherty: Update to v10.2.2](https://git.solus-project.com/packages/budgie-desktop/commit/?id=28e27a7)
-  [Ikey Doherty: Update for I derp](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e4a6220)
-  [Ikey Doherty: Update to 10.2](https://git.solus-project.com/packages/budgie-desktop/commit/?id=7873db6)

**gcr**

-  [Ikey Doherty: Rebuild against gcrypt](https://git.solus-project.com/packages/gcr/commit/?id=c497a99)

**libsecret**

-  [Justin Zobel: Bump](https://git.solus-project.com/packages/libsecret/commit/?id=a7f93f5)

**xorg-driver-video-vesa**

-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=7377255)

**gvfs**

-  [Ikey Doherty: Rebuild due to gcrypt](https://git.solus-project.com/packages/gvfs/commit/?id=f849454)
-  [Ikey Doherty: Rebuild against new samba](https://git.solus-project.com/packages/gvfs/commit/?id=c849cbd)

**vlc**

-  [Ikey Doherty: Update to 2.2.2](https://git.solus-project.com/packages/vlc/commit/?id=38a0d11)
-  [Joshua Strobl: Build with upnp support, massive reorg and cleanup of pkgconfigs.](https://git.solus-project.com/packages/vlc/commit/?id=b1ada88)
-  [Joshua Strobl: Rebuild against updated taglib.](https://git.solus-project.com/packages/vlc/commit/?id=f058dad)

**gstreamer-1.0-plugins-bad**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=cc3995d)

**pinentry**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/pinentry/commit/?id=d419dca)

**gnome-calculator**

-  [Justin Zobel: Update to 3.18.3](https://git.solus-project.com/packages/gnome-calculator/commit/?id=6d4a55b)

**adwaita-icon-theme**

-  [Ikey Doherty: Remove forced xcursor link as GSD now exports cursor icon theme (hurrah!)](https://git.solus-project.com/packages/adwaita-icon-theme/commit/?id=e25b864)

**libffi**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/libffi/commit/?id=060b7cc)

**pycups**

-  [Ikey Doherty: Rebuild for UCS4 migration](https://git.solus-project.com/packages/pycups/commit/?id=7ba6c7b)
-  [Justin Zobel: Rebuild for python 3.5](https://git.solus-project.com/packages/pycups/commit/?id=f73966a)

**comar**

**eog**

-  [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/eog/commit/?id=f77ec4c)

**xorg-driver-video-fbdev**

-  [Ikey Doherty: Rebuild against xorg, kill relro](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=5ff7ede)

**thunderbird**

-  [Ikey Doherty: Fix file association](https://git.solus-project.com/packages/thunderbird/commit/?id=463784f)
-  [Justin Zobel: Update to 38.6.0](https://git.solus-project.com/packages/thunderbird/commit/?id=58fc241)
-  [Ikey Doherty: Disable SDK](https://git.solus-project.com/packages/thunderbird/commit/?id=1508215)
-  [Justin Zobel: Update to 38.5.1](https://git.solus-project.com/packages/thunderbird/commit/?id=d756f70)

**libimobiledevice**

-  [Ikey Doherty: Rebuild due to libgcrypt](https://git.solus-project.com/packages/libimobiledevice/commit/?id=ab23048)

**xorg-driver-video-radeon**

-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=880487e)

**nettle**

-  [Ikey Doherty: Enable 32bit libs](https://git.solus-project.com/packages/nettle/commit/?id=d1279cc)
-  [Ikey Doherty: Rebuild for flags](https://git.solus-project.com/packages/nettle/commit/?id=df359d7)

**xorg-driver-video-nouveau**

-  [Ikey Doherty: Update to 1.0.12](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=27fdb9a)
-  [Ikey Doherty: Rebuild against new xorg](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=c58549e)

**taglib**

-  [Joshua Strobl: Update to 1.10](https://git.solus-project.com/packages/taglib/commit/?id=1adb918)

**totem-pl-parser**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/totem-pl-parser/commit/?id=c961b11)

**gzip**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gzip/commit/?id=f4a31c0)

**libksba**

-  [Ikey Doherty: Rebuild for gcrypt](https://git.solus-project.com/packages/libksba/commit/?id=becb192)

**glibc**

-  [Ikey Doherty: Update to v2.23](https://git.solus-project.com/packages/glibc/commit/?id=5ec072a)
-  [Ikey Doherty: Address CVE-2015-7547, fix CFLAGS](https://git.solus-project.com/packages/glibc/commit/?id=3ac6427)
-  [Ikey Doherty: Normalise configuration](https://git.solus-project.com/packages/glibc/commit/?id=c3969d5)
-  [Ikey Doherty: Raise minimum kernel version to 3.14.32](https://git.solus-project.com/packages/glibc/commit/?id=e5ffb1e)
-  [Ikey Doherty: Address CVE-2015-8777](https://git.solus-project.com/packages/glibc/commit/?id=f6208ed)

**bzip2**

-  [Ikey Doherty: Enable all cflags, and optimize for speed](https://git.solus-project.com/packages/bzip2/commit/?id=2870b9b)

  