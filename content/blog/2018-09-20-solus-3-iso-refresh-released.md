---
title: "Solus 3 ISO Refresh Released"
author: "joshua"
categories:
- news
- releases
date: 2018-09-20T08:20:39+03:00
featuredimage: "/2018/09/solus-refresh-editions.jpg"
url: "/2018/09/20/solus-3-iso-refresh-released"
---

We are proud to announce the availability of Solus 3.9999, our ISO refresh of Solus 3. This refresh enables support for a variety of new hardware released since Solus 3, introduces an updated set of default applications and theming, as well as enables users to immediately take advantage of new Solus infrastructure.

## General

### Default Applications and Theming

All of our editions feature:

- Firefox 62
- LibreOffice 6.1.1.2
- Rhythmbox 3.4.2
- Thunderbird 60

Our Budgie and GNOME Editions ship with GNOME MPV 0.14 and our MATE Edition ships with VLC 3.0.3.

Solus ships with theming that enables a consistent look and feel across the entire system, regardless of which edition is chosen. All editions feature the [Adapta GTK Theme](https://github.com/adapta-project/adapta-gtk-theme/) for applications and [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) for icons.

### Hardware and Kernel Enablement

This ISO refresh of Solus ships with Linux kernel 4.18.5, enabling us to provide out-of-the-box support for the latest CPUs from AMD and Intel, including support for high core count CPUs like AMD Threadripper 2.

Additionally, we've introduced Intel GVT-g support for improved GPU virtualization via the enablement of KVMGT, MDEV, and VFIO_MDEV modules, as well as improved Realtek wireless card and dongle support with enablement of the RTL8XXX/RTL8XXXU modules.

### Infrastructure Support

As [previously announced](/2018/09/08/supercharging-solus-infrastructure), we have been making changes to our infrastructure, repositories, and more. To ensure users are able to immediately take advantage of our new infrastructure, this refresh changes our default repository URLs so no modification or further updates are necessary.

As such, we have also updated various system packages, such as our `baselayout`, to point to more relevant support documentation.

## Defaults

### GNOME

Our ISO refresh of Solus GNOME Edition introduces some changes to our default branding, such as:

- GNOME
 - Removable Drive applet / extension is now enabled by default. This should make it much easier to perform unmounts without having to open Nautilus, the default file manager
- Nautilus
 - Default to single clicks for opening files and folders. We are confident that this change will prove to be more efficient for users, especially those which typically interact with their system via a touchpad. This is always changeable via Nautilus' Behavior section of its Preferences.
 - Enabled show-image-thumbnails for all devices, so that will include network shares (Samba).
 - Set recursive-search to local-only so it's not trying to search across every possible device you have and causing it to choke on lower-end systems

Additionally, Solus GNOME Edition now ships with GNOME Photos out of the box, enabling easier photo management and editing!

### MATE

Our ISO refresh of Solus MATE Edition introduces some changes to our default branding, such as:

- panel
 - Add a separator after the clock, improving readability.

---

## Changelog of ISO

### Packages added to this release:

 - aa-lsm-hook
 - aalib
 - audit
 - brotli
 - bubblewrap
 - budgie-screenshot-applet
 - dnsmasq
 - freeglut
 - gexiv2
 - gptfdisk
 - ilmbase
 - imagemagick
 - jasper
 - ldb
 - libblockdev
 - libbytesize
 - libcue
 - libdazzle
 - libde265
 - libglu
 - libglvnd
 - libgrss
 - libgsf
 - libgudev
 - libheif
 - libhogweed
 - libiptcdata
 - libnfs
 - libnice
 - libnumbertext
 - libosinfo
 - libqxp
 - libraw
 - libreoffice-all
 - libreoffice-base
 - libreoffice-common-dictionaries
 - libreoffice-math
 - libseccomp
 - libsoxr
 - libvoikko
 - libxfont2
 - libxvmc
 - libzmf
 - linux-driver-management-lightdm-integration
 - lm_sensors
 - lua51
 - luajit
 - mdadm
 - mesa-demos
 - mjpegtools-libs
 - mozjs38
 - mpg123
 - nautilus-python
 - nss-mdns
 - openexr
 - openjpeg
 - osinfo-db
 - perl-net-dbus
 - perl-x11-protocol
 - perl-xml-twig
 - perl-xmlparser
 - poppler-data
 - poppler-utils
 - postgresql
 - pyparsing
 - python-appdirs
 - python-asn1
 - python-asn1crypto
 - python-certifi
 - python-cffi
 - python-chardet
 - python-cparser
 - python-cryptography
 - python-enum34
 - python-idna
 - python-ipaddress
 - python-openssl
 - python-packaging
 - python-pysmbc
 - python-pysocks
 - python-setuptools
 - python-six
 - python-urllib3
 - qol-assist
 - sdl1
 - sndio
 - spice-vdagent
 - tevent
 - tracker
 - tracker-miners
 - unicode-character-database
 - usb-modeswitch
 - usysconf
 - volume_key
 - vulkan
 - webrtc-audio-processing
 - woff2
 - xhost
 - xmlsec1
 - xorg-driver-video-intel
 - xset


### Packages removed from this release:

- dracut
- fftw
- goofiboot
- libmad
- libxfont
- linux-tools-cpupower
- mesalib-demos
- spidermonkey


### Changes in this release:

**appstream-glib**

 - [Pierre-Yves: Update appstream-glib to 0.6.13](https://dev.getsol.us/source/appstream-glib/browse/master/;9c26cd0)


**gd**

 - [Peter O'Connor: Address CVE-2018-1000222](https://dev.getsol.us/source/gd/browse/master/;b991bb2)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/gd/browse/master/;9819746)
 - [Peter O'Connor: Address CVE-2018-5711](https://dev.getsol.us/source/gd/browse/master/;2ec6254)
 - [Peter O'Connor: Update to 2.2.5 to address CVE-2017-6362](https://dev.getsol.us/source/gd/browse/master/;76278d2)


**gstreamer-1.0-plugins-good**

 - [Pierre-Yves: Update gstreamer-1.0-plugins-good to 1.14.2](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;867a323)
 - [Joshua Strobl: Update to 1.14.1. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.14/#1.14.1).](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;4fb284a)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;ff43961)
 - [Joshua Strobl: Enable GTK plugins since it has been moved from -bad to -good.](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;1e240c0)
 - [Joshua Strobl: Added mpg123, lame, and twolame support. Updated license.](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;866a805)
 - [Joshua Strobl: Upgrade to 1.14.0 stable release.](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;621b474)
 - [Joey Riches: Rebuild against libvpx 1.7.0](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;2abb357)
 - [Joey Riches: Safety rebuild against v4l-utils](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;1c41fee)
 - [Joey Riches: Update gstreamer-1.0-plugins-good to 1.12.4](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;433759a)
 - [Pierre-Yves: Update gstreamer-1.0-plugins-good to 1.12.3](https://dev.getsol.us/source/gstreamer-1.0-plugins-good/browse/master/;140f7fc)


**gdbm**

 - [Ikey Doherty: Move gdbm out of system.base to resolve some update issues](https://dev.getsol.us/source/gdbm/browse/master/;da98502)
 - [Pierre-Yves: Update gdbm to 1.14.1](https://dev.getsol.us/source/gdbm/browse/master/;2a6d619)


**gstreamer-1.0-plugins-base**

 - [Pierre-Yves: Update gstreamer-1.0-plugins-base to 1.14.2](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;a1935ea)
 - [Peter O'Connor: Rebuild to remove rpath](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;2f63bff)
 - [Joshua Strobl: Update to 1.14.1. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.14/#1.14.1).](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;e438cc0)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;3ede51d)
 - [Joshua Strobl: Upgrade to 1.14.0 stable release.](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;3c55bb5)
 - [Joshua Strobl: Add patch for playbin3 segfault on accessing invalid index in GstStream.](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;d57ab1d)
 - [Joey Riches: Update gstreamer-1.0-plugins-base to 1.12.4](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;3d6b990)
 - [Pierre-Yves: Update gstreamer-1.0-plugins-base to 1.12.3](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;32c61a4)


**gpgme**

 - [Pierre-Yves: Update gpgme to 1.11.1](https://dev.getsol.us/source/gpgme/browse/master/;d5d3ce3)
 - [Peter O'Connor: Update to 1.10.0](https://dev.getsol.us/source/gpgme/browse/master/;3733dd5)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/gpgme/browse/master/;b52f596)
 - [Neal Gompa: Enable Python bindings for gpgme](https://dev.getsol.us/source/gpgme/browse/master/;d038de0)


**libsndfile**

 - [Joshua Strobl: Resolve CVE-2017-14634](https://dev.getsol.us/source/libsndfile/browse/master/;416f7d2)


**libdvdcss**

 - [Pierre-Yves: Update libdvdcss to 1.4.1](https://dev.getsol.us/source/libdvdcss/browse/master/;8521db6)


**libvisio**

 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libvisio/browse/master/;46179ea)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libvisio/browse/master/;0b48c79)
 - [Pierre-Yves: Update libvisio to 0.1.6](https://dev.getsol.us/source/libvisio/browse/master/;fff7e13)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/libvisio/browse/master/;4789777)


**grub2**

 - [Ikey Doherty: Update GRUB2 to 2.02](https://dev.getsol.us/source/grub2/browse/master/;689276f)
 - [Ikey Doherty: Try not to upset GRUB with our own flags](https://dev.getsol.us/source/grub2/browse/master/;fc4c9db)
 - [Ikey Doherty: Crafty stripper is crafty](https://dev.getsol.us/source/grub2/browse/master/;815bf3e)
 - [Joshua Strobl: Remove -strong from CFLAGS](https://dev.getsol.us/source/grub2/browse/master/;affe3b5)
 - [Joshua Strobl: Ensure we install splash.tga for existing installs.](https://dev.getsol.us/source/grub2/browse/master/;41f1397)
 - [Joshua Strobl: Cleanup install calls.](https://dev.getsol.us/source/grub2/browse/master/;a18b9fe)
 - [Joshua Strobl: Convert to modern package format. Drop background from grub config.](https://dev.getsol.us/source/grub2/browse/master/;277f397)


**solus-artwork**

 - [Joshua Strobl: Update to v21. Introduces IMG_9656 and IMG_9710 by Reetta Piiroinen.](https://dev.getsol.us/source/solus-artwork/browse/master/;91d7160)
 - [Ikey Doherty: Update solus-artwork to v20](https://dev.getsol.us/source/solus-artwork/browse/master/;853387b)


**inetutils**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/inetutils/browse/master/;c5a7737)
 - [Ikey Doherty: Rebuild for initrd](https://dev.getsol.us/source/inetutils/browse/master/;c5767de)


**unzip**

 - [Peter O'Connor: Address the following CVEs:](https://dev.getsol.us/source/unzip/browse/master/;adb8f46)
 - [Ikey Doherty: Enable LARGE_FILE_SUPPORT in unzip (Resolves T6324)](https://dev.getsol.us/source/unzip/browse/master/;a25b027)
 - [Pierre-Yves: Fix man pages location](https://dev.getsol.us/source/unzip/browse/master/;e3d3a62)


**mpc**

 - [Peter O'Connor: Rebuild for mpfr](https://dev.getsol.us/source/mpc/browse/master/;964b030)
 - [Pierre-Yves: Update mpc to 1.1.0](https://dev.getsol.us/source/mpc/browse/master/;d76fd51)


**youtube-dl**

 - [Joshua Strobl: Update to 2018.07.04. Release notes available [here](https://github.com/rg3/youtube-dl/releases/tag/2018.08.04).](https://dev.getsol.us/source/youtube-dl/browse/master/;981203a)
 - [Thomas H: Update to 2018.07.10](https://dev.getsol.us/source/youtube-dl/browse/master/;aec5314)
 - [James Lee: Update to 2018.05.18](https://dev.getsol.us/source/youtube-dl/browse/master/;07e0abe)
 - [Joey Riches: Update youtube-dl to 2018.04.16](https://dev.getsol.us/source/youtube-dl/browse/master/;8cd9905)
 - [Joey Riches: Update youtube-dl to 2018.03.10](https://dev.getsol.us/source/youtube-dl/browse/master/;7e7755b)
 - [Joey Riches: Update youtube-dl to 2018.02.22](https://dev.getsol.us/source/youtube-dl/browse/master/;ca7b5a8)
 - [Stig Svensson: Update to 2018.01.27 and rebuild for python 3.6](https://dev.getsol.us/source/youtube-dl/browse/master/;c54edb6)
 - [Stig Svensson: Update to 2018.01.21](https://dev.getsol.us/source/youtube-dl/browse/master/;0efa4cc)
 - [Jakob: Update to 2017.12.23](https://dev.getsol.us/source/youtube-dl/browse/master/;1fbedf3)
 - [Justin Zobel: Upgrade to 2017.11.15](https://dev.getsol.us/source/youtube-dl/browse/master/;cacdeab)
 - [Justin Zobel: Update to 2017.11.06](https://dev.getsol.us/source/youtube-dl/browse/master/;8ee6a91)
 - [Justin Zobel: Update to 2017.10.20](https://dev.getsol.us/source/youtube-dl/browse/master/;d21f465)
 - [Justin Zobel: Update to 2017.10.15.1](https://dev.getsol.us/source/youtube-dl/browse/master/;d4ab8d8)
 - [Justin Zobel: Update to 2017.10.12](https://dev.getsol.us/source/youtube-dl/browse/master/;929c443)
 - [Thomas Hautier: Update youtube-dl to 2017.10.07](https://dev.getsol.us/source/youtube-dl/browse/master/;21e5faa)
 - [Justin Berthault: Update to 2017.09.15](https://dev.getsol.us/source/youtube-dl/browse/master/;8df4c2d)
 - [Joshua Strobl: Update to 2017.08.27.1](https://dev.getsol.us/source/youtube-dl/browse/master/;670ec2a)


**mpv**

 - [Pierre-Yves: Rebuild mpv for libxkbcommon 0.8.2](https://dev.getsol.us/source/mpv/browse/master/;f01dcac)
 - [Joshua Strobl: Safety rebuild against samba 4.7.8](https://dev.getsol.us/source/mpv/browse/master/;265cc33)
 - [Ikey Doherty: Rebuild cuz](https://dev.getsol.us/source/mpv/browse/master/;d0dcfa9)
 - [Joshua Strobl: Rebuild against ffmpeg 3.4.2.](https://dev.getsol.us/source/mpv/browse/master/;68eaf8c)
 - [Pierre-Yves: Update mpv to 0.27.2 for an additional fix for CVE-2018-6360](https://dev.getsol.us/source/mpv/browse/master/;fae1720)
 - [Pierre-Yves: Update mpv to 0.27.1 to fix CVE-2018-6360](https://dev.getsol.us/source/mpv/browse/master/;2940663)
 - [Pierre-Yves: Rebuild for libdvdread 6.0.0](https://dev.getsol.us/source/mpv/browse/master/;e9e28ac)
 - [Pierre-Yves: Rebuild against libcdio 2.0.0](https://dev.getsol.us/source/mpv/browse/master/;d2ce090)
 - [Ikey Doherty: Rebuild for new ffmpeg](https://dev.getsol.us/source/mpv/browse/master/;58ba76a)
 - [Joey Riches: Rebuild mpv against libva 2.0.0](https://dev.getsol.us/source/mpv/browse/master/;27e8f4c)
 - [Joshua Strobl: Rebuild against Samba 4.6.10](https://dev.getsol.us/source/mpv/browse/master/;81739e7)
 - [Joshua Strobl: Precautionary build against Samba 4.7.2.](https://dev.getsol.us/source/mpv/browse/master/;15f9880)
 - [Pierre-Yves: Rebuild for libcdio 0.94](https://dev.getsol.us/source/mpv/browse/master/;5ace9bc)
 - [Joey Riches: Rebuild against libass 0.14](https://dev.getsol.us/source/mpv/browse/master/;f7e41a2)
 - [Ikey Doherty: Rebuild for Samba 4.7.0](https://dev.getsol.us/source/mpv/browse/master/;3c13348)
 - [Joshua Strobl: Ensure we can build against lua 5.1](https://dev.getsol.us/source/mpv/browse/master/;bbee8c4)
 - [Pierre-Yves: Update mpv to 0.27.0](https://dev.getsol.us/source/mpv/browse/master/;08aaccf)
 - [Joshua Strobl: Rebuild against ffmpeg 3.3.4](https://dev.getsol.us/source/mpv/browse/master/;a152d03)
 - [Pierre-Yves: Enable extra features on mpv](https://dev.getsol.us/source/mpv/browse/master/;ad9612e)
 - [Justin Zobel: Update to 0.26.0](https://dev.getsol.us/source/mpv/browse/master/;3be68c1)


**os-installer**

 - [Joshua Strobl: Change git and URL for location script for GeoIP.](https://dev.getsol.us/source/os-installer/browse/master/;6777ea9)
 - [Ikey Doherty: Sync again for utf8 changes](https://dev.getsol.us/source/os-installer/browse/master/;60b9006)
 - [Ikey Doherty: Fix inability to English](https://dev.getsol.us/source/os-installer/browse/master/;51c3152)
 - [Ikey Doherty: Remove hard requirement for gparted](https://dev.getsol.us/source/os-installer/browse/master/;052d9b6)
 - [Ikey Doherty: Sync with git for eopkg history removal](https://dev.getsol.us/source/os-installer/browse/master/;f637318)
 - [Ikey Doherty: Sync with git to ensure installer autoremoves packages](https://dev.getsol.us/source/os-installer/browse/master/;daefdc9)
 - [Ikey Doherty: Sync os-installer with git](https://dev.getsol.us/source/os-installer/browse/master/;ba04539)
 - [Ikey Doherty: I fixed things but I'm not sure what oh look a unicorn](https://dev.getsol.us/source/os-installer/browse/master/;4f31dbf)
 - [Ikey Doherty: Sync with git to fix nasty bug with shrunken language list](https://dev.getsol.us/source/os-installer/browse/master/;e376a35)
 - [Ikey Doherty: Unbreak installer. Totally didn't miss a comma again. Nope.](https://dev.getsol.us/source/os-installer/browse/master/;c5d22b8)
 - [Ikey Doherty: Sync installer with git for users + usysconf integration](https://dev.getsol.us/source/os-installer/browse/master/;a7ec3f5)
 - [Ikey Doherty: Sync os-installer for more Plasma icon fixes](https://dev.getsol.us/source/os-installer/browse/master/;f494c57)
 - [Ikey Doherty: Sync with git for improved UI under Plasma](https://dev.getsol.us/source/os-installer/browse/master/;75afb7a)
 - [Ikey Doherty: Sync os-installer to port from goofiboot to systemd-boot](https://dev.getsol.us/source/os-installer/browse/master/;2a71b4d)
 - [Ikey Doherty: Sync with git for Plasma support, use Pythonic macros](https://dev.getsol.us/source/os-installer/browse/master/;04a96d1)
 - [Ikey Doherty: Switch to new `InUnixUsers` syntax, drop legacy PolKit JS rules file](https://dev.getsol.us/source/os-installer/browse/master/;afea1dc)
 - [Ikey Doherty: Install keyrules for new polkit backend per T4824](https://dev.getsol.us/source/os-installer/browse/master/;ff582da)


**gnutls**

 - [Pierre-Yves: Backport a regression fix](https://dev.getsol.us/source/gnutls/browse/master/;7fa45c6)
 - [Pierre-Yves: Update gnutls to 3.6.3](https://dev.getsol.us/source/gnutls/browse/master/;8eb9273)
 - [Pierre-Yves: Update gnutls to 3.6.2](https://dev.getsol.us/source/gnutls/browse/master/;836c661)


**libxscrnsaver**

 - [Bryan T. Meyers: Updated to 1.2.3](https://dev.getsol.us/source/libxscrnsaver/browse/master/;365e1cb)
 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxscrnsaver/browse/master/;c5c5924)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxscrnsaver/browse/master/;edfcffa)


**ghostscript**

 - [Peter O'Connor: Address the following CVEs:](https://dev.getsol.us/source/ghostscript/browse/master/;cb571bf)
 - [Bryan T. Meyers: Bump release number](https://dev.getsol.us/source/ghostscript/browse/master/;4f43286)
 - [Pierre-Yves: Update ghostscript to 9.23](https://dev.getsol.us/source/ghostscript/browse/master/;44f850f)
 - [Pierre-Yves: Rebuild ghostscript for cups 2.2.8](https://dev.getsol.us/source/ghostscript/browse/master/;918ef8a)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/ghostscript/browse/master/;3799dcd)
 - [Peter O'Connor: Address multiple CVEs:](https://dev.getsol.us/source/ghostscript/browse/master/;f21dcb7)


**libp11-kit**

 - [Pierre-Yves: Update libp11-kit to 0.23.14](https://dev.getsol.us/source/libp11-kit/browse/master/;098603c)
 - [Ikey Doherty: Clean up spec, use correct defaults directory](https://dev.getsol.us/source/libp11-kit/browse/master/;3d3ce76)
 - [Pierre-Yves: Update libp11-kit to 0.23.10 and support a stateless config](https://dev.getsol.us/source/libp11-kit/browse/master/;c9d00ab)
 - [Ikey Doherty: Fix busted packaging meta and rebuild for safety](https://dev.getsol.us/source/libp11-kit/browse/master/;6e38e23)


**libcairo**

 - [Peter O'Connor: Rebuild to remove rpath](https://dev.getsol.us/source/libcairo/browse/master/;db682ca)
 - [Joey Riches: Rebuild against freetype2](https://dev.getsol.us/source/libcairo/browse/master/;1b5e81c)
 - [Joey Riches: Safety rebuild against font rendering stack](https://dev.getsol.us/source/libcairo/browse/master/;4048e5e)
 - [Ikey Doherty: Rebuild for binutils ABI change](https://dev.getsol.us/source/libcairo/browse/master/;83c6171)
 - [Ikey Doherty: I tip my Fedora to you, sir. (Colour emoji support)](https://dev.getsol.us/source/libcairo/browse/master/;4f5b651)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/libcairo/browse/master/;71c104e)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/libcairo/browse/master/;0817156)
 - [Joey Riches: Safety rebuild against harfbuzz](https://dev.getsol.us/source/libcairo/browse/master/;79127f8)
 - [Pierre-Yves: Previous build failed](https://dev.getsol.us/source/libcairo/browse/master/;6a3661a)
 - [Pierre-Yves: Update libcairo to 1.14.12](https://dev.getsol.us/source/libcairo/browse/master/;8eb735a)
 - [Ikey Doherty: Rebuild against binutils-libs 2.29.1, re-enable LTO](https://dev.getsol.us/source/libcairo/browse/master/;f776ad3)


**transmission**

 - [Pierre-Yves: Update transmission to 2.94](https://dev.getsol.us/source/transmission/browse/master/;c005c91)
 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/transmission/browse/master/;fc38022)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/transmission/browse/master/;4479cac)
 - [Pierre-Yves: Update transmission to 2.93](https://dev.getsol.us/source/transmission/browse/master/;dc7ff71)
 - [Peter O'Connor: Address CVE-2018-5702](https://dev.getsol.us/source/transmission/browse/master/;4da19ba)
 - [Joey Riches: transmission: add mandatory libcurl to builddeps](https://dev.getsol.us/source/transmission/browse/master/;754809e)


**libabw**

 - [Pierre-Yves: Update libabw to 0.1.2](https://dev.getsol.us/source/libabw/browse/master/;15a34f8)


**libxcomposite**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxcomposite/browse/master/;c96f5b4)
 - [Ikey Doherty: Rebuild to unbreak 32-bit development](https://dev.getsol.us/source/libxcomposite/browse/master/;e62a483)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxcomposite/browse/master/;959caa9)


**gnome-control-center**

 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-control-center/browse/master/;c8f9784)
 - [Pierre-Yves: Rebuild gnome-control-center for cups 2.2.8](https://dev.getsol.us/source/gnome-control-center/browse/master/;5489949)
 - [Joshua Strobl: Safety rebuild against samba 4.7.8. Added Meson patch.](https://dev.getsol.us/source/gnome-control-center/browse/master/;6f517f1)
 - [Joshua Strobl: Upgrade to 3.28.1. Split patches so we can more easily update various ones in the future.](https://dev.getsol.us/source/gnome-control-center/browse/master/;8ebc3c8)
 - [Joshua Strobl: Fix OS specification and add an item for GNOME relnum.](https://dev.getsol.us/source/gnome-control-center/browse/master/;7cc9e8e)
 - [Ikey Doherty: Rebuild for nm-applet (T5090)](https://dev.getsol.us/source/gnome-control-center/browse/master/;5eede10)
 - [Joshua Strobl: Rebuild against Samba 4.6.10](https://dev.getsol.us/source/gnome-control-center/browse/master/;62be68f)
 - [Joshua Strobl: Precautionary rebuild against Samba 4.7.2](https://dev.getsol.us/source/gnome-control-center/browse/master/;2b3c2b9)
 - [Ikey Doherty: Go rebuild pls](https://dev.getsol.us/source/gnome-control-center/browse/master/;1023650)
 - [Ikey Doherty: Rebuild for NM](https://dev.getsol.us/source/gnome-control-center/browse/master/;28b8446)
 - [Ikey Doherty: Rebuild against new NM](https://dev.getsol.us/source/gnome-control-center/browse/master/;baf0559)
 - [Ikey Doherty: Rebuild for consistency](https://dev.getsol.us/source/gnome-control-center/browse/master/;c91a999)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/gnome-control-center/browse/master/;1b4f3df)
 - [Ikey Doherty: Install keyrules for new polkit](https://dev.getsol.us/source/gnome-control-center/browse/master/;4ac83f8)
 - [Joshua Strobl: Fix Sound and Users panel desktop items being set to NoDisplay. Added patch so About opens overview. Resolves T4791.](https://dev.getsol.us/source/gnome-control-center/browse/master/;14e38c9)
 - [Ikey Doherty: Reset abi_used_libs, rebuild for new Samba](https://dev.getsol.us/source/gnome-control-center/browse/master/;8f6480a)
 - [Joshua Strobl: Rebuild against libgtop](https://dev.getsol.us/source/gnome-control-center/browse/master/;a1fedfe)
 - [Joshua Strobl: Update to 3.26.1. Updated patches. Use solus-sc instead of gnome-software.](https://dev.getsol.us/source/gnome-control-center/browse/master/;b7abb86)


**findutils**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/findutils/browse/master/;26f282d)


**parted**

 - [Pierre-Yves: Convert parted to ypkg](https://dev.getsol.us/source/parted/browse/master/;325f756)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/parted/browse/master/;96d2ef3)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/parted/browse/master/;0c0bd97)


**gnome-disk-utility**

 - [Joshua Strobl: Update to 3.28.3](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;ec034f0)
 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;5a0972e)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;09096c6)
 - [Joshua Strobl: Make GNOME Disks searchable in current and new SC. Resolves T5877.](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;9ac3b7d)
 - [Pierre-Yves: Rebuild for libdvdread 6.0.0](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;ce13ff5)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;f1872ba)
 - [Bryan T. Meyers: Update to 3.36.1](https://dev.getsol.us/source/gnome-disk-utility/browse/master/;df05c3d)


**gspell**

 - [Joshua Strobl: Rebuild for now until we move to enchant-2.](https://dev.getsol.us/source/gspell/browse/master/;30411db)
 - [Joshua Strobl: Update to 1.6.1. Translation updates.](https://dev.getsol.us/source/gspell/browse/master/;092ce76)
 - [Bryan T. Meyers: Update to 1.6.0](https://dev.getsol.us/source/gspell/browse/master/;34f4f20)


**libdvdread**

 - [Pierre-Yves: Update libdvdread to 6.0.0](https://dev.getsol.us/source/libdvdread/browse/master/;2bf72a3)
 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/libdvdread/browse/master/;d7e4c93)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libdvdread/browse/master/;96d3a0c)


**dosfstools**

 - [livingsilver94: Update dosfstools to 4.1](https://dev.getsol.us/source/dosfstools/browse/master/;fef169c)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/dosfstools/browse/master/;042cdbb)


**libinput**

 - [Joshua Strobl: Update to 1.11 series.](https://dev.getsol.us/source/libinput/browse/master/;f526200)
 - [Pierre-Yves: Update libinput to 1.10.7](https://dev.getsol.us/source/libinput/browse/master/;75d6a34)
 - [Pierre-Yves: Update libinput to 1.10.3](https://dev.getsol.us/source/libinput/browse/master/;70bef2e)
 - [Pierre-Yves: Update libinput to 1.9.4](https://dev.getsol.us/source/libinput/browse/master/;b4a9291)
 - [Pierre-Yves: Update libinput to 1.9.3](https://dev.getsol.us/source/libinput/browse/master/;8aa0a00)
 - [Pierre-Yves: Update libinput to 1.9.2](https://dev.getsol.us/source/libinput/browse/master/;a325fb0)
 - [Pierre-Yves: Update libinput to 1.9.0](https://dev.getsol.us/source/libinput/browse/master/;109243a)


**libwebp**

 - [Joey Riches: Update libwebp to 1.0.0](https://dev.getsol.us/source/libwebp/browse/master/;9200568)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/libwebp/browse/master/;7db9a3e)
 - [Pierre-Yves: Update libwebp to 0.6.1](https://dev.getsol.us/source/libwebp/browse/master/;8557b1d)


**libxslt**

 - [Joey Riches: Update libxslt to 1.1.32](https://dev.getsol.us/source/libxslt/browse/master/;e006c64)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/libxslt/browse/master/;cc9f4d2)


**libspectre**

 - [Bryan T. Meyers: Rebuild for ghostscript](https://dev.getsol.us/source/libspectre/browse/master/;cf4088d)


**libunistring**

 - [Joey Riches: Update libunistring to 0.9.10](https://dev.getsol.us/source/libunistring/browse/master/;5b6fc83)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/libunistring/browse/master/;a50944d)
 - [Joey Riches: Update libunistring to 0.9.9](https://dev.getsol.us/source/libunistring/browse/master/;72ff7ca)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libunistring/browse/master/;9cf33a0)


**elfutils**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/elfutils/browse/master/;52cf244)


**libproxy**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/libproxy/browse/master/;0ee2f66)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/libproxy/browse/master/;14cc0e3)
 - [Peter O'Connor: Rebuild for perl 5.26.1](https://dev.getsol.us/source/libproxy/browse/master/;bc7084c)
 - [Ikey Doherty: Update to 0.4.15](https://dev.getsol.us/source/libproxy/browse/master/;c9038c1)


**libevdev**

 - [Joey Riches: Update libevdev to 1.5.9](https://dev.getsol.us/source/libevdev/browse/master/;8b375dc)
 - [Ikey Doherty: Update libevdev to 1.5.7](https://dev.getsol.us/source/libevdev/browse/master/;5d8deed)


**libgpg-error**

 - [Pierre-Yves: Update libgpg-error to 1.32](https://dev.getsol.us/source/libgpg-error/browse/master/;f753c7f)
 - [Ikey Doherty: Screw systemd, back to 1.31](https://dev.getsol.us/source/libgpg-error/browse/master/;da73a04)
 - [Ikey Doherty: Downgrade in attempt to make systemd happy](https://dev.getsol.us/source/libgpg-error/browse/master/;1795f89)
 - [Ikey Doherty: Apply Fedora multilib patch](https://dev.getsol.us/source/libgpg-error/browse/master/;a23194f)
 - [Pierre-Yves: Update libgpg-error to 1.31](https://dev.getsol.us/source/libgpg-error/browse/master/;8f8cd2e)
 - [Pierre-Yves: Update libgpg-error to 1.28](https://dev.getsol.us/source/libgpg-error/browse/master/;3c15db5)
 - [Ikey Doherty: Rebuild prior to modifying gcrypt (reoptimize)](https://dev.getsol.us/source/libgpg-error/browse/master/;e6e49e4)


**libxext**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxext/browse/master/;2926848)


**libtimezonemap**

 - [Joshua Strobl: Rebuild against gtk3, gstreamer, and json-glib updates.](https://dev.getsol.us/source/libtimezonemap/browse/master/;76fc22f)
 - [Joshua Strobl: Rebuild against gtk 3.22.24](https://dev.getsol.us/source/libtimezonemap/browse/master/;a9d0381)


**libqmi**

 - [Pierre-Yves: Update libqmi to 1.20.2](https://dev.getsol.us/source/libqmi/browse/master/;248531a)
 - [Pierre-Yves: Update libqmi to 1.20.0](https://dev.getsol.us/source/libqmi/browse/master/;5e19436)


**foomatic-db**

 - [Bryan T. Meyers: Update to 4.0.20171217](https://dev.getsol.us/source/foomatic-db/browse/master/;898be4e)
 - [Pierre-Yves: Update foomatic-db to 4.0.20171010](https://dev.getsol.us/source/foomatic-db/browse/master/;1066599)


**font-clear-sans-ttf**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/font-clear-sans-ttf/browse/master/;d612911)


**clr-boot-manager**

 - [Ikey Doherty: Backport nica patch to ensure module tree is properly cleaned out](https://dev.getsol.us/source/clr-boot-manager/browse/master/;99c736f)
 - [Ikey Doherty: Begin deprecation of goofiboot (T4235)](https://dev.getsol.us/source/clr-boot-manager/browse/master/;4c4b553)
 - [Ikey Doherty: Update `clr-boot-manager` to 1.5.5](https://dev.getsol.us/source/clr-boot-manager/browse/master/;bab36ee)
 - [Ikey Doherty: Address util-linux regression when handling NULL](https://dev.getsol.us/source/clr-boot-manager/browse/master/;4d6c6d9)


**libnss**

 - [Ikey Doherty: Update to 3.37.3](https://dev.getsol.us/source/libnss/browse/master/;d0a9da6)
 - [Pierre-Yves: Update libnss to 3.34.1 & convert to ypkg](https://dev.getsol.us/source/libnss/browse/master/;7a18649)
 - [Ikey Doherty: Update nss to latest release for Firefox](https://dev.getsol.us/source/libnss/browse/master/;fad4dea)
 - [Pierre-Yves: Update libnss to 3.33](https://dev.getsol.us/source/libnss/browse/master/;73e9b27)


**doflicky**

 - [Ikey Doherty: Fix incorrect detection of masked NVIDIA drivers](https://dev.getsol.us/source/doflicky/browse/master/;74ffa09)


**exfat-utils**

 - [Bryan T. Meyers: Update to 1.2.8](https://dev.getsol.us/source/exfat-utils/browse/master/;ef1c2f8)
 - [Benjamin Daines: Update exfat-utils to 1.2.7](https://dev.getsol.us/source/exfat-utils/browse/master/;5f3b6d3)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/exfat-utils/browse/master/;54096dd)


**baobab**

 - [Joshua Strobl: Update to 3.28.0](https://dev.getsol.us/source/baobab/browse/master/;5d384bd)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/baobab/browse/master/;cbb2da2)


**mutagen**

 - [Joey Riches: Update mutagen to 1.41.0](https://dev.getsol.us/source/mutagen/browse/master/;afd1ee8)
 - [Pierre-Yves: Update mutagen to 1.40](https://dev.getsol.us/source/mutagen/browse/master/;a04b856)
 - [Pierre-Yves: Rebuild for python 3.6](https://dev.getsol.us/source/mutagen/browse/master/;573e6ad)
 - [Pierre-Yves: Update mutagen to 1.39](https://dev.getsol.us/source/mutagen/browse/master/;42fde57)


**jansson**

 - [Ikey Doherty: Enable emul32 build for NetworkManager update](https://dev.getsol.us/source/jansson/browse/master/;9c25383)


**bind-utils**

 - [Peter O'Connor: Update to 9.11.4-P1](https://dev.getsol.us/source/bind-utils/browse/master/;a65eab1)
 - [Peter O'Connor: Update 9.11.4 to address CVE-2018-5738](https://dev.getsol.us/source/bind-utils/browse/master/;f95688f)
 - [Pierre-Yves: Update bind-utils to 9.11.3](https://dev.getsol.us/source/bind-utils/browse/master/;1fdfd85)
 - [Pierre-Yves: Update bind-utils to 9.11.2-P1](https://dev.getsol.us/source/bind-utils/browse/master/;31d4ee8)


**libcdr**

 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libcdr/browse/master/;94466d1)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libcdr/browse/master/;41442ee)
 - [Pierre-Yves: Update libcdr to 0.1.4](https://dev.getsol.us/source/libcdr/browse/master/;39e7e8e)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/libcdr/browse/master/;ba2a0a0)


**libgweather**

 - [Pierre-Yves: Update libgweather to 3.28.2](https://dev.getsol.us/source/libgweather/browse/master/;23b0909)
 - [Joshua Strobl: Upgraded to latest in 3.28 series. Switched to Meson actionable macros.](https://dev.getsol.us/source/libgweather/browse/master/;890d3d7)
 - [Joshua Strobl: Update to 3.26.0](https://dev.getsol.us/source/libgweather/browse/master/;81f0cac)


**firefox**

 - [Pierre-Yves: Miscellaneous package updates](https://dev.getsol.us/source/firefox/browse/master/;4a6100c)
 - [Pierre-Yves: Update firefox to 62.0](https://dev.getsol.us/source/firefox/browse/master/;6a7c372)
 - [Joshua Strobl: Update langpacks to 62.0](https://dev.getsol.us/source/firefox/browse/master/;afb5c28)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/firefox/browse/master/;2d0a7c0)
 - [Pierre-Yves: Update firefox to 61.0.2](https://dev.getsol.us/source/firefox/browse/master/;0a616d1)
 - [Joshua Strobl: Update langpacks to 61.0.2](https://dev.getsol.us/source/firefox/browse/master/;aecbec1)
 - [Pierre-Yves: Update firefox to 61.0.1 and completely remove system hunspell](https://dev.getsol.us/source/firefox/browse/master/;bea811f)
 - [Joshua Strobl: Update langpacks to 61.0.1](https://dev.getsol.us/source/firefox/browse/master/;e51f07c)
 - [Pierre-Yves: Temporarily disable system hunspell](https://dev.getsol.us/source/firefox/browse/master/;25879cf)
 - [Pierre-Yves: Update firefox to 61.0](https://dev.getsol.us/source/firefox/browse/master/;bc50519)
 - [Ikey Doherty: Add useful gitignore..](https://dev.getsol.us/source/firefox/browse/master/;277ff28)
 - [Ikey Doherty: Update langpaks to 60.1](https://dev.getsol.us/source/firefox/browse/master/;19652b8)
 - [Pierre-Yves: Update firefox to 60.0.2 to address CVE-2018-6126](https://dev.getsol.us/source/firefox/browse/master/;5526daa)
 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/firefox/browse/master/;aa473b7)
 - [Pierre-Yves: Update firefox to 60.0.1](https://dev.getsol.us/source/firefox/browse/master/;f891cb4)
 - [Ikey Doherty: Update langpacks for 60.0.1](https://dev.getsol.us/source/firefox/browse/master/;db017b6)
 - [Ikey Doherty: Don't default to CSD Firefox just yet](https://dev.getsol.us/source/firefox/browse/master/;adfb5ca)
 - [Ikey Doherty: Enable CSD by default and apply upstream CSD patches](https://dev.getsol.us/source/firefox/browse/master/;db4f34d)
 - [Ikey Doherty: Update Firefox to 60.0](https://dev.getsol.us/source/firefox/browse/master/;251d2c0)
 - [Ikey Doherty: Bump langpacks to 60.0](https://dev.getsol.us/source/firefox/browse/master/;769d1a4)
 - [Ikey Doherty: Update Firefox to 59.0.3 as it seems someone forgot](https://dev.getsol.us/source/firefox/browse/master/;1667162)
 - [Ikey Doherty: Raise langpacks for 59.0.3](https://dev.getsol.us/source/firefox/browse/master/;b8bd29d)
 - [Joey Riches: Merge branch 'master' of ssh://dev.solus-project.com/source/firefox](https://dev.getsol.us/source/firefox/browse/master/;f932cb3)
 - [Joey Riches: Update firefox to 59.0.2](https://dev.getsol.us/source/firefox/browse/master/;0ef35b8)
 - [Joshua Strobl: Update langpacks to 59.0.2](https://dev.getsol.us/source/firefox/browse/master/;4656eca)
 - [Joey Riches: Rebuild against libvpx 1.7.0 & enable system libicu](https://dev.getsol.us/source/firefox/browse/master/;5ca6fb7)
 - [Joey Riches: Improve PGO data generation & enable perf switches](https://dev.getsol.us/source/firefox/browse/master/;931f730)
 - [Pierre-Yves: Update Firefox to 59.0.1](https://dev.getsol.us/source/firefox/browse/master/;ca2b1db)
 - [Joshua Strobl: Update langpacks to 59.0.1](https://dev.getsol.us/source/firefox/browse/master/;de3f399)
 - [Pierre-Yves: Update firefox to 59.0](https://dev.getsol.us/source/firefox/browse/master/;1f046f6)
 - [Joshua Strobl: Update langpacks to 59.0](https://dev.getsol.us/source/firefox/browse/master/;c567887)
 - [Joshua Strobl: Revert enabling u2f. Can cause CSP errors that result in issues on some Google services.](https://dev.getsol.us/source/firefox/browse/master/;a9a67c3)
 - [Joshua Strobl: Enable U2F by default. Enables devices like Yubikeys to work OOTB with websites which support U2F, like Google and GitHub.](https://dev.getsol.us/source/firefox/browse/master/;98f9820)
 - [Pierre-Yves: Update firefox to 58.0.2](https://dev.getsol.us/source/firefox/browse/master/;b46835a)
 - [Ikey Doherty: Bump langpacks for 58.0.2](https://dev.getsol.us/source/firefox/browse/master/;b3047c8)
 - [Pierre-Yves: Update firefox to 58.0.1](https://dev.getsol.us/source/firefox/browse/master/;2e72704)
 - [Ikey Doherty: Update langpacks to 58.0.1](https://dev.getsol.us/source/firefox/browse/master/;5c91b0a)
 - [Pierre-Yves: Update Firefox to 58.0](https://dev.getsol.us/source/firefox/browse/master/;e353459)
 - [Ikey Doherty: Update langpacks to 58.0](https://dev.getsol.us/source/firefox/browse/master/;3747f19)
 - [Pierre-Yves: Update firefox to 57.0.4](https://dev.getsol.us/source/firefox/browse/master/;fa1d786)
 - [Ikey Doherty: Update langpacks for 57.0.4](https://dev.getsol.us/source/firefox/browse/master/;4019ad4)
 - [Pierre-Yves: Update firefox to 57.0.3](https://dev.getsol.us/source/firefox/browse/master/;6b6f274)
 - [Ikey Doherty: Update langpacks for 57.0.3](https://dev.getsol.us/source/firefox/browse/master/;df8919a)
 - [Ikey Doherty: Update Firefox to 57.0.2](https://dev.getsol.us/source/firefox/browse/master/;0e7969d)
 - [Ikey Doherty: Update langpacks for 57.0.2](https://dev.getsol.us/source/firefox/browse/master/;3a792a5)
 - [Pierre-Yves: Update firefox to 57.0.1](https://dev.getsol.us/source/firefox/browse/master/;28488f6)
 - [Ikey Doherty: Update langpacks for 57.0.1](https://dev.getsol.us/source/firefox/browse/master/;3c72be7)
 - [Ikey Doherty: Introduce our Firefox build to the notion of speed](https://dev.getsol.us/source/firefox/browse/master/;2af1218)
 - [Joshua Strobl: Disable system nspr and nss to fix SSL. Resolves T5026.](https://dev.getsol.us/source/firefox/browse/master/;ad110ec)
 - [Joshua Strobl: Added sqlcompat patch.](https://dev.getsol.us/source/firefox/browse/master/;17e5028)
 - [Pierre-Yves: Update firefox to 57.0 (quantum)](https://dev.getsol.us/source/firefox/browse/master/;fd1777b)
 - [Joshua Strobl: Update langpacks for Firefox 57.0](https://dev.getsol.us/source/firefox/browse/master/;971bd83)
 - [Pierre-Yves: Rebuild against libhunspell 1.6.2](https://dev.getsol.us/source/firefox/browse/master/;be65b5f)
 - [Pierre-Yves: Update firefox to 56.0.2](https://dev.getsol.us/source/firefox/browse/master/;c825408)
 - [Ikey Doherty: Update langpacks script to 56.0.2](https://dev.getsol.us/source/firefox/browse/master/;ce80c9e)
 - [Pierre-Yves: Update firefox to 56.0.1](https://dev.getsol.us/source/firefox/browse/master/;a4b1928)
 - [Ikey Doherty: Update langpacks to 56.0.1](https://dev.getsol.us/source/firefox/browse/master/;2c558e9)
 - [Ikey Doherty: Let the build server deal with this update before I headbutt Firefox in the face](https://dev.getsol.us/source/firefox/browse/master/;2dc4143)
 - [Ikey Doherty: langpacks: Ensure previous directory is cleaned to prevent malformed tarball](https://dev.getsol.us/source/firefox/browse/master/;37e4564)
 - [Joshua Strobl: Update langpacks to 56.0](https://dev.getsol.us/source/firefox/browse/master/;e343b20)
 - [Joey Riches: firefox: bring back pretty whitespace](https://dev.getsol.us/source/firefox/browse/master/;ed8bfbd)
 - [Joey Riches: firefox: rebuild against libevent](https://dev.getsol.us/source/firefox/browse/master/;39b7de7)
 - [Pierre-Yves: Update firefox to 55.0.3](https://dev.getsol.us/source/firefox/browse/master/;3d8a714)
 - [Joshua Strobl: Update langpacks to 55.0.3](https://dev.getsol.us/source/firefox/browse/master/;20695b8)
 - [Pierre-Yves: Update firefox to 55.0.2](https://dev.getsol.us/source/firefox/browse/master/;c09673c)
 - [Ikey Doherty: Update langpacks for 55.0.2](https://dev.getsol.us/source/firefox/browse/master/;ea8593a)


**gnome-themes-standard**

 - [Ikey Doherty: Add missing runtime dependencies](https://dev.getsol.us/source/gnome-themes-standard/browse/master/;c4d1e09)
 - [Joshua Strobl: Cleanup package, removed emul32build check since we have GTK3 32bit at this point.](https://dev.getsol.us/source/gnome-themes-standard/browse/master/;2c34562)


**libatasmart**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/libatasmart/browse/master/;1b47f77)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libatasmart/browse/master/;b5d7889)


**yelp-xsl**

 - [Joshua Strobl: Update to 3.28.0](https://dev.getsol.us/source/yelp-xsl/browse/master/;f8c0e97)


**libxcb**

 - [Bryan T. Meyers: Updated to 1.13](https://dev.getsol.us/source/libxcb/browse/master/;84a622a)
 - [Peter O'Connor: Enable Xdmcp support](https://dev.getsol.us/source/libxcb/browse/master/;134ab5b)
 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxcb/browse/master/;5d36926)
 - [Ikey Doherty: Rebuild for new toolchain and flags](https://dev.getsol.us/source/libxcb/browse/master/;7847c81)
 - [Ikey Doherty: Enable missing libraries for Steam runtime compatibility](https://dev.getsol.us/source/libxcb/browse/master/;3929e5c)


**attr**

 - [Ikey Doherty: Rebuild for initrd](https://dev.getsol.us/source/attr/browse/master/;316493a)
 - [Ikey Doherty: Make attr usable with musl](https://dev.getsol.us/source/attr/browse/master/;87e2162)
 - [Ikey Doherty: Rebuild for new toolchain/flags](https://dev.getsol.us/source/attr/browse/master/;b2f3711)


**xorg-driver-video-qxl**

 - [Ikey Doherty: Fix missing Driver line in the OutputClass match](https://dev.getsol.us/source/xorg-driver-video-qxl/browse/master/;9c3660a)
 - [Ikey Doherty: Try to fix the greenscreen effect with QXL/spice](https://dev.getsol.us/source/xorg-driver-video-qxl/browse/master/;b25473a)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-video-qxl/browse/master/;7af6c76)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-qxl/browse/master/;67ea565)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-qxl/browse/master/;3e5dda5)
 - [Ikey Doherty: Update to latest git snapshot](https://dev.getsol.us/source/xorg-driver-video-qxl/browse/master/;46cd4a5)


**libxft**

 - [Joshua Strobl: Safety rebuild for stale package.](https://dev.getsol.us/source/libxft/browse/master/;d879dd8)
 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxft/browse/master/;9302539)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxft/browse/master/;d924e36)


**qt5-base**

 - [Pierre-Yves: Rebuild qt5-base for libxkbcommon 0.8.2](https://dev.getsol.us/source/qt5-base/browse/master/;1019d39)
 - [Peter O'Connor: Rebuild for mariadb 10.3](https://dev.getsol.us/source/qt5-base/browse/master/;44b9d99)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/qt5-base/browse/master/;fbfabce)
 - [Pierre-Yves: Rebuild qt5-base for cups 2.2.8](https://dev.getsol.us/source/qt5-base/browse/master/;5e9014b)
 - [Joshua Strobl: Rebuild against libinput 1.11 series.](https://dev.getsol.us/source/qt5-base/browse/master/;92b1ecc)
 - [Peter O'Connor: Revert patch causing issues with toolbars](https://dev.getsol.us/source/qt5-base/browse/master/;162d673)
 - [Peter O'Connor: Update to 5.11.1](https://dev.getsol.us/source/qt5-base/browse/master/;c542928)
 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/qt5-base/browse/master/;c145c65)
 - [Peter O'Connor: Update to 5.11.0](https://dev.getsol.us/source/qt5-base/browse/master/;a8232e2)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/qt5-base/browse/master/;97003a1)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/qt5-base/browse/master/;2cca3fd)
 - [Peter O'Connor: Allow for newer mariadb versions, bail if shaders fail to load](https://dev.getsol.us/source/qt5-base/browse/master/;fe1c39e)
 - [Peter O'Connor: Fix scrolling with libinput on X11](https://dev.getsol.us/source/qt5-base/browse/master/;55e206a)
 - [Peter O'Connor: Backport file dragging fix for Plasma](https://dev.getsol.us/source/qt5-base/browse/master/;abad0b4)
 - [Peter O'Connor: Update to 5.10.0](https://dev.getsol.us/source/qt5-base/browse/master/;54b4048)
 - [Peter O'Connor: Revert opengl to desktop, force Solus flags for build](https://dev.getsol.us/source/qt5-base/browse/master/;d7742db)
 - [Ikey Doherty: Switch Qt to OpenGL ES2 to support Wayland properly](https://dev.getsol.us/source/qt5-base/browse/master/;1e3d204)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/qt5-base/browse/master/;9925aef)
 - [Peter O'Connor: Update to 5.9.2](https://dev.getsol.us/source/qt5-base/browse/master/;35a4210)


**giflib**

 - [Pierre-Yves: Update giflib to 5.1.4](https://dev.getsol.us/source/giflib/browse/master/;0a20d8a)
 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/giflib/browse/master/;671780f)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/giflib/browse/master/;6de62c4)


**python3-gobject**

 - [Joshua Strobl: Upgrade to latest in 3.28 series. Updated license.](https://dev.getsol.us/source/python3-gobject/browse/master/;fb6b5aa)
 - [Peter O'Connor: Rebuild for ldflags](https://dev.getsol.us/source/python3-gobject/browse/master/;b293789)
 - [Pierre-Yves: Rebuild for python 3.6](https://dev.getsol.us/source/python3-gobject/browse/master/;89b43b9)
 - [Pierre-Yves: Update python3-gobject to 3.26.1](https://dev.getsol.us/source/python3-gobject/browse/master/;947e2f0)
 - [Joshua Strobl: Update to 3.26.0. Changelog available [here](https://download.gnome.org/sources/pygobject/3.26/pygobject-3.26.0.news).](https://dev.getsol.us/source/python3-gobject/browse/master/;afa0282)


**networkmanager-openvpn**

 - [Philipp Trulson: Update networkmanager-openvpn to 1.8.4](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;2ba7a57)
 - [Joshua Strobl: Update to 1.8.2](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;e494147)
 - [Peter O'Connor: Update to git sources for critical bug fixes](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;a03a901)
 - [Ikey Doherty: Rebuild for nm-applet (T5090)](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;154a417)
 - [Ikey Doherty: Rebuild for consistency](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;88da434)
 - [der_eismann: Update networkmanager-openvpn to 1.8.0](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;fcbf30e)
 - [Joshua Strobl: Safety rebuild against NM update.](https://dev.getsol.us/source/networkmanager-openvpn/browse/master/;63b0497)


**perl**

 - [Peter O'Connor: Addresss CVE-2018-12015](https://dev.getsol.us/source/perl/browse/master/;38f0538)
 - [Peter O'Connor: Rebuild perl with updated toolchain](https://dev.getsol.us/source/perl/browse/master/;dccf614)
 - [Peter O'Connor: Update to 5.26.2, resolves the following CVEs:](https://dev.getsol.us/source/perl/browse/master/;ebfd2b1)
 - [Pierre-Yves: Rebuild for glibc 2.26](https://dev.getsol.us/source/perl/browse/master/;e23094e)
 - [Pierre-Yves: Rebuild for gdbm 1.14.1](https://dev.getsol.us/source/perl/browse/master/;21d4749)
 - [Ikey Doherty: Rebuild Perl with unjanked ldflags](https://dev.getsol.us/source/perl/browse/master/;9a21e9e)
 - [Pierre-Yves: Update perl to 5.26.1 to address multiple CVEs](https://dev.getsol.us/source/perl/browse/master/;d720ee0)
 - [Peter O'Connor: Add nopatch as it gets confused with the version numbers](https://dev.getsol.us/source/perl/browse/master/;e73378b)


**tzdata**

 - [Ikey Doherty: Actually bump the release number](https://dev.getsol.us/source/tzdata/browse/master/;027b836)
 - [Ikey Doherty: Update tzdata to 2018e](https://dev.getsol.us/source/tzdata/browse/master/;3bca218)
 - [Pierre-Yves: Update tzdata to 2018d](https://dev.getsol.us/source/tzdata/browse/master/;a13683b)
 - [Pierre-Yves: Update tzdata to 2018c & convert to ypkg](https://dev.getsol.us/source/tzdata/browse/master/;551c411)


**libxrandr**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxrandr/browse/master/;0834715)


**libvdpau**

 - [Joey Riches: Sync with git to fix a segfault with DRI_PRIME enabled](https://dev.getsol.us/source/libvdpau/browse/master/;803262b)


**expat**

 - [Joshua Strobl: Moved expat-devel back to system.devel. Determined to be a recommended package to include for an updated solbuild image.](https://dev.getsol.us/source/expat/browse/master/;f3fbd97)
 - [Peter O'Connor: Update to 2.2.6](https://dev.getsol.us/source/expat/browse/master/;5f0af47)
 - [Pierre-Yves: Update expat to 2.2.5](https://dev.getsol.us/source/expat/browse/master/;e21aa86)
 - [Pierre-Yves: Update expat to 2.2.4](https://dev.getsol.us/source/expat/browse/master/;6c0b1c5)


**libgphoto2**

 - [Peter O'Connor: Update to 2.5.17](https://dev.getsol.us/source/libgphoto2/browse/master/;f28a9fa)
 - [Pierre-Yves: Add libturbojpeg as dependency](https://dev.getsol.us/source/libgphoto2/browse/master/;4feedd9)
 - [Pierre-Yves: Update libgphoto2 to 2.5.16](https://dev.getsol.us/source/libgphoto2/browse/master/;3d72665)
 - [Pierre-Yves: Add abireport](https://dev.getsol.us/source/libgphoto2/browse/master/;b035ce6)


**xkbcomp**

 - [Bryan T. Meyers: Updated to 1.4.2](https://dev.getsol.us/source/xkbcomp/browse/master/;b38772a)
 - [Pierre-Yves: Update xkbcomp to 1.4.0](https://dev.getsol.us/source/xkbcomp/browse/master/;a713eac)


**xcb-util**

 - [Ikey Doherty: Enable emul32](https://dev.getsol.us/source/xcb-util/browse/master/;327c9c0)


**evolution-data-server**

 - [Joshua Strobl: Update to 3.28.5](https://dev.getsol.us/source/evolution-data-server/browse/master/;9edff2c)
 - [Joshua Strobl: Update to 3.28.4](https://dev.getsol.us/source/evolution-data-server/browse/master/;2847011)
 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/evolution-data-server/browse/master/;c1587b2)
 - [Joshua Strobl: Update to 3.28.3](https://dev.getsol.us/source/evolution-data-server/browse/master/;6e7752f)
 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/evolution-data-server/browse/master/;8a687d0)
 - [Joshua Strobl: Upgrade to latest in 3.28 series.](https://dev.getsol.us/source/evolution-data-server/browse/master/;7dc65c7)
 - [Peter O'Connor: Rebuild for libwebkit-gtk](https://dev.getsol.us/source/evolution-data-server/browse/master/;d118760)
 - [Pierre-Yves: Rebuild for libical 3.0.3](https://dev.getsol.us/source/evolution-data-server/browse/master/;b5a3e30)
 - [Joey Riches: Update abireport](https://dev.getsol.us/source/evolution-data-server/browse/master/;53aca16)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/evolution-data-server/browse/master/;4e9e86a)
 - [Joshua Strobl: Update to 3.26.6](https://dev.getsol.us/source/evolution-data-server/browse/master/;1c18ee4)
 - [Joshua Strobl: Update to 3.26.5](https://dev.getsol.us/source/evolution-data-server/browse/master/;c2fc701)
 - [Joshua Strobl: Update to 3.26.4](https://dev.getsol.us/source/evolution-data-server/browse/master/;5d69a24)
 - [Joshua Strobl: Update to 3.26.3](https://dev.getsol.us/source/evolution-data-server/browse/master/;36bbfd4)
 - [Joshua Strobl: Update to 3.26.2.1](https://dev.getsol.us/source/evolution-data-server/browse/master/;c95cc8f)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/evolution-data-server/browse/master/;2b27980)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/evolution-data-server/browse/master/;6669083)
 - [Bryan T. Meyers: Update to 3.26.1](https://dev.getsol.us/source/evolution-data-server/browse/master/;91fbe21)


**grilo**

 - [Joshua Strobl: Update to 0.3.6](https://dev.getsol.us/source/grilo/browse/master/;7ad69d8)
 - [Joshua Strobl: Update to 0.3.5](https://dev.getsol.us/source/grilo/browse/master/;aa911b2)
 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/grilo/browse/master/;1019b1c)
 - [Joshua Strobl: Update to 0.3.4](https://dev.getsol.us/source/grilo/browse/master/;0ba3366)


**nvidia-340-glx-driver**

 - [Bryan T. Meyers: Rebuild for kernel](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;af5ea4c)
 - [Bryan T. Meyers: Rebuild for kernel](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;129f766)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;0ede78f)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;2589628)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;c5a1df2)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;9a9dbdf)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;593d64c)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;c90f967)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b28bbcc)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;6fd8a7b)
 - [Bryan T. Meyers: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;7c2125c)
 - [Bryan T. Meyers: Updated to 340.107](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;7ac80b3)
 - [Bryan T. Meyers: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;4f3b89e)
 - [Bryan T. Meyers: Rebuild for linux-current 4.17.2](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;6b85f63)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;efa7ea1)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b752e02)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b9f4680)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;ce561b5)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;1608dc8)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;43a92ee)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;a5cdff4)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;fb3c7ac)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;5a9d535)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;a1e6896)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;40b90af)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;a49adcc)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;c703ff0)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;995942e)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;ed4b328)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;c57ea4f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;dd72dfb)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b5a43e7)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;a9a86d1)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b65c581)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;90c0144)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;da277c0)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;e9072f8)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;40b9542)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;342a408)
 - [Ikey Doherty: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;72b6a44)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;da01701)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b7676c0)
 - [Ikey Doherty: I heard a rumour that including all the files is useful.](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;dbc33e3)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;4e85e41)
 - [Ikey Doherty: Unbreak xorg config (per T4901)](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;ce4f0fc)
 - [Ikey Doherty: Make nvidia-340-glx-driver work with glvnd system (per T4901)](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;4e1d672)
 - [Ikey Doherty: Update nvidia-340-glx-driver to 340.106](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;83d7d95)
 - [Ikey Doherty: Rebuild for newly built kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;9fd8ed5)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;0a0ae6c)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;4a9440f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;240d7c3)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b3d8a41)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;8d885d4)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;beeec7e)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;e320bdd)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;0259fac)
 - [Ikey Doherty: Port `nvidia-340-glx-driver` to 4.14 APIs](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;2ef9698)
 - [Ikey Doherty: Add missing permanent module attribute](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;f808c4d)
 - [Ikey Doherty: Convert nvidia-340-glx-driver to ypkg format (T5010)](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;cd63c55)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;7a938d1)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;2ebcd42)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;6f44c11)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;9fbe4d2)
 - [Ikey Doherty: Update nvidia-304-glx-driver to 340.104](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;8dc7f1f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;f4c005f)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;9cb229b)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;7c5fd08)
 - [Ikey Doherty: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;789f9fa)
 - [Ikey Doherty: Fix missing internal CUDA support (re: T354)](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;0a0742a)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;e26aa2f)
 - [Ikey Doherty: Rebuild for kernel enabling](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;39de39b)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;1f2337b)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;5b8479f)
 - [Peter O'Connor: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;c4be12e)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;b7dbcc0)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;d924538)
 - [Ikey Doherty: Rebuild with new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;f4f2d34)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;d88856a)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;aec8913)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;5b3350e)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-340-glx-driver/browse/master/;ced9976)


**libtasn1**

 - [Pierre-Yves: Update libtasn1 to 4.13](https://dev.getsol.us/source/libtasn1/browse/master/;d2ba433)


**network-manager-applet**

 - [Philipp Trulson: Update network-manager-applet to 1.8.16](https://dev.getsol.us/source/network-manager-applet/browse/master/;9453843)
 - [Eric Renfro: Update to 1.8.14, bug fixes since 1.8.11-dev.](https://dev.getsol.us/source/network-manager-applet/browse/master/;d4930c1)
 - [Ikey Doherty: Get back in the build system again](https://dev.getsol.us/source/network-manager-applet/browse/master/;b688bf1)
 - [Ikey Doherty: Match our network-manager-applet to the exact version used by Arch Linux](https://dev.getsol.us/source/network-manager-applet/browse/master/;b8be0f4)
 - [Ikey Doherty: Fix double-free in network-manager-applet](https://dev.getsol.us/source/network-manager-applet/browse/master/;0519a77)
 - [Joshua Strobl: Update to 1.8.10](https://dev.getsol.us/source/network-manager-applet/browse/master/;8f36308)
 - [Ikey Doherty: Rebuild for nm-applet (T5090)](https://dev.getsol.us/source/network-manager-applet/browse/master/;7511e7e)
 - [Ikey Doherty: Take a git snapshot for NMA to fix our issues and keep new build](https://dev.getsol.us/source/network-manager-applet/browse/master/;c0abacf)
 - [Ikey Doherty: Downgrade network-manager-applet a lot](https://dev.getsol.us/source/network-manager-applet/browse/master/;a919e5a)
 - [Ikey Doherty: Teach nm-applet to spell. Already upstream in git master](https://dev.getsol.us/source/network-manager-applet/browse/master/;c41ef87)
 - [Ikey Doherty: Back to 1.8.6, switch to meson, enable gcr](https://dev.getsol.us/source/network-manager-applet/browse/master/;696c4c0)
 - [Ikey Doherty: Downgrade to 1.4.6 due to WPA2/PSK issues](https://dev.getsol.us/source/network-manager-applet/browse/master/;8832e77)
 - [Ikey Doherty: Rebuild against older NM](https://dev.getsol.us/source/network-manager-applet/browse/master/;b65acdf)
 - [Ikey Doherty: Disable selinux, this is banned for normal Solus usage.](https://dev.getsol.us/source/network-manager-applet/browse/master/;8fe6083)
 - [der_eismann: Update network-manager-applet to 1.8.6](https://dev.getsol.us/source/network-manager-applet/browse/master/;9f15727)
 - [Joshua Strobl: Update to 1.4.6](https://dev.getsol.us/source/network-manager-applet/browse/master/;e41a495)


**networkmanager-openconnect**

 - [Joshua Strobl: Safety rebuild. Change source.](https://dev.getsol.us/source/networkmanager-openconnect/browse/master/;3c6cd95)
 - [Ikey Doherty: Ensure `nm-openconnect` user is provided on the system](https://dev.getsol.us/source/networkmanager-openconnect/browse/master/;67e140c)
 - [Joshua Strobl: Safety rebuild against NM update.](https://dev.getsol.us/source/networkmanager-openconnect/browse/master/;6cf2922)


**upower**

 - [Ikey Doherty: Update upower to 0.99.7](https://dev.getsol.us/source/upower/browse/master/;57e4cdc)


**libe-book**

 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libe-book/browse/master/;7d8147b)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libe-book/browse/master/;3c8a578)
 - [Pierre-Yves: Update libe-book to 0.1.3](https://dev.getsol.us/source/libe-book/browse/master/;f698fda)
 - [Joey Riches: Bump package for rebuild (build server hates us)](https://dev.getsol.us/source/libe-book/browse/master/;e252f95)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/libe-book/browse/master/;3168fbf)


**alsa-utils**

 - [Ikey Doherty: Only start alsa-restore.service if we have something to restore](https://dev.getsol.us/source/alsa-utils/browse/master/;56fecba)
 - [Pierre-Yves: Update alsa-utils to 1.1.5](https://dev.getsol.us/source/alsa-utils/browse/master/;b8b4bc5)


**nautilus**

 - [Joshua Strobl: Simple bump to fix version. Meant to be 3.26.4 not 3.28.4.](https://dev.getsol.us/source/nautilus/browse/master/;f38846e)
 - [Joshua Strobl: Update to 3.26.4](https://dev.getsol.us/source/nautilus/browse/master/;572768a)
 - [Joshua Strobl: Safety rebuild against tracker.](https://dev.getsol.us/source/nautilus/browse/master/;e80d2a8)
 - [Ikey Doherty: Add missing runtime dependency on gvfs](https://dev.getsol.us/source/nautilus/browse/master/;c93e976)
 - [Ikey Doherty: Update to 3.26.3 and drop the upstream patch](https://dev.getsol.us/source/nautilus/browse/master/;e337d96)
 - [Ikey Doherty: Keep on rolling (back) - Nautilus 3.26.2](https://dev.getsol.us/source/nautilus/browse/master/;f841d0f)
 - [Joshua Strobl: Update to 3.28.1. Rebase Solus defaults patch.](https://dev.getsol.us/source/nautilus/browse/master/;bbb9580)
 - [Joshua Strobl: Rebuild to test Nautilus lookup error for a user.](https://dev.getsol.us/source/nautilus/browse/master/;8de8c38)
 - [Joshua Strobl: Add patch to fix back and forward mouse buttons not doing anything.](https://dev.getsol.us/source/nautilus/browse/master/;d6b73ef)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/nautilus/browse/master/;c8da8f2)
 - [Joshua Strobl: Switch to Tracker 2.0. Have tracker-miners as a rundep.](https://dev.getsol.us/source/nautilus/browse/master/;2ce859f)
 - [Joshua Strobl: Update to 3.26.0. Enable tracker since it's basically impossible to patch it out at this point.](https://dev.getsol.us/source/nautilus/browse/master/;b81ee71)


**tar**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/tar/browse/master/;f524482)
 - [Pierre-Yves: Update tar to 1.30](https://dev.getsol.us/source/tar/browse/master/;ca1c8fb)


**lightdm**

 - [Pierre-Yves: Update lightdm to 1.26.0](https://dev.getsol.us/source/lightdm/browse/master/;5364529)
 - [Ikey Doherty: Add missing setxkbmap dependency](https://dev.getsol.us/source/lightdm/browse/master/;94ea5e8)
 - [Ikey Doherty: Add missing xhost dependency](https://dev.getsol.us/source/lightdm/browse/master/;ae4f8c7)
 - [Ikey Doherty: Absorb missing dependencies from ISO definition](https://dev.getsol.us/source/lightdm/browse/master/;2584e7f)
 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/lightdm/browse/master/;4bcf830)
 - [Ikey Doherty: Restore missing VAPI](https://dev.getsol.us/source/lightdm/browse/master/;12e7076)
 - [Ikey Doherty: Ensure Optimus integration with LDM (T4901)](https://dev.getsol.us/source/lightdm/browse/master/;9e397b8)
 - [Ikey Doherty: lightdm: Fix warning about invalid GECOS field in sysusers snippet](https://dev.getsol.us/source/lightdm/browse/master/;903bbb2)
 - [Peter O'Connor: Update to 1.24.0, make more robust](https://dev.getsol.us/source/lightdm/browse/master/;a160afe)


**sudo**

 - [Pierre-Yves: Update sudo to 1.8.24](https://dev.getsol.us/source/sudo/browse/master/;b2bcbd5)
 - [Pierre-Yves: Update sudo to 1.8.23](https://dev.getsol.us/source/sudo/browse/master/;39c4d72)
 - [Pierre-Yves: Update sudo to 1.8.22](https://dev.getsol.us/source/sudo/browse/master/;8e37238)
 - [Pierre-Yves: Update sudo to 1.8.21p2](https://dev.getsol.us/source/sudo/browse/master/;aa78330)


**gsettings-desktop-schemas**

 - [Ikey Doherty: Reflow patch series, allow changing volume beyond 100% by default](https://dev.getsol.us/source/gsettings-desktop-schemas/browse/master/;98529ec)
 - [Joshua Strobl: Restore sane touchpad right-click behavior. Resolves T6312.](https://dev.getsol.us/source/gsettings-desktop-schemas/browse/master/;b7446a7)
 - [Joshua Strobl: Upgrade to 3.28.0](https://dev.getsol.us/source/gsettings-desktop-schemas/browse/master/;1fe43dc)
 - [Joshua Strobl: Update to 3.24.1](https://dev.getsol.us/source/gsettings-desktop-schemas/browse/master/;02c1081)


**libarchive**

 - [Joey Riches: Address multiple CVEs](https://dev.getsol.us/source/libarchive/browse/master/;ed2f2b4)
 - [Ikey Doherty: Congrats, bsdtar is promoted to system.devel.](https://dev.getsol.us/source/libarchive/browse/master/;b8e969d)
 - [Peter O'Connor: Address CVE-2017-14166](https://dev.getsol.us/source/libarchive/browse/master/;a9f860c)


**gcc**

 - [Peter O'Connor: Rebootstrap toolchain](https://dev.getsol.us/source/gcc/browse/master/;732db20)
 - [Peter O'Connor: Update to 8.2.0 including static build libs](https://dev.getsol.us/source/gcc/browse/master/;d8fd1c3)
 - [Ikey Doherty: Complete the bootstrap](https://dev.getsol.us/source/gcc/browse/master/;a613427)
 - [Peter O'Connor: Rebuild against new glibc and binutils](https://dev.getsol.us/source/gcc/browse/master/;f61034f)
 - [Peter O'Connor: Add some preliminary tweaks to the toolchain](https://dev.getsol.us/source/gcc/browse/master/;2be8a1e)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/gcc/browse/master/;801d5ff)
 - [Ikey Doherty: Update GCC to 7.3.0](https://dev.getsol.us/source/gcc/browse/master/;3f8bc6a)
 - [Ikey Doherty: Sync GCC with the latest Retpoline patches](https://dev.getsol.us/source/gcc/browse/master/;0464dc2)
 - [Ikey Doherty: Apply retpoline security patch for GCC](https://dev.getsol.us/source/gcc/browse/master/;82a9fd7)
 - [Peter O'Connor: Revert to original build envirnoment](https://dev.getsol.us/source/gcc/browse/master/;dfa751f)
 - [Peter O'Connor: Convert to ypkg](https://dev.getsol.us/source/gcc/browse/master/;c6c6a61)
 - [Ikey Doherty: Attempt resolution of G++ segfaults and invalid instructions](https://dev.getsol.us/source/gcc/browse/master/;ae69bed)
 - [Ikey Doherty: Complete rebootstrap of GCC 7.2.0](https://dev.getsol.us/source/gcc/browse/master/;82892ee)
 - [Ikey Doherty: Update GCC to 7.2.0](https://dev.getsol.us/source/gcc/browse/master/;8cebc54)
 - [Ikey Doherty: Rebootstrap GCC due to headers/mpfr changes](https://dev.getsol.us/source/gcc/browse/master/;1dd8b1c)


**libtelepathy-glib**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/libtelepathy-glib/browse/master/;1e4cfbc)
 - [Joshua Strobl: Safety rebuild against new Vala.](https://dev.getsol.us/source/libtelepathy-glib/browse/master/;2d4aa42)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/libtelepathy-glib/browse/master/;5ff8f7d)


**lame**

 - [Pierre-Yves: Update lame to 3.100 to address multiple CVEs](https://dev.getsol.us/source/lame/browse/master/;80fc358)
 - [Peter O'Connor: Address CVE-2017-15018](https://dev.getsol.us/source/lame/browse/master/;e6c346a)


**alsa-lib**

 - [Pierre-Yves: Update alsa-lib to 1.1.5](https://dev.getsol.us/source/alsa-lib/browse/master/;d78fc91)


**budgie-desktop-branding**

 - [Joshua Strobl: Update to v18](https://dev.getsol.us/source/budgie-desktop-branding/browse/master/;3b4c2ce)
 - [Ikey Doherty: Sync with git to restore GNOME MPV by default](https://dev.getsol.us/source/budgie-desktop-branding/browse/master/;7892859)
 - [Ikey Doherty: Sync with git:](https://dev.getsol.us/source/budgie-desktop-branding/browse/master/;6a3f3f0)
 - [Ikey Doherty: Sync with git to apply new defaults for Solus 4](https://dev.getsol.us/source/budgie-desktop-branding/browse/master/;f3c3a3a)
 - [Ikey Doherty: Sync with git to replace MPV with VLC](https://dev.getsol.us/source/budgie-desktop-branding/browse/master/;7fb97ff)


**librsvg**

 - [Ikey Doherty: Rebuild for gdk-pixbuf](https://dev.getsol.us/source/librsvg/browse/master/;4e408c2)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/librsvg/browse/master/;c69cfeb)
 - [Joshua Strobl: Enable Vala bindings for GNOME Chess.](https://dev.getsol.us/source/librsvg/browse/master/;84ccbdd)
 - [Joey Riches: Backport patch from unreleased 2.42.3](https://dev.getsol.us/source/librsvg/browse/master/;576af6f)
 - [Joshua Strobl: Update to 2.40.20.](https://dev.getsol.us/source/librsvg/browse/master/;527708d)
 - [Ikey Doherty: Update librsvg to 2.40.19 and fix linking issues](https://dev.getsol.us/source/librsvg/browse/master/;c079cf9)


**gcr**

 - [Joshua Strobl: Upgrade to 3.28.0](https://dev.getsol.us/source/gcr/browse/master/;26bb338)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/gcr/browse/master/;3ef59b4)


**libatk**

 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/libatk/browse/master/;9fb3a27)
 - [Joshua Strobl: Upgrade to latest stable release. Updated license and switched to Meson.](https://dev.getsol.us/source/libatk/browse/master/;9ba723b)
 - [Joshua Strobl: Update to 2.26.0](https://dev.getsol.us/source/libatk/browse/master/;d1f1dcb)


**rhythmbox-alternative-toolbar**

 - [Joshua Strobl: Rebuild against rhythmbox 3.4.2](https://dev.getsol.us/source/rhythmbox-alternative-toolbar/browse/master/;ca99a49)
 - [Justin Zobel: Update Rhythmbox Alternative Toolbar to 0.17.5](https://dev.getsol.us/source/rhythmbox-alternative-toolbar/browse/master/;316b0a2)


**gstreamer-1.0-plugins-bad**

 - [Pierre-Yves: Update gstreamer-1.0-plugins-bad to 1.14.2](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;d9b9a1a)
 - [Joey Riches: Rebuild against x265](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;46dab9a)
 - [Joshua Strobl: Update to 1.14.1. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.14/#1.14.1).](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;987d25d)
 - [Joey Riches: Rebuild against x265 2.7](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;0b4946a)
 - [Joshua Strobl: Upgrade to 1.14.0](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;34019e6)
 - [Pierre-Yves: Rebuild for libdvdread 6.0.0](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;7b05f37)
 - [Joshua Strobl: Rebuild against x265 2.6](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;5ba84ad)
 - [Joshua Strobl: Add patch for player transfer ownership of info properties. Previously caused GObject critical warnings.](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;d103bfe)
 - [Ikey Doherty: Enable mplex plugin for our friend on G+ trying to play DVDs](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;8a8a758)
 - [Joey Riches: Update gstreamer-1.0-plugins-bad to 1.12.4](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;a2fe7a4)
 - [Joey Riches: Rebuild against libass 0.14](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;efd73cf)
 - [Bryan T. Meyers: Rebuild against x265](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;be5f567)
 - [Pierre-Yves: Update gstreamer-1.0-plugins-bad to 1.12.3](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;f372f72)
 - [Ikey Doherty: Rebuild for dynamic linking consistency with faad](https://dev.getsol.us/source/gstreamer-1.0-plugins-bad/browse/master/;c347b0e)


**unixodbc**

 - [Peter O'Connor: Update to 2.3.5 to address CVE-2018-7409](https://dev.getsol.us/source/unixodbc/browse/master/;a4e0bda)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/unixodbc/browse/master/;5c37b92)


**zimg**

 - [Bryan T. Meyers: Update to 2.7.5](https://dev.getsol.us/source/zimg/browse/master/;46158fa)
 - [Pierre-Yves: Update zimg to 2.7.1](https://dev.getsol.us/source/zimg/browse/master/;d4e511f)
 - [Pierre-Yves: Update zimg to 2.6.3](https://dev.getsol.us/source/zimg/browse/master/;c73fbc8)


**lzip**

 - [Pierre-Yves: Update lzip to 1.19](https://dev.getsol.us/source/lzip/browse/master/;14c82d4)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/lzip/browse/master/;6fa209c)


**adwaita-icon-theme**

 - [Joshua Strobl: Fix symbolic creation.](https://dev.getsol.us/source/adwaita-icon-theme/browse/master/;2f26415)
 - [Joshua Strobl: Update to 3.28.0](https://dev.getsol.us/source/adwaita-icon-theme/browse/master/;e6e0073)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/adwaita-icon-theme/browse/master/;ea6cdd6)
 - [Joshua Strobl: Update to 3.26.0](https://dev.getsol.us/source/adwaita-icon-theme/browse/master/;468da97)


**polkit**

 - [Joshua Strobl: Moved polkit-devel back to system.devel. Determined to be a recommended package to include for an updated solbuild image.](https://dev.getsol.us/source/polkit/browse/master/;733ebab)
 - [Ikey Doherty: Sync with `noscript-3`](https://dev.getsol.us/source/polkit/browse/master/;b489bda)
 - [Ikey Doherty: Switch to `nopatch-2` rebase with configurable backend](https://dev.getsol.us/source/polkit/browse/master/;bde4582)
 - [Ikey Doherty: Switch to `noscript-1` branch for cleanups](https://dev.getsol.us/source/polkit/browse/master/;3e947da)
 - [Ikey Doherty: resync with git, fix wheel group to sudo](https://dev.getsol.us/source/polkit/browse/master/;c474d5b)
 - [Ikey Doherty: Bump polkit to add print statements for debugging](https://dev.getsol.us/source/polkit/browse/master/;49ca55d)
 - [Ikey Doherty: Testing: Move polkit to our "noscript" fork](https://dev.getsol.us/source/polkit/browse/master/;8e65615)
 - [Ikey Doherty: Port PolKit to `duktape` and convert to modern `ypkg` format](https://dev.getsol.us/source/polkit/browse/master/;36d682b)


**libxshmfence**

 - [Bryan T. Meyers: Updated to 1.3](https://dev.getsol.us/source/libxshmfence/browse/master/;25e9aa5)
 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxshmfence/browse/master/;68898b1)
 - [Ikey Doherty: Rebuild for consistency](https://dev.getsol.us/source/libxshmfence/browse/master/;65aaecb)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxshmfence/browse/master/;319445e)


**snapd**

 - [Joshua Strobl: Update to latest 2.35 release.](https://dev.getsol.us/source/snapd/browse/master/;2dbad48)
 - [Ikey Doherty: Update snapd to 2.32.9](https://dev.getsol.us/source/snapd/browse/master/;4a68691)
 - [Ikey Doherty: Update snapd to 2.32.6](https://dev.getsol.us/source/snapd/browse/master/;cd49a46)
 - [Ikey Doherty: Update snapd to 2.32.5](https://dev.getsol.us/source/snapd/browse/master/;19009f6)
 - [Ikey Doherty: Reintroduce steam-support interface for new testing](https://dev.getsol.us/source/snapd/browse/master/;f18d4dc)
 - [Ikey Doherty: Add missing snapd directory](https://dev.getsol.us/source/snapd/browse/master/;2aefd4d)
 - [Ikey Doherty: Remove our `steam-support` interface from snapd for now](https://dev.getsol.us/source/snapd/browse/master/;076b3dc)
 - [Ikey Doherty: Let's try this again with a fresh brain!](https://dev.getsol.us/source/snapd/browse/master/;6da3708)
 - [Ikey Doherty: Just try reading private NVIDIA dir first](https://dev.getsol.us/source/snapd/browse/master/;fdd44bf)
 - [Ikey Doherty: Second times the charm](https://dev.getsol.us/source/snapd/browse/master/;bb0576f)
 - [Ikey Doherty: Try desparately to fix snapd so that @blaz accepts me into his life](https://dev.getsol.us/source/snapd/browse/master/;ff90d9e)
 - [Ikey Doherty: Refresh snapd steam-support](https://dev.getsol.us/source/snapd/browse/master/;55d35ae)
 - [Ikey Doherty: Make glvnd work properly with AppArmor confinement](https://dev.getsol.us/source/snapd/browse/master/;35c955c)
 - [Ikey Doherty: Sync snapd `steam-support` patch](https://dev.getsol.us/source/snapd/browse/master/;fed6aaa)
 - [Ikey Doherty: Sync new `steam-support` patch for improved full confinement](https://dev.getsol.us/source/snapd/browse/master/;7fac1f1)
 - [Ikey Doherty: Add new experimental `steam-support` interface to snapd](https://dev.getsol.us/source/snapd/browse/master/;73e0843)
 - [Ikey Doherty: Update snapd to 2.30](https://dev.getsol.us/source/snapd/browse/master/;75b8d46)
 - [Ikey Doherty: Rebase snapd onto latest pull request, move to `lib32` dirs, etc.](https://dev.getsol.us/source/snapd/browse/master/;ae86a4a)
 - [Ikey Doherty: Add our staging patch for NVIDIA Vulkan support under snapd](https://dev.getsol.us/source/snapd/browse/master/;bd247be)
 - [Ikey Doherty: Add initial support to snapd for `solus-runtime-gaming`](https://dev.getsol.us/source/snapd/browse/master/;7f823bd)
 - [Ikey Doherty: Update snapd to 2.29.2](https://dev.getsol.us/source/snapd/browse/master/;eb95187)


**libhunspell**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/libhunspell/browse/master/;b714911)
 - [Pierre-Yves: Update libhunspell to 1.6.2](https://dev.getsol.us/source/libhunspell/browse/master/;d41b0a2)
 - [Ikey Doherty: Conduct ABI report](https://dev.getsol.us/source/libhunspell/browse/master/;b774c87)


**mariadb**

 - [Philipp Trulson: Update mariadb to 10.3.9](https://dev.getsol.us/source/mariadb/browse/master/;c8b9657)
 - [Ikey Doherty: Remove nightmare fuel from mariadb-libs](https://dev.getsol.us/source/mariadb/browse/master/;5ebfebb)
 - [Ikey Doherty: Fix death by bork glob](https://dev.getsol.us/source/mariadb/browse/master/;259987a)
 - [Ikey Doherty: Update MariaDB to 10.1.29 and fix eopkg check errors](https://dev.getsol.us/source/mariadb/browse/master/;bff01be)
 - [Ikey Doherty: Update MariaDB to 10.1.26 - latest stable upstream release](https://dev.getsol.us/source/mariadb/browse/master/;90f61f7)


**libxfixes**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxfixes/browse/master/;24ddae5)


**libquvi**

 - [Joshua Strobl: Build against lua 5.3](https://dev.getsol.us/source/libquvi/browse/master/;6c26919)


**gnome-color-manager**

 - [Joshua Strobl: Update to 3.28.0.](https://dev.getsol.us/source/gnome-color-manager/browse/master/;7e874d9)
 - [Ikey Doherty: Apply upstream patch to fix invalid datadir in gnome-color-manager](https://dev.getsol.us/source/gnome-color-manager/browse/master/;ffa54c7)
 - [Joey Riches: Rebuild against exiv2 0.26](https://dev.getsol.us/source/gnome-color-manager/browse/master/;45e9ade)
 - [Joshua Strobl: Update to 3.26.0. Switched to meson.](https://dev.getsol.us/source/gnome-color-manager/browse/master/;9875057)


**xorg-driver-input-wacom**

 - [Joey Riches: Update xorg-driver-input-wacom to 0.36.1](https://dev.getsol.us/source/xorg-driver-input-wacom/browse/master/;a4b526f)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-input-wacom/browse/master/;03b6b61)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-input-wacom/browse/master/;80a8cc1)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-input-wacom/browse/master/;dc76593)
 - [Ikey Doherty: Update to 0.35.0 as part of the ongoing X.Org stack update](https://dev.getsol.us/source/xorg-driver-input-wacom/browse/master/;39e22f6)


**fribidi**

 - [Pierre-Yves: Update fribidi to 1.0.5](https://dev.getsol.us/source/fribidi/browse/master/;94b98d5)
 - [Joey Riches: Enable 32bit built packages for fribidi](https://dev.getsol.us/source/fribidi/browse/master/;9cc0652)
 - [Joey Riches: Update fribidi to 1.0.2](https://dev.getsol.us/source/fribidi/browse/master/;3e85fc0)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/fribidi/browse/master/;7ba49cf)


**openldap**

 - [Philipp Trulson: Update openldap to 2.4.46](https://dev.getsol.us/source/openldap/browse/master/;044a008)


**libx11**

 - [Joey Riches: Update to 1.6.6 to address multiple CVEs](https://dev.getsol.us/source/libx11/browse/master/;b974d17)
 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libx11/browse/master/;acf32e7)
 - [Ikey Doherty: Restore `speed` buildopt until we can test the difference](https://dev.getsol.us/source/libx11/browse/master/;1f75289)
 - [Ikey Doherty: Drop .3mb per build of libX11.so with size optimisation](https://dev.getsol.us/source/libx11/browse/master/;e02b1cb)


**libxkbfile**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxkbfile/browse/master/;0f6046b)
 - [Ikey Doherty: Rebuild to fix 32-bit development](https://dev.getsol.us/source/libxkbfile/browse/master/;665aaae)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxkbfile/browse/master/;f7de18f)


**pciutils**

 - [Pierre-Yves: Update pciutils to 3.5.6](https://dev.getsol.us/source/pciutils/browse/master/;28f6f03)
 - [Ikey Doherty: Update to 3.5.5, enable 32-bit support for Steam Runtime](https://dev.getsol.us/source/pciutils/browse/master/;a714ca3)


**at-spi2**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/at-spi2/browse/master/;d9ef0e2)
 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/at-spi2/browse/master/;66a88d0)
 - [Joshua Strobl: Update to 2.28.0 stable release. Update stateless patch and license.](https://dev.getsol.us/source/at-spi2/browse/master/;f04ae21)
 - [Ikey Doherty: Fix clinically broken autostart file](https://dev.getsol.us/source/at-spi2/browse/master/;4ba20da)
 - [Joshua Strobl: Update to 2.26.2](https://dev.getsol.us/source/at-spi2/browse/master/;222a958)
 - [Bryan T. Meyers: Update to 2.26.0](https://dev.getsol.us/source/at-spi2/browse/master/;c9c8feb)


**libao**

 - [Joshua Strobl: Resolve CVE-2017-11548.](https://dev.getsol.us/source/libao/browse/master/;77d533f)


**libgnome-desktop**

 - [Pierre-Yves: Safety rebuild for bubblewrap 0.3.0](https://dev.getsol.us/source/libgnome-desktop/browse/master/;cadefbb)
 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/libgnome-desktop/browse/master/;eca56d7)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/libgnome-desktop/browse/master/;104a272)
 - [Joshua Strobl: Update to 3.26.2. Translation updates.](https://dev.getsol.us/source/libgnome-desktop/browse/master/;a610cb1)
 - [Ikey Doherty: Go on. Have the last word. **Take it**.](https://dev.getsol.us/source/libgnome-desktop/browse/master/;7223557)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/libgnome-desktop/browse/master/;7f08858)


**libwpd**

 - [Pierre-Yves: Switch to another sf mirror](https://dev.getsol.us/source/libwpd/browse/master/;151b92c)
 - [Justin Zobel: Update libwpd to 0.10.2](https://dev.getsol.us/source/libwpd/browse/master/;92f2b8e)


**qtstyleplugins**

 - [Peter O'Connor: Rebuild for Qt 5.11.1](https://dev.getsol.us/source/qtstyleplugins/browse/master/;4af1a87)
 - [Peter O'Connor: Rebuild against Qt 5.11](https://dev.getsol.us/source/qtstyleplugins/browse/master/;f2240b3)
 - [Peter O'Connor: Rebuild for Qt 5.10](https://dev.getsol.us/source/qtstyleplugins/browse/master/;81d0d2b)
 - [Peter O'Connor: Ban this from Plasma sessions](https://dev.getsol.us/source/qtstyleplugins/browse/master/;1e5556e)
 - [Peter O'Connor: Rebuild agaist Qt5 stack](https://dev.getsol.us/source/qtstyleplugins/browse/master/;588928e)


**lz4**

 - [Pierre-Yves: Update lz4 to 1.8.1.2](https://dev.getsol.us/source/lz4/browse/master/;c5907c4)
 - [Ikey Doherty: Provide .a files for mariadb](https://dev.getsol.us/source/lz4/browse/master/;6a57601)
 - [Pierre-Yves: Update lz4 to 1.8.0](https://dev.getsol.us/source/lz4/browse/master/;204e1bc)


**libwps**

 - [Pierre-Yves: Update libwps to 0.4.10](https://dev.getsol.us/source/libwps/browse/master/;ed160ca)
 - [Pierre-Yves: Update libwps to 0.4.8](https://dev.getsol.us/source/libwps/browse/master/;afe6e2e)


**gnome-bluetooth**

 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-bluetooth/browse/master/;6b61855)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-bluetooth/browse/master/;b85b91a)
 - [Ikey Doherty: Add missing runtime dependencies](https://dev.getsol.us/source/gnome-bluetooth/browse/master/;5af7f04)
 - [Joshua Strobl: Update to 3.28.0](https://dev.getsol.us/source/gnome-bluetooth/browse/master/;51ecff7)
 - [Bryan T. Meyers: Update to 3.26.1](https://dev.getsol.us/source/gnome-bluetooth/browse/master/;3afc60f)


**libxdmcp**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxdmcp/browse/master/;27ac549)
 - [Ikey Doherty: Rebuild for new toolchain and flags](https://dev.getsol.us/source/libxdmcp/browse/master/;26ab889)


**xorg-driver-video-amdgpu**

 - [Bryan T. Meyers: Update to 18.0.1](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;a65c8d2)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;5f1a6d3)
 - [Ikey Doherty: Rebuild for X.Org 1.18.4 restoration](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;0604f00)
 - [Ikey Doherty: Rebuild for X.Org 1.19.4 testing](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;ed76ed3)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;5277025)
 - [Ikey Doherty: Rebuild for Xorg validation](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;aee78c9)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;d1fa0b6)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;7b96816)
 - [Ikey Doherty: Update to 1.4.0 and rebuild against new X 1.19.3](https://dev.getsol.us/source/xorg-driver-video-amdgpu/browse/master/;eb34a43)


**gstreamer-1.0**

 - [Pierre-Yves: Update gstreamer-1.0 to 1.14.2](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;cff7c6a)
 - [Joshua Strobl: Update to 1.14.1. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.14/#1.14.1).](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;89478ad)
 - [Joshua Strobl: Upgrade to 1.14.0. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.14/).](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;2c202b5)
 - [Joey Riches: Update gstreamer-1.0 to 1.12.4](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;a7eb0bd)
 - [Bryan T. Meyers: Make tests -j1 for builder](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;e92c459)
 - [Pierre-Yves: Update to gstreamer-1.0 to 1.12.3](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;a4fa83a)


**gnome-calendar**

 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-calendar/browse/master/;d6d36fe)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-calendar/browse/master/;24f6ef7)
 - [Pierre-Yves: Rebuild for libical 3.0.3](https://dev.getsol.us/source/gnome-calendar/browse/master/;d8cc478)
 - [Joshua Strobl: Update to 3.26.3](https://dev.getsol.us/source/gnome-calendar/browse/master/;63febaa)
 - [Joshua Strobl: Add patch for changing ownCloud to accurate GOA type: Nextcloud.](https://dev.getsol.us/source/gnome-calendar/browse/master/;13af9a2)
 - [Bryan T. Meyers: Update to 3.26.2](https://dev.getsol.us/source/gnome-calendar/browse/master/;7a79b8f)


**atkmm**

 - [Joshua Strobl: Update to GNOME source, cleanup package. Updated license.](https://dev.getsol.us/source/atkmm/browse/master/;0434c58)
 - [Bryan T. Meyers: Rebuild for gnome stack update](https://dev.getsol.us/source/atkmm/browse/master/;a4b75b7)


**gdk-pixbuf**

 - [Joshua Strobl: Update to 2.38.0](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;7e6a6f1)
 - [Ikey Doherty: Rebuild for librsvg](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;0786be9)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;6ca510c)
 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;d5c52ff)
 - [Joshua Strobl: Update to 2.36.12](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;a9abcb3)
 - [Peter O'Connor: Address multiple CVEs:](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;a853678)
 - [Joshua Strobl: Update to 2.36.11](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;5a14ff7)
 - [Ikey Doherty: Update gdk-pixbuf to 2.36.9](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;e7d3693)


**openvpn**

 - [Philipp Trulson: Update openvpn to 2.4.6](https://dev.getsol.us/source/openvpn/browse/master/;9c10031)
 - [Philipp Trulson: Update openvpn to 2.4.5](https://dev.getsol.us/source/openvpn/browse/master/;d832f8f)
 - [Pierre-Yves: Update openvpn to 2.4.4 to address CVE-2017-12166](https://dev.getsol.us/source/openvpn/browse/master/;919695a)


**solus-sc**

 - [Ikey Doherty: Remove hard snapd dependency, fix string issue when installing](https://dev.getsol.us/source/solus-sc/browse/master/;940e037)
 - [Peter O'Connor: Enable autostart of updates for Plasma ISO](https://dev.getsol.us/source/solus-sc/browse/master/;3226f0d)
 - [Ikey Doherty: Add gfvs dependency to work under Plasma](https://dev.getsol.us/source/solus-sc/browse/master/;3ac2f4b)
 - [Peter O'Connor: Add at-spi2-atk as rundep, which isn't part of the Plasma desktop](https://dev.getsol.us/source/solus-sc/browse/master/;f345ced)
 - [Ikey Doherty: Snaps for everybody!](https://dev.getsol.us/source/solus-sc/browse/master/;183f2e3)


**baselayout**

 - [Joshua Strobl: Update URLs in os-release to point to getsol.us](https://dev.getsol.us/source/baselayout/browse/master/;8a1c84e)
 - [Ikey Doherty: Set release to 3.9999](https://dev.getsol.us/source/baselayout/browse/master/;8061296)
 - [Ikey Doherty: Grin](https://dev.getsol.us/source/baselayout/browse/master/;d6d94d9)
 - [Ikey Doherty: It's rolling, not dead](https://dev.getsol.us/source/baselayout/browse/master/;8a85ea2)
 - [Ikey Doherty: I lied](https://dev.getsol.us/source/baselayout/browse/master/;040c2c3)
 - [Ikey Doherty: Last troll. :P](https://dev.getsol.us/source/baselayout/browse/master/;08416ed)
 - [Ikey Doherty: Add explicit ownership of /media directory](https://dev.getsol.us/source/baselayout/browse/master/;229bb56)
 - [Ikey Doherty: Bump](https://dev.getsol.us/source/baselayout/browse/master/;7075c3f)
 - [Ikey Doherty: Bump for consistency](https://dev.getsol.us/source/baselayout/browse/master/;1acc41e)
 - [Ikey Doherty: Fix long lookups when using resolve module (it takes forever.)](https://dev.getsol.us/source/baselayout/browse/master/;0ace61f)
 - [Ikey Doherty: Add proper nsswitch.conf to resolve local networking](https://dev.getsol.us/source/baselayout/browse/master/;2b6be24)


**python**

 - [Ikey Doherty: Update Python to 2.7.15](https://dev.getsol.us/source/python/browse/master/;3cc2609)
 - [Ikey Doherty: Rebuild for gdbm module integration](https://dev.getsol.us/source/python/browse/master/;4e1766b)
 - [Ikey Doherty: Rebuild with non janky toolchain](https://dev.getsol.us/source/python/browse/master/;39a3e2a)
 - [Ikey Doherty: Update Python2 to 2.7.14](https://dev.getsol.us/source/python/browse/master/;0f058fe)


**xvidcore**

 - [Pierre-Yves: Update xvidcore to 1.3.5](https://dev.getsol.us/source/xvidcore/browse/master/;e45abe7)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/xvidcore/browse/master/;57d718b)


**libwacom**

 - [Joey Riches: Update to 0.31](https://dev.getsol.us/source/libwacom/browse/master/;210c55f)
 - [Tim Klocke: Update to 0.30, fixes T6520](https://dev.getsol.us/source/libwacom/browse/master/;445cac3)
 - [Joey Riches: Update libwacom to 0.29](https://dev.getsol.us/source/libwacom/browse/master/;d5a2909)
 - [Ikey Doherty: Update libwacom to 0.27](https://dev.getsol.us/source/libwacom/browse/master/;9bc248d)
 - [Ikey Doherty: Update libwacom to 0.26 as part of X.Org Stack Update](https://dev.getsol.us/source/libwacom/browse/master/;6ebf06b)


**libbluray**

 - [Pierre-Yves: Update libbluray to 1.0.2](https://dev.getsol.us/source/libbluray/browse/master/;9e8b09b)


**pango**

 - [Joshua Strobl: Update to 1.42.4](https://dev.getsol.us/source/pango/browse/master/;6d0e1f5)
 - [Joshua Strobl: Update to 1.42.3](https://dev.getsol.us/source/pango/browse/master/;20595f9)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/pango/browse/master/;69509b8)
 - [Joshua Strobl: Update to 1.42.2](https://dev.getsol.us/source/pango/browse/master/;f78e676)
 - [Joey Riches: Rebuild against freetype2](https://dev.getsol.us/source/pango/browse/master/;cf68914)
 - [Joey Riches: Safety rebuild against font rendering stack](https://dev.getsol.us/source/pango/browse/master/;07a8874)
 - [Joshua Strobl: Drop rundeps now that 32bit might be sorted.](https://dev.getsol.us/source/pango/browse/master/;1b4067e)
 - [Joshua Strobl: Add fontconfig and freetype2 rundeps.](https://dev.getsol.us/source/pango/browse/master/;e5a4950)
 - [Joshua Strobl: Manually rundep fribidi 32bits.](https://dev.getsol.us/source/pango/browse/master/;10b844b)
 - [Joshua Strobl: Update to latest release in 1.42 stable series.](https://dev.getsol.us/source/pango/browse/master/;e539eea)
 - [Joey Riches: Safety rebuild against harfbuzz & enable tests](https://dev.getsol.us/source/pango/browse/master/;3a6aa10)
 - [Joshua Strobl: Update to 1.40.14, introduces char break fix so we no longer need to carry that patch.](https://dev.getsol.us/source/pango/browse/master/;2c8cc85)
 - [Joshua Strobl: Add pango patch to fix line breaks in Nautilus.](https://dev.getsol.us/source/pango/browse/master/;aecc96d)
 - [Joshua Strobl: Update to 1.40.13](https://dev.getsol.us/source/pango/browse/master/;0439d03)
 - [Joshua Strobl: Update to 1.14.12](https://dev.getsol.us/source/pango/browse/master/;814dc9e)
 - [Joshua Strobl: Initial rebuild. May do update.](https://dev.getsol.us/source/pango/browse/master/;6b44653)


**reiserfsprogs**

 - [Philipp Trulson: Update reiserfsprogs to 3.6.27](https://dev.getsol.us/source/reiserfsprogs/browse/master/;d5b1652)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/reiserfsprogs/browse/master/;55c9a1b)


**gvfs**

 - [Joshua Strobl: Safety rebuild against samba 4.7.8](https://dev.getsol.us/source/gvfs/browse/master/;7a5ffe2)
 - [Joshua Strobl: Update to 1.36.2](https://dev.getsol.us/source/gvfs/browse/master/;dc3b549)
 - [Joshua Strobl: Update to 1.36.1](https://dev.getsol.us/source/gvfs/browse/master/;b1aee22)
 - [Joshua Strobl: Update to 1.34.2.1](https://dev.getsol.us/source/gvfs/browse/master/;b4e5667)
 - [Joshua Strobl: Update to 1.34.2. Doesn't introduce any changes that Solus users didn't already have from our switch to git. Primarily trash, mtp, and gphoto2 fixes.](https://dev.getsol.us/source/gvfs/browse/master/;4214733)
 - [Pierre-Yves: Rebuild against libcdio 2.0.0](https://dev.getsol.us/source/gvfs/browse/master/;95918c3)
 - [Joshua Strobl: Added a multitude of patches for:](https://dev.getsol.us/source/gvfs/browse/master/;3cdb231)
 - [Benjamin Daines: Add support for NFS via gvfs](https://dev.getsol.us/source/gvfs/browse/master/;a4abf2e)
 - [Joshua Strobl: Rebuild against Samba 4.6.10](https://dev.getsol.us/source/gvfs/browse/master/;7016a93)
 - [Joshua Strobl: Precautionary rebuild against Samba 4.7.2.](https://dev.getsol.us/source/gvfs/browse/master/;5711848)
 - [Pierre-Yves: Rebuild for libcdio 0.94](https://dev.getsol.us/source/gvfs/browse/master/;281175f)
 - [Ikey Doherty: Add keyrules for new polkit backend per T4842](https://dev.getsol.us/source/gvfs/browse/master/;7689241)
 - [Ikey Doherty: Rebuild udisks2 against new Samba/systemd/gudev](https://dev.getsol.us/source/gvfs/browse/master/;ca2a39e)
 - [Bryan T. Meyers: Update to 1.34.1](https://dev.getsol.us/source/gvfs/browse/master/;a8c4902)


**ca-certs**

 - [Ikey Doherty: Update ca-certificates to 20180516](https://dev.getsol.us/source/ca-certs/browse/master/;f0c9717)
 - [Ikey Doherty: Update system certificates to 20180422](https://dev.getsol.us/source/ca-certs/browse/master/;9be89b0)
 - [Ikey Doherty: Update system certificates to 20180326](https://dev.getsol.us/source/ca-certs/browse/master/;1621112)
 - [Ikey Doherty: Update system certificates to 20180110](https://dev.getsol.us/source/ca-certs/browse/master/;5602d10)
 - [Ikey Doherty: Update ca-certs to 20171221](https://dev.getsol.us/source/ca-certs/browse/master/;cafc234)
 - [Ikey Doherty: Update system certificates to 20171129](https://dev.getsol.us/source/ca-certs/browse/master/;d2925e3)
 - [Ikey Doherty: Update system certificates to 20171115](https://dev.getsol.us/source/ca-certs/browse/master/;3913566)
 - [Ikey Doherty: Update system certificates to version 20171112](https://dev.getsol.us/source/ca-certs/browse/master/;20d8fef)
 - [Ikey Doherty: Update system certificates to version 20171106](https://dev.getsol.us/source/ca-certs/browse/master/;9d9010a)
 - [Ikey Doherty: Update ca-certs to 20170928 for a routine security update](https://dev.getsol.us/source/ca-certs/browse/master/;6ad94b2)


**font-hack-ttf**

 - [Bryan T. Meyers:  Updated to 3.003](https://dev.getsol.us/source/font-hack-ttf/browse/master/;936af44)
 - [Pierre-Yves: Update font-hack-ttf to 3.000](https://dev.getsol.us/source/font-hack-ttf/browse/master/;1cdba30)


**dhclient**

 - [Peter O'Connor: Help dhclient find dhclient-script by giving it the right path](https://dev.getsol.us/source/dhclient/browse/master/;2b784c8)
 - [Peter O'Connor: Update to 4.4.1 to resolve CVE-2018-5732](https://dev.getsol.us/source/dhclient/browse/master/;c2e85f5)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/dhclient/browse/master/;fa2231d)


**system-config-printer**

 - [Ikey Doherty: Absorb some ISO dependencies](https://dev.getsol.us/source/system-config-printer/browse/master/;10fba59)
 - [Joshua Strobl: Update to 1.5.11. Primarily bug fixes and removal of deprecated parts of code (abandoning libgnome-keyring and now using libsecret).](https://dev.getsol.us/source/system-config-printer/browse/master/;515dc85)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/system-config-printer/browse/master/;d818f55)
 - [Ikey Doherty: Add missing rundep on libgnome-keyring](https://dev.getsol.us/source/system-config-printer/browse/master/;8fde541)
 - [Ikey Doherty: Fix broken bindir in build](https://dev.getsol.us/source/system-config-printer/browse/master/;d9fae5f)
 - [Ikey Doherty: Update system-config-printer to 1.5.9](https://dev.getsol.us/source/system-config-printer/browse/master/;275912a)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/system-config-printer/browse/master/;8c9a4e7)
 - [Pierre-Yves: add python-pysmbc as rundep](https://dev.getsol.us/source/system-config-printer/browse/master/;125c270)


**dbus**

 - [Joshua Strobl: Move dbus-devel back to system.devel. Determined to be a recommended package to include for an updated solbuild image.](https://dev.getsol.us/source/dbus/browse/master/;32bfb44)
 - [Peter O'Connor: Use upstream sysusers and tmpfiles](https://dev.getsol.us/source/dbus/browse/master/;378c77c)
 - [Joey Riches: Update to 1.12.8](https://dev.getsol.us/source/dbus/browse/master/;e8059ce)
 - [Ikey Doherty: Shrink d-bus by about 30%](https://dev.getsol.us/source/dbus/browse/master/;4914227)
 - [Ikey Doherty: Really fix dbus spam](https://dev.getsol.us/source/dbus/browse/master/;97291f2)
 - [Ikey Doherty: Teach d-bus to shut up when told to](https://dev.getsol.us/source/dbus/browse/master/;61a80e8)
 - [Ikey Doherty: Update dbus to 1.10.24](https://dev.getsol.us/source/dbus/browse/master/;0a29d65)


**libmpeg2**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/libmpeg2/browse/master/;50172bb)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libmpeg2/browse/master/;6bf77c4)


**pangomm**

 - [Joshua Strobl: Safety rebuild. Updated sources to point to GNOME.](https://dev.getsol.us/source/pangomm/browse/master/;72fe0ce)
 - [Joshua Strobl: Safety rebuild of pangomm](https://dev.getsol.us/source/pangomm/browse/master/;3bc6552)


**libsm**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libsm/browse/master/;054fb99)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libsm/browse/master/;5f4e86a)


**bluez**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/bluez/browse/master/;82eedc9)
 - [Ikey Doherty: Extremely evil hack for T5524](https://dev.getsol.us/source/bluez/browse/master/;9072967)
 - [Ikey Doherty: Patch bluez to fix bluetooth invalidation after suspend/resume cycle](https://dev.getsol.us/source/bluez/browse/master/;72872e9)
 - [Pierre-Yves: Rebuild for libical 3.0.3](https://dev.getsol.us/source/bluez/browse/master/;5beb22e)
 - [Ikey Doherty: Roll back bluez because Ikey says "I en't happeh"](https://dev.getsol.us/source/bluez/browse/master/;b9f0e70)
 - [Pierre-Yves: Update bluez to 5.49](https://dev.getsol.us/source/bluez/browse/master/;9724ca1)
 - [Pierre-Yves: Update bluez to 5.48](https://dev.getsol.us/source/bluez/browse/master/;175621c)
 - [Ikey Doherty: Automatically enable dbus activation of obex (T4178)](https://dev.getsol.us/source/bluez/browse/master/;755f030)
 - [Pierre-Yves: Update bluez to 5.47](https://dev.getsol.us/source/bluez/browse/master/;23467ef)
 - [Peter O'Connor: Switch to upstream patch](https://dev.getsol.us/source/bluez/browse/master/;427e00a)
 - [Pierre-Yves: Update bluez to 5.46 and address CVE-2017-1000250](https://dev.getsol.us/source/bluez/browse/master/;5f5d002)


**xorg-driver-video-fbdev**

 - [Bryan T. Meyers: Updated to 0.5.0](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;2c6142c)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;ccfe87e)
 - [Ikey Doherty: Rebuild for X.Org 1.18.4 restoration](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;9ce2867)
 - [Ikey Doherty: Rebuild for X.Org 1.19.4 testing](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;8deeaf4)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;6e9f41e)
 - [Ikey Doherty: Rebuild for Xorg validation](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;dbd2df6)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;1514e30)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;5587e1b)
 - [Ikey Doherty: Rebuild for new X.Org](https://dev.getsol.us/source/xorg-driver-video-fbdev/browse/master/;50b0a4e)


**libgeocode-glib**

 - [Pierre-Yves: Update libgeocode-glib to 3.26.0](https://dev.getsol.us/source/libgeocode-glib/browse/master/;45c5d81)
 - [Joshua Strobl: Safety rebuild against json-glib.](https://dev.getsol.us/source/libgeocode-glib/browse/master/;4ac2cc6)
 - [Joshua Strobl: Update to 3.24.0](https://dev.getsol.us/source/libgeocode-glib/browse/master/;d0966ad)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libgeocode-glib/browse/master/;dd9611c)


**poppler**

 - [Peter O'Connor: Address CVE-2018-13988](https://dev.getsol.us/source/poppler/browse/master/;8c73358)
 - [Peter O'Connor: Address CVE-2017-18267](https://dev.getsol.us/source/poppler/browse/master/;aab196a)
 - [Ikey Doherty: Require poppler-data at runtime for full encoding support](https://dev.getsol.us/source/poppler/browse/master/;f0b5502)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/poppler/browse/master/;9cbeb65)
 - [Peter O'Connor: Commit patches for build](https://dev.getsol.us/source/poppler/browse/master/;4b2bb1e)
 - [Peter O'Connor: Address CVE-2017-1000456](https://dev.getsol.us/source/poppler/browse/master/;9ac874d)
 - [Peter O'Connor: Make poppler-devel pull in *all* of poppler](https://dev.getsol.us/source/poppler/browse/master/;a43812c)
 - [Pierre-Yves: Update poppler to 0.60.1](https://dev.getsol.us/source/poppler/browse/master/;3bdfe52)
 - [Peter O'Connor: Force qt5-devel to qt5 rundep due to failing .so link](https://dev.getsol.us/source/poppler/browse/master/;791b647)
 - [Peter O'Connor: Enable ancient headers for special programs](https://dev.getsol.us/source/poppler/browse/master/;1a3deab)
 - [Pierre-Yves: Update poppler to 0.60 to address following CVEs:](https://dev.getsol.us/source/poppler/browse/master/;061f2d6)


**gnome-mpv**

 - [Ikey Doherty: Enable hardware decoding by default on advice from @TingPing :)](https://dev.getsol.us/source/gnome-mpv/browse/master/;0c4d31c)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/gnome-mpv/browse/master/;53ed5c2)
 - [Joey Riches: Update gnome-mpv to 0.14](https://dev.getsol.us/source/gnome-mpv/browse/master/;2ab0cb3)
 - [Pierre-Yves: Safety rebuild for mpv](https://dev.getsol.us/source/gnome-mpv/browse/master/;5170a23)
 - [Ikey Doherty: Rebuild for new ffmpeg](https://dev.getsol.us/source/gnome-mpv/browse/master/;c1e35a0)
 - [Justin Zobel: Update to 0.13](https://dev.getsol.us/source/gnome-mpv/browse/master/;f6b9e08)
 - [Bryan T. Meyers: Switch to meson, rebuild for gnome 3.26](https://dev.getsol.us/source/gnome-mpv/browse/master/;f9c68db)


**gnome-screenshot**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/gnome-screenshot/browse/master/;ac6f858)
 - [Joshua Strobl: Update to 3.26.0](https://dev.getsol.us/source/gnome-screenshot/browse/master/;72aa765)
 - [Joshua Strobl: Update to 3.25.0 (appears to be latest stable in this specific case). Use meson.](https://dev.getsol.us/source/gnome-screenshot/browse/master/;76a30d6)


**sharutils**

 - [Peter O'Connor: Address CVE-2018-1000097](https://dev.getsol.us/source/sharutils/browse/master/;af3a347)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/sharutils/browse/master/;8fdbc8c)


**gutenprint**

 - [Pierre-Yves: Rebuild gutenprint for cups 2.2.8](https://dev.getsol.us/source/gutenprint/browse/master/;bf6f941)


**openal-soft**

 - [Pierre-Yves: Update openal to 1.18.2](https://dev.getsol.us/source/openal-soft/browse/master/;05ba14a)


**bash**

 - [Ikey Doherty: Complete bootstrap with new gcc, glibc, binutils, musl](https://dev.getsol.us/source/bash/browse/master/;e001cce)
 - [Peter O'Connor: Rebuild for updated glibc](https://dev.getsol.us/source/bash/browse/master/;ce52175)
 - [Ikey Doherty: Disable bash use of `dlopen()` for security (Borrow from CLR)](https://dev.getsol.us/source/bash/browse/master/;c4bc599)
 - [Ikey Doherty: Update bash to 4.4.019](https://dev.getsol.us/source/bash/browse/master/;94a9c06)
 - [Ikey Doherty: Update bash to 4.4.018](https://dev.getsol.us/source/bash/browse/master/;a904c5d)
 - [Ikey Doherty: Ensure system wide locale is exported for login](https://dev.getsol.us/source/bash/browse/master/;bd9e673)
 - [Ikey Doherty: Ensure ALL profile files are available.](https://dev.getsol.us/source/bash/browse/master/;40edd6c)
 - [Ikey Doherty: Shush.](https://dev.getsol.us/source/bash/browse/master/;b946a75)
 - [Ikey Doherty: Enable new `bash-recovery` subpackage](https://dev.getsol.us/source/bash/browse/master/;a8fc4e3)
 - [Ikey Doherty: Recompile against static libc](https://dev.getsol.us/source/bash/browse/master/;ba3245a)
 - [Ikey Doherty: Slightly improve bash size and startup time with LTO](https://dev.getsol.us/source/bash/browse/master/;c7b0883)
 - [Ikey Doherty: Update bash to 4.4.012, move to static build](https://dev.getsol.us/source/bash/browse/master/;e0fb976)
 - [Ikey Doherty: Apparently - dependencies help! Who knew??](https://dev.getsol.us/source/bash/browse/master/;fdd4022)
 - [Ikey Doherty: Remove all compiler flags overrides from the environment](https://dev.getsol.us/source/bash/browse/master/;b4e1f14)


**libedit**

 - [Joey Riches: Update to 20180525-3.1 & add missing component](https://dev.getsol.us/source/libedit/browse/master/;b4593d2)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libedit/browse/master/;aee6a3c)


**sdl2**

 - [Peter O'Connor: Backport patch for gamepad detection](https://dev.getsol.us/source/sdl2/browse/master/;9eaeb4e)
 - [Pierre-Yves: Update sdl2 to 2.0.8](https://dev.getsol.us/source/sdl2/browse/master/;cb64db1)
 - [Pierre-Yves: Rebuild for sndio 1.4.0](https://dev.getsol.us/source/sdl2/browse/master/;ff2fe63)
 - [Ikey Doherty: Update SDL to 2.0.7](https://dev.getsol.us/source/sdl2/browse/master/;4dcc988)
 - [Ikey Doherty: Enable sndio, xinput2, libsamplerate](https://dev.getsol.us/source/sdl2/browse/master/;e1f2db1)
 - [Pierre-Yves: Update sdl2 to 2.0.6](https://dev.getsol.us/source/sdl2/browse/master/;4800764)
 - [Pierre-Yves: Backport patch to fix AZERTY keyboard mapping](https://dev.getsol.us/source/sdl2/browse/master/;9009428)


**seahorse**

 - [Joshua Strobl: Update to git for a multitude of fixes and Meson support (prevents ABI removals for atk and soup).](https://dev.getsol.us/source/seahorse/browse/master/;d7fb7bc)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/seahorse/browse/master/;f5445f9)


**openssh**

 - [Peter O'Connor: Address CVE-2018-15473](https://dev.getsol.us/source/openssh/browse/master/;b8e9364)
 - [Pierre-Yves: Update openssh to 7.7p1](https://dev.getsol.us/source/openssh/browse/master/;e0499c0)
 - [Silke Hofstra: openssh: Enable Kerberos and OpenSSL (hardware) ENGINE support](https://dev.getsol.us/source/openssh/browse/master/;53ca4be)
 - [Ikey Doherty: Fix ownership of sshd directories](https://dev.getsol.us/source/openssh/browse/master/;3681210)
 - [Ikey Doherty: Convert openssh to ypkg (T5010)](https://dev.getsol.us/source/openssh/browse/master/;3c5a52b)
 - [Pierre-Yves: Update openssh to 7.6_p1](https://dev.getsol.us/source/openssh/browse/master/;df5c8e0)


**openssl**

 - [Joshua Strobl: Update to 1.0.2p](https://dev.getsol.us/source/openssl/browse/master/;a54cda7)
 - [Pierre-Yves: Update openssl to 1.0.2o to address CVE-2018-0739](https://dev.getsol.us/source/openssl/browse/master/;fa5ab95)
 - [Pierre-Yves: Update openssl to 1.0.2n to address vulnerabilities](https://dev.getsol.us/source/openssl/browse/master/;17feda3)
 - [Pierre-Yves: Update openssl to 1.0.2m](https://dev.getsol.us/source/openssl/browse/master/;2998b3a)


**pyatspi2**

 - [Pierre-Yves: Update to 2.26.0 and rebuild for python 3.6](https://dev.getsol.us/source/pyatspi2/browse/master/;06005d6)


**python3-cairo**

 - [Peter O'Connor: Rebuild for ldflags](https://dev.getsol.us/source/python3-cairo/browse/master/;3be837c)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/python3-cairo/browse/master/;89978df)
 - [Joshua Strobl: Update to 1.14.1. Changelog available [here](https://pycairo.readthedocs.io/en/latest/changelog.html#v1-14-1).](https://dev.getsol.us/source/python3-cairo/browse/master/;959c4b3)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/python3-cairo/browse/master/;1962d90)


**accountsservice**

 - [Ikey Doherty: Update AccountsService to 0.6.45](https://dev.getsol.us/source/accountsservice/browse/master/;cdbb130)


**libfreehand**

 - [Pierre-Yves: Update libfreehand to 0.1.2](https://dev.getsol.us/source/libfreehand/browse/master/;9530a0c)


**isl**

 - [Peter O'Connor: Update to 0.20](https://dev.getsol.us/source/isl/browse/master/;f0f69c2)


**linux-driver-management**

 - [Ikey Doherty: Update Linux Driver Management to 1.0.3](https://dev.getsol.us/source/linux-driver-management/browse/master/;f6b4862)
 - [Ikey Doherty: Sync linux-driver-management with git](https://dev.getsol.us/source/linux-driver-management/browse/master/;8866720)
 - [Ikey Doherty: Update to Linux Driver Management 1.0.2](https://dev.getsol.us/source/linux-driver-management/browse/master/;8bb72e3)
 - [Ikey Doherty: Update linux-driver-management to 1.0.1](https://dev.getsol.us/source/linux-driver-management/browse/master/;1128dbf)
 - [Ikey Doherty: Fix weird UI printing of providers](https://dev.getsol.us/source/linux-driver-management/browse/master/;d5d725b)
 - [Ikey Doherty: Fix double unref inside Pythonic API bindings](https://dev.getsol.us/source/linux-driver-management/browse/master/;e0b9102)
 - [Ikey Doherty: Update Linux Driver Management to v1.0.0](https://dev.getsol.us/source/linux-driver-management/browse/master/;b8a55dd)
 - [Ikey Doherty: Resync with git to fix invalid fallback ID](https://dev.getsol.us/source/linux-driver-management/browse/master/;c4b865e)
 - [Ikey Doherty: Sync LDM with git to fix various status output issues](https://dev.getsol.us/source/linux-driver-management/browse/master/;f9f2f65)
 - [Ikey Doherty: Sync with git to fix invalid label on dGPU](https://dev.getsol.us/source/linux-driver-management/browse/master/;4f04aed)
 - [Ikey Doherty: Sync LDM with git and enable SDDM integration (T4901)](https://dev.getsol.us/source/linux-driver-management/browse/master/;ceea72b)
 - [Ikey Doherty: Sync unstable git snapshot of LDM (per T4901)](https://dev.getsol.us/source/linux-driver-management/browse/master/;cf8a278)
 - [Ikey Doherty: Update linux-driver-management to v0.1.0](https://dev.getsol.us/source/linux-driver-management/browse/master/;6556cf7)


**cryptsetup**

 - [Ikey Doherty: Drop 20k in weight](https://dev.getsol.us/source/cryptsetup/browse/master/;0a79975)


**lvm2**

 - [Ikey Doherty: Update LVM2 to 2.02.177 and correct the borked version field](https://dev.getsol.us/source/lvm2/browse/master/;f788574)
 - [Ikey Doherty: Shrink LVM libs from 2MB to 1.7MB to help with initrd](https://dev.getsol.us/source/lvm2/browse/master/;26e7f8d)
 - [Ikey Doherty: Update LVM to 2.02.176](https://dev.getsol.us/source/lvm2/browse/master/;5f834b9)


**harfbuzz**

 - [Joey Riches: Rebuild against freetype2](https://dev.getsol.us/source/harfbuzz/browse/master/;ca657fd)
 - [Joey Riches: Downgrade harfbuzz to 1.7.5](https://dev.getsol.us/source/harfbuzz/browse/master/;a410ab1)
 - [Joey Riches: Update harfbuzz to 1.8.2](https://dev.getsol.us/source/harfbuzz/browse/master/;2222ee2)
 - [Joey Riches: Update harfbuzz to 1.8.1](https://dev.getsol.us/source/harfbuzz/browse/master/;adb36f9)
 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/harfbuzz/browse/master/;82aaa2d)
 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/harfbuzz/browse/master/;ad0cb92)
 - [Joshua Strobl: Safety rebuild against glib2.](https://dev.getsol.us/source/harfbuzz/browse/master/;537255f)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/harfbuzz/browse/master/;c003ed0)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/harfbuzz/browse/master/;9b51538)
 - [Joey Riches: Fix summary and description for harfbuzz](https://dev.getsol.us/source/harfbuzz/browse/master/;e3618aa)
 - [Joey Riches: Don't fail if tests don't pass](https://dev.getsol.us/source/harfbuzz/browse/master/;57ed17a)
 - [Pierre-Yves: Update harfbuzz to 1.7.5](https://dev.getsol.us/source/harfbuzz/browse/master/;281faae)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/harfbuzz/browse/master/;c8e9759)
 - [Pierre-Yves: Update harfbuzz to 1.5.1](https://dev.getsol.us/source/harfbuzz/browse/master/;6930d7b)


**xz**

 - [Ikey Doherty: Update xz to 5.2.4](https://dev.getsol.us/source/xz/browse/master/;44a24e6)
 - [Ikey Doherty: Remove minimum memory assumption for low-memory systems (like mine and the mywhat.)](https://dev.getsol.us/source/xz/browse/master/;1d04675)
 - [Ikey Doherty: Drop buggy patch from Clear Linux for XZ multithreading](https://dev.getsol.us/source/xz/browse/master/;32a9631)
 - [Ikey Doherty: Rebuild for updated toolchain and flags](https://dev.getsol.us/source/xz/browse/master/;2352796)
 - [Ikey Doherty: Enable static libzma because Rust could actually need it](https://dev.getsol.us/source/xz/browse/master/;c51964c)


**gnome-autoar**

 - [Joshua Strobl: Upgrade to 0.2.3](https://dev.getsol.us/source/gnome-autoar/browse/master/;63651d4)
 - [Joshua Strobl: Rebuild against gtk 3.22.24](https://dev.getsol.us/source/gnome-autoar/browse/master/;c1d61a0)


**libjson-glib**

 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/libjson-glib/browse/master/;9304904)
 - [Joshua Strobl: Safety rebuild and cleanup package. Updated to changed ninja actionable macros.](https://dev.getsol.us/source/libjson-glib/browse/master/;ad1792c)
 - [Bryan T. Meyers: Updated to 1.4.2](https://dev.getsol.us/source/libjson-glib/browse/master/;106d2c8)


**python-parted**

 - [Peter O'Connor: Rebuild for ldflags](https://dev.getsol.us/source/python-parted/browse/master/;3f6f02a)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/python-parted/browse/master/;d49f88a)
 - [Peter O'Connor: Update to 3.10.7 and convert to ypkg](https://dev.getsol.us/source/python-parted/browse/master/;cfb868b)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/python-parted/browse/master/;bd3f305)


**cups**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/cups/browse/master/;0c2318d)
 - [Pierre-Yves: Update cups to 2.2.8](https://dev.getsol.us/source/cups/browse/master/;d8e3a50)
 - [Ikey Doherty: We'll now declare the `lp` group in systemd package](https://dev.getsol.us/source/cups/browse/master/;196a552)
 - [Ikey Doherty: Fix typo so that dirs really get nuked](https://dev.getsol.us/source/cups/browse/master/;359d674)
 - [Pierre-Yves: Update cups to 2.2.6 + convert to ypkg](https://dev.getsol.us/source/cups/browse/master/;b33e965)


**librest**

 - [Joshua Strobl: Update to 0.8.1.](https://dev.getsol.us/source/librest/browse/master/;efceb62)


**docbook-xml**

 - [Pierre-Yves: Restore the URI rewrites for sourceforge](https://dev.getsol.us/source/docbook-xml/browse/master/;1006d3b)
 - [Pierre-Yves: Update docbook stylesheets to 1.79.2](https://dev.getsol.us/source/docbook-xml/browse/master/;af178d0)


**libva**

 - [Peter O'Connor: Rebuild to disable rpath](https://dev.getsol.us/source/libva/browse/master/;bcbe84c)
 - [Joey Riches: Update libva to 2.1.0](https://dev.getsol.us/source/libva/browse/master/;5113e2f)
 - [Joey Riches: Update libva to 2.0.0 (VAAPI 1.0.0)](https://dev.getsol.us/source/libva/browse/master/;6e753c3)


**xdg-user-dirs**

 - [Peter O'Connor: Update to 0.17 to resolve CVE-2017-15131](https://dev.getsol.us/source/xdg-user-dirs/browse/master/;d2fcbe5)
 - [Ikey Doherty: Convert to systemd unit to help out Plasma ISO](https://dev.getsol.us/source/xdg-user-dirs/browse/master/;d237727)


**libxpm**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxpm/browse/master/;e91177e)


**libpcre**

 - [Ikey Doherty: Rebuild for initrd](https://dev.getsol.us/source/libpcre/browse/master/;1527b65)
 - [Joey Riches: Update libpcre to 8.42](https://dev.getsol.us/source/libpcre/browse/master/;5703765)
 - [Ikey Doherty: Fix break with mariadb](https://dev.getsol.us/source/libpcre/browse/master/;8ca3ba1)


**libkate**

 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/libkate/browse/master/;e06e792)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libkate/browse/master/;dde85a9)


**libxinerama**

 - [Bryan T. Meyers: Updated to 1.1.4](https://dev.getsol.us/source/libxinerama/browse/master/;ac46ea2)
 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxinerama/browse/master/;f50f1ca)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxinerama/browse/master/;93a9dcf)


**nvidia-glx-driver**

 - [Bryan T. Meyers: Updated to 390.87](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;aaac803)
 - [Bryan T. Meyers: Rebuild for kernel](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;ce34a3b)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;50748cb)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;44fcc04)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;3d6a34e)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;1c8045e)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;b996ef0)
 - [Bryan T. Meyers: Update to 390.77, resolved T6684](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;68c9fa7)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;1d7083c)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;c3c312f)
 - [Bryan T. Meyers: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;afe84c0)
 - [Bryan T. Meyers: Updated to 390.67](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;c122fa0)
 - [Bryan T. Meyers: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;9b2131f)
 - [Bryan T. Meyers: Rebuild for linux-current 4.17.2](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;bcdba27)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;4de7c15)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;66cee6a)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;1c9846c)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;c05ddd4)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;a8cfd67)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;683290d)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;0e05690)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;d49130c)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;5d5693b)
 - [Ikey Doherty: Update nvidia-glx-driver to 390.59](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;ba31876)
 - [Ikey Doherty: Downgrade (temporarily) to 390.46 shortbranch](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;6b4eed7)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;e1a5963)
 - [Ikey Doherty: Update nvidia-glx-driver to 396.24](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;722c7b7)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;4d46d69)
 - [Ikey Doherty: Update nvidia-glx-driver to 390.48](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;279f377)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;a055dc0)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;ba58326)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;2d45b29)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;34818b4)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;c08aa5b)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;ba89c9e)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;96879b3)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;03ba20c)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;9e51559)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;0d05298)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;926eb45)
 - [Ikey Doherty: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;0c9b2d0)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;f75ef6f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;f57de87)
 - [Ikey Doherty: Remove vendored version of egl-wayland, we have this as a package](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;965d5d3)
 - [Ikey Doherty: Update NVIDIA GLX Driver to 390.25](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;0a9def8)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;f88e6b9)
 - [Ikey Doherty: Fix the nvidia xorg snippet (tested)](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;fca6061)
 - [Ikey Doherty: Attempt to fix broken NVIDIA xorg config](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;3ad7dec)
 - [Ikey Doherty: Use the right modules path..](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;a61fc0a)
 - [Ikey Doherty: Initial glvnd enabling for nvidia-glx-driver (T4901)](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;4291246)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;c756b1b)
 - [Ikey Doherty: Rebuild for newly built kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;70514c7)
 - [Ikey Doherty: Update nvidia-glx-driver to latest version](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;a847677)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;78a9831)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;a287eb1)
 - [Ikey Doherty: Enable EGL correctly for NVIDIA](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;5b67af5)
 - [Ikey Doherty: Enable egl-wayland support in NVIDIA driver (T4901)](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;9ea7730)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;d85a6ee)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;942aa9f)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;9ee4ccd)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;4e4855e)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;830974d)
 - [Ikey Doherty: Port `nvidia-glx-driver` to 4.14 APIs](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;8df8ff4)
 - [Ikey Doherty: Rebuild against new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;49ee11d)
 - [Ikey Doherty: Ensure we set permanent attribute](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;29ce6a7)
 - [Ikey Doherty: Restore symlink-farm-of-doom to make all the things work (Like Steam)](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;304c021)
 - [Ikey Doherty: I appear to be stuck on tty1. Send help.](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;e27701b)
 - [Ikey Doherty: Rebuild with new ypkg to drop accidental dep on LTS](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;3ebda90)
 - [Ikey Doherty: Fix broken OpenCL](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;c5e7fb7)
 - [Ikey Doherty: Convert nvidia-glx-driver to the ypkg format (T5010)](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;7500f1e)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;cd6f56d)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;bab69a6)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;255836a)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;8564d86)
 - [Ikey Doherty: Update nvidia-glx-driver to 384.98, latest long branch](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;1ea86f8)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;92f9f68)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;2868a95)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;5d1f5e5)
 - [Ikey Doherty: Rebuild for linux-curent](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;a5f2af8)
 - [Ikey Doherty: Fix missing internal CUDA support (re: T354)](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;cadcd12)
 - [Ikey Doherty: Correctly configure nvidia-glx-driver Vulkan ICD files](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;3956016)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;5fe8f05)
 - [Ikey Doherty: Rebuild for kernel enabling](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;b6c6c47)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;e14ea00)
 - [Ikey Doherty: Ship missing file for nvidia-settings to support profile registry](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;d9ff24e)
 - [Ikey Doherty: Update to 384.90](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;2af80cd)
 - [Peter O'Connor: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;0618f2f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;f1a8f8e)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;1381a11)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;3ffc390)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;771b4c8)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;4360d59)
 - [Ikey Doherty: Update nvidia-glx-driver to 384.69, latest short branch](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;71949b8)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;b052633)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-glx-driver/browse/master/;0eeb7bd)


**libusb**

 - [Ikey Doherty: Update libusb to 1.0.22](https://dev.getsol.us/source/libusb/browse/master/;7660a03)


**libevent**

 - [Joey Riches: libevent: update to 2.1.8](https://dev.getsol.us/source/libevent/browse/master/;dc3bdbc)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libevent/browse/master/;70d601b)


**grep**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/grep/browse/master/;18f8aff)


**freetype2**

 - [Joey Riches: Downgrade freetype2 to 2.8](https://dev.getsol.us/source/freetype2/browse/master/;706f5d5)
 - [Peter O'Connor: Restore freetype-config](https://dev.getsol.us/source/freetype2/browse/master/;d369ed2)
 - [Joey Riches: Update freetype2 to 2.9.1](https://dev.getsol.us/source/freetype2/browse/master/;c3aefd7)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/freetype2/browse/master/;ace8158)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/freetype2/browse/master/;caecd46)
 - [Peter O'Connor: Address CVE-2018-6942](https://dev.getsol.us/source/freetype2/browse/master/;244f01f)
 - [Joshua Strobl: Downgrade to 2.8.0. 2.8.1 and above will break font rendering in Electron applications. Moved freetype2-config and man1 pages to freetype2 to match rel 18 and enable upgrades (file conflicts otherwise).](https://dev.getsol.us/source/freetype2/browse/master/;717eba2)
 - [Joshua Strobl: Revert "Update freetype2 to 2.8.1"](https://dev.getsol.us/source/freetype2/browse/master/;94e70f6)
 - [Joshua Strobl: Revert "Update freetype2 to 2.9"](https://dev.getsol.us/source/freetype2/browse/master/;88253c6)
 - [Pierre-Yves: Update freetype2 to 2.9](https://dev.getsol.us/source/freetype2/browse/master/;73379d6)
 - [Pierre-Yves: Update freetype2 to 2.8.1](https://dev.getsol.us/source/freetype2/browse/master/;108fefa)


**canon-ufriilt-common**

 - [Pierre-Yves: Rebuild canon-ufriilt-common for cups 2.2.8](https://dev.getsol.us/source/canon-ufriilt-common/browse/master/;2a19c08)
 - [Pierre-Yves: Update canon-ufriilt-common to 3.80](https://dev.getsol.us/source/canon-ufriilt-common/browse/master/;be0993f)


**libepoxy**

 - [Ikey Doherty: Update libepoxy to 1.4.3](https://dev.getsol.us/source/libepoxy/browse/master/;89ac5e9)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libepoxy/browse/master/;425ebdf)


**gnupg**

 - [Joshua Strobl: Update to 2.2.10](https://dev.getsol.us/source/gnupg/browse/master/;d2c5f41)
 - [Pierre-Yves: Update gnupg to 2.2.9](https://dev.getsol.us/source/gnupg/browse/master/;a12c2ef)
 - [Joshua Strobl: Update to 2.2.8. Resolves CVE-2018-12020.](https://dev.getsol.us/source/gnupg/browse/master/;794f3c2)
 - [Pierre-Yves: Update gnupg to 2.2.7](https://dev.getsol.us/source/gnupg/browse/master/;99fa9e4)
 - [Pierre-Yves: Update gnupg to 2.2.6 to fix CVE-2018-9234](https://dev.getsol.us/source/gnupg/browse/master/;ae0331c)
 - [Pierre-Yves: Update gnupg to 2.2.5](https://dev.getsol.us/source/gnupg/browse/master/;7c73e12)
 - [Pierre-Yves: Update gnupg to 2.2.4](https://dev.getsol.us/source/gnupg/browse/master/;e01a8d1)


**python-gobject**

 - [Joshua Strobl: Upgrade to latest in 3.28 series. Updated license.](https://dev.getsol.us/source/python-gobject/browse/master/;a974cff)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/python-gobject/browse/master/;da92ea8)
 - [Joshua Strobl: Update to 3.26.0. Changelog available [here](https://download.gnome.org/sources/pygobject/3.26/pygobject-3.26.0.news).](https://dev.getsol.us/source/python-gobject/browse/master/;5e0a8b7)


**libcanberra**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libcanberra/browse/master/;d6e453a)
 - [Ikey Doherty: Sync libcanberra with git to fix crashes on Wayland + Broadway](https://dev.getsol.us/source/libcanberra/browse/master/;d6d1b1b)


**hicolor-icon-theme**

 - [Ikey Doherty: Convert hicolor-icon-theme to ypkg (T5010)](https://dev.getsol.us/source/hicolor-icon-theme/browse/master/;1bdb975)
 - [Pierre-Yves: Update hicolor-icon-theme to 0.17](https://dev.getsol.us/source/hicolor-icon-theme/browse/master/;81ffc99)


**libgnomekbd**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libgnomekbd/browse/master/;1655e7a)
 - [Joshua Strobl: Update to 3.26.0](https://dev.getsol.us/source/libgnomekbd/browse/master/;d84bfd9)


**man-db**

 - [Pierre-Yves: Update man-db to 2.8.4](https://dev.getsol.us/source/man-db/browse/master/;9ed9484)
 - [Pierre-Yves: Bump because upstream has updated the source](https://dev.getsol.us/source/man-db/browse/master/;d375b90)
 - [Pierre-Yves: Update man-db to 2.8.3](https://dev.getsol.us/source/man-db/browse/master/;a0c16ca)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/man-db/browse/master/;080105a)
 - [Pierre-Yves: Update man-db to 2.8.2](https://dev.getsol.us/source/man-db/browse/master/;4c1fc35)
 - [Pierre-Yves: Update man-db to 2.8.1](https://dev.getsol.us/source/man-db/browse/master/;9a80cd9)
 - [Pierre-Yves: Rebuild for gdbm 1.14.1](https://dev.getsol.us/source/man-db/browse/master/;117e805)


**libspeex**

 - [Pierre-Yves: Update libspeex to 1.2.0 & speexdsp to 1.2rc3](https://dev.getsol.us/source/libspeex/browse/master/;b3e2f48)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libspeex/browse/master/;76ff39f)


**gedit**

 - [Joshua Strobl: Update to 3.28.1. Enable Vala support.](https://dev.getsol.us/source/gedit/browse/master/;8474992)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/gedit/browse/master/;7e0601b)
 - [Ikey Doherty: Rebuild just to check SC sees new updated stuff](https://dev.getsol.us/source/gedit/browse/master/;5201c3c)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/gedit/browse/master/;bd3bdf1)


**gnome-backgrounds**

 - [Joshua Strobl: Update to 3.28.0](https://dev.getsol.us/source/gnome-backgrounds/browse/master/;d291989)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/gnome-backgrounds/browse/master/;5dae16a)


**wavpack**

 - [Peter O'Connor: Address the following CVEs:](https://dev.getsol.us/source/wavpack/browse/master/;112dc28)
 - [Peter O'Connor: Address the following CVE's:](https://dev.getsol.us/source/wavpack/browse/master/;e0fbfd2)


**dconf**

 - [Joshua Strobl: Update to 0.28.0](https://dev.getsol.us/source/dconf/browse/master/;badf6e8)
 - [Pierre-Yves: Update dconf to 3.26.1](https://dev.getsol.us/source/dconf/browse/master/;d3ea5dc)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/dconf/browse/master/;8f82e02)


**dbus-glib**

 - [Joey Riches: Update dbus-glib to 0.110](https://dev.getsol.us/source/dbus-glib/browse/master/;3c346a0)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/dbus-glib/browse/master/;9a88fc0)


**net-snmp**

 - [Philipp Trulson: Update net-snmp to 5.8](https://dev.getsol.us/source/net-snmp/browse/master/;1fda34f)
 - [Peter O'Connor: Rebuild for perl 5.26.1](https://dev.getsol.us/source/net-snmp/browse/master/;5a93357)


**libgtkmm-3**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libgtkmm-3/browse/master/;407c8ba)
 - [Joshua Strobl: Update to 3.22.2](https://dev.getsol.us/source/libgtkmm-3/browse/master/;5153e91)


**libdvdnav**

 - [Pierre-Yves: Update libdvdnav 6.0.0](https://dev.getsol.us/source/libdvdnav/browse/master/;8976c72)
 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/libdvdnav/browse/master/;930c544)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libdvdnav/browse/master/;34f9dc9)


**db5**

 - [Pierre-Yves: Sometimes it helps bumping the release number](https://dev.getsol.us/source/db5/browse/master/;e796aef)
 - [Pierre-Yves: Enable emul32 for jack-audio-connection-kit](https://dev.getsol.us/source/db5/browse/master/;853159f)
 - [Peter O'Connor: Address CVE-2017-10140 and convert to ypkg](https://dev.getsol.us/source/db5/browse/master/;b0d75de)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/db5/browse/master/;f69333a)
 - [Ikey Doherty: Revert "Convert to yml and rebuild for cflags"](https://dev.getsol.us/source/db5/browse/master/;bdc2908)
 - [Justin Zobel: Convert to yml and rebuild for cflags](https://dev.getsol.us/source/db5/browse/master/;9bd1712)


**exiv2**

 - [Bryan T. Meyers: Rebuild for libssh](https://dev.getsol.us/source/exiv2/browse/master/;5312362)
 - [Pierre-Yves: Update exiv2 to 0.26](https://dev.getsol.us/source/exiv2/browse/master/;c4de903)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/exiv2/browse/master/;1a0549e)


**cups-pk-helper**

 - [Pierre-Yves: Rebuild cups-pk-helper for cups 2.2.8](https://dev.getsol.us/source/cups-pk-helper/browse/master/;d9e3a42)


**gnome-calculator**

 - [Peter O'Connor: Rebuild for toolchain ABI breakages](https://dev.getsol.us/source/gnome-calculator/browse/master/;3e28880)
 - [Pierre-Yves: C'mon builder you *can* do it!](https://dev.getsol.us/source/gnome-calculator/browse/master/;ddcea93)
 - [Pierre-Yves: Update gnome-calculator to 3.28.2](https://dev.getsol.us/source/gnome-calculator/browse/master/;5762feb)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-calculator/browse/master/;cce08fc)
 - [Joshua Strobl: Update to 3.26.0. Translation updates.](https://dev.getsol.us/source/gnome-calculator/browse/master/;081e753)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/gnome-calculator/browse/master/;84a261f)


**iproute2**

 - [Philipp Trulson: Update iproute2 to 4.17.0](https://dev.getsol.us/source/iproute2/browse/master/;e8d605c)
 - [Pierre-Yves: Rebuild against iptables 1.6.1](https://dev.getsol.us/source/iproute2/browse/master/;315ce14)


**libdv**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/libdv/browse/master/;cdad11c)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libdv/browse/master/;520e058)


**desktop-file-utils**

 - [Peter O'Connor: Register font as a valid media type](https://dev.getsol.us/source/desktop-file-utils/browse/master/;7fcd2fd)
 - [Ikey Doherty: Convert desktop-file-utils to ypkg (T5010)](https://dev.getsol.us/source/desktop-file-utils/browse/master/;f2ae53b)


**libwnck**

 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/libwnck/browse/master/;3ebb1a9)
 - [Ikey Doherty: Rebuild against new libxres](https://dev.getsol.us/source/libwnck/browse/master/;42a3e1d)
 - [Ikey Doherty: Update libwnck to 3.24.1](https://dev.getsol.us/source/libwnck/browse/master/;9226d3e)


**libexttextcat**

 - [Pierre-Yves: Update libexttextcat to 3.4.5](https://dev.getsol.us/source/libexttextcat/browse/master/;240f8ea)


**nano**

 - [Bryan T. Meyers: bump](https://dev.getsol.us/source/nano/browse/master/;1b1efae)
 - [Bryan T. Meyers: Updated to 3.0](https://dev.getsol.us/source/nano/browse/master/;8f217d4)
 - [Pierre-Yves: Check is the build server is awake](https://dev.getsol.us/source/nano/browse/master/;0b9fd69)
 - [Thomas H: Update nano to 2.9.8](https://dev.getsol.us/source/nano/browse/master/;fe12dc4)
 - [Ikey Doherty: Update nano to 2.9.7](https://dev.getsol.us/source/nano/browse/master/;3c78309)
 - [Ikey Doherty: Ermagahd an **actual** update to nano](https://dev.getsol.us/source/nano/browse/master/;354cbc3)
 - [Ikey Doherty: Totally super important update not for testing the updates page nope](https://dev.getsol.us/source/nano/browse/master/;621d3ec)
 - [Ikey Doherty: Canary rebuild to validate bash](https://dev.getsol.us/source/nano/browse/master/;41ec805)
 - [Ikey Doherty: Rebuild to test new SC update detection](https://dev.getsol.us/source/nano/browse/master/;e68a2ca)
 - [Pierre-Yves: Update nano to 2.9.5](https://dev.getsol.us/source/nano/browse/master/;011da89)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/nano/browse/master/;0f94cee)
 - [Pierre-Yves: Update nano to 2.9.4](https://dev.getsol.us/source/nano/browse/master/;c09702b)
 - [Ikey Doherty: Build an update so I can test the new Software Center](https://dev.getsol.us/source/nano/browse/master/;10793b3)
 - [Ikey Doherty: Bump nano to verify I transitioned to the craptop ok](https://dev.getsol.us/source/nano/browse/master/;1c26116)
 - [Ikey Doherty: Update nano to 2.9.3](https://dev.getsol.us/source/nano/browse/master/;3ceeabf)
 - [Ikey Doherty: Canary build for toolchain](https://dev.getsol.us/source/nano/browse/master/;db23f64)
 - [Ikey Doherty: Canary build with new GCC](https://dev.getsol.us/source/nano/browse/master/;410733f)
 - [Pierre-Yves: Update nano to 2.9.2](https://dev.getsol.us/source/nano/browse/master/;573ea63)
 - [Ikey Doherty: Rebuild for solbuild tests](https://dev.getsol.us/source/nano/browse/master/;116b62d)
 - [Pierre-Yves: Update nano to 2.9.1](https://dev.getsol.us/source/nano/browse/master/;69b2576)
 - [Ikey Doherty: Canary build against new coreutils environment](https://dev.getsol.us/source/nano/browse/master/;768ac0e)
 - [Ikey Doherty: Rebuild for new CFLAGS + dependent libs](https://dev.getsol.us/source/nano/browse/master/;d88fe41)
 - [Pierre-Yves: Update nano to 2.9.0](https://dev.getsol.us/source/nano/browse/master/;6c254a9)
 - [Ikey Doherty: Rebuild to validate CDN cache-pass-through on index](https://dev.getsol.us/source/nano/browse/master/;b6a7cda)
 - [Pierre-Yves: Bumping nano per Solus tradition. Hello everybody!](https://dev.getsol.us/source/nano/browse/master/;e0c59f4)
 - [Joey Riches: nano: bump for permissions test](https://dev.getsol.us/source/nano/browse/master/;edffc46)
 - [Ikey Doherty: Per Solus tradition, nano is our canary test package for the new ferryd instance](https://dev.getsol.us/source/nano/browse/master/;47f30e8)
 - [Pierre-Yves: Update nano to 2.8.7](https://dev.getsol.us/source/nano/browse/master/;56da4cf)


**libxxf86dga**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxxf86dga/browse/master/;7e3c3f4)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxxf86dga/browse/master/;2f6235a)


**thunderbird**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/thunderbird/browse/master/;27aef11)
 - [Pierre-Yves: Update thunderbird to 60.0](https://dev.getsol.us/source/thunderbird/browse/master/;2cad403)
 - [Joshua Strobl: Update langpacks to 60.0](https://dev.getsol.us/source/thunderbird/browse/master/;1110f99)
 - [Joshua Strobl: Add icons from branding for icon theme fallback.](https://dev.getsol.us/source/thunderbird/browse/master/;f046fc0)
 - [Pierre-Yves: Update thunderbird to 52.9.1](https://dev.getsol.us/source/thunderbird/browse/master/;b295a97)
 - [Ikey Doherty: Bump for version](https://dev.getsol.us/source/thunderbird/browse/master/;e733cc7)
 - [Pierre-Yves: Update thunderbird to 52.9.0](https://dev.getsol.us/source/thunderbird/browse/master/;84dc1ff)
 - [Joshua Strobl: Update langpacks to 52.9.0](https://dev.getsol.us/source/thunderbird/browse/master/;b915ee1)
 - [Pierre-Yves: Update thunderbird to 52.8.0 to address multiple CVEs](https://dev.getsol.us/source/thunderbird/browse/master/;b5a6694)
 - [Joshua Strobl: Update langpacks to 52.8.0](https://dev.getsol.us/source/thunderbird/browse/master/;434d9ca)
 - [Pierre-Yves: Update thunderbird to 52.7.0](https://dev.getsol.us/source/thunderbird/browse/master/;8822bff)
 - [Joshua Strobl: Update langpacks to 52.7.0](https://dev.getsol.us/source/thunderbird/browse/master/;8cb3f69)
 - [Pierre-Yves: Update thunderbird to 52.6.0 to address multiple CVEs](https://dev.getsol.us/source/thunderbird/browse/master/;6ea3738)
 - [Joshua Strobl: Update langpacks to 52.6.0](https://dev.getsol.us/source/thunderbird/browse/master/;fd5b9e9)
 - [Pierre-Yves: Update thunderbird to 52.5.2](https://dev.getsol.us/source/thunderbird/browse/master/;d7ea309)
 - [Ikey Doherty: Update langpacks for 52.5.2](https://dev.getsol.us/source/thunderbird/browse/master/;714de8d)
 - [Ikey Doherty: Update Thunderbird to 52.5.0](https://dev.getsol.us/source/thunderbird/browse/master/;f2e9d7b)
 - [Joshua Strobl: Update langpacks to 52.5.0](https://dev.getsol.us/source/thunderbird/browse/master/;aba85d5)
 - [Pierre-Yves: Rebuild against libhunspell 1.6.2](https://dev.getsol.us/source/thunderbird/browse/master/;4a8bef0)
 - [Pierre-Yves: Update thunderbird to 52.4.0](https://dev.getsol.us/source/thunderbird/browse/master/;dd8c295)
 - [Ikey Doherty: Update langpaks](https://dev.getsol.us/source/thunderbird/browse/master/;386e1b4)
 - [Joey Riches: thunderbird: rebuild against libevent](https://dev.getsol.us/source/thunderbird/browse/master/;8942901)
 - [Pierre-Yves: Update thunderbird to 52.3.0](https://dev.getsol.us/source/thunderbird/browse/master/;9e21169)
 - [Ikey Doherty: Update langpaks for 52.3.0](https://dev.getsol.us/source/thunderbird/browse/master/;44bc128)


**nettle**

 - [Peter O'Connor: Fix components so that and ISO can be generated](https://dev.getsol.us/source/nettle/browse/master/;6e7a49a)
 - [Pierre-Yves: Update nettle to 3.4 & convert to ypkg](https://dev.getsol.us/source/nettle/browse/master/;ca98b09)


**libunwind**

 - [Ikey Doherty: Enable emul32 libunwind](https://dev.getsol.us/source/libunwind/browse/master/;4b25919)
 - [Ikey Doherty: Rebuild for xorg stack update](https://dev.getsol.us/source/libunwind/browse/master/;989c43b)
 - [Pierre-Yves: Update libuwind to 1.2.1](https://dev.getsol.us/source/libunwind/browse/master/;2073329)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libunwind/browse/master/;e73485d)


**gnome-session**

 - [Ikey Doherty: Absorb ISO definition dependencies for robustness](https://dev.getsol.us/source/gnome-session/browse/master/;cb30b6a)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-session/browse/master/;115ffc9)
 - [Joshua Strobl: Enable experimental Wayland session for GNOME Shell.](https://dev.getsol.us/source/gnome-session/browse/master/;61ed5dd)
 - [Ikey Doherty: Make sure GNOME/Budgie users have full XDG toolset](https://dev.getsol.us/source/gnome-session/browse/master/;1eb5849)
 - [Ikey Doherty: Fix docbook error in build](https://dev.getsol.us/source/gnome-session/browse/master/;0584c2e)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/gnome-session/browse/master/;664b393)


**xinit**

 - [Bryan T. Meyers:  Updated to 1.4.0](https://dev.getsol.us/source/xinit/browse/master/;7b650ae)


**liboauth**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/liboauth/browse/master/;8d504df)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/liboauth/browse/master/;f87cc31)


**colord**

 - [Joshua Strobl: Update to 1.3.5](https://dev.getsol.us/source/colord/browse/master/;8c1f43e)


**libpipeline**

 - [Pierre-Yves: Update libpipeline to 1.5.0](https://dev.getsol.us/source/libpipeline/browse/master/;f80fdb5)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libpipeline/browse/master/;08f7674)


**gnome-system-monitor**

 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-system-monitor/browse/master/;91f21a8)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-system-monitor/browse/master/;ca25e98)
 - [Joshua Strobl: Update to 3.26.0](https://dev.getsol.us/source/gnome-system-monitor/browse/master/;b3b1b41)


**libnspr**

 - [Ikey Doherty: Update to 4.19](https://dev.getsol.us/source/libnspr/browse/master/;a5f40b0)
 - [Pierre-Yves: Update libnspr to 4.17](https://dev.getsol.us/source/libnspr/browse/master/;7c5ef57)


**x264**

 - [Joshua Strobl: Enable CLI. Resolves T5992.](https://dev.getsol.us/source/x264/browse/master/;e458a4e)
 - [Ikey Doherty: Update x264 to snapshot 20180503](https://dev.getsol.us/source/x264/browse/master/;577adcd)
 - [Joshua Strobl: See if the build server is okay with asm disabling.](https://dev.getsol.us/source/x264/browse/master/;69fa3c2)
 - [Joshua Strobl: Update to 20180119.2245 stable snapshot](https://dev.getsol.us/source/x264/browse/master/;e3de1d2)


**x265**

 - [Joey Riches: Update x265 to 2.8](https://dev.getsol.us/source/x265/browse/master/;547aac0)
 - [Joey Riches: Update x265 to 2.7 & reenable assembly instructions](https://dev.getsol.us/source/x265/browse/master/;5123a94)
 - [Joshua Strobl: Disable assembly to see if the build server just dislikes it.](https://dev.getsol.us/source/x265/browse/master/;8af841c)
 - [Joshua Strobl: Update to 2.6. Release notes available [here](https://x265.readthedocs.io/en/default/releasenotes.html#version-2-6).](https://dev.getsol.us/source/x265/browse/master/;00d91e2)
 - [Bryan T. Meyers: Update to 2.5](https://dev.getsol.us/source/x265/browse/master/;309e6ad)


**gobject-introspection**

 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/gobject-introspection/browse/master/;2b9abf7)
 - [Joshua Strobl: Upgrade to latest in 1.56 series.](https://dev.getsol.us/source/gobject-introspection/browse/master/;1dee867)
 - [Joshua Strobl: Update to 1.54.1](https://dev.getsol.us/source/gobject-introspection/browse/master/;57685eb)


**hunspell-en**

 - [Pierre-Yves: Update hunspell-en to 2018.04.16](https://dev.getsol.us/source/hunspell-en/browse/master/;96a8a1b)
 - [Pierre-Yves: Update hunspell-en to 2017.08.24](https://dev.getsol.us/source/hunspell-en/browse/master/;4be7faa)


**libpwquality**

 - [Pierre-Yves: Update libpwquality to 1.4.0](https://dev.getsol.us/source/libpwquality/browse/master/;2b56d17)


**fontconfig**

 - [Joey Riches: Restore anti-aliasing by default](https://dev.getsol.us/source/fontconfig/browse/master/;17ddee0)
 - [Joey Riches: Drop patch which enforced anti-aliasing](https://dev.getsol.us/source/fontconfig/browse/master/;e85beaf)
 - [Ikey Doherty: Stop breaking locales](https://dev.getsol.us/source/fontconfig/browse/master/;cb27740)
 - [Ikey Doherty: Whisht will ya](https://dev.getsol.us/source/fontconfig/browse/master/;48d06a3)
 - [Joshua Strobl: Rebuild against libpng so I can get gnome-builder sorted.](https://dev.getsol.us/source/fontconfig/browse/master/;ca8c089)
 - [Joshua Strobl: Start symlinking /usr/share/fonts to /etc/fonts. Resolves T6015.](https://dev.getsol.us/source/fontconfig/browse/master/;54bc19a)
 - [Ikey Doherty: Fix ugliness where harfbuzz + freetype argue from circular deps](https://dev.getsol.us/source/fontconfig/browse/master/;9c310c4)
 - [Ikey Doherty: Downgrade to 2.12.1 because later versions brick Emojis](https://dev.getsol.us/source/fontconfig/browse/master/;5f8ad27)
 - [Ikey Doherty: Update fontconfig to 2.12.6, convert to ypkg (T5010)](https://dev.getsol.us/source/fontconfig/browse/master/;9f1bd9c)
 - [Pierre-Yves: Update fontconfig to 2.12.5](https://dev.getsol.us/source/fontconfig/browse/master/;05660b2)


**xorg-driver-input-libinput**

 - [Joshua Strobl: Rebuild against libinput 1.11 series.](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;6eef915)
 - [Bryan T. Meyers: Updated to 0.28.0](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;a22f889)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;73f111a)
 - [Ikey Doherty: Rebuild for X.Org 1.18.4 restoration](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;97b1341)
 - [Ikey Doherty: Rebuild for X.Org 1.19.4 testing](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;5e1e564)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;0010b7c)
 - [Ikey Doherty: Rebuild for Xorg validation](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;0795f3b)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;42dd4a4)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;6d53da9)
 - [Ikey Doherty: Update to 0.26.0 and rebuild against new X 1.19.3](https://dev.getsol.us/source/xorg-driver-input-libinput/browse/master/;8251118)


**os-prober**

 - [Ikey Doherty: Fix T4192 and detect Windows 10 properly](https://dev.getsol.us/source/os-prober/browse/master/;566e4c8)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/os-prober/browse/master/;40250f5)


**libboost**

 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libboost/browse/master/;b4116fa)
 - [Pierre-Yves: Update libboost to 1.66.0 & add python3](https://dev.getsol.us/source/libboost/browse/master/;7434d51)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libboost/browse/master/;5714fe4)
 - [Pierre-Yves: Update boost to 1.65.1](https://dev.getsol.us/source/libboost/browse/master/;10926d1)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/libboost/browse/master/;f1ee419)


**iptables**

 - [Pierre-Yves: Update iptables to 1.6.2](https://dev.getsol.us/source/iptables/browse/master/;039b068)
 - [Pierre-Yves: Update iptables to 1.6.1](https://dev.getsol.us/source/iptables/browse/master/;0997a8e)


**geoclue**

 - [Joshua Strobl: Update to 2.4.8](https://dev.getsol.us/source/geoclue/browse/master/;42ea772)
 - [Joshua Strobl: Rebuild against libjson-glib](https://dev.getsol.us/source/geoclue/browse/master/;af94ee4)


**python-dbus**

 - [Joey Riches: Update to 1.2.8](https://dev.getsol.us/source/python-dbus/browse/master/;dd6d90f)
 - [Peter O'Connor: Rebuild for ldflags](https://dev.getsol.us/source/python-dbus/browse/master/;6727a57)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/python-dbus/browse/master/;8d30ad3)
 - [Pierre-Yves: Convert python-dbus to ypkg](https://dev.getsol.us/source/python-dbus/browse/master/;ecb4dd8)


**bash-completion**

 - [Joshua Strobl: Moved bash-completions-devel back to system.devel. Determined to be a recommended package to include for an updated solbuild image.](https://dev.getsol.us/source/bash-completion/browse/master/;1cce675)
 - [James Lee: Update bash-completion to 2.8](https://dev.getsol.us/source/bash-completion/browse/master/;89f7c96)


**onboard**

 - [Pierre-Yves: Rebuild onboard for libxkbcommon 0.8.2](https://dev.getsol.us/source/onboard/browse/master/;cbd558d)
 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/onboard/browse/master/;720e325)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/onboard/browse/master/;8f082dc)
 - [Pierre-Yves: Rebuild against libhunspell 1.6.2](https://dev.getsol.us/source/onboard/browse/master/;6345fed)
 - [Joshua Strobl: Safety rebuild against gtk 3.22.24](https://dev.getsol.us/source/onboard/browse/master/;0dd3c89)


**util-linux**

 - [Pierre-Yves: Update util-linux to 2.32](https://dev.getsol.us/source/util-linux/browse/master/;7a73f74)
 - [Ikey Doherty: Rebuild util-linux for toolchain/cflags](https://dev.getsol.us/source/util-linux/browse/master/;4def3cc)
 - [Ikey Doherty: Allow statically linking util-linux with musl builds](https://dev.getsol.us/source/util-linux/browse/master/;ac4cc9a)
 - [Ikey Doherty: Ensure we build util-linux with the correct flag](https://dev.getsol.us/source/util-linux/browse/master/;ac3a029)
 - [Pierre-Yves: Update util-linux to 2.30.1](https://dev.getsol.us/source/util-linux/browse/master/;932ebad)


**libdaemon**

 - [Ikey Doherty: Convert to ypkg, enable 32bit for Avahi](https://dev.getsol.us/source/libdaemon/browse/master/;7c14ada)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libdaemon/browse/master/;c4165f8)


**ffmpeg**

 - [Bryan T. Meyers: Rebuild for libssh](https://dev.getsol.us/source/ffmpeg/browse/master/;eb9e5f3)
 - [Peter O'Connor: Update to 3.4.4 to resolve multiple CVEs:](https://dev.getsol.us/source/ffmpeg/browse/master/;f1617eb)
 - [Peter O'Connor: Rebuild to remove rpath](https://dev.getsol.us/source/ffmpeg/browse/master/;5766169)
 - [Joey Riches: Rebuild against x265](https://dev.getsol.us/source/ffmpeg/browse/master/;cfa8355)
 - [Ikey Doherty: Rebuild for new libx264](https://dev.getsol.us/source/ffmpeg/browse/master/;ba13ac1)
 - [Joey Riches: Rebuild against x265 2.7](https://dev.getsol.us/source/ffmpeg/browse/master/;c25b38e)
 - [Joey Riches: Safety rebuild against fribidi 1.0.2](https://dev.getsol.us/source/ffmpeg/browse/master/;6193b7b)
 - [Joey Riches: Rebuild against libvpx 1.7.0](https://dev.getsol.us/source/ffmpeg/browse/master/;53e6a4a)
 - [Pierre-Yves: Rebuild for lame 3.100](https://dev.getsol.us/source/ffmpeg/browse/master/;7b9c3d2)
 - [Pierre-Yves: Update ffmpeg to 3.4.2](https://dev.getsol.us/source/ffmpeg/browse/master/;4dddf6f)
 - [Joey Riches: Rebuild](https://dev.getsol.us/source/ffmpeg/browse/master/;a2b5627)
 - [Joey Riches: Safety rebuild against v4l-utils](https://dev.getsol.us/source/ffmpeg/browse/master/;61d90de)
 - [Joshua Strobl: Rebuild against x264 20180119.2245](https://dev.getsol.us/source/ffmpeg/browse/master/;cec92b9)
 - [Joshua Strobl: Rebuild against x265 2.6.](https://dev.getsol.us/source/ffmpeg/browse/master/;01b187e)
 - [Ikey Doherty: Merge branch 'arcpatch-D1218'](https://dev.getsol.us/source/ffmpeg/browse/master/;b06eb66)
 - [Pierre-Yves: Update ffmpeg to 3.4.1](https://dev.getsol.us/source/ffmpeg/browse/master/;ce2757e)
 - [Joey Riches: Rebuild ffmpeg against libva 2.0.0](https://dev.getsol.us/source/ffmpeg/browse/master/;438f02f)
 - [Joey Riches: Rebuild against libass 0.14](https://dev.getsol.us/source/ffmpeg/browse/master/;bd8dc3e)
 - [Bryan T. Meyers: Rebuild for x265](https://dev.getsol.us/source/ffmpeg/browse/master/;b61788c)
 - [Peter O'Connor: Use snappy-devel as pkgconfig has been removed](https://dev.getsol.us/source/ffmpeg/browse/master/;6c1f47d)
 - [Pierre-Yves: Update ffmpeg to 3.3.4](https://dev.getsol.us/source/ffmpeg/browse/master/;266e593)


**talloc**

 - [Rune Morling: Update talloc to 2.1.13 (required by tevent 0.9.36) for Samba 4.7.8.](https://dev.getsol.us/source/talloc/browse/master/;2cc54ed)
 - [Joshua Strobl: Update to 2.1.0 to appease the tevent gods.](https://dev.getsol.us/source/talloc/browse/master/;573c583)
 - [Joshua Strobl: Downgrade to 2.1.9 for Samba 4.6.10](https://dev.getsol.us/source/talloc/browse/master/;44b29e0)
 - [Pierre-Yves: Switch back to python2 as nothing requires python3 atm](https://dev.getsol.us/source/talloc/browse/master/;e0e8a66)
 - [Pierre-Yves: Update talloc to 2.1.10](https://dev.getsol.us/source/talloc/browse/master/;3d30a97)


**python-requests**

 - [Pierre-Yves: Update python-requests to 2.18.4 & add new/missing deps](https://dev.getsol.us/source/python-requests/browse/master/;5c686ec)


**gnome-online-accounts**

 - [Joshua Strobl: Upgrade to 3.28.0](https://dev.getsol.us/source/gnome-online-accounts/browse/master/;ca4caac)
 - [Peter O'Connor: Rebuild for libwebkit-gtk](https://dev.getsol.us/source/gnome-online-accounts/browse/master/;6be1106)
 - [Joshua Strobl: Enable Todoist support.](https://dev.getsol.us/source/gnome-online-accounts/browse/master/;15ffc70)
 - [Bryan T. Meyers: Update to 3.26.1](https://dev.getsol.us/source/gnome-online-accounts/browse/master/;7fd3946)
 - [Joshua Strobl: Update to 3.24.3](https://dev.getsol.us/source/gnome-online-accounts/browse/master/;40e8cde)


**libvorbis**

 - [Peter O'Connor: Address CVE-2018-10392](https://dev.getsol.us/source/libvorbis/browse/master/;ffc9f9a)
 - [Pierre-Yves: Update libvorbis to 1.3.6](https://dev.getsol.us/source/libvorbis/browse/master/;4aec64d)
 - [Joshua Strobl: Resolve several security vulnerabilities. Resolves T5324.](https://dev.getsol.us/source/libvorbis/browse/master/;1e67a0b)


**enchant**

 - [Joshua Strobl: Enable voikko for Finnish.](https://dev.getsol.us/source/enchant/browse/master/;13b1c08)
 - [Ikey Doherty: Fix relno due to warped git history](https://dev.getsol.us/source/enchant/browse/master/;f67ec30)
 - [Ikey Doherty: Revert "UPdate enchant to 2.1.2"](https://dev.getsol.us/source/enchant/browse/master/;b97e812)
 - [Pierre-Yves: Rebuild against libhunspell 1.6.2](https://dev.getsol.us/source/enchant/browse/master/;bd4511b)
 - [Pierre-Yves: UPdate enchant to 2.1.2](https://dev.getsol.us/source/enchant/browse/master/;277eaf9)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/enchant/browse/master/;fe77d2e)


**orca**

 - [Pierre-Yves: Update orca to 3.26.0 and rebuild for python 3.6](https://dev.getsol.us/source/orca/browse/master/;ded48bb)


**vino**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/vino/browse/master/;ba23e1d)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/vino/browse/master/;e38add6)


**libodfgen**

 - [Pierre-Yves: Update libodfgen to 0.1.7](https://dev.getsol.us/source/libodfgen/browse/master/;622599f)


**libpciaccess**

 - [Pierre-Yves: Update libpciaccess to 0.14](https://dev.getsol.us/source/libpciaccess/browse/master/;c70b3a5)


**sed**

 - [Pierre-Yves: Update sed to 4.5](https://dev.getsol.us/source/sed/browse/master/;e6d0e29)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/sed/browse/master/;c2e6350)
 - [Joshua Strobl: Helpful if we nuke the pspec given we've already converted this.](https://dev.getsol.us/source/sed/browse/master/;3303173)


**libgtksourceview**

 - [Joshua Strobl: Enable Vala bindings for GNOME Builder.](https://dev.getsol.us/source/libgtksourceview/browse/master/;d62046d)
 - [Joshua Strobl: Update to 3.24.7](https://dev.getsol.us/source/libgtksourceview/browse/master/;59afc89)
 - [Bryan T. Meyers: Update to 3.24.5](https://dev.getsol.us/source/libgtksourceview/browse/master/;82c0e69)


**djvulibre**

 - [Peter O'Connor: Remove broken mime metadata](https://dev.getsol.us/source/djvulibre/browse/master/;ccb07d4)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/djvulibre/browse/master/;ce1cd70)


**libxau**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxau/browse/master/;d228c61)
 - [Ikey Doherty: Rebuild for new toolchain and flags](https://dev.getsol.us/source/libxau/browse/master/;46f9b94)


**glib-networking**

 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/glib-networking/browse/master/;d401756)
 - [Joshua Strobl: Update to 2.56.0. Switched to meson.](https://dev.getsol.us/source/glib-networking/browse/master/;23a79df)
 - [Joshua Strobl: Update to 2.54.1](https://dev.getsol.us/source/glib-networking/browse/master/;afbce7a)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/glib-networking/browse/master/;42a248f)
 - [Joshua Strobl: Update to 2.54.0](https://dev.getsol.us/source/glib-networking/browse/master/;9d9ebae)


**kmod**

 - [Ikey Doherty: Update kmod to v25](https://dev.getsol.us/source/kmod/browse/master/;326c3ea)
 - [Peter O'Connor: Enable lto for more shrinkage](https://dev.getsol.us/source/kmod/browse/master/;b0e2d73)
 - [Ikey Doherty: Shrink size of kmod to help with initramfs](https://dev.getsol.us/source/kmod/browse/master/;95e0187)


**v4l-utils**

 - [Joey Riches: Update v4l-utils to 1.14.2](https://dev.getsol.us/source/v4l-utils/browse/master/;4e21c16)
 - [Pierre-Yves: Update v4l-utils to 1.12.5](https://dev.getsol.us/source/v4l-utils/browse/master/;a8733c5)


**pisi**

 - [Joshua Strobl: Add a patch to treat repo adding as the same URI as a warning, gracefully remove before re-adding. Prior to this, it'd raise an error and cause solbuild main profile creation to fail.](https://dev.getsol.us/source/pisi/browse/master/;c5de1f2)
 - [Joshua Strobl: Add patch for add-repo fix.](https://dev.getsol.us/source/pisi/browse/master/;fe58cf5)
 - [Joshua Strobl: Implement patch for pisi that automatically switches the user to the most relevant users.](https://dev.getsol.us/source/pisi/browse/master/;63f5613)
 - [Joshua Strobl: Force to RIT mirror.](https://dev.getsol.us/source/pisi/browse/master/;9ceb4b1)
 - [Bryan T. Meyers: You saw nothing.](https://dev.getsol.us/source/pisi/browse/master/;d5d4129)
 - [Bryan T. Meyers: Allow GIMP to upgrade itself](https://dev.getsol.us/source/pisi/browse/master/;482c5c9)
 - [Ikey Doherty: Add a manpage to stop people from crying](https://dev.getsol.us/source/pisi/browse/master/;80de0b3)
 - [Ikey Doherty: I'm sorry.](https://dev.getsol.us/source/pisi/browse/master/;10f9737)
 - [Ikey Doherty: Add new UI event for upcoming Software Center for usysconf](https://dev.getsol.us/source/pisi/browse/master/;55efe70)
 - [Ikey Doherty: Restore LDFLAGS](https://dev.getsol.us/source/pisi/browse/master/;e4e68b3)
 - [Ikey Doherty: Drop unnecessary linker flag](https://dev.getsol.us/source/pisi/browse/master/;121f279)
 - [Ikey Doherty: One more for luck.](https://dev.getsol.us/source/pisi/browse/master/;78471d4)
 - [Ikey Doherty: Fix mortally broken tmpfiles](https://dev.getsol.us/source/pisi/browse/master/;bbb3d2c)
 - [Ikey Doherty: Fix busted COMAR in new ISOs (can't use Software Center)](https://dev.getsol.us/source/pisi/browse/master/;4ed5cb8)
 - [Ikey Doherty: Implement orphan/autoinstall support in eopkg](https://dev.getsol.us/source/pisi/browse/master/;d478108)
 - [Ikey Doherty: Overwrite stale pip installs when installing python eopkgs](https://dev.getsol.us/source/pisi/browse/master/;421a279)
 - [Ikey Doherty: Remove eopkg integration with COMAR configuration (T5010)](https://dev.getsol.us/source/pisi/browse/master/;5a882f2)
 - [Ikey Doherty: Sync with git for automatic build job count](https://dev.getsol.us/source/pisi/browse/master/;0c5b6ed)
 - [Ikey Doherty: Actually like, bump the package, dimwit.](https://dev.getsol.us/source/pisi/browse/master/;4a63270)
 - [Ikey Doherty: These are not hte droids you are looking for..](https://dev.getsol.us/source/pisi/browse/master/;e02b6f0)
 - [Ikey Doherty: Update to 3.6](https://dev.getsol.us/source/pisi/browse/master/;6980fbf)


**hwdata**

 - [Bryan T. Meyers: Updated to 0.314](https://dev.getsol.us/source/hwdata/browse/master/;3fdd10b)
 - [Ikey Doherty: Update hwdata to 0.312](https://dev.getsol.us/source/hwdata/browse/master/;e62602a)
 - [Ikey Doherty: Update to v0.306](https://dev.getsol.us/source/hwdata/browse/master/;86ce1c0)
 - [Ikey Doherty: Update hwdata to 0.305](https://dev.getsol.us/source/hwdata/browse/master/;ffa03d2)


**libetonyek**

 - [Pierre-Yves: Update libetonyek to 0.1.8](https://dev.getsol.us/source/libetonyek/browse/master/;074a7c3)
 - [Pierre-Yves: Update libetonyek to 0.1.7](https://dev.getsol.us/source/libetonyek/browse/master/;a6baae2)


**lua**

 - [Joshua Strobl: Upgrade lua to 5.3.4](https://dev.getsol.us/source/lua/browse/master/;36d2ee3)


**libpng**

 - [Pierre-Yves: Update libpng to 1.6.35](https://dev.getsol.us/source/libpng/browse/master/;bc5a67d)
 - [Peter O'Connor: Address CVE-2018-13785](https://dev.getsol.us/source/libpng/browse/master/;1949fbd)
 - [Pierre-Yves: Build server doesn't like the checks](https://dev.getsol.us/source/libpng/browse/master/;ee7de71)
 - [Pierre-Yves: Update libpng to 1.6.34](https://dev.getsol.us/source/libpng/browse/master/;2cb07c1)
 - [Joshua Strobl: Update to 1.5.30](https://dev.getsol.us/source/libpng/browse/master/;251b2bc)


**modem-manager**

 - [Peter O'Connor: Ensure that ModemManager is able to load via dbus on boot](https://dev.getsol.us/source/modem-manager/browse/master/;ce9be55)
 - [Pierre-Yves: Update modem-manager to 1.6.12](https://dev.getsol.us/source/modem-manager/browse/master/;ba2c7fd)
 - [Pierre-Yves: Update modemmanager to 1.6.8](https://dev.getsol.us/source/modem-manager/browse/master/;a0c8b83)


**appstream-data**

 - [Ikey Doherty: Update Appstream data after like the entire day of doing this -_-](https://dev.getsol.us/source/appstream-data/browse/master/;37b1052)
 - [Ikey Doherty: Update to v16](https://dev.getsol.us/source/appstream-data/browse/master/;57f3f48)
 - [Ikey Doherty: Sync appstream data](https://dev.getsol.us/source/appstream-data/browse/master/;4243d9b)
 - [Ikey Doherty: Update appstream data](https://dev.getsol.us/source/appstream-data/browse/master/;5b2e842)
 - [Ikey Doherty: Update AppStream data for Friday sync](https://dev.getsol.us/source/appstream-data/browse/master/;95dfa63)
 - [Ikey Doherty: Update AppStream data for newest inclusions](https://dev.getsol.us/source/appstream-data/browse/master/;5934d4f)
 - [Ikey Doherty: Sync appstream-data for distro sync](https://dev.getsol.us/source/appstream-data/browse/master/;ccbb5d2)
 - [Ikey Doherty: Update appstream-data to v10](https://dev.getsol.us/source/appstream-data/browse/master/;1525b5d)
 - [Ikey Doherty: Update appstream-data to v9](https://dev.getsol.us/source/appstream-data/browse/master/;173c2c9)


**libgxps**

 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/libgxps/browse/master/;7918f10)
 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libgxps/browse/master/;6e29f67)
 - [Bryan T. Meyers: Update to 0.3.0](https://dev.getsol.us/source/libgxps/browse/master/;045bf06)


**gnome-terminal**

 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-terminal/browse/master/;a4b3829)
 - [Ikey Doherty: Rebuild for Nautilus](https://dev.getsol.us/source/gnome-terminal/browse/master/;c0258c3)
 - [Joshua Strobl: Update to 3.28.1. Updated patches (thanks Fedora <3).](https://dev.getsol.us/source/gnome-terminal/browse/master/;daec502)
 - [Joshua Strobl: Update to 3.26.1. Update transparency patch.](https://dev.getsol.us/source/gnome-terminal/browse/master/;2318fc8)


**xdg-utils**

 - [Pierre-Yves: Update xdg-utils to 1.1.3](https://dev.getsol.us/source/xdg-utils/browse/master/;0be187c)
 - [Bryan T. Meyers: Added missing perl dependencies](https://dev.getsol.us/source/xdg-utils/browse/master/;4d5825c)


**systemd**

 - [Joshua Strobl: Moved systemd-devel back to system.devel. Determined to be a recommended package to include for an updated solbuild image.](https://dev.getsol.us/source/systemd/browse/master/;508e864)
 - [Peter O'Connor: Update to 239, resolves T6625 and T6656](https://dev.getsol.us/source/systemd/browse/master/;3fbae92)
 - [Ikey Doherty: Allow more active permissions for display managers](https://dev.getsol.us/source/systemd/browse/master/;e61a386)
 - [Ikey Doherty: Update systemd to v238](https://dev.getsol.us/source/systemd/browse/master/;0306fcb)
 - [Ikey Doherty: Stop timesyncdfrom blocking systemd boot](https://dev.getsol.us/source/systemd/browse/master/;d25e9df)
 - [Ikey Doherty: Eat the fuse group from the fuse package](https://dev.getsol.us/source/systemd/browse/master/;121854d)
 - [Ikey Doherty: Explicitly set our users gid to 100](https://dev.getsol.us/source/systemd/browse/master/;43043c1)
 - [Ikey Doherty: Explicitly set `lp` groupid to 9 for cups transition](https://dev.getsol.us/source/systemd/browse/master/;84a32a2)
 - [Ikey Doherty: Add a new `/bin/systemctl` symlink to keep scripts happy](https://dev.getsol.us/source/systemd/browse/master/;d05b285)
 - [Ikey Doherty: Clean up package.yml to remove old junk](https://dev.getsol.us/source/systemd/browse/master/;bd94ed3)
 - [Ikey Doherty: Stop enforcing legacy hierarchy now that we have new Docker](https://dev.getsol.us/source/systemd/browse/master/;b6060f1)
 - [Ikey Doherty: Fix broken reexec in systemd 235](https://dev.getsol.us/source/systemd/browse/master/;713efdb)
 - [Ikey Doherty: Enable LTO and rebuild against new toolchain/flags](https://dev.getsol.us/source/systemd/browse/master/;ad1df4a)
 - [Ikey Doherty: Add `plugdev` and `scanner` groups to core system](https://dev.getsol.us/source/systemd/browse/master/;b2fc285)
 - [Ikey Doherty: Address CVE-2017-15908 in `systemd`](https://dev.getsol.us/source/systemd/browse/master/;f6469e7)
 - [Ikey Doherty: Fix systemd-tmpfiles trying to butcher PAM config](https://dev.getsol.us/source/systemd/browse/master/;ffb2149)
 - [Ikey Doherty: Fix tmpfiles-setup unit failure which references nsswitch incorrectly](https://dev.getsol.us/source/systemd/browse/master/;a6552f6)
 - [Ikey Doherty: Break circular dependencies with systemd completely, fix .pc conflict](https://dev.getsol.us/source/systemd/browse/master/;5dbad5e)
 - [Ikey Doherty: Update systemd to version 235](https://dev.getsol.us/source/systemd/browse/master/;61ecf2d)


**libpagemaker**

 - [Pierre-Yves: Update libpagemaker to 0.0.4](https://dev.getsol.us/source/libpagemaker/browse/master/;419f06c)


**gawk**

 - [Peter O'Connor: Remove workaround](https://dev.getsol.us/source/gawk/browse/master/;a4ba39d)
 - [Peter O'Connor: Rebuild for mpfr update and workaround awful GNU tools](https://dev.getsol.us/source/gawk/browse/master/;201e4ac)
 - [Ikey Doherty: Use the right directory for defaults](https://dev.getsol.us/source/gawk/browse/master/;d198f9c)
 - [Pierre-Yves: Update gawk to 4.2.1](https://dev.getsol.us/source/gawk/browse/master/;c556f1f)


**libgcrypt**

 - [Peter O'Connor: Update to 1.8.3 to address CVE-2018-0495](https://dev.getsol.us/source/libgcrypt/browse/master/;428aadf)
 - [Ikey Doherty: Fix random, use of O flags, noeexec stack](https://dev.getsol.us/source/libgcrypt/browse/master/;0fb0c71)
 - [Pierre-Yves: Update libgcrypt to 1.8.2](https://dev.getsol.us/source/libgcrypt/browse/master/;1678f39)
 - [Ikey Doherty: Shrink size of libgcrypt to help with the initrd size](https://dev.getsol.us/source/libgcrypt/browse/master/;b655bbf)
 - [Pierre-Yves: Update libgcrypt to 1.8.1 to address CVE-2017-0379](https://dev.getsol.us/source/libgcrypt/browse/master/;b4f1b25)


**libxkbcommon**

 - [Pierre-Yves: Update libxkbcommon to 0.8.2](https://dev.getsol.us/source/libxkbcommon/browse/master/;9cdb88a)
 - [Peter O'Connor: Add xkeyboard-config as rundep](https://dev.getsol.us/source/libxkbcommon/browse/master/;0c3b3de)


**hplip**

 - [Philipp Trulson: Rebuild hplip for net-snmp 5.8](https://dev.getsol.us/source/hplip/browse/master/;243af23)
 - [Peter O'Connor: Revert to 3.18.6, due to issues with new binary lib on some printers](https://dev.getsol.us/source/hplip/browse/master/;3a52d7e)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/hplip/browse/master/;4f82cd4)
 - [Peter O'Connor: Attempt to fix hplip T6776](https://dev.getsol.us/source/hplip/browse/master/;46baea1)
 - [Pierre-Yves: Update hplip to 3.18.7 & rebuild for cups 2.2.8](https://dev.getsol.us/source/hplip/browse/master/;6eb5827)
 - [Pierre-Yves: Update hplip to 3.18.6](https://dev.getsol.us/source/hplip/browse/master/;7677456)
 - [Pierre-Yves: Update hplip to 3.18.5](https://dev.getsol.us/source/hplip/browse/master/;ea90ec2)
 - [Pierre-Yves: Update hplip to 3.18.4](https://dev.getsol.us/source/hplip/browse/master/;3d2ea63)
 - [Pierre-Yves: Update hplip to 3.18.3](https://dev.getsol.us/source/hplip/browse/master/;83aa5f7)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/hplip/browse/master/;e40994d)
 - [Pierre-Yves: Update hplip to 3.17.10](https://dev.getsol.us/source/hplip/browse/master/;9434e57)
 - [Pierre-Yves: Fix python2 and python3 mix](https://dev.getsol.us/source/hplip/browse/master/;dd6d7d3)


**foomatic-db-engine**

 - [Peter O'Connor: Rebuild for perl 5.26.1](https://dev.getsol.us/source/foomatic-db-engine/browse/master/;bbec13b)


**cairomm**

 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/cairomm/browse/master/;8dfcf26)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/cairomm/browse/master/;a0b5c38)


**lsof**

 - [Pierre-Yves: Update lsof to 4.91](https://dev.getsol.us/source/lsof/browse/master/;9a6dcf7)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/lsof/browse/master/;5911f32)


**libical**

 - [Pierre-Yves: Update libical to 3.0.3](https://dev.getsol.us/source/libical/browse/master/;3fd2a95)


**at-spi2-atk**

 - [Peter O'Connor: Bump so will actually make it to unstable, remove component.xml](https://dev.getsol.us/source/at-spi2-atk/browse/master/;2c4337e)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/at-spi2-atk/browse/master/;c3d063e)
 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/at-spi2-atk/browse/master/;9300075)
 - [Joshua Strobl: Update to 2.26.2](https://dev.getsol.us/source/at-spi2-atk/browse/master/;a3e5336)
 - [Joshua Strobl: Update to 2.26.1. Just some Meson fixes.](https://dev.getsol.us/source/at-spi2-atk/browse/master/;89f7591)
 - [Bryan T. Meyers: Update to 2.26.0](https://dev.getsol.us/source/at-spi2-atk/browse/master/;520165a)


**xkeyboard-config**

 - [Bryan T. Meyers: Updated to 2.24](https://dev.getsol.us/source/xkeyboard-config/browse/master/;8e15666)
 - [Joey Riches: Update to 2.22](https://dev.getsol.us/source/xkeyboard-config/browse/master/;cb2629b)


**lsb-release**

 - [Ikey Doherty: Set release to 3.9999](https://dev.getsol.us/source/lsb-release/browse/master/;9bd15e4)
 - [Ikey Doherty: Grin](https://dev.getsol.us/source/lsb-release/browse/master/;cdf2026)
 - [Ikey Doherty: It's rolling, not dead](https://dev.getsol.us/source/lsb-release/browse/master/;af4299f)
 - [Ikey Doherty: Cough](https://dev.getsol.us/source/lsb-release/browse/master/;7ac3c85)
 - [Ikey Doherty: Last troll :D](https://dev.getsol.us/source/lsb-release/browse/master/;de75b33)
 - [Ikey Doherty: Rebuild](https://dev.getsol.us/source/lsb-release/browse/master/;dd85416)
 - [Ikey Doherty: Rebuild for consistency](https://dev.getsol.us/source/lsb-release/browse/master/;323b58b)


**fuse-exfat**

 - [Bryan T. Meyers: Updated to 1.2.8](https://dev.getsol.us/source/fuse-exfat/browse/master/;d70dd93)
 - [Benjamin Daines: Update fuse-exfat to 1.2.7](https://dev.getsol.us/source/fuse-exfat/browse/master/;89fa1dc)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/fuse-exfat/browse/master/;9f20e94)


**mtdev**

 - [Ikey Doherty: Rebuild for xorg stack update](https://dev.getsol.us/source/mtdev/browse/master/;5258d8f)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/mtdev/browse/master/;6c23194)


**font-symbola-ttf**

 - [Pierre-Yves: Update font-symbola-ttf 10.03](https://dev.getsol.us/source/font-symbola-ttf/browse/master/;4a16154)


**libmbim**

 - [Pierre-Yves: Update libmbim to 1.16.2](https://dev.getsol.us/source/libmbim/browse/master/;826c248)
 - [Pierre-Yves: Update libmbim to 1.16.0](https://dev.getsol.us/source/libmbim/browse/master/;c710156)


**font-tlwg-ttf**

 - [Bryan T. Meyers: Updated to 0.6.5](https://dev.getsol.us/source/font-tlwg-ttf/browse/master/;7607d34)


**network-manager**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/network-manager/browse/master/;585f443)
 - [Joshua Strobl: Add config file for connectivity / captive portal functionality. Resolves T5780.](https://dev.getsol.us/source/network-manager/browse/master/;861d652)
 - [Peter O'Connor: Ensure dnsmasq is installed to enable hotspot functionality](https://dev.getsol.us/source/network-manager/browse/master/;86584b3)
 - [Eric Renfro: NM dnsmasq isolation for wifi-ap](https://dev.getsol.us/source/network-manager/browse/master/;ce24e90)
 - [Ikey Doherty: Absorb some dependencies from the ISO definitions](https://dev.getsol.us/source/network-manager/browse/master/;7be457f)
 - [Philipp Trulson: Update network-manager to 1.10.8](https://dev.getsol.us/source/network-manager/browse/master/;7db297e)
 - [Ikey Doherty: Fix janky version](https://dev.getsol.us/source/network-manager/browse/master/;e4e5c95)
 - [Peter O'Connor: Enable ppp for 64bit build to better support mobile broadband, resolves T6192](https://dev.getsol.us/source/network-manager/browse/master/;aaf0742)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/network-manager/browse/master/;0f18403)
 - [Peter O'Connor: Update to 1.10.6 to resolve some regressions impacting Plasma](https://dev.getsol.us/source/network-manager/browse/master/;bed1078)
 - [Ikey Doherty: Round and round the garden](https://dev.getsol.us/source/network-manager/browse/master/;bc2bdec)
 - [Ikey Doherty: Downgrade to 1.4 due to WPA2PSK issues](https://dev.getsol.us/source/network-manager/browse/master/;a4c9913)
 - [Ikey Doherty: Back to 1.10.0](https://dev.getsol.us/source/network-manager/browse/master/;a477e0b)
 - [Ikey Doherty: Downgrade to 1.8.4 to try fixing WiFI issues for Josh](https://dev.getsol.us/source/network-manager/browse/master/;b04839f)
 - [Ikey Doherty: Revert broken wifi random MAC functionality that just breaks wifi.](https://dev.getsol.us/source/network-manager/browse/master/;bdc0d75)
 - [Your Name: Update network-manager to 1.10.0](https://dev.getsol.us/source/network-manager/browse/master/;a50b277)
 - [Joshua Strobl: Rebuild against glib2](https://dev.getsol.us/source/network-manager/browse/master/;86d64d7)


**libexempi**

 - [Peter O'Connor: Update to 2.4.5 to address multiple CVEs:](https://dev.getsol.us/source/libexempi/browse/master/;1a98807)
 - [Ikey Doherty: Update libexempi to 2.4.4](https://dev.getsol.us/source/libexempi/browse/master/;1be1455)


**procps-ng**

 - [Peter O'Connor: Update to 3.3.15 to resolve the following CVEs:](https://dev.getsol.us/source/procps-ng/browse/master/;00f0b30)


**libmspub**

 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libmspub/browse/master/;1c5f9e5)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libmspub/browse/master/;b810c10)
 - [Pierre-Yves: Update libmspub to 0.1.4](https://dev.getsol.us/source/libmspub/browse/master/;6cdfaec)
 - [Pierre-Yves: Update libmspub to 0.1.3](https://dev.getsol.us/source/libmspub/browse/master/;9e9cd7e)
 - [Peter O'Connor: Rebuild for icu 59.1 update](https://dev.getsol.us/source/libmspub/browse/master/;caa9632)


**ncurses**

 - [Ikey Doherty: Update ncurses to 6.1](https://dev.getsol.us/source/ncurses/browse/master/;b6b8d9c)
 - [Ikey Doherty: Make this guy visible to musl](https://dev.getsol.us/source/ncurses/browse/master/;c549a98)
 - [Ikey Doherty: Update ncurses to 6.0 - with ncurses 5 ABI](https://dev.getsol.us/source/ncurses/browse/master/;19d899f)
 - [Joey Riches: Provide legacy libtinfo.so symlink](https://dev.getsol.us/source/ncurses/browse/master/;d579ffb)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/ncurses/browse/master/;be5b7ba)


**kerberos**

 - [Joshua Strobl: Add rundeps for e2fsprogs devel subpackages for respective -devel and -32bit-devel packages. Disable rpath. See T6626.](https://dev.getsol.us/source/kerberos/browse/master/;0854c89)
 - [Ikey Doherty: Update Kerberos 5 to 1.16.1 (T6431)](https://dev.getsol.us/source/kerberos/browse/master/;8eb73de)
 - [Peter O'Connor: Address CVE-2018-5729 and CVE-2018-5730](https://dev.getsol.us/source/kerberos/browse/master/;65a2d03)
 - [Pierre-Yves: Update kerberos 5 to 1.15.2 to address CVE-2017-11368 and CVE-2017-11462](https://dev.getsol.us/source/kerberos/browse/master/;fe4b816)


**graphite2**

 - [Peter O'Connor: Update to 1.3.11 and address CVE-2018-7999](https://dev.getsol.us/source/graphite2/browse/master/;09b7ae8)


**imlib2**

 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/imlib2/browse/master/;063ba79)
 - [Pierre-Yves: Rebuild for giflib to 5.1.4](https://dev.getsol.us/source/imlib2/browse/master/;8aca3ad)


**gstreamer-1.0-plugins-ugly**

 - [Pierre-Yves: Update gstreamer-1.0-plugins-ugly to 1.14.2](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;847b0b4)
 - [Joshua Strobl: Update to 1.14.1. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.14/#1.14.1).](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;963cb9d)
 - [Ikey Doherty: Rebuild for new libx264](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;9b1ef52)
 - [Joshua Strobl: Update to latest in 1.14.0 series. lame and twolame support has been moved to -good.](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;0c9ffbc)
 - [Pierre-Yves: Rebuild for lame 3.100](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;849bbe1)
 - [Pierre-Yves: Rebuild for libdvdread 6.0.0](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;44322e7)
 - [Pierre-Yves: Rebuild against libcdio 2.0.0](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;d7c3363)
 - [Joshua Strobl: Rebuild against x264 20180119.2245](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;f4daee9)
 - [Joey Riches: Update gstreamer-1.0-plugins-ugly to 1.12.4](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;2c15dbb)
 - [Pierre-Yves: Rebuild for libcdio 0.94](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;aa929ea)
 - [Bryan T. Meyers: Remove libmad as a builddep since it is no longer used](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;be18d0f)
 - [Pierre-Yves: Update gstreamer-1.0-plugins-ugly to 1.12.3](https://dev.getsol.us/source/gstreamer-1.0-plugins-ugly/browse/master/;6448299)


**gnome-keyring**

 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/gnome-keyring/browse/master/;3f07e47)
 - [Joshua Strobl: Update to 3.28.0.2](https://dev.getsol.us/source/gnome-keyring/browse/master/;1c314cb)


**zlib**

 - [Joey Riches: Add missing component for subpackage minizip](https://dev.getsol.us/source/zlib/browse/master/;96cef66)
 - [Ikey Doherty: Explictly enable static archives again to help with OpenWRT building](https://dev.getsol.us/source/zlib/browse/master/;a278f8d)
 - [Ikey Doherty: Rebuild with new CFLAGS](https://dev.getsol.us/source/zlib/browse/master/;3aa93d9)
 - [Joey Riches: minizip: don't build 32bit and disable static libraries](https://dev.getsol.us/source/zlib/browse/master/;5df84e9)
 - [Matthias Eliasson: build and add minizip from contrib](https://dev.getsol.us/source/zlib/browse/master/;899f881)


**libpeas**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libpeas/browse/master/;e9d2749)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/libpeas/browse/master/;c135581)
 - [Joshua Strobl: Update to 1.22.0](https://dev.getsol.us/source/libpeas/browse/master/;5f5dc17)


**libgtop**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libgtop/browse/master/;1a77786)
 - [Joshua Strobl: Update to 2.38.0](https://dev.getsol.us/source/libgtop/browse/master/;37089d6)


**avahi**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/avahi/browse/master/;1981ec7)
 - [Pierre-Yves: Rebuild for gdbm 1.14.1](https://dev.getsol.us/source/avahi/browse/master/;16bfae5)
 - [Ikey Doherty: Ensure the system is online before starting Avahi](https://dev.getsol.us/source/avahi/browse/master/;c45587e)
 - [Ikey Doherty: Enable 32-bit Avahi for Steam Runtime](https://dev.getsol.us/source/avahi/browse/master/;9d6e849)
 - [Ikey Doherty: Ensure avahi activates by dbus + socket, per T4263](https://dev.getsol.us/source/avahi/browse/master/;6bd7c00)
 - [Pierre-Yves: Update avahi to 0.7 and convert to package.yml](https://dev.getsol.us/source/avahi/browse/master/;22a2048)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/avahi/browse/master/;c56894d)


**libassuan**

 - [Pierre-Yves: Update libassuan to 2.5.1](https://dev.getsol.us/source/libassuan/browse/master/;6eee5ea)
 - [Pierre-Yves: Update libassuan to 2.4.4](https://dev.getsol.us/source/libassuan/browse/master/;467196c)


**libxml2**

 - [Peter O'Connor: Update to 2.9.8, address multiple CVEs:](https://dev.getsol.us/source/libxml2/browse/master/;45695c3)
 - [Peter O'Connor: Update to 2.9.7](https://dev.getsol.us/source/libxml2/browse/master/;bba1799)
 - [Peter O'Connor: Update to 2.9.5 to resolve the following CVEs:](https://dev.getsol.us/source/libxml2/browse/master/;e4aac88)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxml2/browse/master/;d3292e5)


**gmime**

 - [Joshua Strobl: Update to 3.2.0. Updated license, dropped homepage. Changed component to programming.library.](https://dev.getsol.us/source/gmime/browse/master/;d817a51)
 - [Shen Chen: Enable PGP/MIME and S/MIME support.](https://dev.getsol.us/source/gmime/browse/master/;bb4771d)
 - [Joshua Strobl: Update to 3.0.5](https://dev.getsol.us/source/gmime/browse/master/;05f1494)
 - [Joshua Strobl: Update to 3.0.3](https://dev.getsol.us/source/gmime/browse/master/;8ff6407)
 - [Joshua Strobl: Update to 3.0.2](https://dev.getsol.us/source/gmime/browse/master/;7df75a4)


**libxmu**

 - [Ikey Doherty: Rebuild for dep corrections](https://dev.getsol.us/source/libxmu/browse/master/;baac849)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxmu/browse/master/;1707c5b)


**xorg-driver-video-vmware**

 - [Bryan T. Meyers: Updated to 13.3.0](https://dev.getsol.us/source/xorg-driver-video-vmware/browse/master/;c4ae608)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-video-vmware/browse/master/;f81d2a7)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-vmware/browse/master/;9e71eda)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-vmware/browse/master/;c33f9f3)
 - [Ikey Doherty: Rebuild for X.Org 1.19](https://dev.getsol.us/source/xorg-driver-video-vmware/browse/master/;2e8ec4c)


**cups-filters**

 - [Pierre-Yves: Update cups-filters to 1.21.1](https://dev.getsol.us/source/cups-filters/browse/master/;424c253)
 - [Pierre-Yves: Patch cups-filters for segfault](https://dev.getsol.us/source/cups-filters/browse/master/;56d7772)
 - [Pierre-Yves: Update cups-filters to 1.21.0](https://dev.getsol.us/source/cups-filters/browse/master/;89b90f4)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/cups-filters/browse/master/;00511d4)
 - [Pierre-Yves: Rebuild cups-filters for cups 2.2.8](https://dev.getsol.us/source/cups-filters/browse/master/;262b577)
 - [Pierre-Yves: Update cups-filters to 1.20.4](https://dev.getsol.us/source/cups-filters/browse/master/;26136c6)
 - [Pierre-Yves: Rebuild for qpdf 8.1.0](https://dev.getsol.us/source/cups-filters/browse/master/;78476af)
 - [Pierre-Yves: Update cups-filters to 1.20.3](https://dev.getsol.us/source/cups-filters/browse/master/;2fbd12e)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/cups-filters/browse/master/;4de3291)
 - [Pierre-Yves: Update cups-filters to 1.20.1](https://dev.getsol.us/source/cups-filters/browse/master/;330e0e0)
 - [Bryan T. Meyers: Rebuild for qpdf 8.0.2](https://dev.getsol.us/source/cups-filters/browse/master/;37e94b0)
 - [Pierre-Yves: Update cups-filters to 1.19.0](https://dev.getsol.us/source/cups-filters/browse/master/;289927a)
 - [Peter O'Connor: Don't specify location of pdftops to another binary altogether](https://dev.getsol.us/source/cups-filters/browse/master/;db7d18b)
 - [Ikey Doherty: Enable automagic driverless printing configuration on startup](https://dev.getsol.us/source/cups-filters/browse/master/;e00a562)
 - [Ikey Doherty: Rebuild for dynamic linking consistency with poppler](https://dev.getsol.us/source/cups-filters/browse/master/;e672568)
 - [Peter O'Connor: Update to 1.17.8](https://dev.getsol.us/source/cups-filters/browse/master/;700a4c6)
 - [Peter O'Connor: Rebuild for poppler 0.60](https://dev.getsol.us/source/cups-filters/browse/master/;0a74f62)


**clutter-gtk**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/clutter-gtk/browse/master/;fd09076)
 - [Bryan T. Meyers: Update to 1.8.4](https://dev.getsol.us/source/clutter-gtk/browse/master/;e89950d)


**clutter**

 - [Pierre-Yves: Rebuild clutter for libxkbcommon 0.8.2](https://dev.getsol.us/source/clutter/browse/master/;0d9ed93)
 - [Joshua Strobl: Rebuild against libinput 1.11 series.](https://dev.getsol.us/source/clutter/browse/master/;991ee93)
 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/clutter/browse/master/;5ea1047)
 - [Bryan T. Meyers: Updated to 1.26.2](https://dev.getsol.us/source/clutter/browse/master/;bdc8fd5)


**zenity**

 - [Joshua Strobl: Update to 3.28.1. Largely documentation and translation updates.](https://dev.getsol.us/source/zenity/browse/master/;9e657a9)
 - [Joshua Strobl: Rebuild against gtk 3.22.24](https://dev.getsol.us/source/zenity/browse/master/;02276a5)


**slick-greeter**

 - [Bryan T. Meyers: Updated to 1.2.2, resolves T5129](https://dev.getsol.us/source/slick-greeter/browse/master/;2eec7f3)
 - [Ikey Doherty: Fix conflict cycle](https://dev.getsol.us/source/slick-greeter/browse/master/;6263032)
 - [Joshua Strobl: Rebase on latest git. Essentially adds a commit that silences GTK 3.22 deprecation warnings related to Gdk.Screen.](https://dev.getsol.us/source/slick-greeter/browse/master/;433768b)
 - [Ikey Doherty: Avoid expensive python script on startup (one of them, anyway.)](https://dev.getsol.us/source/slick-greeter/browse/master/;d42937f)


**rhythmbox**

 - [Joshua Strobl: Safety rebuild against Samba deps.](https://dev.getsol.us/source/rhythmbox/browse/master/;c5fedbf)
 - [Joshua Strobl: Updated license and added GStreamer patch to enable compilation of fmradio plugin against GStreamer 1.14.](https://dev.getsol.us/source/rhythmbox/browse/master/;4a97343)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/rhythmbox/browse/master/;5574456)
 - [Joshua Strobl: Enable Grilo support for media browsing. Resolves T5296.](https://dev.getsol.us/source/rhythmbox/browse/master/;6b93b0d)
 - [Joshua Strobl: Update to 3.4.2](https://dev.getsol.us/source/rhythmbox/browse/master/;7412394)


**gparted**

 - [Pierre-Yves: Update gparted to 0.32.0](https://dev.getsol.us/source/gparted/browse/master/;70abd8f)
 - [Pierre-Yves: Update gparted to 0.31.0](https://dev.getsol.us/source/gparted/browse/master/;2001e00)
 - [Pierre-Yves: Update gparted to 0.30.0](https://dev.getsol.us/source/gparted/browse/master/;166b846)


**coreutils**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/coreutils/browse/master/;47ee7ce)
 - [Ikey Doherty: Update coreutils to 8.29](https://dev.getsol.us/source/coreutils/browse/master/;e436e44)
 - [Ikey Doherty: Unsplit coreutils as it damages the initramfs size somewhat](https://dev.getsol.us/source/coreutils/browse/master/;0342381)
 - [Ikey Doherty: Revert "Shrink coreutils considerably"](https://dev.getsol.us/source/coreutils/browse/master/;54ab8c1)
 - [Ikey Doherty: Revert "Unbreak rm a little bit."](https://dev.getsol.us/source/coreutils/browse/master/;71149bc)
 - [Ikey Doherty: Unbreak rm a little bit.](https://dev.getsol.us/source/coreutils/browse/master/;f6440e8)
 - [Ikey Doherty: Shrink coreutils considerably](https://dev.getsol.us/source/coreutils/browse/master/;01c3e29)
 - [Pierre-Yves: Update coreutils to 8.28](https://dev.getsol.us/source/coreutils/browse/master/;d18ca03)


**sqlite3**

 - [James Lee: Updated sqlite3 to 3.24.0](https://dev.getsol.us/source/sqlite3/browse/master/;3b11bd2)
 - [Pierre-Yves: Update sqllite3 to 3.23.1](https://dev.getsol.us/source/sqlite3/browse/master/;9a34f2a)
 - [Pierre-Yves: Update sqlite3 to 3.23.0](https://dev.getsol.us/source/sqlite3/browse/master/;d3e06fc)
 - [Joey Riches: Enable json support in sqlite](https://dev.getsol.us/source/sqlite3/browse/master/;09cf49e)
 - [Bryan T. Meyers: Enable dynamic extensions, resolves T5995](https://dev.getsol.us/source/sqlite3/browse/master/;9ca2f66)
 - [Peter O'Connor: Address CVE-2018-8740](https://dev.getsol.us/source/sqlite3/browse/master/;e9f3f5d)
 - [Pierre-Yves: Update sqlite3 to 3.22.0](https://dev.getsol.us/source/sqlite3/browse/master/;587ec4a)
 - [Ikey Doherty: Enable FTS5, update to 3.20.1](https://dev.getsol.us/source/sqlite3/browse/master/;370f0e6)


**xorg-driver-video-vesa**

 - [Bryan T. Meyers: Update to 2.4.0](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;e74ceaa)
 - [Ikey Doherty: Rebuild for xorg update](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;f160d0b)
 - [Ikey Doherty: Rebuild for X.Org 1.18.4 restoration](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;8c28ad5)
 - [Ikey Doherty: Rebuild for X.Org 1.19.4 testing](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;5f68fea)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;a7eb96e)
 - [Ikey Doherty: Rebuild for Xorg validation](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;fa89983)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;60a125d)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;4e4666f)
 - [Ikey Doherty: Rebuild for new X.Org](https://dev.getsol.us/source/xorg-driver-video-vesa/browse/master/;4bb252b)


**libxdamage**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxdamage/browse/master/;506fadf)
 - [Ikey Doherty: Rebuild to fix broken dependencies](https://dev.getsol.us/source/libxdamage/browse/master/;a3f3b91)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxdamage/browse/master/;d3cd52b)


**libsoup**

 - [Joshua Strobl: Update to 2.62.3](https://dev.getsol.us/source/libsoup/browse/master/;c84e494)
 - [Joshua Strobl: Resolve CVE-2018-12910.](https://dev.getsol.us/source/libsoup/browse/master/;da3a1be)
 - [Joshua Strobl: Update to 2.62.2](https://dev.getsol.us/source/libsoup/browse/master/;bd78eea)
 - [Joshua Strobl: Rebuild to sort out 32bit.](https://dev.getsol.us/source/libsoup/browse/master/;04d3310)
 - [Joshua Strobl: Update to latest in 2.62 series.](https://dev.getsol.us/source/libsoup/browse/master/;a0ad605)
 - [Joshua Strobl: Update to 2.60.3](https://dev.getsol.us/source/libsoup/browse/master/;f527af2)
 - [Joshua Strobl: Update to 2.60.2](https://dev.getsol.us/source/libsoup/browse/master/;4a56711)
 - [Joshua Strobl: Update to 2.60.1](https://dev.getsol.us/source/libsoup/browse/master/;cdcf98f)
 - [Joshua Strobl: Update to 2.60.0](https://dev.getsol.us/source/libsoup/browse/master/;d66bb4f)


**pam**

 - [Joshua Strobl: Increase the default soft and hard max file (nofile) limit to 10000. Consolidated limits.conf related patches.](https://dev.getsol.us/source/pam/browse/master/;f225c28)
 - [Ikey Doherty: Completely disable core dumps in Solus](https://dev.getsol.us/source/pam/browse/master/;7678ab7)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/pam/browse/master/;c3235dc)


**liborcus**

 - [Pierre-Yves: Update liborcus to 0.13.4](https://dev.getsol.us/source/liborcus/browse/master/;a55d938)
 - [Pierre-Yves: Rebuild for libboost 1.66.0](https://dev.getsol.us/source/liborcus/browse/master/;eb1884d)
 - [Pierre-Yves: Rebuild for libboost 1.65](https://dev.getsol.us/source/liborcus/browse/master/;84ba2e3)
 - [Pierre-Yves: Update liborcus to 0.13.3](https://dev.getsol.us/source/liborcus/browse/master/;3788d1d)
 - [Pierre-Yves: fix invalid dependency](https://dev.getsol.us/source/liborcus/browse/master/;37e1a0d)
 - [Pierre-Yves: Update liborcus to 0.13.2](https://dev.getsol.us/source/liborcus/browse/master/;5f9ffe5)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/liborcus/browse/master/;0d1b14b)


**fuse**

 - [Pierre-Yves: Update fuse to 2.9.8 to address CVE-2018-10906](https://dev.getsol.us/source/fuse/browse/master/;af72278)
 - [Pierre-Yves: Update fuse to 2.9.7](https://dev.getsol.us/source/fuse/browse/master/;b5d7bd1)
 - [Ikey Doherty: Drop sysusers snippet and make it part of the systemd package](https://dev.getsol.us/source/fuse/browse/master/;f54ee68)


**libstartup-notification**

 - [Ikey Doherty: Enable emul32 startup-notification support](https://dev.getsol.us/source/libstartup-notification/browse/master/;9945f57)


**pycups**

 - [Pierre-Yves: Rebuild pycups for cups 2.2.8](https://dev.getsol.us/source/pycups/browse/master/;03bb088)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/pycups/browse/master/;3ef2956)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/pycups/browse/master/;0ec3f41)


**gstreamer-1.0-libav**

 - [Pierre-Yves: Update gstreamer-1.0-libav to 1.14.2](https://dev.getsol.us/source/gstreamer-1.0-libav/browse/master/;cdb59d0)
 - [Joshua Strobl: Upgrade to 1.14.0](https://dev.getsol.us/source/gstreamer-1.0-libav/browse/master/;04d810c)
 - [Joey Riches: Update gstreamer-1.0-libav to 1.12.4](https://dev.getsol.us/source/gstreamer-1.0-libav/browse/master/;b962724)
 - [Bryan T. Meyers: Now using system ffmpeg](https://dev.getsol.us/source/gstreamer-1.0-libav/browse/master/;6768580)
 - [Pierre-Yves: Update gstreamer-1.0-libav to 1.12.3](https://dev.getsol.us/source/gstreamer-1.0-libav/browse/master/;b418f0e)


**iso-codes**

 - [Pierre-Yves: Update iso-codes to 3.78](https://dev.getsol.us/source/iso-codes/browse/master/;1a274e7)


**libxxf86vm**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxxf86vm/browse/master/;499c42b)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxxf86vm/browse/master/;86cc5ba)


**totem-pl-parser**

 - [Joshua Strobl: Safety rebuild against gmime 3.2.0](https://dev.getsol.us/source/totem-pl-parser/browse/master/;2a21d54)
 - [Joshua Strobl: Safety rebuild against gmime 3.0.5](https://dev.getsol.us/source/totem-pl-parser/browse/master/;ccd0dca)
 - [Joshua Strobl: Update to 3.26.0. Use gmime-3.0.](https://dev.getsol.us/source/totem-pl-parser/browse/master/;2ac9b05)


**alsa-plugins**

 - [Pierre-Yves: use system speex instead of builtin version](https://dev.getsol.us/source/alsa-plugins/browse/master/;42f414d)
 - [Pierre-Yves: Update alsa-plugins to 1.1.5](https://dev.getsol.us/source/alsa-plugins/browse/master/;f948680)


**udisks**

 - [Pierre-Yves: Update udisks to 2.7.6](https://dev.getsol.us/source/udisks/browse/master/;a8dd4b2)
 - [Ikey Doherty: Use tmpfiles and a new udisks policy](https://dev.getsol.us/source/udisks/browse/master/;94f86ba)
 - [Pierre-Yves: Update udisks to 2.7.4](https://dev.getsol.us/source/udisks/browse/master/;91e3441)
 - [Pierre-Yves: Update udisks to 2.7.2](https://dev.getsol.us/source/udisks/browse/master/;12d2b58)


**gnome-doc-utils**

 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/gnome-doc-utils/browse/master/;31f6a6b)
 - [Joshua Strobl: Convert to ypkg](https://dev.getsol.us/source/gnome-doc-utils/browse/master/;94fa93c)


**gnome-user-docs**

 - [Joshua Strobl: Update to 3.28.2. Updates to GNOME Help.](https://dev.getsol.us/source/gnome-user-docs/browse/master/;8533853)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-user-docs/browse/master/;abcb8a2)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/gnome-user-docs/browse/master/;77c154a)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/gnome-user-docs/browse/master/;6777c7c)


**less**

 - [Pierre-Yves: Update less to 530](https://dev.getsol.us/source/less/browse/master/;392af7d)
 - [Pierre-Yves: Update less to 529](https://dev.getsol.us/source/less/browse/master/;deeb615)
 - [Pierre-Yves: Update less to 527](https://dev.getsol.us/source/less/browse/master/;36f5fd6)
 - [Pierre-Yves: Update less to 520](https://dev.getsol.us/source/less/browse/master/;e88284e)


**a52dec**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/a52dec/browse/master/;c54494c)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/a52dec/browse/master/;2b9f18a)


**libvpx**

 - [Joey Riches: Update libvpx to 1.7.0 "Mandarin Duck"](https://dev.getsol.us/source/libvpx/browse/master/;5fb50ea)
 - [Peter O'Connor: Address CVE-2017-13194, out of bounds caused by odd frame width](https://dev.getsol.us/source/libvpx/browse/master/;bed25bf)


**evince**

 - [Ikey Doherty: Rebuild for Nautilus](https://dev.getsol.us/source/evince/browse/master/;4b58db2)
 - [Joshua Strobl: Upgrade to 3.28.2](https://dev.getsol.us/source/evince/browse/master/;2380a9f)
 - [Bryan T. Meyers: Update to 3.26.0](https://dev.getsol.us/source/evince/browse/master/;ce0702a)
 - [Peter O'Connor: Rebuild for poppler 0.60](https://dev.getsol.us/source/evince/browse/master/;2a697e7)


**libxtst**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxtst/browse/master/;2fde4f4)


**mesalib**

 - [Bryan T. Meyers: Disable SWR and rebuild for libdrm](https://dev.getsol.us/source/mesalib/browse/master/;4f40933)
 - [Bryan T. Meyers: Revert to 18.1.6 for boot regressions possibly related to glamour](https://dev.getsol.us/source/mesalib/browse/master/;34b4c45)
 - [Bryan T. Meyers:  Update mesa to 18.1.7](https://dev.getsol.us/source/mesalib/browse/master/;fd3b717)
 - [Bryan T. Meyers:  Update mesa to 18.1.6](https://dev.getsol.us/source/mesalib/browse/master/;422c048)
 - [Bryan T. Meyers:  Update mesa to 18.1.5](https://dev.getsol.us/source/mesalib/browse/master/;698c4e2)
 - [Peter O'Connor: Rebuild to remove rpath](https://dev.getsol.us/source/mesalib/browse/master/;79a6902)
 - [Bryan T. Meyers:  Update mesa to 18.1.4](https://dev.getsol.us/source/mesalib/browse/master/;37157be)
 - [Bryan T. Meyers: Update mesa to 18.1.3](https://dev.getsol.us/source/mesalib/browse/master/;5cc1ef4)
 - [Ikey Doherty: Update to 18.1.1](https://dev.getsol.us/source/mesalib/browse/master/;f729c8c)
 - [Ikey Doherty: Flirt with mesa 18.1.0](https://dev.getsol.us/source/mesalib/browse/master/;baceaa1)
 - [Ikey Doherty: Update mesa to 18.0.3](https://dev.getsol.us/source/mesalib/browse/master/;e9c055d)
 - [Ikey Doherty: Rebuild against LLVM 6](https://dev.getsol.us/source/mesalib/browse/master/;0bf6921)
 - [Ikey Doherty: Update mesalib to 18.0.2](https://dev.getsol.us/source/mesalib/browse/master/;c5f236c)
 - [Ikey Doherty: Update mesalib to 17.3.8](https://dev.getsol.us/source/mesalib/browse/master/;dc662e9)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/mesalib/browse/master/;7928cc3)
 - [Ikey Doherty: Update mesa to 17.3.6](https://dev.getsol.us/source/mesalib/browse/master/;70fefac)
 - [Ikey Doherty: Update mesalib to 17.3.5](https://dev.getsol.us/source/mesalib/browse/master/;73d52bd)
 - [Ikey Doherty: Downgrade Mesa due to issues with 18.0.0_rc4 (wine, AMD, etc)](https://dev.getsol.us/source/mesalib/browse/master/;3670c71)
 - [Ikey Doherty: Tentatively update mesalib to 18.0.0_rc4](https://dev.getsol.us/source/mesalib/browse/master/;89d15ea)
 - [Ikey Doherty: Rebuild for LLVM 5.0.1](https://dev.getsol.us/source/mesalib/browse/master/;4345e87)
 - [Ikey Doherty: Update mesalib to 17.3.3](https://dev.getsol.us/source/mesalib/browse/master/;c340c2e)
 - [Mateusz Mikuła: mesalib: Enable glvnd support](https://dev.getsol.us/source/mesalib/browse/master/;4479ae8)
 - [Ikey Doherty: Update mesa to 17.3.1](https://dev.getsol.us/source/mesalib/browse/master/;5cb2ecf)
 - [Joey Riches: Rebuild against libva 2.0.0](https://dev.getsol.us/source/mesalib/browse/master/;dba63c0)
 - [Ikey Doherty: Update mesalib to 17.3.0](https://dev.getsol.us/source/mesalib/browse/master/;fcf8e78)
 - [Ikey Doherty: Rebuild with less aggressive optimisations to help debug nouveau](https://dev.getsol.us/source/mesalib/browse/master/;8699d80)
 - [Ikey Doherty: Please be the last build :P Add missing libGL symlinks](https://dev.getsol.us/source/mesalib/browse/master/;4a67029)
 - [Ikey Doherty: I r stoopid](https://dev.getsol.us/source/mesalib/browse/master/;433c5f8)
 - [Ikey Doherty: Unbreak solinks](https://dev.getsol.us/source/mesalib/browse/master/;908e3cd)
 - [Ikey Doherty: Convert mesalib to ypkg (T5010)](https://dev.getsol.us/source/mesalib/browse/master/;a495af7)
 - [Ikey Doherty: Update to 17.2.6, sync optimisation set from ypkg](https://dev.getsol.us/source/mesalib/browse/master/;8ef3ae7)
 - [Ikey Doherty: Update mesalib to 17.2.5](https://dev.getsol.us/source/mesalib/browse/master/;e4e7f22)
 - [Ikey Doherty: Update mesa to 17.2.4](https://dev.getsol.us/source/mesalib/browse/master/;5b8d486)
 - [Ikey Doherty: Update to 17.2.3](https://dev.getsol.us/source/mesalib/browse/master/;2bc44ba)
 - [Ikey Doherty: Safety rebuild](https://dev.getsol.us/source/mesalib/browse/master/;a3097dd)
 - [Peter O'Connor: Rebuild against LLVM 5.0](https://dev.getsol.us/source/mesalib/browse/master/;cf9917a)
 - [Ikey Doherty: Fix crash by importing Arch patch](https://dev.getsol.us/source/mesalib/browse/master/;7befcfd)
 - [Ikey Doherty: Update mesalib to 17.2.2 as part of a GL enabling update](https://dev.getsol.us/source/mesalib/browse/master/;b7a2274)
 - [Ikey Doherty: Update mesalib to 17.1.8](https://dev.getsol.us/source/mesalib/browse/master/;9b77f54)


**libdmx**

 - [Pierre-Yves: Update libdmx to 1.1.4](https://dev.getsol.us/source/libdmx/browse/master/;9a2f064)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libdmx/browse/master/;317c27c)


**samba**

 - [Joshua Strobl: Update to 4.7.9](https://dev.getsol.us/source/samba/browse/master/;a278151)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/samba/browse/master/;6f28546)
 - [Pierre-Yves: Rebuild samba for cups 2.2.8](https://dev.getsol.us/source/samba/browse/master/;fcc1712)
 - [Rune Morling: Small (essentially no-op) change to server role config parameter.](https://dev.getsol.us/source/samba/browse/master/;718b5b1)
 - [Rune Morling: Update Samba to 4.7.8 and change to more secure default settings.](https://dev.getsol.us/source/samba/browse/master/;c0585df)
 - [Rune Morling: Actually limit access to RFC 1918 hosts by default per the docs.](https://dev.getsol.us/source/samba/browse/master/;727414f)
 - [Rune Morling: Add link to help-center Samba HOWTO.](https://dev.getsol.us/source/samba/browse/master/;43add18)
 - [Pierre-Yves: Update samba to 4.6.14 to address CVE-2018-1050 and CVE-2018-1057](https://dev.getsol.us/source/samba/browse/master/;4827a50)
 - [Rune Morling: Re-create /run/lock/msg.lock/ directory via tmpfiles.d on each boot.](https://dev.getsol.us/source/samba/browse/master/;99bdf4f)
 - [Pierre-Yves: Update samba to 4.6.13](https://dev.getsol.us/source/samba/browse/master/;67a4ed5)
 - [Peter O'Connor: Rebuild for perl 5.26.1](https://dev.getsol.us/source/samba/browse/master/;3312f99)
 - [Rune Morling: More logically coherent install section wrt. Solus-specific changes.](https://dev.getsol.us/source/samba/browse/master/;5f8b314)
 - [Rune Morling: First pass at creating a Solus-controlled default Samba config.](https://dev.getsol.us/source/samba/browse/master/;0ba7794)
 - [Pierre-Yves: Update samba to 4.6.12](https://dev.getsol.us/source/samba/browse/master/;a57f25d)
 - [Joshua Strobl: Update to 4.6.11](https://dev.getsol.us/source/samba/browse/master/;ef583cb)
 - [Joshua Strobl: Downgrade to 4.6.10 to hopefully enable gvfs to properly perform smb browsing.](https://dev.getsol.us/source/samba/browse/master/;6c0fd73)
 - [Pierre-Yves: Update samba to 4.7.2 + use system ldb and tevent](https://dev.getsol.us/source/samba/browse/master/;c57403e)
 - [Ikey Doherty: Update Samba to 4.7.0](https://dev.getsol.us/source/samba/browse/master/;3765379)
 - [Pierre-Yves: Update samba to 4.6.8 to address 3 CVEs](https://dev.getsol.us/source/samba/browse/master/;c39954c)
 - [Pierre-Yves: Update samba to 4.6.7](https://dev.getsol.us/source/samba/browse/master/;c996207)


**dconf-editor**

 - [Joshua Strobl: Update to 3.28.0](https://dev.getsol.us/source/dconf-editor/browse/master/;1fa6cfb)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/dconf-editor/browse/master/;604f138)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/dconf-editor/browse/master/;48c2e3c)


**wayland**

 - [Peter O'Connor: Update to 1.14.0](https://dev.getsol.us/source/wayland/browse/master/;121c3a5)


**adapta-gtk-theme**

 - [Joshua Strobl: Update to 3.94.0.149. Drop parallel patch, don't enable legacy Chrome support.](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d395c19)
 - [Joshua Strobl: Update to 3.94.0.143](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;ead661e)
 - [Joshua Strobl: Update to 3.94.0.132](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;56bd3fa)
 - [Joshua Strobl: Update to 3.94.0.129](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;efdafd9)
 - [Joshua Strobl: Update to 3.94.0.120](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;266feb9)
 - [Joshua Strobl: Update to 3.94.0.106](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;c141852)
 - [Joshua Strobl: Update to 3.94.0.96](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;20383cd)
 - [Joshua Strobl: Update to 3.94.0.92](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;4d11bb0)
 - [Joshua Strobl: Update to 3.94.0.89](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;1a72618)
 - [Joshua Strobl: Update to 3.94.0.84](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f6574f3)
 - [Joshua Strobl: Update to 3.94.0.65](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;19d8e1d)
 - [Joshua Strobl: Update to 3.94.0.14](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;22bdc5e)
 - [Joshua Strobl: Update to 3.94.0.7](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;2861599)
 - [Joshua Strobl: Update to 3.93.1.28](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d135f6f)
 - [Joshua Strobl: Update to 3.93.1.22](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;56049a7)
 - [Joshua Strobl: Bump to actual rel.](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;ea3fba0)
 - [Joshua Strobl: Update to 3.93.1.16](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;0673f16)
 - [Joshua Strobl: Update to 3.93.1.12](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;367e964)
 - [Joshua Strobl: Update to 3.93.1.7](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;dab95a0)
 - [Joshua Strobl: Update to 3.93.0.280](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;ed87a52)
 - [Joshua Strobl: Update to 3.93.0.277](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;4abe177)
 - [Joshua Strobl: Update to 3.93.0.262](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;2866f32)
 - [Joshua Strobl: Update to 3.93.0.258](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;5494e52)
 - [Joshua Strobl: Update to 3.93.0.252](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;9fc149e)
 - [Joshua Strobl: Update to 3.93.0.244](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f58afb0)
 - [Joshua Strobl: Update to 3.93.0.237.](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;2e0e8ac)
 - [Joshua Strobl: Update to 3.93.0.193](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;245fac1)
 - [Joshua Strobl: Update to 3.93.0.178](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d9581e4)
 - [Joshua Strobl: Update to 3.93.0.171](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;1000f32)
 - [Joshua Strobl: Update to 3.93.0.156](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;8a52300)
 - [Joshua Strobl: Update to 3.93.0.153](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;065147a)
 - [Joshua Strobl: Update to 3.93.0.152](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;8c6e952)
 - [Joshua Strobl: Update to 3.93.0.139](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;8c793cf)
 - [Joshua Strobl: Update to 3.93.0.126](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f2984a3)
 - [Joshua Strobl: Update to 3.93.0.119](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;ce964ea)
 - [Joshua Strobl: Update to 3.93.0.110](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;ed27fcf)
 - [Joshua Strobl: Update to 3.93.0.106](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;9d905a0)
 - [Joshua Strobl: Update to 3.93.0.103](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f0bf09a)
 - [Ikey Doherty: Update adapta-gtk-theme to 3.93.0.97](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d602ee0)
 - [Joshua Strobl: Update to 3.93.0.90](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;22b73cd)
 - [Joshua Strobl: Update to 3.93.0.86](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;8754499)
 - [Joshua Strobl: Update to 3.93.0.72](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;224a466)
 - [Joshua Strobl: Update to 3.93.0.49](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;470256b)
 - [Joshua Strobl: Update to 3.93.0.43](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;8a50c80)
 - [Joshua Strobl: Update to 3.93.0.38](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;2a12d7c)
 - [Joshua Strobl: Update to 3.93.0.11](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;efe158c)
 - [Joshua Strobl: Update to 3.93.0.7](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;5a4962b)
 - [Joshua Strobl: Update to 3.92.2.63](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;903ab6f)
 - [Joshua Strobl: Update to 3.92.2.54](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;519d5fe)
 - [Joshua Strobl: Update to 3.92.2.53](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;df6dc90)
 - [Joshua Strobl: Update to 3.92.2.48](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d3b0ce3)
 - [Joshua Strobl: Update to 3.92.2.43](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;7695eef)
 - [Joshua Strobl: Update to 3.92.2.40](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;47f2c15)
 - [Joshua Strobl: Update to 3.92.2.35](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;141312a)
 - [Joshua Strobl: Update to 3.92.2.32](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;eb3a06b)
 - [Joshua Strobl: Update to 3.92.2.21](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;b245549)
 - [Joshua Strobl: Update to 3.92.2.16](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;27aec0d)
 - [Joshua Strobl: Update to 3.92.2.14](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;0e5679e)
 - [Joshua Strobl: Update 3.92.1.108](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;083fe26)
 - [Joshua Strobl: Update to 3.92.1.102](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f46dfd4)
 - [Joshua Strobl: Sync with latest upstream Adapta now that we have Firefox 57.](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d886169)
 - [Joshua Strobl: Update to 3.91.2.241](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;b950c34)
 - [Ikey Doherty: Fix tiling selectors which clipped window edges](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f46b61c)
 - [Joshua Strobl: Update to 3.91.2.228](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;3142eb8)
 - [Ikey Doherty: Update adapta-gtk-theme to 3.91.2.223](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;86e0805)
 - [Ikey Doherty: Update adapta-gtk-theme to latest version](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;1cf6589)
 - [Ikey Doherty: Downgrade adapta-gtk-theme due to upstream regression](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;06ba6e6)
 - [Joshua Strobl: Update to 3.91.2.215](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;10a515a)
 - [Joshua Strobl: Update to 3.91.2.209](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;2ec78b6)
 - [Joshua Strobl: Update to 3.91.2.200](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;e9fd78f)
 - [Joshua Strobl: Update to 3.91.2.198](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f1e9249)
 - [Joshua Strobl: Update to 3.91.2.189](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;cbfd962)
 - [Joshua Strobl: Update to 3.91.2.175](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;355b2de)
 - [Joshua Strobl: Update to 3.91.2.168](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;e8713f0)
 - [Joshua Strobl: Update to 3.91.2.147](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;cc771ef)
 - [Joshua Strobl: Update to 3.91.2.144](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;66d12ce)
 - [Joshua Strobl: Update to 3.91.2.136](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;aeb8709)
 - [Joshua Strobl: Update to 3.91.2.129](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;6997d8e)
 - [Joshua Strobl: Update to 3.91.2.121](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;37eb4db)
 - [Joshua Strobl: Update to 3.91.2.117](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;3e92494)
 - [Joshua Strobl: Update to 3.91.2.111](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;57903a7)
 - [Joshua Strobl: Update to 3.91.2.109](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;41584cb)
 - [Joshua Strobl: Update to 3.91.2.101](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;d44d58a)
 - [Joshua Strobl: Update to 3.91.2.86](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;db94c1d)
 - [Joshua Strobl: Update to 3.91.2.64](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f25c26b)
 - [Joshua Strobl: Update to 3.91.2.57](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;fc1817a)
 - [Joshua Strobl: Update to 3.91.2.48](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;affbd28)
 - [Joshua Strobl: Update to 3.91.2.44](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f76cce5)
 - [Joshua Strobl: Update to 3.91.2.41](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;f82d7ec)
 - [Ikey Doherty: Update adapta-gtk-theme to 3.91.2.35](https://dev.getsol.us/source/adapta-gtk-theme/browse/master/;e5d8828)


**snappy**

 - [Pierre-Yves: Update snappy to 1.1.7](https://dev.getsol.us/source/snappy/browse/master/;2880c6e)


**papirus-icon-theme**

 - [Joshua Strobl: Sync with git to test GNOME icon fixes.](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;78e9b77)
 - [Joshua Strobl: Support Adapta and Adapta Nokto variants as a separate package. Resolves T6589.](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;baa0a1a)
 - [Joshua Strobl: Update to 20180816](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;eda77c4)
 - [Joshua Strobl: Update to 20180720](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;fb6ce6a)
 - [Joshua Strobl: Update to 20180601](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;69f74ff)
 - [Ikey Doherty: Absorb ISO definition dependencies for robustness](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;eba383c)
 - [Devil505: Update to 20180501](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;a466f95)
 - [Joshua Strobl: Update to 20180311](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;1b63533)
 - [Joshua Strobl: Update to 20180214](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;ed879a1)
 - [Joshua Strobl: Update to 20180201](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;50ee9f4)
 - [Joshua Strobl: Update to 20171223](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;c85e4f4)
 - [Joshua Strobl: Update to 20171124](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;46729b7)
 - [Joshua Strobl: Update to 20171102](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;99c306a)
 - [Joshua Strobl: Remove basically everything that causes issues as a result of symlinks.](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;f8f1785)
 - [Joshua Strobl: Update to 20171007](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;6b0ea39)
 - [Joshua Strobl: Update to 20170921](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;ed32cdc)
 - [Joshua Strobl: Update to 20170828. Full changelog [here](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/releases/tag/20170828).](https://dev.getsol.us/source/papirus-icon-theme/browse/master/;ad50b5c)


**apparmor**

 - [Peter O'Connor: Bump apparmor to force usysconf to kick in](https://dev.getsol.us/source/apparmor/browse/master/;9df5176)
 - [Ikey Doherty: Remove systemd integration from AppArmor](https://dev.getsol.us/source/apparmor/browse/master/;7ede5c4)


**inxi**

 - [Bryan T. Meyers:  Updated to 3.0.21](https://dev.getsol.us/source/inxi/browse/master/;29a83f2)
 - [Pierre-Yves: Update inxi to 3.0.20](https://dev.getsol.us/source/inxi/browse/master/;5855469)
 - [Ikey Doherty: Update inxi to 3.0.10 - completely rewritten in Perl for moar speed!](https://dev.getsol.us/source/inxi/browse/master/;9590138)
 - [Pierre-Yves: Update inxi to 2.3.38](https://dev.getsol.us/source/inxi/browse/master/;74954c9)


**libreoffice**

 - [Bryan T. Meyers: Rebuild for postgres](https://dev.getsol.us/source/libreoffice/browse/master/;ef334fc)
 - [Pierre-Yves: Update libreoffice to 6.1.0.3](https://dev.getsol.us/source/libreoffice/browse/master/;cab7390)
 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/libreoffice/browse/master/;49f1e27)
 - [Pierre-Yves: Rebuild libreoffice for cups 2.2.8](https://dev.getsol.us/source/libreoffice/browse/master/;69dd253)
 - [Pierre-Yves: Update libreoffice to 6.0.6.2](https://dev.getsol.us/source/libreoffice/browse/master/;0eb961d)
 - [Pierre-Yves: Update libreoffice to 6.0.5.2](https://dev.getsol.us/source/libreoffice/browse/master/;e98db72)
 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libreoffice/browse/master/;c1e8b7b)
 - [Pierre-Yves: Update libreoffice to 6.0.4.2](https://dev.getsol.us/source/libreoffice/browse/master/;b53a5b5)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/libreoffice/browse/master/;789cb95)
 - [Joshua Strobl: Safety rebuild.](https://dev.getsol.us/source/libreoffice/browse/master/;3767a15)
 - [Joey Riches: Build against system xmlsec](https://dev.getsol.us/source/libreoffice/browse/master/;67a08c6)
 - [Pierre-Yves: Update libreoffice to 6.0.3.2](https://dev.getsol.us/source/libreoffice/browse/master/;a73e3a7)
 - [Pierre-Yves: Rebuild for libboost 1.66.0](https://dev.getsol.us/source/libreoffice/browse/master/;c21b5a0)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libreoffice/browse/master/;5c2eac0)
 - [Pierre-Yves: Rebuild for libboost 1.65](https://dev.getsol.us/source/libreoffice/browse/master/;d3a3f5c)
 - [Pierre-Yves: Update libreoffice to 6.0.2.1](https://dev.getsol.us/source/libreoffice/browse/master/;24b3399)
 - [Pierre-Yves: Update libreoffice to 6.0.1.1](https://dev.getsol.us/source/libreoffice/browse/master/;9f030b7)
 - [Pierre-Yves: Bump release number once again because I am an idiot](https://dev.getsol.us/source/libreoffice/browse/master/;1751b6a)
 - [Pierre-Yves: Bump release number because the build server hates me](https://dev.getsol.us/source/libreoffice/browse/master/;c10f6ef)
 - [Pierre-Yves: Fix liborcus version](https://dev.getsol.us/source/libreoffice/browse/master/;39ef5fc)
 - [Pierre-Yves: Update libreoffice to 6.0.0.3](https://dev.getsol.us/source/libreoffice/browse/master/;82b91ba)
 - [Pierre-Yves: Update libreoffice to 5.4.4.2](https://dev.getsol.us/source/libreoffice/browse/master/;b40a1aa)
 - [Ikey Doherty: Ok undo that, breaks LibreOffice UI completely.](https://dev.getsol.us/source/libreoffice/browse/master/;9b8e14f)
 - [Ikey Doherty: Do something completely stupid, enable LTO](https://dev.getsol.us/source/libreoffice/browse/master/;f9970c4)
 - [Peter O'Connor: Update to 5.4.3.2](https://dev.getsol.us/source/libreoffice/browse/master/;c56e2f3)
 - [Ikey Doherty: Nuke LibreOffice KDE appdata file](https://dev.getsol.us/source/libreoffice/browse/master/;718c1ec)
 - [Pierre-Yves: Rebuild against libhunspell 1.6.2](https://dev.getsol.us/source/libreoffice/browse/master/;ad24ce9)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/libreoffice/browse/master/;9e6c43d)
 - [Joshua Strobl: Rebuild against gstreamer and GTK.](https://dev.getsol.us/source/libreoffice/browse/master/;9142b22)
 - [Ikey Doherty: Rebuild for dynamic linking consistency with poppler](https://dev.getsol.us/source/libreoffice/browse/master/;37d0882)
 - [Peter O'Connor: Update to 5.4.2.2](https://dev.getsol.us/source/libreoffice/browse/master/;bcb2cd3)
 - [Peter O'Connor: Rebuild for poppler 0.60](https://dev.getsol.us/source/libreoffice/browse/master/;6a36f4b)
 - [Justin Zobel: Update to 5.4.1.2 and enable postgresql](https://dev.getsol.us/source/libreoffice/browse/master/;594e379)


**gmp**

 - [Ikey Doherty: Make headers visible to musl builds](https://dev.getsol.us/source/gmp/browse/master/;1f97039)
 - [Ikey Doherty: Make gmp usable with musl](https://dev.getsol.us/source/gmp/browse/master/;91c271f)


**glibmm**

 - [Joshua Strobl: Update to latest stable release.](https://dev.getsol.us/source/glibmm/browse/master/;973e4fa)
 - [Joshua Strobl: Update to 2.54.1](https://dev.getsol.us/source/glibmm/browse/master/;9497820)


**libdrm**

 - [Joshua Strobl: Update to 2.4.94](https://dev.getsol.us/source/libdrm/browse/master/;fef764b)
 - [Ikey Doherty: Update libdrm to 2.4.92](https://dev.getsol.us/source/libdrm/browse/master/;bb48cb4)
 - [Ikey Doherty: Update libdrm to 2.4.91](https://dev.getsol.us/source/libdrm/browse/master/;615b0e1)
 - [Ikey Doherty: Update libdrm to 2.4.89](https://dev.getsol.us/source/libdrm/browse/master/;da804bf)
 - [Ikey Doherty: Update to latest libdrm for Mesa enabling](https://dev.getsol.us/source/libdrm/browse/master/;d979464)
 - [Pierre-Yves: Update libdrm to 2.4.83](https://dev.getsol.us/source/libdrm/browse/master/;f6139f8)


**libglade**

 - [Joshua Strobl: Safety rebuild against atk and cairo.](https://dev.getsol.us/source/libglade/browse/master/;ce9acc6)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/libglade/browse/master/;fcbec9c)


**libixion**

 - [Pierre-Yves: Rebuild for libboost 1.66.0](https://dev.getsol.us/source/libixion/browse/master/;50cc5c1)
 - [Pierre-Yves: Rebuild for libboost 1.65](https://dev.getsol.us/source/libixion/browse/master/;c02398e)
 - [Pierre-Yves: Update libixion to 0.13.0](https://dev.getsol.us/source/libixion/browse/master/;4cbe534)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/libixion/browse/master/;b0a02a9)


**shadow**

 - [Pierre-Yves: Update shadow to 4.6](https://dev.getsol.us/source/shadow/browse/master/;dc9abc4)
 - [Peter O'Connor: Address CVE-2018-7169](https://dev.getsol.us/source/shadow/browse/master/;07618c7)
 - [Ikey Doherty: pam.d: Ensure pam_limits is present](https://dev.getsol.us/source/shadow/browse/master/;cb4427b)
 - [Ikey Doherty: Bump for real shadow inclusion, add missing pam_loginuid for polkit](https://dev.getsol.us/source/shadow/browse/master/;78131da)
 - [Pierre-Yves: Update shadow to 4.5 and convert to package.yml](https://dev.getsol.us/source/shadow/browse/master/;03395d9)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/shadow/browse/master/;483da27)


**pcre2**

 - [Joey Riches: Update pcre2 to 10.31](https://dev.getsol.us/source/pcre2/browse/master/;2735304)
 - [Peter O'Connor: Update to 10.30](https://dev.getsol.us/source/pcre2/browse/master/;05393ab)


**python3**

 - [Ikey Doherty: Update Python3 to 3.6.5](https://dev.getsol.us/source/python3/browse/master/;64be20b)
 - [Austin Riba: Add enable-loadable-sqlite-extensions compile flag](https://dev.getsol.us/source/python3/browse/master/;7c8295c)
 - [Pierre-Yves: Rebuild for gdbm 1.14.1](https://dev.getsol.us/source/python3/browse/master/;95aa6f3)
 - [Ikey Doherty: Rebuild with non janky toolchain](https://dev.getsol.us/source/python3/browse/master/;daffd1a)
 - [Peter O'Connor: Update to 3.6.4 and enable PGO](https://dev.getsol.us/source/python3/browse/master/;53d5198)


**libmtp**

 - [Ikey Doherty: Patch libmtp to emit 4.14 kernel compatible udev rules](https://dev.getsol.us/source/libmtp/browse/master/;8dd5eaa)
 - [Pierre-Yves: Update libmtp to 1.1.15](https://dev.getsol.us/source/libmtp/browse/master/;aaf43ab)
 - [Pierre-Yves: Update libmtp to 1.1.14](https://dev.getsol.us/source/libmtp/browse/master/;de6acd4)


**libcaca**

 - [Pierre-Yves: Safety rebuild for imlib2 1.5.1](https://dev.getsol.us/source/libcaca/browse/master/;2e6f6aa)


**librevenge**

 - [Pierre-Yves: Disable-werror for gcc7 & enable unit tests](https://dev.getsol.us/source/librevenge/browse/master/;a927ba1)


**hexchat**

 - [Pierre-Yves: Update hexchat to 2.14.2](https://dev.getsol.us/source/hexchat/browse/master/;77d13bf)
 - [Ikey Doherty: Default to coloured nicks in hexchat](https://dev.getsol.us/source/hexchat/browse/master/;b45d6de)
 - [Pierre-Yves: Update hexchat to 2.14.1](https://dev.getsol.us/source/hexchat/browse/master/;383227b)
 - [Pierre-Yves: Update hexchat to 2.14.0](https://dev.getsol.us/source/hexchat/browse/master/;648e3a5)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/hexchat/browse/master/;2b5ca56)
 - [Peter O'Connor: Rebuild for perl 5.26.1](https://dev.getsol.us/source/hexchat/browse/master/;10b7ecd)


**xorg-server**

 - [Joey Riches: Update xvfb-run script from Fedora](https://dev.getsol.us/source/xorg-server/browse/master/;fc99964)
 - [Tim Klocke: Add tablet support to XWayland](https://dev.getsol.us/source/xorg-server/browse/master/;3895a58)
 - [Joey Riches: Provide xvfb subpackage](https://dev.getsol.us/source/xorg-server/browse/master/;6ab83f6)
 - [Ikey Doherty: Update X.Org to 1.19.6](https://dev.getsol.us/source/xorg-server/browse/master/;82ca6d1)
 - [Ikey Doherty: Remove evil patch breaking 1.19.5 on hybrid GPU](https://dev.getsol.us/source/xorg-server/browse/master/;0deb65e)
 - [Ikey Doherty: Update xorg-server to 1.19.5 (again >_>)](https://dev.getsol.us/source/xorg-server/browse/master/;3ac0f7a)
 - [Ikey Doherty: Remove speed/lto to help debug xorg-server crash on Nouveau](https://dev.getsol.us/source/xorg-server/browse/master/;d205aa2)
 - [Ikey Doherty: Convert xorg-server to ypkg (T5010)](https://dev.getsol.us/source/xorg-server/browse/master/;a565b67)
 - [Ikey Doherty: Rebuild for xfont](https://dev.getsol.us/source/xorg-server/browse/master/;69b33f8)
 - [Pierre-Yves: Rebuild for libxfont 1.5.3](https://dev.getsol.us/source/xorg-server/browse/master/;e0adc74)
 - [Peter O'Connor: Address multiple CVEs:](https://dev.getsol.us/source/xorg-server/browse/master/;293c907)
 - [Ikey Doherty: Back to 1.18.4. Again.](https://dev.getsol.us/source/xorg-server/browse/master/;bbe548c)
 - [Ikey Doherty: Revert "Update to 1.19.4. Again." Ain't happening, still broken](https://dev.getsol.us/source/xorg-server/browse/master/;ab2e1fe)
 - [Ikey Doherty: Update to 1.19.4. Again.](https://dev.getsol.us/source/xorg-server/browse/master/;6c5e244)
 - [Ikey Doherty: Revert "Update `xorg-server` to 1.19.4"](https://dev.getsol.us/source/xorg-server/browse/master/;a3c0059)
 - [Ikey Doherty: Attempt inclusion of Ubuntu patches to resolve multiGPU issues](https://dev.getsol.us/source/xorg-server/browse/master/;7ca91d7)
 - [Ikey Doherty: Update `xorg-server` to 1.19.4](https://dev.getsol.us/source/xorg-server/browse/master/;6810c47)
 - [Ikey Doherty: Bump for inclusion](https://dev.getsol.us/source/xorg-server/browse/master/;48ddc7e)
 - [Ikey Doherty: Downgrade to 1.18.4, wait for 1.19.4](https://dev.getsol.us/source/xorg-server/browse/master/;0c8cd93)
 - [Ikey Doherty: Revert "Backport 47 patches in futile attempt to make this guy work"](https://dev.getsol.us/source/xorg-server/browse/master/;14b0122)
 - [Ikey Doherty: Backport 47 patches in futile attempt to make this guy work](https://dev.getsol.us/source/xorg-server/browse/master/;a2a8ef6)
 - [Ikey Doherty: Update xorg-server to 1.19.3](https://dev.getsol.us/source/xorg-server/browse/master/;960b130)


**breeze-cursor-theme**

 - [Peter O'Connor: Update to 5.11.0 for 32px cursors](https://dev.getsol.us/source/breeze-cursor-theme/browse/master/;ed2f34f)


**binutils**

 - [Peter O'Connor: Toolchain rebootstrap](https://dev.getsol.us/source/binutils/browse/master/;21532e7)
 - [Peter O'Connor: Update to 2.31.1](https://dev.getsol.us/source/binutils/browse/master/;36a759d)
 - [Peter O'Connor: Rebuild after rebootstrap](https://dev.getsol.us/source/binutils/browse/master/;2f15cb5)
 - [Peter O'Connor: Update to 2.30 and commence rebootstrap of toolchain](https://dev.getsol.us/source/binutils/browse/master/;797212d)
 - [Joey Riches: Add check support with dejagnu](https://dev.getsol.us/source/binutils/browse/master/;2a68591)
 - [Ikey Doherty: Rebuild against self and new GCC](https://dev.getsol.us/source/binutils/browse/master/;5787c85)
 - [Ikey Doherty: Restore binutils patch for `LD_AS_NEEDED` behaviour](https://dev.getsol.us/source/binutils/browse/master/;bdb0851)
 - [Ikey Doherty: Rebootstrap binutils with previous binutils/glibc/gcc](https://dev.getsol.us/source/binutils/browse/master/;5c0d7a4)
 - [Ikey Doherty: Updare binutils to 2.29.1](https://dev.getsol.us/source/binutils/browse/master/;c4e76c3)
 - [Ikey Doherty: Forbid Solus Death By System Devel Removal](https://dev.getsol.us/source/binutils/browse/master/;9420900)
 - [Ikey Doherty: Update to 2.28](https://dev.getsol.us/source/binutils/browse/master/;65f2d36)
 - [Peter O'Connor: Separate ld.gold from binutils](https://dev.getsol.us/source/binutils/browse/master/;658c0db)
 - [Ikey Doherty: Update to 2.27 and pave way for full LTO/gold](https://dev.getsol.us/source/binutils/browse/master/;389f848)
 - [Ikey Doherty: Enable deterministic archives by default](https://dev.getsol.us/source/binutils/browse/master/;ee75f14)
 - [Ikey Doherty: Add the missing libiberty](https://dev.getsol.us/source/binutils/browse/master/;5ef184e)
 - [Ikey Doherty: Rebuild](https://dev.getsol.us/source/binutils/browse/master/;431593c)
 - [Ikey Doherty: Rebuild for cflags](https://dev.getsol.us/source/binutils/browse/master/;3184293)
 - [Ikey Doherty: Enable secure PLT](https://dev.getsol.us/source/binutils/browse/master/;362eec7)
 - [Ikey Doherty: Rebuild to fix component](https://dev.getsol.us/source/binutils/browse/master/;58d3610)
 - [Ikey Doherty: Enable multilib](https://dev.getsol.us/source/binutils/browse/master/;611e5cc)
 - [Ikey Doherty: Update to 2.25.1](https://dev.getsol.us/source/binutils/browse/master/;2a226d3)
 - [Ikey Doherty: Rebuild for cflags](https://dev.getsol.us/source/binutils/browse/master/;0330499)
 - [Ikey Doherty: Fix toolchain name](https://dev.getsol.us/source/binutils/browse/master/;207234e)
 - [Ikey Doherty: Rebase patch on our current binutils](https://dev.getsol.us/source/binutils/browse/master/;9162c5a)
 - [Ikey Doherty: Remove ld.texinfo changes due to build failure](https://dev.getsol.us/source/binutils/browse/master/;41113c6)
 - [Ikey Doherty: Integrate the old Intel patch for LD_AS_NEEDED environmental variable](https://dev.getsol.us/source/binutils/browse/master/;7346831)


**gnome-settings-daemon**

 - [Pierre-Yves: Rebuild gnome-settings-daemon for cups 2.2.8](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;f8af59d)
 - [Ikey Doherty: Add missing runtime dependencies](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;5a39b77)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;08a7432)
 - [Ikey Doherty: Rebuild..](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;712a2a2)
 - [Ikey Doherty: Rebuild for NM](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;bc28795)
 - [Ikey Doherty: Rebuild against new NM](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;2829662)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;98b5229)
 - [Joshua Strobl: Update to 3.26.1. Update patches.](https://dev.getsol.us/source/gnome-settings-daemon/browse/master/;7664a6c)


**espeak-ng**

 - [Bryan T. Meyers: Updated to 1.49.2](https://dev.getsol.us/source/espeak-ng/browse/master/;2efcc6d)


**shared-mime-info**

 - [Peter O'Connor: Update to 1.9, no longer build mimedb](https://dev.getsol.us/source/shared-mime-info/browse/master/;663d8a3)


**libcdio**

 - [Pierre-Yves: Update libcdio to 2.0.0 & convert to ypkg](https://dev.getsol.us/source/libcdio/browse/master/;99621f5)
 - [Pierre-Yves: Update libcdio to 0.94](https://dev.getsol.us/source/libcdio/browse/master/;1f00139)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libcdio/browse/master/;ff9cf9d)


**solus-hardware-config**

 - [Ikey Doherty: Temporarily (again) remove hard dep on intel video driver](https://dev.getsol.us/source/solus-hardware-config/browse/master/;56a16be)
 - [Ikey Doherty: Reintroduce dependency on xorg-driver-video-intel](https://dev.getsol.us/source/solus-hardware-config/browse/master/;c2b8500)
 - [Ikey Doherty: Update solus-hardware-config to v16](https://dev.getsol.us/source/solus-hardware-config/browse/master/;bc0bc94)
 - [Ikey Doherty: Update solus-hardware-config to version 15](https://dev.getsol.us/source/solus-hardware-config/browse/master/;f21e67a)
 - [Ikey Doherty: Remove hard-dep on Intel, might be causing issues](https://dev.getsol.us/source/solus-hardware-config/browse/master/;16f8135)
 - [Ikey Doherty: Introduce temporary hard dependency on `xorg-driver-video-intel`](https://dev.getsol.us/source/solus-hardware-config/browse/master/;de424fa)
 - [Ikey Doherty: Revert last change, now "fixed".](https://dev.getsol.us/source/solus-hardware-config/browse/master/;a099686)
 - [Ikey Doherty: Disable 11n due to issues with it breaking PSK](https://dev.getsol.us/source/solus-hardware-config/browse/master/;46b8b25)
 - [Ikey Doherty: Stop dumping huge cores](https://dev.getsol.us/source/solus-hardware-config/browse/master/;025aae4)


**libfontenc**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libfontenc/browse/master/;5490214)


**libicu**

 - [Joey Riches: Update libicu to 61.1](https://dev.getsol.us/source/libicu/browse/master/;6fe8f4a)
 - [Joey Riches: Update libicu to 60.2](https://dev.getsol.us/source/libicu/browse/master/;d70bb58)
 - [Peter O'Connor: Address CVE-2017-15422](https://dev.getsol.us/source/libicu/browse/master/;990c80d)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/libicu/browse/master/;c8c7158)
 - [Peter O'Connor: Address CVE-2017-14952](https://dev.getsol.us/source/libicu/browse/master/;b790996)
 - [Pierre-Yves: Update libicu to 59.1](https://dev.getsol.us/source/libicu/browse/master/;80194c3)


**unrar**

 - [Philipp Trulson: Update unrar to 5.6.5](https://dev.getsol.us/source/unrar/browse/master/;68ddfa1)
 - [Pierre-Yves: Update unrar to 5.6.4](https://dev.getsol.us/source/unrar/browse/master/;c2a45dd)
 - [Pierre-Yves: Update unrar to 5.6.2](https://dev.getsol.us/source/unrar/browse/master/;f6e6be4)
 - [Pierre-Yves: Update unrar to 5.6.1](https://dev.getsol.us/source/unrar/browse/master/;b55dfb4)
 - [Peter O'Connor: Update to 5.5.8 to address the following CVEs:](https://dev.getsol.us/source/unrar/browse/master/;a7262ca)


**libxi**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxi/browse/master/;e535bf9)
 - [Ikey Doherty: Update libxi to 1.7.9](https://dev.getsol.us/source/libxi/browse/master/;ab3f278)


**glibc**

 - [Peter O'Connor: Toolchain rebootstrap](https://dev.getsol.us/source/glibc/browse/master/;ef16d40)
 - [Ikey Doherty: Proceed with bootstrap](https://dev.getsol.us/source/glibc/browse/master/;42e207f)
 - [Peter O'Connor: Update to 2.27 to continue toolchain bootstrap](https://dev.getsol.us/source/glibc/browse/master/;366a467)
 - [Peter O'Connor: Update to 2.26 master branch (8 Feb 2018)](https://dev.getsol.us/source/glibc/browse/master/;0dbb4e4)
 - [Ikey Doherty: Workaround 32-bit Aspyr ports not working anymore with GCC 7](https://dev.getsol.us/source/glibc/browse/master/;117ae54)
 - [Ikey Doherty: Rebuild for bootstrap](https://dev.getsol.us/source/glibc/browse/master/;cf5fdef)
 - [Ikey Doherty: Integrate Alexander Monakov's rtld performance patch](https://dev.getsol.us/source/glibc/browse/master/;afa5b63)


**libice**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libice/browse/master/;25330fd)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libice/browse/master/;b5b3a4d)


**libxt**

 - [Ikey Doherty: Rebuild for dep corrections](https://dev.getsol.us/source/libxt/browse/master/;12c414d)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxt/browse/master/;cc02cb1)


**linux-firmware**

 - [Bryan T. Meyers: Updated amdgpu firmware (likely DC/DAL), VegaM](https://dev.getsol.us/source/linux-firmware/browse/master/;6d9dbf3)
 - [Bryan T. Meyers: Updated to June 06 2018](https://dev.getsol.us/source/linux-firmware/browse/master/;bfb7360)
 - [Ikey Doherty: Update linux-firmware to 20180518](https://dev.getsol.us/source/linux-firmware/browse/master/;a4ba3f2)
 - [Ikey Doherty: Update linux-firmware to 20180501](https://dev.getsol.us/source/linux-firmware/browse/master/;eb90e0f)
 - [Ikey Doherty: Update linux-firmware for further iwlwifi support](https://dev.getsol.us/source/linux-firmware/browse/master/;c12ee3f)
 - [Ikey Doherty: Sync firmware for kernel bumps](https://dev.getsol.us/source/linux-firmware/browse/master/;cd2f003)
 - [Ikey Doherty: Update linux-firmware to 20180314](https://dev.getsol.us/source/linux-firmware/browse/master/;7c00336)
 - [Ikey Doherty: Update linux-firmware to 20180222](https://dev.getsol.us/source/linux-firmware/browse/master/;fe5b497)
 - [Ikey Doherty: Update linux-firmware to 20180211](https://dev.getsol.us/source/linux-firmware/browse/master/;f156c84)
 - [Ikey Doherty: Update linux-firmware for Intel Bluetooth fixes](https://dev.getsol.us/source/linux-firmware/browse/master/;fc81a9d)
 - [Ikey Doherty: Update linux-firmware to 20180118](https://dev.getsol.us/source/linux-firmware/browse/master/;479f0f1)
 - [Ikey Doherty: Update linux-firmware to latest version](https://dev.getsol.us/source/linux-firmware/browse/master/;a133cce)
 - [Ikey Doherty: Sync linux-firmware with git](https://dev.getsol.us/source/linux-firmware/browse/master/;216d4f5)
 - [Ikey Doherty: Update linux-firmware for newest broadcom firmware](https://dev.getsol.us/source/linux-firmware/browse/master/;301f460)
 - [Ikey Doherty: Fix wonky relno](https://dev.getsol.us/source/linux-firmware/browse/master/;05a700a)
 - [Ikey Doherty: Update linux-firmware to 20171205](https://dev.getsol.us/source/linux-firmware/browse/master/;4ed4154)
 - [Ikey Doherty: Sync linux-firmware to 20171009 snapshot](https://dev.getsol.us/source/linux-firmware/browse/master/;83d4121)
 - [Ikey Doherty: Update linux-firmware to latest git snapshot](https://dev.getsol.us/source/linux-firmware/browse/master/;366be35)


**nvidia-304-glx-driver**

 - [Bryan T. Meyers: Rebuild for kernel](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;fc89011)
 - [Bryan T. Meyers: Rebuild for kernel](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;2293bab)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;e35912b)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;b25acee)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;1044fe7)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;edd0a66)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;500d4bc)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;d4cb448)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;72bbda4)
 - [Bryan T. Meyers: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;fed3bed)
 - [Bryan T. Meyers: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;5f0a794)
 - [Bryan T. Meyers: Rebuild for kernel updates](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;73462cc)
 - [Bryan T. Meyers: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;6b3d0a8)
 - [Bryan T. Meyers: Rebuild for linux-current 4.17.2](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;37fc143)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;343dcfa)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;b3d3221)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;20b5546)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;6cc33c4)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;6bd1eb8)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;05f1d2a)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;86a785c)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;c63e32b)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;68cd7a8)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;370b6ed)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;700849e)
 - [Ikey Doherty: Initial commit](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;b517b58)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;5862f90)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;e97cf56)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;f71558a)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;bf2b9ec)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;96b4d91)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;798cced)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;8ffbac6)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;b3a9819)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;0e3f87e)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;d661791)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;a303cc1)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;833a699)
 - [Ikey Doherty: Rebuild against new kernels, borrow Ubuntu's 4.15 patch](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;488620f)
 - [Ikey Doherty: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;85f7c16)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;f4ad75f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;e3c31a2)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;7fb6d51)
 - [Ikey Doherty: Fix broken xorg configuration (T4901)](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;36a0d58)
 - [Ikey Doherty: Initial pass at making nvidia-304-glx-driver "happy" in glvnd land](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;1f43bfb)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;6995bbe)
 - [Ikey Doherty: Rebuild for newly built kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;1d8736b)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;031e3a4)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;152c4d6)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;669b290)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;7a183fd)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;8bd74f7)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;dd79b31)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;3cadb0b)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;6516ba7)
 - [Ikey Doherty: Port `nvidia-304-glx-driver` to 4.14 APIs](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;bf58b5a)
 - [Ikey Doherty: Add missing permanent module attribute](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;54d990c)
 - [Ikey Doherty: Convert nvidia-304-glx-driver to ypkg for T5010](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;78144af)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;b4b9962)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;6c4098f)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;7747e3b)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;be8797b)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;2a09568)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;2dcff85)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;e1d9158)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;03121aa)
 - [Ikey Doherty: Rebuild for linux-current](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;321a7fc)
 - [Ikey Doherty: Rebuild for kernels, add missing udev file](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;f5ce902)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;1828b9d)
 - [Ikey Doherty: Rebuild for kernel enabling](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;8498b65)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;937d6b1)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;0f5c714)
 - [Peter O'Connor: Remove unused patches](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;d5e2b35)
 - [Peter O'Connor: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;a7e3c6e)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;2cd0212)
 - [Ikey Doherty: Rebuild for kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;8bf441a)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;9a06127)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;3510b34)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;d4cb319)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;5b748a6)
 - [Ikey Doherty: Rebuild for new kernels](https://dev.getsol.us/source/nvidia-304-glx-driver/browse/master/;1bd0615)


**libwebkit-gtk**

 - [Joshua Strobl: Update to 2.20.4](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;92a0cb6)
 - [Joey Riches: Rebuild against libicu 61.1](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;1f121be)
 - [Peter O'Connor: Update to 2.20.3 to address multiple CVEs:](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;a0758b2)
 - [Peter O'Connor: Update to 2.20.2, no-symbolic to make GOA work again](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;0218c0a)
 - [Pierre-Yves: Rebuild for libpng 1.6.34](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;54d6948)
 - [Joshua Strobl: Revert to 2.18.6 again.](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;d176939)
 - [Joshua Strobl: Check if 2.20.0 functions correctly (i.e. displays pages) or if there is a completely separate issue that happens to affect webkit.](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;712ca68)
 - [Joshua Strobl: Revert "See if GCC patch fixes build."](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;9328ecf)
 - [Joshua Strobl: See if GCC patch fixes build.](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;8ac2899)
 - [Joshua Strobl: Bump to 45 to see about getting newer WebKit, now that we should be able to move to it.](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;0705e8a)
 - [Joshua Strobl: Revert "Revert back to 2.18.6 temporarily cause broken"](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;5f5725d)
 - [Peter O'Connor: Revert back to 2.18.6 temporarily cause broken](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;a658899)
 - [Peter O'Connor: Update ABI information](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;c2be67a)
 - [Peter O'Connor: Update to 2.20.1 to resolve multiple CVEs:](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;9765e18)
 - [Joey Riches: Update abireport for libwebkit-gtk](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;c085608)
 - [Joey Riches: Rebuild against libicu 60.2](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;ef62c6f)
 - [Joshua Strobl: Update to 2.18.6](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;ea0eff8)
 - [Peter O'Connor: Update to 2.18.5 to resolve CVE-2017-5715 and CVE-2017-5753](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;acc5215)
 - [Joshua Strobl: Update to 2.18.4](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;73ce768)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;d1122f9)
 - [Peter O'Connor: Update to 2.18.3 to resolve following CVEs:](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;7b86f56)
 - [Joey Riches: Remove gold linker from builddeps](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;c44dbf0)
 - [Joey Riches: Rebuild against libicu 59.1](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;758039e)
 - [Joshua Strobl: Update to 2.18.1](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;17fc5df)
 - [Joshua Strobl: Update to 2.18.0](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;b441dfd)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libwebkit-gtk/browse/master/;bf04085)


**bc**

 - [Philipp Trulson: Update bc to 1.07.1](https://dev.getsol.us/source/bc/browse/master/;4201af3)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/bc/browse/master/;721a209)


**libgdata**

 - [Joshua Strobl: Safety rebuild. Updated license.](https://dev.getsol.us/source/libgdata/browse/master/;517a0a7)
 - [Bryan T. Meyers: Update to 0.17.9](https://dev.getsol.us/source/libgdata/browse/master/;b3d1c9d)


**tdb**

 - [Rune Morling: Update tdb to 1.3.15 for Samba 4.7.8](https://dev.getsol.us/source/tdb/browse/master/;8368866)
 - [Joshua Strobl: Downgrade to 1.3.12 for ldb and Samba 4.6.10.](https://dev.getsol.us/source/tdb/browse/master/;0f26007)
 - [Pierre-Yves: Fix license, add check section](https://dev.getsol.us/source/tdb/browse/master/;7c23040)
 - [Ikey Doherty: Update tdb to 1.3.15](https://dev.getsol.us/source/tdb/browse/master/;202b9c5)


**vapoursynth**

 - [Joey Riches: Update vapoursynth to R43](https://dev.getsol.us/source/vapoursynth/browse/master/;d02a71c)
 - [Pierre-Yves: Rebuild for imagemagick 7.0.7-30](https://dev.getsol.us/source/vapoursynth/browse/master/;96bc742)
 - [Pierre-Yves: Rebuild for imagemagick 7.0.7-26](https://dev.getsol.us/source/vapoursynth/browse/master/;4f0322c)
 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/vapoursynth/browse/master/;8a6ef2b)
 - [Pierre-Yves: Update vapoursynth to R42.1](https://dev.getsol.us/source/vapoursynth/browse/master/;0f554b9)
 - [Pierre-Yves: Rebuild for imagemagick 7.0.7-15](https://dev.getsol.us/source/vapoursynth/browse/master/;51cbbe7)
 - [Pierre-Yves: Update vapoursynth to R40](https://dev.getsol.us/source/vapoursynth/browse/master/;5cae318)
 - [Joey Riches: Rebuild against libass 0.14](https://dev.getsol.us/source/vapoursynth/browse/master/;a9fda5c)


**libxv**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxv/browse/master/;e423eb6)


**dmidecode**

 - [Alexander Nordahl: Update to 3.1](https://dev.getsol.us/source/dmidecode/browse/master/;9f579e8)


**wget**

 - [Peter O'Connor: Update to 1.19.5 to address CVE-2018-0494](https://dev.getsol.us/source/wget/browse/master/;9a99ab2)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/wget/browse/master/;33eafb1)
 - [Peter O'Connor: Update to 1.19.4, resolves T5778](https://dev.getsol.us/source/wget/browse/master/;af41973)
 - [Ikey Doherty: Update wget to 1.19.3](https://dev.getsol.us/source/wget/browse/master/;459b69e)
 - [Pierre-Yves: Update wget to 1.19.2](https://dev.getsol.us/source/wget/browse/master/;39a7d60)


**libcmis**

 - [Pierre-Yves: Rebuild for libboost 1.66.0](https://dev.getsol.us/source/libcmis/browse/master/;5ab5a15)
 - [Pierre-Yves: Rebuild for libboost 1.65](https://dev.getsol.us/source/libcmis/browse/master/;f0cc5ba)


**xcb-util-keysyms**

 - [Pierre-Yves: xcb-util-keysyms enable emul32](https://dev.getsol.us/source/xcb-util-keysyms/browse/master/;1ae3a3e)


**libjpeg-turbo**

 - [Peter O'Connor: Update to 2.0.0](https://dev.getsol.us/source/libjpeg-turbo/browse/master/;4684a50)
 - [Peter O'Connor: Address CVE-2018-1152](https://dev.getsol.us/source/libjpeg-turbo/browse/master/;e38e423)
 - [Pierre-Yves: Update libjpeg-turbo to 1.5.3](https://dev.getsol.us/source/libjpeg-turbo/browse/master/;1fa42ca)


**acl**

 - [Ikey Doherty: Rebuild for initrd](https://dev.getsol.us/source/acl/browse/master/;d22e45b)
 - [Ikey Doherty: Make acl usable with musl](https://dev.getsol.us/source/acl/browse/master/;54f6bd8)
 - [Ikey Doherty: Rebuild against attr](https://dev.getsol.us/source/acl/browse/master/;5206610)


**libexif**

 - [Joshua Strobl: Resolve CVE-2017-7544.](https://dev.getsol.us/source/libexif/browse/master/;4549a80)
 - [Pierre-Yves: Patch libexif for CVE-2016-6328](https://dev.getsol.us/source/libexif/browse/master/;5372c9c)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libexif/browse/master/;2a4cba3)


**libxres**

 - [Ikey Doherty: Update libxres to 1.2.0](https://dev.getsol.us/source/libxres/browse/master/;9ed5d29)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxres/browse/master/;bccd5d0)


**libgusb**

 - [Ikey Doherty: Update libgusb to 0.3.0](https://dev.getsol.us/source/libgusb/browse/master/;c7be161)
 - [Joshua Strobl: Re-add Vala as a builddep so we get VAPI files. These are needed for simple-scan.](https://dev.getsol.us/source/libgusb/browse/master/;5eabafa)
 - [Pierre-Yves: Update libgusb to 0.2.11](https://dev.getsol.us/source/libgusb/browse/master/;f43d8e1)
 - [Joshua Strobl: Enable Vala bindings for simple-scan upgrade.](https://dev.getsol.us/source/libgusb/browse/master/;e9f51bc)


**glib2**

 - [Joshua Strobl: Rebuild to see if 32bit is sorted.](https://dev.getsol.us/source/glib2/browse/master/;d7017a6)
 - [Joshua Strobl: Upgrade to latest in 2.56 series.](https://dev.getsol.us/source/glib2/browse/master/;8b1bd3b)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/glib2/browse/master/;cb2d761)
 - [Peter O'Connor: Revert, revert of revert...](https://dev.getsol.us/source/glib2/browse/master/;1c8eb93)
 - [Joshua Strobl: Update to 2.54.3](https://dev.getsol.us/source/glib2/browse/master/;6f44866)
 - [Ikey Doherty: Convert glib2 to ypkg (T5010)](https://dev.getsol.us/source/glib2/browse/master/;de12490)
 - [Joshua Strobl: Update to 3.54.2](https://dev.getsol.us/source/glib2/browse/master/;732c341)
 - [Joshua Strobl: Fix use of current.](https://dev.getsol.us/source/glib2/browse/master/;3ad54f7)
 - [Joshua Strobl: Add util-linux-32bit and util-linux-32bit-devel to respective 32bit packages.](https://dev.getsol.us/source/glib2/browse/master/;16b6c51)
 - [Joshua Strobl: Update to 2.54.1](https://dev.getsol.us/source/glib2/browse/master/;39ee8b5)


**libass**

 - [Joey Riches: Safety rebuild against fribidi 1.0.2](https://dev.getsol.us/source/libass/browse/master/;fdee089)
 - [Pierre-Yves: Update libass to 0.14.0](https://dev.getsol.us/source/libass/browse/master/;7c4f40b)


**libtiff**

 - [Peter O'Connor: Address CVE-2018-10963](https://dev.getsol.us/source/libtiff/browse/master/;d2d3d7a)
 - [Peter O'Connor: Address CVE-2018-8905](https://dev.getsol.us/source/libtiff/browse/master/;4204b86)
 - [Pierre-Yves: Patch libtiff for CVE-2018-5784 & CVE-2018-7456](https://dev.getsol.us/source/libtiff/browse/master/;187a998)
 - [Peter O'Connor: Address CVE-2017-18013](https://dev.getsol.us/source/libtiff/browse/master/;e9f1150)
 - [Ikey Doherty: Address CVE-2017-9935 in libtiff (T5399)](https://dev.getsol.us/source/libtiff/browse/master/;c8e588f)
 - [Pierre-Yves: Update libtiff to 4.0.9 to address multiple CVEs](https://dev.getsol.us/source/libtiff/browse/master/;8cff0ca)


**wpa_supplicant**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/wpa_supplicant/browse/master/;fe48dcc)
 - [Joey Riches: Address CVE-2018-14526](https://dev.getsol.us/source/wpa_supplicant/browse/master/;e77acc9)
 - [Eric Renfro: Add CONFIG_AP support to wpa_supplicant](https://dev.getsol.us/source/wpa_supplicant/browse/master/;c1cf82b)
 - [Ikey Doherty: Update wpa_supplicant to 2.6, patch upstream CVEs](https://dev.getsol.us/source/wpa_supplicant/browse/master/;778097c)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/wpa_supplicant/browse/master/;35cbfa3)


**libxcursor**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxcursor/browse/master/;e749366)
 - [Pierre-Yves: Update libxcursor to 1.1.15 to address CVE-2017-16612](https://dev.getsol.us/source/libxcursor/browse/master/;406ec75)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libxcursor/browse/master/;2e0d899)


**libvte**

 - [Joshua Strobl: Update to 0.52.2](https://dev.getsol.us/source/libvte/browse/master/;ffa8bb0)
 - [Joshua Strobl: Update to 0.52.1. Updated patch (thanks again Fedora).](https://dev.getsol.us/source/libvte/browse/master/;66f65d3)
 - [Joshua Strobl: Update to 0.50.2](https://dev.getsol.us/source/libvte/browse/master/;83e2064)
 - [Bryan T. Meyers: Update to 0.50.1, rebased notification patch](https://dev.getsol.us/source/libvte/browse/master/;16edffd)


**sane-backends**

 - [Philipp Trulson: Rebuild sane-backends for net-snmp 5.8](https://dev.getsol.us/source/sane-backends/browse/master/;977e045)
 - [Joey Riches: Safety rebuild against v4l-utils](https://dev.getsol.us/source/sane-backends/browse/master/;f6343c8)


**nghttp2**

 - [Peter O'Connor: Update to 1.32.0 to address CVE-2018-1000168](https://dev.getsol.us/source/nghttp2/browse/master/;c923936)


**speech-dispatcher**

 - [Peter O'Connor: Rebuild for python 3.6](https://dev.getsol.us/source/speech-dispatcher/browse/master/;4c22323)


**libxklavier**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxklavier/browse/master/;3661ee3)


**zip**

 - [Joshua Strobl: Convert to ypkg.](https://dev.getsol.us/source/zip/browse/master/;3aa9896)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/zip/browse/master/;4b94224)


**gzip**

 - [Pierre-Yves: Update gzip to 1.9](https://dev.getsol.us/source/gzip/browse/master/;891d97b)
 - [Ikey Doherty: Rebuild for initrd](https://dev.getsol.us/source/gzip/browse/master/;ecf5133)


**file-roller**

 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/file-roller/browse/master/;dd924ab)
 - [Ikey Doherty: Rebuild for Nautilus](https://dev.getsol.us/source/file-roller/browse/master/;fa81984)
 - [Joshua Strobl: Update to 3.28.0. Switched to Meson build system.](https://dev.getsol.us/source/file-roller/browse/master/;f647703)
 - [Joshua Strobl: Update to 3.26.2. Updated translations.](https://dev.getsol.us/source/file-roller/browse/master/;3fb23c6)
 - [Bryan T. Meyers: Update to 3.26.1](https://dev.getsol.us/source/file-roller/browse/master/;0933475)


**mutter**

 - [Pierre-Yves: Rebuild mutter for libxkbcommon 0.8.2](https://dev.getsol.us/source/mutter/browse/master/;df45661)
 - [Joshua Strobl: Rebuild against libinput 1.11 series.](https://dev.getsol.us/source/mutter/browse/master/;2bf8fde)
 - [Joshua Strobl: Update to 3.28.3](https://dev.getsol.us/source/mutter/browse/master/;eb63e7e)
 - [Peter O'Connor: Rebuild to remove some rpaths](https://dev.getsol.us/source/mutter/browse/master/;8bf4950)
 - [Joshua Strobl: Update to 3.28.2](https://dev.getsol.us/source/mutter/browse/master/;1cea74a)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/mutter/browse/master/;cfb3e53)
 - [Joshua Strobl: Re-enable Wayland support.](https://dev.getsol.us/source/mutter/browse/master/;950b7fe)
 - [Joshua Strobl: Update to 3.26.2](https://dev.getsol.us/source/mutter/browse/master/;d466156)
 - [Ikey Doherty: Attempt to reduce CPU usage of Mutter](https://dev.getsol.us/source/mutter/browse/master/;0738724)
 - [Ikey Doherty: Disable clinically broken NET_WM_PING handling in Mutter](https://dev.getsol.us/source/mutter/browse/master/;f9374b1)
 - [Ikey Doherty: Ensure to guard against X11 calls when using XChangeProperty](https://dev.getsol.us/source/mutter/browse/master/;f132583)
 - [Joshua Strobl: Temporarily add patch for reverting change that causes DEs using Mutter to crash on closing a maximized window.](https://dev.getsol.us/source/mutter/browse/master/;7a485aa)
 - [Joshua Strobl: Update to 3.26.1.](https://dev.getsol.us/source/mutter/browse/master/;1b7b5da)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/mutter/browse/master/;b028827)


**taglib**

 - [Joshua Strobl: Resolve CVE-2017-12678](https://dev.getsol.us/source/taglib/browse/master/;f59206c)
 - [Joshua Strobl: Drop component.xml](https://dev.getsol.us/source/taglib/browse/master/;bc8da2a)


**yelp**

 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/yelp/browse/master/;a66026d)
 - [Peter O'Connor: Rebuild for libwebkit-gtk](https://dev.getsol.us/source/yelp/browse/master/;53a28d3)
 - [Joshua Strobl: Update to 3.26.0](https://dev.getsol.us/source/yelp/browse/master/;55fc278)


**libxrender**

 - [Ikey Doherty: Rebuild for hygiene](https://dev.getsol.us/source/libxrender/browse/master/;61edbb3)


**qpdf**

 - [Pierre-Yves: Update qpdf to 8.2.1](https://dev.getsol.us/source/qpdf/browse/master/;ceaef77)
 - [Pierre-Yves: Update qpdf to 8.1.0](https://dev.getsol.us/source/qpdf/browse/master/;80d7c37)
 - [Peter O'Connor: Use upstream patch to address CVE-2018-9918](https://dev.getsol.us/source/qpdf/browse/master/;4f96fd8)
 - [Pierre-Yves: Update qpdf to 8.0.2](https://dev.getsol.us/source/qpdf/browse/master/;f31946d)
 - [Pierre-Yves: Update qpdf to 7.1.0](https://dev.getsol.us/source/qpdf/browse/master/;68ab0c3)
 - [Pierre-Yves: Update qpdf to 7.0.0](https://dev.getsol.us/source/qpdf/browse/master/;876c4f9)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/qpdf/browse/master/;2df36e6)


**ibus**

 - [Joshua Strobl: Update to 1.5.19. Resolves T6818.](https://dev.getsol.us/source/ibus/browse/master/;2e838fa)
 - [Joshua Strobl: Update to 1.5.18](https://dev.getsol.us/source/ibus/browse/master/;e2dac3b)
 - [Joshua Strobl: Rebuild against gtk 3.22.24](https://dev.getsol.us/source/ibus/browse/master/;97244de)
 - [Bryan T. Meyers: Update to 1.5.16, Closes T2970](https://dev.getsol.us/source/ibus/browse/master/;0fb5827)


**pulseaudio**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/pulseaudio/browse/master/;7093350)
 - [Pierre-Yves: Add webrtc-audio-processing support to pulseaudio](https://dev.getsol.us/source/pulseaudio/browse/master/;972cc4c)
 - [Pierre-Yves: Update pulseaudio to 12.2](https://dev.getsol.us/source/pulseaudio/browse/master/;94f66ea)
 - [Peter O'Connor: Safety rebuild for glibc and add gconf module, resolves T5872](https://dev.getsol.us/source/pulseaudio/browse/master/;c8f07c6)
 - [Pierre-Yves: Rebuild for gdbm 1.14.1](https://dev.getsol.us/source/pulseaudio/browse/master/;527dcef)
 - [Pierre-Yves: Reduce exit_idle_time to 4 to mitigate logout/login audio issue](https://dev.getsol.us/source/pulseaudio/browse/master/;0e20072)
 - [Ikey Doherty: Enable soxr support, all the cool kids are doing it](https://dev.getsol.us/source/pulseaudio/browse/master/;dccbe43)
 - [Pierre-Yves: Update pulseaudio to 11.1](https://dev.getsol.us/source/pulseaudio/browse/master/;2a8580f)
 - [Joshua Strobl: Enable automatic device switching so people don't have to open Raven or Sound settings to switch devices. This is handy for switching between headphones and speakers, as well as Bluetooth and HDMI. Resolves T3696.](https://dev.getsol.us/source/pulseaudio/browse/master/;961534b)


**file**

 - [Peter O'Connor: Address CVE-2018-10360, add protection for file changes that break ypkg](https://dev.getsol.us/source/file/browse/master/;0698778)
 - [Peter O'Connor: Add abi changes, since it didn't last time](https://dev.getsol.us/source/file/browse/master/;36537e8)
 - [Peter O'Connor: Downgrade to 5.32 to fix metadata generation in solbuild](https://dev.getsol.us/source/file/browse/master/;f1ecdca)
 - [Pierre-Yves: Update file to 5.33](https://dev.getsol.us/source/file/browse/master/;21073a8)
 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/file/browse/master/;94a2a9c)
 - [Ikey Doherty: Rebuild against new CFLAGS](https://dev.getsol.us/source/file/browse/master/;cfd6276)
 - [Pierre-Yves: Update file to 5.32 to address CVE-2017-1000249](https://dev.getsol.us/source/file/browse/master/;e1353ec)


**curl**

 - [Peter O'Connor: Update to 7.61.1 to address CVE-2018-14618](https://dev.getsol.us/source/curl/browse/master/;7e3eb72)
 - [Peter O'Connor: Update curl to 7.61.0 to address CVE-2018-0500](https://dev.getsol.us/source/curl/browse/master/;405bf60)
 - [Ikey Doherty: Whisht](https://dev.getsol.us/source/curl/browse/master/;1663184)
 - [Ikey Doherty: Enable GSSAPI (Kerberos) support in Curl (resolves T6431)](https://dev.getsol.us/source/curl/browse/master/;ceedebb)
 - [Peter O'Connor: Update curl to 7.60.0](https://dev.getsol.us/source/curl/browse/master/;17ce8aa)
 - [Peter O'Connor: Update curl to 7.59.0](https://dev.getsol.us/source/curl/browse/master/;7e41674)
 - [Ikey Doherty: Update curl to 7.58.0](https://dev.getsol.us/source/curl/browse/master/;92679cc)
 - [Peter O'Connor: Fix version number](https://dev.getsol.us/source/curl/browse/master/;fd94390)
 - [Pierre-Yves: Update curl to 5.57.0 to address multiple CVEs](https://dev.getsol.us/source/curl/browse/master/;d8fff81)
 - [Pierre-Yves: Update curl to 7.56.1 to address CVE-2017-1000257](https://dev.getsol.us/source/curl/browse/master/;8b97eb5)
 - [Pierre-Yves: Update curl to 7.56.0 to address CVE-2017-1000254](https://dev.getsol.us/source/curl/browse/master/;517df7b)


**bzip2**

 - [Ikey Doherty: Rebuild for toolchain, switch to `unroll-loops` list arg](https://dev.getsol.us/source/bzip2/browse/master/;8200870)


**libssh**

 - [Bryan T. Meyers: Update to 0.8.1](https://dev.getsol.us/source/libssh/browse/master/;fdd59bd)


**libflac**

 - [Peter O'Connor: Enable avx2 libraries](https://dev.getsol.us/source/libflac/browse/master/;07420f7)
 - [Pierre-Yves: Patch libflac for CVE-2017-6888](https://dev.getsol.us/source/libflac/browse/master/;7c20847)


**gettext**

 - [Peter O'Connor: Safety rebuild for glibc](https://dev.getsol.us/source/gettext/browse/master/;584f3d6)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/gettext/browse/master/;6169f71)


**budgie-desktop**

 - [Ikey Doherty: Sync budgie-desktop with latest git snapshot](https://dev.getsol.us/source/budgie-desktop/browse/master/;6095501)
 - [Joshua Strobl: Safety rebuild against Mutter.](https://dev.getsol.us/source/budgie-desktop/browse/master/;be121c1)
 - [Ikey Doherty: Sync with git for hipdi rendering fixes in the panels](https://dev.getsol.us/source/budgie-desktop/browse/master/;63342a3)
 - [Ikey Doherty: Sync with git for more tasklist grouping fixes (ty @cybre =))](https://dev.getsol.us/source/budgie-desktop/browse/master/;0e0c8f6)
 - [Ikey Doherty: Disable window animations (yet) again, too broken](https://dev.getsol.us/source/budgie-desktop/browse/master/;62d501f)
 - [Ikey Doherty: Sync budgie-desktop with git to fix the tray icons going mental](https://dev.getsol.us/source/budgie-desktop/browse/master/;0334f1a)
 - [Ikey Doherty: Resync with git to restore maximize/tiling animations](https://dev.getsol.us/source/budgie-desktop/browse/master/;3bb4493)
 - [Ikey Doherty: Sync with git for refined tabswitcher UI](https://dev.getsol.us/source/budgie-desktop/browse/master/;303c8a1)
 - [Ikey Doherty: Resync budgie-desktop with git](https://dev.getsol.us/source/budgie-desktop/browse/master/;4a5db98)
 - [Ikey Doherty: Sync Budgie with git for @cybre's fix for shadows](https://dev.getsol.us/source/budgie-desktop/browse/master/;fa9b9e9)
 - [Ikey Doherty: Shush, Nautilus is back](https://dev.getsol.us/source/budgie-desktop/browse/master/;990e489)
 - [Ikey Doherty: Temporarily disable control of desktop icons completely](https://dev.getsol.us/source/budgie-desktop/browse/master/;1833516)
 - [Ikey Doherty: Sync with `nautilus-fartery` branch to unbreak settings dialog](https://dev.getsol.us/source/budgie-desktop/browse/master/;4d4141c)
 - [Ikey Doherty: Resync Budgie with git (ty @cybre) to unfudgificate lines on panel](https://dev.getsol.us/source/budgie-desktop/browse/master/;d5fc54a)
 - [Ikey Doherty: Unbreak the ABI finally](https://dev.getsol.us/source/budgie-desktop/browse/master/;31bacea)
 - [Ikey Doherty: Attempt unbreak again](https://dev.getsol.us/source/budgie-desktop/browse/master/;bea873d)
 - [Ikey Doherty: Split out new private Budgie library to try and unbreak with new Vala](https://dev.getsol.us/source/budgie-desktop/browse/master/;6b6e019)
 - [Ikey Doherty: Safety rebuild](https://dev.getsol.us/source/budgie-desktop/browse/master/;9b95a71)
 - [Ikey Doherty: Move budgie-desktop to git source](https://dev.getsol.us/source/budgie-desktop/browse/master/;9eee7b5)
 - [Joshua Strobl: Safety rebuild of Budgie to test GDM borkiness.](https://dev.getsol.us/source/budgie-desktop/browse/master/;054a7ef)
 - [Ikey Doherty: Revert size animations again to see if we fix @DataDrake's issues](https://dev.getsol.us/source/budgie-desktop/browse/master/;886f97f)
 - [Ikey Doherty: Rebuild Budgie against the GNOME 3.26 stack](https://dev.getsol.us/source/budgie-desktop/browse/master/;fb3f3ee)
 - [Bryan T. Meyers: Rebuild for gnome 3.26](https://dev.getsol.us/source/budgie-desktop/browse/master/;5c7313d)


**llvm**

 - [Mateusz Mikuła: clang: enable openmp, fixes T6671](https://dev.getsol.us/source/llvm/browse/master/;607daf5)
 - [Joey Riches: Update LLVM to 6.0.1](https://dev.getsol.us/source/llvm/browse/master/;d8aa8dd)
 - [Ikey Doherty: Update LLVM to 6.0](https://dev.getsol.us/source/llvm/browse/master/;92e8dec)
 - [Ikey Doherty: Enable support for LLVM's LLD linker](https://dev.getsol.us/source/llvm/browse/master/;32b46b0)
 - [Rex Morgan: Update LLVM to 5.0.1](https://dev.getsol.us/source/llvm/browse/master/;3ef4df4)
 - [Peter O'Connor: Use correct case for LLVMgold plugin](https://dev.getsol.us/source/llvm/browse/master/;5071901)
 - [Ikey Doherty: Expose LLVMGold.so plugin to ld, fix pspec consistency](https://dev.getsol.us/source/llvm/browse/master/;c3db1e6)
 - [Bryan T. Meyers: Build for ikey](https://dev.getsol.us/source/llvm/browse/master/;0d58923)
 - [Ikey Doherty: WIP: Update LLVM to version 5.0.0](https://dev.getsol.us/source/llvm/browse/master/;59458ea)


**kernel-glue**

 - [Ikey Doherty: Unbreak handover](https://dev.getsol.us/source/kernel-glue/browse/master/;268fd92)
 - [Ikey Doherty: Add dep on usysconf](https://dev.getsol.us/source/kernel-glue/browse/master/;94c0e59)
 - [Ikey Doherty: Add last COMAR hooks for usysconf handover (T5010)](https://dev.getsol.us/source/kernel-glue/browse/master/;795a6eb)
 - [Ikey Doherty: Do not reexec systemd](https://dev.getsol.us/source/kernel-glue/browse/master/;eb2b845)
 - [Ikey Doherty: Avoid chroot nightmare](https://dev.getsol.us/source/kernel-glue/browse/master/;8748a07)
 - [Ikey Doherty: One off trigger to ensure qol-assist runs](https://dev.getsol.us/source/kernel-glue/browse/master/;b2a7dfd)
 - [Ikey Doherty: Enable qol-assist trigger when we see updates to the package](https://dev.getsol.us/source/kernel-glue/browse/master/;7897231)
 - [Ikey Doherty: Have `kernel-glue` handle updates to dconf](https://dev.getsol.us/source/kernel-glue/browse/master/;c04bcef)
 - [Peter O'Connor: Generate mimetype database when there are mime changes](https://dev.getsol.us/source/kernel-glue/browse/master/;9ad9df5)
 - [Ikey Doherty: Teach kernel-glue how to handle systemd triggers now](https://dev.getsol.us/source/kernel-glue/browse/master/;3b5bcb0)


**libogg**

 - [Pierre-Yves: Update libogg to 1.3.3](https://dev.getsol.us/source/libogg/browse/master/;8ac7dcd)


**libffi**

 - [Joey Riches: Add check support with dejagnu](https://dev.getsol.us/source/libffi/browse/master/;d21fa37)
 - [Ikey Doherty: Rebuild for toolchain bits (symbolic functions, etc)](https://dev.getsol.us/source/libffi/browse/master/;e0acad8)


**readline**

 - [Joshua Strobl: Moved readline-devel back to system.devel. Determined to be a recommended package to include for an updated solbuild image.](https://dev.getsol.us/source/readline/browse/master/;6b77c2d)
 - [Pierre-Yves: Convert readline to ypkg](https://dev.getsol.us/source/readline/browse/master/;3b7767b)
 - [Ikey Doherty: Add abireport for comparisons](https://dev.getsol.us/source/readline/browse/master/;5e41a3a)


**eog**

 - [Joshua Strobl: Update to 3.28.3](https://dev.getsol.us/source/eog/browse/master/;787b014)
 - [Joshua Strobl: Update to 3.28.2. Updated translations.](https://dev.getsol.us/source/eog/browse/master/;5c8736d)
 - [Joshua Strobl: Update to 3.28.1](https://dev.getsol.us/source/eog/browse/master/;5f7147c)
 - [Pierre-Yves: Update eog to 3.26.2](https://dev.getsol.us/source/eog/browse/master/;33ee733)
 - [Joshua Strobl: Update to 3.26.1](https://dev.getsol.us/source/eog/browse/master/;f0b355d)


**gnome-screensaver**

 - [Joey Riches: Safety rebuild against dbus](https://dev.getsol.us/source/gnome-screensaver/browse/master/;dd44140)
 - [Joshua Strobl: Safety rebuild against gnome-desktop.](https://dev.getsol.us/source/gnome-screensaver/browse/master/;685d4dc)


**noto-sans-ttf**

 - [Joshua Strobl: Remove extra condensed fonts.](https://dev.getsol.us/source/noto-sans-ttf/browse/master/;daed451)
 - [Ikey Doherty: Update to the latest version and unbreak permissions](https://dev.getsol.us/source/noto-sans-ttf/browse/master/;85b74e6)
 - [taaem: Updated to new Noto featuring Android 8 emojis.](https://dev.getsol.us/source/noto-sans-ttf/browse/master/;e589474)


**linux-current**

 - [Bryan T. Meyers: Revert clocksource commit that breaks Core2 systems](https://dev.getsol.us/source/linux-current/browse/master/;cb58135)
 - [Pierre-Yves: Enable VBOXGUEST and DRM_VBOXVIDEO](https://dev.getsol.us/source/linux-current/browse/master/;52fc845)
 - [Bryan T. Meyers:  Update linux-current to 4.18.5](https://dev.getsol.us/source/linux-current/browse/master/;7dc733c)
 - [Bryan T. Meyers:  Update linux-current to 4.17.17](https://dev.getsol.us/source/linux-current/browse/master/;37f3a9e)
 - [Bryan T. Meyers:  Update linux-current to 4.17.14](https://dev.getsol.us/source/linux-current/browse/master/;1cf2f90)
 - [Bryan T. Meyers:  Update linux-current to 4.17.12](https://dev.getsol.us/source/linux-current/browse/master/;9d8c321)
 - [Bryan T. Meyers: Enabled SMSC75XX, resolves T6711](https://dev.getsol.us/source/linux-current/browse/master/;bd663bf)
 - [Bryan T. Meyers:  Update linux-current to 4.17.11](https://dev.getsol.us/source/linux-current/browse/master/;f0c6c65)
 - [Bryan T. Meyers:  Update linux-current to 4.17.8](https://dev.getsol.us/source/linux-current/browse/master/;0850119)
 - [Bryan T. Meyers:  Update linux-current to 4.17.6](https://dev.getsol.us/source/linux-current/browse/master/;51a01ae)
 - [Bryan T. Meyers: Enable more realtek devices per T6620](https://dev.getsol.us/source/linux-current/browse/master/;bb2206f)
 - [Bryan T. Meyers: Added patch for thinkpad_acpi, fixes T6601](https://dev.getsol.us/source/linux-current/browse/master/;4197dd1)
 - [Bryan T. Meyers: Update linux-current to 4.17.3](https://dev.getsol.us/source/linux-current/browse/master/;3270c15)
 - [Bryan T. Meyers: Re-enable apparmor strict confinement](https://dev.getsol.us/source/linux-current/browse/master/;60f99f1)
 - [Bryan T. Meyers: Updated to 4.17.2](https://dev.getsol.us/source/linux-current/browse/master/;3ca8d2d)
 - [Ikey Doherty: Update linux-current to 4.16.15](https://dev.getsol.us/source/linux-current/browse/master/;7700c4b)
 - [Ikey Doherty: Update linux-current to 4.16.14](https://dev.getsol.us/source/linux-current/browse/master/;faf6a46)
 - [Ikey Doherty: Update linux-lts to 4.16.13](https://dev.getsol.us/source/linux-current/browse/master/;3fb5d72)
 - [Ikey Doherty: Revert upstream CRNG init changes](https://dev.getsol.us/source/linux-current/browse/master/;4a2a8f3)
 - [Ikey Doherty: Update linux-current to 4.16.12](https://dev.getsol.us/source/linux-current/browse/master/;9615830)
 - [Ikey Doherty: Remove virtualbox guest support from linux-current](https://dev.getsol.us/source/linux-current/browse/master/;9f7228b)
 - [Ikey Doherty: Rebuild for a new initrd with new systemd, etc.](https://dev.getsol.us/source/linux-current/browse/master/;abfb067)
 - [Ikey Doherty: Update linux-current to 4.16.11](https://dev.getsol.us/source/linux-current/browse/master/;8aa1c99)
 - [Ikey Doherty: Update linux-current to 4.16.10](https://dev.getsol.us/source/linux-current/browse/master/;fb690d4)
 - [Ikey Doherty: Downgrade `linux-current` to 4.15.18](https://dev.getsol.us/source/linux-current/browse/master/;f1744fe)
 - [Ikey Doherty: Update linux-current to 4.16.7](https://dev.getsol.us/source/linux-current/browse/master/;c723caf)
 - [Ikey Doherty: Fix Intel eDP refresh rate issue](https://dev.getsol.us/source/linux-current/browse/master/;391220d)
 - [Ikey Doherty: Update linux-current to 4.15.17](https://dev.getsol.us/source/linux-current/browse/master/;d701c70)
 - [Ikey Doherty: Update linux-current to 4.15.15](https://dev.getsol.us/source/linux-current/browse/master/;24e3df9)
 - [Ikey Doherty: Update linux-current to 4.15.14](https://dev.getsol.us/source/linux-current/browse/master/;0d14105)
 - [Ikey Doherty: Update linux-current to 4.15.11](https://dev.getsol.us/source/linux-current/browse/master/;c26fd63)
 - [Ikey Doherty: Update linux-current to 4.15.7](https://dev.getsol.us/source/linux-current/browse/master/;c342139)
 - [Ikey Doherty: Enable Yama for ptrace control](https://dev.getsol.us/source/linux-current/browse/master/;111a2f9)
 - [Ikey Doherty: Update linux-current to 4.15.6](https://dev.getsol.us/source/linux-current/browse/master/;c3e74f3)
 - [Ikey Doherty: Optimise linux-current for real life machines, not synthetic metrics](https://dev.getsol.us/source/linux-current/browse/master/;b2cf545)
 - [Ikey Doherty: Update linux-current to 4.15.5](https://dev.getsol.us/source/linux-current/browse/master/;7018c39)
 - [Ikey Doherty: Rebuild linux-current for initramfs fixes](https://dev.getsol.us/source/linux-current/browse/master/;6cb48d5)
 - [Ikey Doherty: Update linux-current to 4.15.4](https://dev.getsol.us/source/linux-current/browse/master/;964f554)
 - [Ikey Doherty: Enable support for Aquantia 10 GbE LAN cards in linux-current](https://dev.getsol.us/source/linux-current/browse/master/;52bdafb)
 - [Ikey Doherty: Update linux-current to 4.15.3](https://dev.getsol.us/source/linux-current/browse/master/;52457ef)
 - [Ikey Doherty: Update linux-current to 4.14.18](https://dev.getsol.us/source/linux-current/browse/master/;37e7f17)
 - [Ikey Doherty: Update linux-current to 4.14.17](https://dev.getsol.us/source/linux-current/browse/master/;7278683)
 - [Ikey Doherty: Update linux-current to 4.14.16](https://dev.getsol.us/source/linux-current/browse/master/;72eb4c0)
 - [Ikey Doherty: Update linux-current to 4.14.15](https://dev.getsol.us/source/linux-current/browse/master/;25d33d1)
 - [Ikey Doherty: Update linux-current to 4.14.14](https://dev.getsol.us/source/linux-current/browse/master/;1f6604e)
 - [Ikey Doherty: Rebuild for firmware changes](https://dev.getsol.us/source/linux-current/browse/master/;81a6791)
 - [Ikey Doherty: Update linux-current to 4.14.13](https://dev.getsol.us/source/linux-current/browse/master/;c30e8b2)
 - [Ikey Doherty: Update linux-current to 4.14.12](https://dev.getsol.us/source/linux-current/browse/master/;df85d8a)
 - [Ikey Doherty: Update linux-current to 4.14.11](https://dev.getsol.us/source/linux-current/browse/master/;299ae03)
 - [Ikey Doherty: Update linux-current to 4.14.9](https://dev.getsol.us/source/linux-current/browse/master/;e06275a)
 - [Ikey Doherty: Update linux-current to 4.14.8](https://dev.getsol.us/source/linux-current/browse/master/;966058f)
 - [Ikey Doherty: Update linux-current to 4.14.6](https://dev.getsol.us/source/linux-current/browse/master/;36a3ab3)
 - [Ikey Doherty: Update linux-current to 4.14.5](https://dev.getsol.us/source/linux-current/browse/master/;7bc4e3f)
 - [Ikey Doherty: Update `linux-current` to 4.14.4](https://dev.getsol.us/source/linux-current/browse/master/;eee992d)
 - [Ikey Doherty: Disable ORC unwinder as it causes the NVIDIA drivers to fail to build](https://dev.getsol.us/source/linux-current/browse/master/;46ce61f)
 - [Ikey Doherty: Update linux-current to 4.14.3](https://dev.getsol.us/source/linux-current/browse/master/;e92b39e)
 - [Ikey Doherty: Update linux-current to 4.13.16 - last 4.13 series release](https://dev.getsol.us/source/linux-current/browse/master/;aa933b2)
 - [Ikey Doherty: Update linux-current to 4.13.15](https://dev.getsol.us/source/linux-current/browse/master/;b39b7d1)
 - [Ikey Doherty: Update linux-current to 4.13.13](https://dev.getsol.us/source/linux-current/browse/master/;14b7127)
 - [Ikey Doherty: Update linux-lts to 4.13.12](https://dev.getsol.us/source/linux-current/browse/master/;069b8b7)
 - [Ikey Doherty: Update linux-current to 4.13.11, the latest stable version](https://dev.getsol.us/source/linux-current/browse/master/;bbadabf)
 - [Ikey Doherty: Update `linux-current` to 4.13.10](https://dev.getsol.us/source/linux-current/browse/master/;b254791)
 - [Ikey Doherty: **Experiment**: Enable AMDGPU CIK/SI by default](https://dev.getsol.us/source/linux-current/browse/master/;8670d19)
 - [Ikey Doherty: Update `linux-current` to 4.13.9](https://dev.getsol.us/source/linux-current/browse/master/;cae60b9)
 - [Ikey Doherty: Update linux-current to 4.13.8](https://dev.getsol.us/source/linux-current/browse/master/;fd88b55)
 - [Ikey Doherty: Fix the invalid kernel version number here](https://dev.getsol.us/source/linux-current/browse/master/;50f10b8)
 - [Ikey Doherty: Update `linux-current` to 4.13.7](https://dev.getsol.us/source/linux-current/browse/master/;2604dee)
 - [Ikey Doherty: Update linux-current to the latest stable kernel, 4.13.6](https://dev.getsol.us/source/linux-current/browse/master/;f19c1e3)
 - [Ikey Doherty: Update `linux-current` to 4.13.5](https://dev.getsol.us/source/linux-current/browse/master/;aa4498d)
 - [Joey Riches: Add intel-microcode to builddeps](https://dev.getsol.us/source/linux-current/browse/master/;5a07492)
 - [Ikey Doherty: Update linux-current to the latest stable kernel, 4.13.4](https://dev.getsol.us/source/linux-current/browse/master/;ce3d9ee)
 - [Ikey Doherty: Enable ipset modules within the kernel to make `ipset` command work](https://dev.getsol.us/source/linux-current/browse/master/;478b441)
 - [Peter O'Connor: Update linux-current to 4.12.14](https://dev.getsol.us/source/linux-current/browse/master/;b354bc6)
 - [Ikey Doherty: Update linux-current to 4.12.12](https://dev.getsol.us/source/linux-current/browse/master/;abe4e32)
 - [Ikey Doherty: Update (downgrade) linux-current to 4.12.11](https://dev.getsol.us/source/linux-current/browse/master/;01dc30c)
 - [Ikey Doherty: Revert "Update to the latest mainline kernel version, 4.13"](https://dev.getsol.us/source/linux-current/browse/master/;789599b)
 - [Ikey Doherty: Rebuild for new firmware to attempt resolution of Qemu bug](https://dev.getsol.us/source/linux-current/browse/master/;f180eff)
 - [Ikey Doherty: Update to the latest mainline kernel version, 4.13](https://dev.getsol.us/source/linux-current/browse/master/;3d6564b)
 - [Ikey Doherty: Update `linux-current` to the latest stable kernel, 4.12.10](https://dev.getsol.us/source/linux-current/browse/master/;d606af1)
 - [Ikey Doherty: Update linux-cureent to the latest stable version, 4.12.9](https://dev.getsol.us/source/linux-current/browse/master/;ecdaec0)
 - [Ikey Doherty: Update linux-current to 4.12.8, latest stable kernel from upstream](https://dev.getsol.us/source/linux-current/browse/master/;68c8f92)
 - [Ikey Doherty: Hardware enabling + bug-fix update for linux-current](https://dev.getsol.us/source/linux-current/browse/master/;43e8990)


**usbutils**

 - [Pierre-Yves: Update usbutils to 010](https://dev.getsol.us/source/usbutils/browse/master/;d284e83)
 - [Pierre-Yves: Update usbutils to 009](https://dev.getsol.us/source/usbutils/browse/master/;dbf1d78)


**e2fsprogs**

 - [Philipp Trulson: Update e2fsprogs to 1.44.4](https://dev.getsol.us/source/e2fsprogs/browse/master/;5eb7da7)
 - [Philipp Trulson: Update e2fsprogs to 1.44.3](https://dev.getsol.us/source/e2fsprogs/browse/master/;e9e47aa)
 - [Philipp Trulson: Update e2fsprogs to 1.44.2](https://dev.getsol.us/source/e2fsprogs/browse/master/;938ff07)
 - [Ikey Doherty: Update e2fsprogs to 1.43.7, move away from sourceforge URI](https://dev.getsol.us/source/e2fsprogs/browse/master/;468ac76)


**libcdio-paranoia**

 - [Pierre-Yves: Rebuild against libcdio 2.0.0](https://dev.getsol.us/source/libcdio-paranoia/browse/master/;15ae753)
 - [Pierre-Yves: Rebuild against libcdio 0.94](https://dev.getsol.us/source/libcdio-paranoia/browse/master/;0643241)
 - [Pierre-Yves: Update libcdio-paranoia to 10.2+0.94+2](https://dev.getsol.us/source/libcdio-paranoia/browse/master/;8bc02d8)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/libcdio-paranoia/browse/master/;a316244)


**xorg-driver-video-nouveau**

 - [Ikey Doherty: Sync nouveau with xf86-video-nouveau git](https://dev.getsol.us/source/xorg-driver-video-nouveau/browse/master/;b19f617)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-nouveau/browse/master/;6c2f0dd)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-nouveau/browse/master/;ee093f4)
 - [Ikey Doherty: Rebuild for X.Org 1.19.3](https://dev.getsol.us/source/xorg-driver-video-nouveau/browse/master/;31a3725)


**time**

 - [Pierre-Yves: Update time to 1.9](https://dev.getsol.us/source/time/browse/master/;3d0e724)
 - [Pierre-Yves: Update time to 1.8](https://dev.getsol.us/source/time/browse/master/;54662ca)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/time/browse/master/;f70e529)


**xorg-driver-video-radeon**

 - [Bryan T. Meyers: Update to 18.0.1, fixes T6657](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;774cf6a)
 - [Ikey Doherty: Re-update to 7.10.0 for new xorg to see if screen tearing is gone](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;a25cac9)
 - [Ikey Doherty: Downgrade radeon to 7.9.0 to fix screen tearing](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;bf2e40f)
 - [Ikey Doherty: Rebuild for X.Org 1.18.4 restoration](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;5ebffe6)
 - [Ikey Doherty: Rebuild for X.Org 1.19.4 testing](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;40dfe89)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;9080232)
 - [Ikey Doherty: Rebuild for Xorg validation](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;2998c77)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;b6bb633)
 - [Ikey Doherty: Restore glamor, nuke Fedora patch](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;9626ac8)
 - [Ikey Doherty: Rebuild to restore Xorg sanity](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;26e6da0)
 - [Ikey Doherty: Disable glamor support to try to get Josh's card working again](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;020e0b0)
 - [Ikey Doherty: Borrow Fedora patch to fix DRI issues](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;a1459b5)
 - [Ikey Doherty: Update to 7.10.0](https://dev.getsol.us/source/xorg-driver-video-radeon/browse/master/;cd91ac1)


**mpfr**

 - [Peter O'Connor: Update to 4.0.1](https://dev.getsol.us/source/mpfr/browse/master/;dc62310)
 - [Pierre-Yves: Update mpfr to 3.1.6](https://dev.getsol.us/source/mpfr/browse/master/;beebdeb)

