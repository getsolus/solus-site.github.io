---
title: "Solus 4.3 Released"
author: "joshua"
categories:
- news
- releases
date: 2021-07-11T16:20:19+03:00
featuredimage: "/solus-4.3-featured.jpg"
url: "/2021/07/11/solus-4-3-released"
---

We are proud to announce the immediate availability of Solus 4.3, a new Solus 4 "Fortitude" series release. This release delivers new desktop environment updates, software stacks, and hardware enablement.
<!--more-->

## General

### Default Applications

All our editions feature:

- Firefox 89.0.2
- LibreOffice 7.1.4.2
- Thunderbird 78.11.0

For audio and video multimedia playback, we offer software out-of-the-box that caters specifically to our desired experience for each edition.

- Budgie, GNOME, and MATE editions all ship with Rhythmbox for audio playback, with the latest release of the Alternate Toolbar extension to provide a more modern user experience.
- Budgie and GNOME ship with GNOME MPV for video playback.
- MATE ships with VLC for video playback.
- Plasma ships with Elisa for audio playback and SMPlayer for video playback.

### Hardware and Kernel Enablement

This release of Solus ships with Linux kernel 5.13.1, enabling us to provide support for a broader range of hardware, such as:

- AMD Radeon RX 6700 XT, 6800, 6800 XT and 6900 XT cards.
- ASoC machine driver for the Elkhart Lake platform and those with the DA7219 + MAX98373/MAX98360A I2S audio codecs.
- Dell X86 Platform specific drivers, such as vendor-specific laptop extension drivers, via X86_PLATFORM_DRIVERS_DELL.
- Hardware monitoring for the NZXT Kraken X42/X52/X62/X72 all-in-one CPU liquid coolers via SENSORS_NZXT_KRAKEN2.
- Microsoft network devices via NET_VENDOR_MICROSOFT
- Intel ASoC for Elkhart Lake, Jasper Lake, Tiger Lake
- Sony PS5 controller via HID_PLAYSTATION
- Supplemental Microsoft Surface support such as CHARGER_SURFACE, SURFACE_ACPI_NOTIFY (Surface ACPI Notify (SAN) driver), SURFACE_DTX and SURFACE_HOTPLUG (out-of-band hot-plug event signaling on Microsoft Surface devices with hot-pluggable PCIe cards, further details [here](https://cateee.net/lkddb/web-lkddb/SURFACE_HOTPLUG.html)).
- SemiTek keyboards via HID_SEMITEK.

Additionally, we continue to refine our kernel configuration, and this release features changes such as:

- Enabled CONFIG_NETFILTER_XT_TARGET_CHECKSUM for improved lxd support.
- Enabled KVM guests to create SGX enclaves via X86_SGX_KVM
- Enabled VIRTIO SND.
- Disabled RT_GROUP_SCHED for improved JACK support.

Mesa has been upgraded to 21.1.3. This introduces various improvements, such as:

- AMD Resizable BAR support in RADV, RDNA 2 GPUs, and Zen 3.
- Improved support for various game titles such as Cyberpunk 2077, DOTA 2, DIRT 5, Elite Dangerous: Odyssey, Halo: The Master Chief Collection, Path of Exile.

Solus 4.3 ships with bluez 5.60, improving Bluetooth support and fixing the following issues:

- Accepting invalid AVDTP capabilities
- Fix issue with non-discoverable device and advertising monitor.
- Fix issue with reading from RFKILL device node.
- Fix reading from rfkill socket
- GATT and handling device removal
- Handling session of A2DP channels
- HID report value callback registration

### Multimedia Upgrades

This release ships with ffmpeg 4.4. This enables us to provide support for:

- AV1 VAAPI decoders
- AV1 monochrome encoding support
- VDPAU accelerated HEVC 10/12bit and VP9 10/12bit decoding

The latest bug fix release of gstreamer, 1.18.4, is provided out of the box. This fixes various issues, such as:

- ID3 tag reading
- allow v4l2 encoder resolution changes
- mpeg-2 video handling

Solus 4.3 ships with version 0.9.0 of the dav1d AV1 decoder, which should provide a large boost to high-bitdepth decoding on AVX2 supported CPUs. We also ship with Pulseaudio 14.2, which fixes a bug related to unplug event handling.

## Budgie

{{< altimg "Budgie.jpg" "/release-images/4.3/" >}}

Solus ships with the latest release of our flagship desktop environment, [Budgie 10.5.3](/2021/04/27/fashionable-gnome-forty). This features GNOME 40 stack support alongside all the fixes and quality-of-life improvements listed below. We welcome you to check out the full release notes listed above.

### Bug Fixes and Cleanup

Budgie 10.5.3 introduces fixes to Budgie panel applets, Raven, and various window state tracking.

- Drop use of Queue and Cancellable in Raven's NotificationView.
  - Instead of using a Queue (which is not thread safe anyways), just update a reference to a NotificationWindow since we only really cared about the head of the Queue to begin with.
  - Dropped Cancellable usage for async pixbuf scaling. There has not really been a scenario yet where we have not been able to scale an icon within the amount of time before a NotificationWindow is removed.
- Fix application icons not scaling in Raven's Notification Group headers.
- Fix issue with VirtualBox icon not being displayed in IconTaskList applet
- Fix regression in Budgie Desktop Settings icon handling.
- MPRIS metadata, playback status, and CanGoPrevious / CanGoNext fetching is now performed immediately rather than being an unnecessary idle operation.
- Notifications now use a high priority timeout.
- Notification iconography now uses a consistent `IconSize.DIALOG` instead of `IconSize.INVALID` and only scales if the icon provided is not already the desired height.
- Prevent Budgie Desktop Settings from being pinned via drag-and-drop, fixing an issue where Budgie Desktop Settings was inadvertently pinnable and unable to be unpinned.
- Sound Indicator applet and Raven
  - Use standard mute/unmute methods, fixing issues like muting with media keys and then trying to unmute via the applet, which would previously not work.
- System Tray applet
  - Fix issue with KeePass causing panel segfaults.
  - Various stability improvements, such as more proactive X11 error trapping.

### Quality-of-life Improvements

{{< altimg "2021/04/budgie-desktop-settings.jpg" >}}

Here are some quality-of-life improvements shipping in Budgie 10.5.3:

- Filter out audacious notifications so they do not clutter up Raven. 
- Hide "Default", which is typically Adwaita / GTK's internal theme. We continue to encourage the use of theming that officially supports Budgie, such as Materia and Plata.
- Mutter and WM preference schema settings are now only applied for Budgie session.
- Spacing is now configurable in the Status applet.
- The application fullscreen state tracking has been slightly rewritten to use the window XIDs, only call our track window state function on specific flags in the changed or current state, and reducing instances where some unset flags would not result in the application being removed as a fullscreen application.
- There is now an option in Budgie and exposed via Budgie Desktop Settings' "Windows" section to automatically pause notifications when a window is fullscreen and unpause when there no longer is a fullscreen window. This is useful in reducing distractions when gaming or watching content!
- To improve the default user experience of Budgie on some downstream operating systems such as Arch Linux, Budgie now ships with a default wallpaper, eliminating the need for downstreams to apply supplemental changes or ship a wallpaper package.
- We will no longer filter device added / removed notifications. This resolves issues where ejection notifications for external media would not get stored in Raven's Notifications section.
- When `xdotool` is available on the operating system, the Lock Keys applet can be clicked to toggle CapsLock and NumLock!

## GNOME

{{< altimg "GNOME.jpg" "/release-images/4.3/" >}}

Solus 4.3 GNOME Edition ships with the latest GNOME 40 series release, 40.2.

### Highlights

Here are the highlights of various changes introduced in GNOME 40:

- GNOME Shell
  - Allow tap-drag-release to select variants in OSK.
  - Correct arrow navigation in alt-tab switcher in RTL locales.
  - Fix PgUp / PgDown handling in overview.
  - Fix repeated letters in type-to-find overview search.
  - Fix screen blanking on idle.
  - Handle screencast failures more gracefully
  - Improved mouse gestures for switching workspaces (`Super` + `Alt` + `Scroll`).
  - Improve workspace placeholder in overview minimap
  - New horizontal-oriented layout for application grid and dash.
  - Updated keyboard shortcuts for toggling the overview and switching workspaces.
- Mutter
  - Add support for rounded clipping when drawing background
  - Add support for scroll button locking
  - Disable double-buffered shadow buffering
  - Ensure valid window texture size after viewport changes
  - Fix X11 client resize during moves
  - Fix device configuration not being picked up on X11
  - Fix missed redraws of newly-mapped actors
  - Fix performance drop during night light transition with Nvidia
  - Fix tiling to the correct monitor
  - Fix unwanted position changes on window resize
  - Improve freezes when switching workspace

### Defaults Changes

Solus 4.3 GNOME Edition ships with Materia-dark instead of Plata-noir as the default GTK theme. This enables us to provide support for GNOME Shell 40 and GTK4, while providing our users as similar look and feel to Plata.

Alongside this defaults change, Solus 4.3 GNOME Edition continues to ship the Impatience and Tray-Icons-Reloaded. This enables us to reduce animation timings as well as support system trays out-of-the-box!

## MATE

{{< altimg "MATE.jpg" "/release-images/4.3/" >}}

Solus 4.3 MATE Edition ships with the latest MATE desktop environment and applications. Some highlights since the release of Solus 4.2 include:

- Atril
  - epub backend: Escape link text to display & in index content
- Caja
  - file-operations: don't attempt to move into the source dir
  - keep one .desktop suffix on desktop file renaming
- Engrampa
  - rar 6.00: fix listing archive content with encrypted file list
- Eom
  - Ensure scrollbar moves when dragged to move image
- Marco
  - window: do not unfocus on new window.
- MATE Session Manager
  - Follow freedesktop guidelines to disable autorun using Hidden key
  - Look for the location of the locking screen app using user's PATH
  - capplet: memory leak
- Pluma
  - pluma-view: Fix incorrect interface font

## Plasma

{{< altimg "Plasma.jpg" "/release-images/4.3/" >}}

Solus 4.3 Plasma Edition ships with the latest Plasma Desktop 5.22.2, KDE Frameworks 5.83, Applications 21.04.2 and the backported patches for QT 5.15.2, which brings many new features some highlighted below:

- Adaptive Transparency for Breeze.
- System Settings introduces a new Speed Dial page, giving you direct access to commonly used features such as light / dark theme changing, wallpaper changing, and access to common settings.
- System Tray got a rework with a redesigned Digital Clock.
- If you are sharing or recording your screen the Notifications widget will automatically enter "Do not Distrub" mode.
- Krunner can now be used as a mini command-line launcher.

Solus-specific Plasma integration has received various refinements, specifically:

- Introducing SolusLight theme. SolusLight is a brighter theme compared to Breeze Light and compliments our SolusDark aesthetic.
- Plasma-Systemmonitor replaces Ksysguard as default install for the ISO.
- Reworking of the SolusDark theme to better support blur and the new Plasma adaptive Transparency functionality.
- konversation now uses the Libera.chat server and uses TLS connection as default.

## Download

To download our latest Editions, you can go to our [Download](/download) page, where direct links and torrents are available!

## Thank You

We would like to thank everyone that has supported and contributed to Solus and its endeavors. It is you, our community, that has made this release possible. Whether you have filed bugs, fixed software, contributed code, translated Budgie Desktop, validated testing ISOs, or shared Solus releases with your colleagues, friends, and family: you've helped shape this release and improved the project for everyone.

If you would like to financially support Solus, enabling us to continue to cover infrastructure costs as well as opening the door to future full-time work by the Solus team, you can support us via our [OpenCollective](https://opencollective.com/getsolus). If you are interested in other ways of getting involved, we encourage you to check out our dedicated [documentation](https://getsol.us/articles/contributing/getting-involved/en/) on doing so!

## Changelog of ISO (Budgie)

#### Packages added to this release:

 - budgie-screensaver
 - fuse-common
 - fuse2
 - libgtksourceview4
 - libldac
 - libopenaptx
 - libopenmpt
 - libtirpc
 - rtkit
 - shaderc
 - xdotool
 - xorg-xwayland
 - youtube-dl


#### Packages removed from this release:

- babl
- fuse-exfat
- gegl
- gfbgraph
- gnome-photos
- gnome-screensaver
- grilo-plugins
- imlib2
- libcaca
- libgtksourceview
- libmediaart
- libmodplug
- mozjs38
- yt-dlc


#### Changes in this release:

**gnome-themes-extra**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**gd**

 - Martin Reboredo: Update gd to 2.3.2

**gstreamer-1.0-plugins-good**

 - Joshua Strobl: Update to 1.18.4. Changelog available [here](https://gstreamer.freedesktop.org/releases/1.18/#1.18.4).

**gdbm**

 - Joshua Strobl: Update to 1.19. Changelog available [here](https://lists.gnu.org/archive/html/info-gnu/2020-12/msg00009.html).
 - Joey Riches: Update abireport for glibc

**gstreamer-1.0-plugins-base**

 - F. von Gellhorn: Rebuild against tooling update
 - Reilly Brogan: Add 32-bit package for gstreamer-1.0-plugins-base
 - Joshua Strobl: Update to 1.18.4. Changelog available [here](https://gstreamer.freedesktop.org/releases/1.18/#1.18.4).

**gpgme**

 - F. von Gellhorn: Rebuild against tooling update
 - Joey Riches: Update abireport for glibc

**libsndfile**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libdvdcss**

 - Joey Riches: Rebuild against toolchain
 - Pierre-Yves: Update libdvdcss to 1.4.3

**libimobiledevice**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Sync with git for newer iOS release support.

**libgtk-2**

 - Joshua Strobl: Update to 2.24.33
 - Joshua Strobl: Update ABI files

**grub2**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**solus-artwork**

 - Joshua Strobl: Update to 30.0
 - Joshua Strobl: Update to 29.0
 - Joshua Strobl: Update to 28.0

**inetutils**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**unzip**

 - F. von Gellhorn: Rebuild against tooling update
 - Joey Riches: Update abireport for glibc

**tracker-miners**

 - Joshua Strobl: Safety rebuild against poppler
 - Joshua Strobl: Update to 3.1.2.
 - Joshua Strobl: Rebuild against poppler
 - Joshua Strobl: Update to 3.1.0. Changelog available [here](https://gitlab.gnome.org/GNOME/tracker-miners/-/blob/3.1.0/NEWS).

**mpv**

 - Joshua Strobl: Rebuild against toolchain
 - Alexander Vorobyev: mpv: backport fix for zero-copy VAAPI/Vulkan interop
 - Joshua Strobl: Rebuild against libplacebo
 - Alexander Vorobyev: Update mpv to 0.33.1
 - Joshua Strobl: Move back to youtube-dl

**os-installer**

 - Joshua Strobl: Implement change to installer OP to improve reliability of swap setting in fstab.

**npth**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**ghostscript**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**python-packaging**

 - Joey Riches: Update to 20.9

**libcairo**

 - Joshua Strobl: Disable LTO. Evince developers complain about it.
 - Joshua Strobl: Update to 1.17 series.
 - Joshua Strobl: Update ABI files

**fftw**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gnome-control-center**

 - Joshua Strobl: Safety rebuild
 - Rune Morling: gnome-control-center: Rebuild against samba-4.13.9
 - Rune Morling: gnome-control-center: Rebuild against samba
 - Joshua Strobl: Update to 40.0. Changelog available [here](https://gitlab.gnome.org/GNOME/gnome-control-center/-/blob/40.0/NEWS).
 - Rune Morling: Safety rebuild for samba-4.13.7 update
 - Rune Morling: Safety rebuild (samba-4.13.x stack upgrade)
 - Joshua Strobl: Update to 3.38.4
 - Rune Morling: Safety rebuild for samba-4.12.11

**findutils**

 - Joey Riches: Update to 4.8.0 & rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gnome-disk-utility**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Now held back.
 - Joshua Strobl: Update to 3.38.2

**gspell**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**libdvdread**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**zstd**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**dosfstools**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libinput**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update to 1.17.1

**libwebp**

 - Joey Riches: Enable speed, lto flags and avx2 libs
 - Joey Riches: Rebuild against toolchain

**libxslt**

 - Martin Reboredo: Update libxslt to 1.1.34

**libspectre**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**nano**

 - David Harder: Update nano to 5.8
 - Joshua Strobl: Update to 5.7. Changelog available [here](https://lists.gnu.org/archive/html/info-gnu/2021-04/msg00013.html).
 - Algent Albrahimi: Update nano to 5.6

**elfutils**

 - Martin Reboredo: Update elfutils to 0.185
 - Joey Riches: Update abireport for glibc

**libproxy**

 - Joey Riches: Rebuild against toolchain
 - Algent Albrahimi: Update libproxy to 0.4.17 and switch to python3

**inotify-tools**

 - Joshua Strobl: Update to 3.20.11.0. No changelog by upstream.
 - Joey Riches: Update abireport for glibc

**libmaxminddb**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libosinfo**

 - Joshua Strobl: Update to 1.9.0

**libtimezonemap**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**libcap2**

 - Joshua Strobl: Rebuild against toolchain
 - Martin Reboredo: Update libcap2 to 2.50

**libqmi**

 - Joshua Strobl: Update to 1.28.2. Changelog available [here](https://gitlab.freedesktop.org/mobile-broadband/libqmi/-/blob/qmi-1-28/NEWS).
 - Joshua Strobl: Add ABI files for current release

**gawk**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libdazzle**

 - Joshua Strobl: Update to 3.40.0

**baobab**

 - Joshua Strobl: Held back to 3.38 series.

**bind-utils**

 - Joshua Strobl: Safety rebuild against json-c
 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Safety rebuild against libuv

**libcdr**

 - Pierre-Yves: Update libcdr to 0.1.7
 - Joey Riches: Update abireport for glibc

**libgweather**

 - Joshua Strobl: Update to 40.0. Changelog available [here](https://gitlab.gnome.org/GNOME/libgweather/-/blob/master/NEWS).
 - Joshua Strobl: Update ABI files

**libxfont2**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**mesalib**

 - Joshua Strobl: Revert offending commits that cause glitchiness on Plasma for radeonsi. Resolves T9788.
 - Joshua Strobl: Update to 21.1.3. Release notes available [here](https://docs.mesa3d.org/relnotes/21.1.3.html).
 - Joshua Strobl: Rebuild against toolchain
 - Bryan T. Meyers: Updated to 21.1.2
 - Joey Riches: Rebuild against llvm 11

**libatasmart**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**yelp-xsl**

 - Joshua Strobl: Update to 40.2. Updated translations.
 - Joshua Strobl: Update to 40.0. Changelog available [here](https://gitlab.gnome.org/GNOME/yelp-xsl/-/blob/40.0/NEWS).
 - Joshua Strobl: Update to 3.38.3. Updated translations.

**brotli**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update ABI files

**ntfs-3g**

 - Joshua Strobl: Safety rebuild
 - F. von Gellhorn: Safety rebuild

**openconnect**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**qt5-base**

 - F. von Gellhorn: Rebuild against toolchain
 - F. von Gellhorn: Sync with KDE-QT
 - Fabio Forni: Remove docs from qt5-base and remove qt5-docs replacement
 - F. von Gellhorn: Sync with KDE QT git
 - F. von Gellhorn: Switch to KDE QT Source for webengine update
 - F. von Gellhorn: Rebuild against our new infrastructure tooling and add patches for: - Fix-allocated-memory-of-QByteArray - Let-QXcbConnection-getTimestamp-properly-exit-when-X

**webrtc-audio-processing**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**networkmanager-openvpn**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 1.8.14
 - Joshua Strobl: Rebuild for GNOME 40 stack

**perl**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**tzdata**

 - Joshua Strobl: Update to 2021a

**libgphoto2**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**xkbcomp**

 - Joey Riches: Rebuild against toolchain
 - Thomas Staudinger: Update xkbcomp to 1.4.5

**grilo**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Rebuild for GNOME 40 stack

**openssl-11**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 1.1.1k. Resolves CVE-2021-3449 and CVE-2021-3450.
 - Joshua Strobl: Update to 1.1.1j.

**bubblewrap**

 - Joey Riches: Rebuild against toolchain
 - Campbell Jones: Disable priv-mode setuid in bubblewrap

**libgpod**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**network-manager-applet**

 - Joshua Strobl: Rebuild for GNOME 40 stack
 - Joey Riches: Backport patch to resolve T9606
 - Joshua Strobl: Update to 1.20.0

**networkmanager-openconnect**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Rebuild for GNOME 40 stack

**ffmpegthumbnailer**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**alsa-utils**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**nautilus**

 - Joshua Strobl: Disable portal support. Fixes T9793.
 - Joshua Strobl: Update to 40.2
 - Joshua Strobl: Update to 40.1
 - Joshua Strobl: Update to 40.0. Sorta.

**tar**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**sudo**

 - Joey Riches: Rebuild against toolchain and shadow
 - Pierre-Yves: Update sudo to 1.9.7p1
 - Pierre-Yves: Update sudo to 1.9.7

**xauth**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gsettings-desktop-schemas**

 - Joshua Strobl: Update to 40.0.

**gcc**

 - Joey Riches: Complete bootstrap
 - Joey Riches: Rebootstrap
 - Joey Riches: Update to 10.3.0

**lame**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**alsa-lib**

 - Joey Riches: Safety rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**budgie-desktop-branding**

 - Joshua Strobl: Sync with git for fix to Rhythmbox desktop file reference.
 - Joshua Strobl: Sync with git for Solus 4.3 release
 - Joshua Strobl: Sync with git for Budgie-specific session screensaver schema changes.
 - Joshua Strobl: Sync with git for update to reflect Budgie session background key change.
 - Joshua Strobl: Updated to support moved font settings
 - Joshua Strobl: Update to reflect background change.

**librsvg**

 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update to 2.50.7
 - Joshua Strobl: Update to 2.50.6
 - Joshua Strobl: Update to 2.50.5
 - Joshua Strobl: Update to 2.50.4
 - Joshua Strobl: Add / update ABI files

**gcr**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**libatk**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**rav1e**

 - Joey Riches: Rebuild against toolchain
 - Alexander Vorobyev: rav1e: fix wrong prefix in pkgconfig
 - Alexander Vorobyev: Update rav1e to 0.4.1

**amtk**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**gstreamer-1.0-plugins-bad**

 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Rebuild against srt
 - Alexander Vorobyev: gstreamer-1.0-plugins-bad: switch from libmodplug to libopenmpt
 - Joshua Strobl: Update to 1.18.4. Changelog available [here](https://gstreamer.freedesktop.org/releases/1.18/#1.18.4).
 - Joshua Strobl: Rebuild against aom and x265
 - Joshua Strobl: Rebuild against nettle and gnutls

**aom**

 - Alexander Vorobyev: Update aom to 3.1.1
 - Joshua Strobl: Rebuild against toolchain
 - Alexander Vorobyev: Update aom to 3.1.0
 - Alexander Vorobyev: Update aom to 3.0.0
 - Alexander Vorobyev: Update aom to 2.0.2

**zimg**

 - Alexander Vorobyev: Update zimg to 3.0.2
 - Joey Riches: Update abireport for glibc

**lzip**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**adwaita-icon-theme**

 - Joshua Strobl: Update to 40.1.1
 - Joshua Strobl: Update to 40.0 RC

**polkit**

 - Joshua Strobl: Safety rebuild
 - Reilly Brogan: polkit: Security Updates

**snapd**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 2.51. Release notes available [here](https://github.com/snapcore/snapd/releases/tag/2.51).
 - Joshua Strobl: Linker flags fixed apparmor stuff.
 - Joshua Strobl: Re-introduce runuser patch for Plasma.
 - Joshua Strobl: Clean up various extraneous patches which should no longer be necessary due to apparmor disabling.
 - Joshua Strobl: Disable apparmor pending further investigation in profile issues. Ref. T9638.
 - Joshua Strobl: Update to 2.49.1. Changelog available [here](https://github.com/snapcore/snapd/releases/tag/2.49.1).

**vulkan**

 - Joshua Strobl: Bump to fix inclusion
 - Pierre-Yves: Update vulkan to 1.2.176.0
 - curtisy: Update vulkan to 1.2.170

**libpsl**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update ABI files

**gnome-color-manager**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**python-pysmbc**

 - Rune Morling: python-pysmbc: Rebuild against samba-4.13.9
 - Rune Morling: python-pysmbc: Rebuild against samba
 - Rune Morling: Safety rebuild for samba-4.13.7 update
 - Rune Morling: Safety rebuild (samba-4.13.x stack upgrade)
 - Rune Morling: Safety rebuild for samba-4.12.11

**xorg-driver-input-wacom**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libx11**

 - Thomas Staudinger: Update libx11 to 1.7.2
 - Joey Riches: Rebuild against toolchain
 - Thomas Staudinger: Update libX11 to 1.7.1

**at-spi2**

 - Joshua Strobl: Update to 2.40.2
 - Joshua Strobl: Update to 2.40.1
 - Joshua Strobl: Update to 2.40.0

**libao**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libgnome-desktop**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 40.2
 - Joshua Strobl: Update to 40.1
 - Joshua Strobl: Update to 40.0
 - Joshua Strobl: Update to 3.38.4. Translation updates.

**libwpe**

 - Martin Reboredo: Update libwpe to 1.10.0
 - Joshua Strobl: Rebuild for GNOME 40 stack

**libdc1394**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**lz4**

 - Joey Riches: Rebuild against toolchain
 - Reilly Brogan: lz4: Add patch for CVE-2021-3520

**kbd**

 - Joshua Strobl: Update to 2.4.0. Changelog available [here](https://github.com/legionus/kbd/releases/tag/v2.4.0).
 - Joey Riches: Update abireport for glibc

**graphviz**

 - Joshua Strobl: Safety rebuild against poppler
 - Joshua Strobl: Rebuild against poppler
 - Joshua Strobl: Update to 2.47.0. Changelog available [here](https://gitlab.com/graphviz/graphviz/-/blob/master/CHANGELOG.md#2470-2021-03-15).

**mbedtls**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gpart**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libwps**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**exfatprogs**

 - Joey Riches: Rebuild against toolchain
 - Silke Hofstra: Update exfatprogs to 1.1.1
 - Silke Hofstra: Update exfatprogs to 1.1.0

**gnome-bluetooth**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 3.34.5
 - Joshua Strobl: Update ABI files

**gstreamer-1.0**

 - F. von Gellhorn: Rebuild against tooling update
 - Reilly Brogan: Add 32-bit package for gstreamer-1.0
 - Joshua Strobl: Update to 1.18.4. Release notes available [here](https://gstreamer.freedesktop.org/releases/1.18/#1.18.4).

**gnome-calendar**

 - Joshua Strobl: Add various patches to support new timezone functions and fix compilation against new GWeather.
 - Joshua Strobl: Add HELDBACK.md file.

**yaml**

 - Eressea: Update yaml to 0.2.5

**openvpn**

 - Joshua Strobl: Safety rebuild
 - Reilly Brogan: openvpn: Update to 2.5.2

**solus-sc**

 - Joshua Strobl: Sync with git to resolve missing icons for Breeze.

**baselayout**

 - Joshua Strobl: Update to 4.3
 - Joshua Strobl: Bump for 4.2

**libpaper**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**squashfs-tools**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Enable LZO for snap squashfs decompression.

**libwacom**

 - Campbell Jones: Update libwacom to v1.10.0
 - Campbell Jones: Update libwacom to v1.9.0
 - Campbell Jones: Update libwacom to v1.8.0

**libp11-kit**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**pango**

 - Joshua Strobl: Update to 1.48.7
 - Joshua Strobl: Update to 1.48.5
 - Joshua Strobl: Update to 1.48.4
 - Joshua Strobl: Rebuild for GNOME 40 stack
 - Joshua Strobl: Update to 1.48.3
 - Joshua Strobl: Update to 1.48.2

**libgtk-3**

 - Joshua Strobl: Update to 3.24.29
 - Joshua Strobl: Update to 3.24.28
 - Joshua Strobl: Rebuild for GNOME 40 stack
 - Joshua Strobl: Update to 3.24.27
 - Joshua Strobl: Update to 3.24.25

**papirus-icon-theme**

 - Joshua Strobl: Update to 20210601. Changelog available [here](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/releases/tag/20210601).
 - Joshua Strobl: Update to 20210501. Changelog available [here](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/releases/tag/20210501).
 - Joshua Strobl: Revert to 20210201. New release breaks trash icon and I don't like the new Software Center icon.
 - Joshua Strobl: Revert "Update to 20210302. Changelog available [here](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/releases/tag/20210302)."
 - Joshua Strobl: Update to 20210302. Changelog available [here](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/releases/tag/20210302).
 - Joshua Strobl: Update to 20210201. Changelog available [here](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/releases/tag/20210201).

**osinfo-db**

 - Joshua Strobl: Update to 20210312.

**dhclient**

 - Joey Riches: Rebuild against toolchain
 - Reilly Brogan: dhclient: Update to 4.4.2_p1 for CVE-2021-25217

**system-config-printer**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**dbus**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**psmisc**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**pangomm**

 - Joshua Strobl: Update to 2.46.1. Various build fixes.

**wpebackend-fdo**

 - Martin Reboredo: Update wpebackend-fdo to 1.8.4
 - Joshua Strobl: Update to 1.8.2

**nautilus-python**

 - Algent Albrahimi: Switch nautilus-python to python3
 - Joshua Strobl: Rebuild for GNOME 40 stack

**bluez**

 - F. von Gellhorn: Update bluez to 5.60
 - Reilly Brogan: bluez: Update to 5.59
 - Joey Riches: Rebuild against toolchain
 - Reilly Brogan: Update bluez to 5.58

**nvidia-390-glx-driver**

 - Joshua Strobl: Rebuild against 5.13.1
 - Joshua Strobl: Rebuild against 5.13
 - Joshua Strobl: Safety rebuild against kernel
 - Joshua Strobl: Safety rebuild against kernel
 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernels
 - Joshua Strobl: Rebuild against kernels
 - Thomas Staudinger: Update nvidia-390-glx-driver to 390.143 and rework descriptions
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernels
 - Joshua Strobl: Rebuild against kernels
 - Joshua Strobl: Rebuild against kernels
 - Joshua Strobl: Rebuild against kernels

**libgeocode-glib**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**poppler**

 - Joshua Strobl: Update to 21.06.1
 - Joshua Strobl: Update to 21.05.0
 - Joshua Strobl: Update to 21.03.0. Changelog available [here](https://gitlab.freedesktop.org/poppler/poppler/-/blob/poppler-21.03.0/NEWS).
 - Joey Riches: Update to 21.02.0

**poppler-data**

 - Joey Riches: Update to 0.4.10

**gnome-screenshot**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**sbc**

 - F. von Gellhorn: Rebuild against tooling
 - Martin Reboredo: Update sbc to 1.5

**gutenprint**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**openal-soft**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**bash**

 - Joey Riches: Make this guy static again i guess and test toolchain
 - Joey Riches: Build as shared to avoid segfault against glibc update
 - Troy Harvey: Update bash to 5.1.8

**sdl1**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libedit**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update to 2021021-3.1

**sdl2**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**seahorse**

 - F. von Gellhorn: Rebuild against tooling
 - Joshua Strobl: Enable LDAP support
 - Joshua Strobl: Rebuild for GNOME 40 stack

**openssh**

 - Joshua Strobl: Update to 8.6_p1. Changelog available [here](https://www.openssh.com/txt/release-8.6).
 - Joey Riches: Update abireport for glibc

**openssl**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libarchive**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**openldap**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**cryptsetup**

 - Joshua Strobl: Safety rebuild against json-c
 - Joshua Strobl: Update to 2.3.6
 - Joey Riches: Update abireport for glibc

**lvm2**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**harfbuzz**

 - Joshua Strobl: Update to 2.8.1
 - Joshua Strobl: Update to 2.8.0
 - Joey Riches: Scrap PGO
 - Joey Riches: Just gimme one last chance baby
 - Joey Riches: Enable PGO for a ~13% performance gain
 - Joey Riches: Actually set the version, dolt.
 - Joey Riches: Update to 2.7.4

**xz**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gnome-autoar**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 0.3.3
 - Joshua Strobl: Update to 0.3.1
 - Joshua Strobl: Update to 0.3.0

**libjson-glib**

 - Joshua Strobl: Update to 1.6.2

**libnfs**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**cups**

 - Joey Riches: Safety rebuild
 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update ABI files

**librest**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**gpm**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**mariadb**

 - Joshua Strobl: Rebuild against toolchain
 - Reilly Brogan: Update mariadb to 10.5.10
 - Reilly Brogan: Compile out PLUGIN_AUTH_PAM completely. Update to 10.5.9
 - Martin Reboredo: Update mariadb to 10.5.8

**libplist**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libva**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update to 2.10.0

**xdg-user-dirs**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libxpm**

 - Joey Riches: Rebuild against toolchain
 - Thomas Staudinger: Update libxpm to 3.5.13

**libpcre**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libkate**

 - Fabio Forni: Convert libkate to package.yml format

**nvidia-glx-driver**

 - Joshua Strobl: Rebuild against 5.13.1
 - Joshua Strobl: Rebuild against 5.13
 - Joshua Strobl: Safety rebuild against kernel
 - Joshua Strobl: Safety rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Thomas Staudinger: Update nvidia-glx-driver to 465.31
 - Joshua Strobl: Rebuild against kernels
 - Thomas Staudinger: Update nvidia-glx-driver to 460.80
 - Thomas Staudinger: Update nvidia-glx-driver to 465.27
 - Joshua Strobl: Rebuild against kernels
 - Thomas Staudinger: Update nvidia-glx-driver to 465.24.02
 - Joshua Strobl: Rebuild against kernel
 - Joshua Strobl: Rebuild against kernel
 - Thomas Staudinger: Update nvidia-glx-driver to 460.67
 - Joshua Strobl: Rebuild against kernels
 - Joshua Strobl: Rebuild against kernels
 - Joshua Strobl: Rebuild against Linux 5.11
 - Thomas Staudinger: Update nvidia-glx-driver to 460.56
 - Joshua Strobl: Rebuild against kernels

**libunwind**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libevent**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**grep**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**ffmpeg**

 - Joshua Strobl: Rebuild against x264
 - Joey Riches: Rebuild against toolchain
 - Rune Morling: ffmpeg: Rebuild against samba-4.13.9
 - Joshua Strobl: Rebuild against srt
 - Rune Morling: ffmpeg: Rebuild against samba
 - Alexander Vorobyev: ffmpeg: enable module files support via libopenmpt
 - Rune Morling: Safety rebuild for samba-4.13.7 update
 - Joshua Strobl: Update to 4.4. Changelog available [here](https://git.ffmpeg.org/gitweb/ffmpeg.git/blob/b593abda6c642cb0c3959752dd235c2faf66837f:/Changelog).
 - Joshua Strobl: Rebuild against aom and x265
 - Rune Morling: Safety rebuild (samba-4.13.x stack upgrade)
 - Alexander Vorobyev: Update ffmpeg to 4.3.2
 - Rune Morling: Safety rebuild for samba-4.12.11

**tree**

 - F. von Gellhorn: Rebuild against tooling update
 - Joey Riches: Update abireport for glibc

**canon-ufriilt-common**

 - Joshua Strobl: Update to 5.30. No changelog from upstream.
 - Joey Riches: Update abireport for glibc

**pipewire**

 - Joshua Strobl: Fix build
 - Reilly Brogan: pipewire: Update to 0.3.31
 - Joshua Strobl: Rebuild against toolchain
 - Reilly Brogan: Update pipewire to 0.3.28, add 32-bit package
 - Martin Reboredo: Update pipewire to 0.3.26
 - Joshua Strobl: Rebuild against GNOME 40
 - Martin Reboredo: JACK pipewire support and version number correction
 - Joey Riches: Update to 0.3.25
 - Joey Riches: Update to 0.3.24

**libepoxy**

 - Joey Riches: Change source URL location back to original
 - Joey Riches: Update to 1.5.8
 - Joshua Strobl: Update to 1.5.7

**gnupg**

 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update ABI files

**python-gobject**

 - Joshua Strobl: Update to 3.40.0

**python-chardet**

 - Joey Riches: Update to 4.0.0

**libgnomekbd**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**man-db**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gedit**

 - Joshua Strobl: Update to 40.1
 - Joshua Strobl: Update to 40.0
 - Joshua Strobl: Rebuild against libgtksourceview4 rename.

**fluidsynth**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libblockdev**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**wavpack**

 - F. von Gellhorn: Rebuild against tooling update
 - Joey Riches: Update abireport for glibc

**dconf**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**dbus-glib**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 0.112. Mainly CI and test changes.

**net-snmp**

 - F. von Gellhorn: Rebuild agaisnt tooling update
 - Joey Riches: Update abireport for glibc

**libgtkmm-3**

 - Joshua Strobl: Update to 3.24.5

**djvulibre**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libvoikko**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**which**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**wireless-tools**

 - Martin Reboredo: Place manpages correctly in wireless-tools
 - Joey Riches: Update abireport for glibc

**libinstpatch**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libcddb**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**cups-pk-helper**

 - F. von Gellhorn: Rebuild against tooling update
 - Joey Riches: Update abireport for glibc

**gnome-calculator**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 40.0
 - Joshua Strobl: Rebuild against libgtksourceview4 rename.

**iproute2**

 - Joshua Strobl: Safety rebuild
 - Silke Hofstra: Update iproute2 to 5.12.0
 - Silke Hofstra: Update iproute2 to 5.11.0

**xrandr**

 - Algent Albrahimi: Fix description and add homepage for xrandr
 - Joey Riches: Update abireport for glibc

**desktop-file-utils**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libwnck**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**libmwaw**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**dav1d**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Merge branch 'master' of https://dev.getsol.us/source/dav1d
 - Joey Riches: Update abireport for glibc
 - Pierre-Yves: Update dav1d to 0.9.0
 - Pierre-Yves: Update dav1d to 0.8.2

**thunderbird**

 - Bryan T. Meyers: Rebuild for toolchain upgrades
 - Joshua Strobl: Update to 78.11.0. Release notes available [here](https://www.thunderbird.net/en-US/thunderbird/78.11.0/releasenotes/).
 - Joshua Strobl: Update to 78.10.2. Release notes available [here](https://www.thunderbird.net/en-US/thunderbird/78.10.2/releasenotes/).
 - Joshua Strobl: Update to 78.10.1
 - Pierre-Yves: Update thunderbird to 78.9.1
 - Joshua Strobl: Update to 78.9.0. Release notes available [here](https://www.thunderbird.net/en-US/thunderbird/78.9.0/releasenotes/).
 - F. von Gellhorn: Update thunderbird to 78.8.0
 - Fabio Forni: Fix thunderbird build with rust 1.50.0
 - Joshua Strobl: Update to 78.7.0. Release notes available [here](https://www.thunderbird.net/en-US/thunderbird/78.7.0/releasenotes/).

**nettle**

 - Joshua Strobl: Update to 3.7.2. Changelog available [here](https://git.lysator.liu.se/nettle/nettle/-/blob/nettle_3.7.2_release_20210321/NEWS).
 - Joshua Strobl: Revert to 3.4.x in git history and generate ABI files for that.
 - Joshua Strobl: Revert "Update to 3.6. Changelog available [here](https://git.lysator.liu.se/nettle/nettle/-/blob/nettle_3.6_release_20200429/NEWS)."
 - Joshua Strobl: Revert "Add / update ABI files"
 - Joshua Strobl: Add / update ABI files
 - Joshua Strobl: Update to 3.6. Changelog available [here](https://git.lysator.liu.se/nettle/nettle/-/blob/nettle_3.6_release_20200429/NEWS).

**libusb**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc
 - Joey Riches: Set homepage to https

**gnome-session**

 - Joshua Strobl: Update to 40.0
 - Joshua Strobl: Update ABI files

**libpipeline**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libsecret**

 - Joshua Strobl: Mostly just a safety rebuild against Vala and to get our new ABI files.

**libevdev**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**budgie-desktop-view**

 - Joshua Strobl: Rebuild against GNOME 40 stack
 - Joshua Strobl: Sync with git to enable the "Move to Trash" option for .desktop files.

**gnome-system-monitor**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Fix headerbar not being applied as titlebar
 - Joshua Strobl: Update to 40.0

**libnspr**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**popt**

 - Joshua Strobl: Update to 1.18
 - Joey Riches: Update abireport for glibc

**x264**

 - Alexander Vorobyev: Update x264 to 0.163.3060
 - Joey Riches: Rebuild against toolchain
 - Alexander Vorobyev: Update x264 to 0.161.3049

**x265**

 - Joey Riches: Rebuild against toolchain
 - Alexander Vorobyev: Update x265 to 3.5
 - Alexander Vorobyev: x265: update link to source tarball

**gsound**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**gobject-introspection**

 - Joshua Strobl: Update to 1.68.0

**clr-boot-manager**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**fontconfig**

 - Martin Reboredo: Update fontconfig to 2.13.1
 - Joey Riches: Update abireport for glibc

**python-asn1crypto**

 - Joey Riches: Update to 1.4.0

**xorg-driver-input-libinput**

 - Joey Riches: Update to 1.0.0

**python-magic**

 - Jarno Turkki: Update python-magic to 0.4.22

**libboost**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**iptables**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to a version that isn't prehistoric.
 - Joshua Strobl: Update ABI files

**qtstyleplugins**

 - F. von Gellhorn: Saftey rebuild

**cpio**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**bash-completion**

 - Abdulkadir Furkan Şanlı: Update bash-completion to 2.11

**xorg-driver-video-intel**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gptfdisk**

 - Joshua Strobl: Update to 1.0.8
 - Joey Riches: Update abireport for glibc

**onboard**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**db5**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**dotconf**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**tcl**

 - F. von Gellhorn: Rebuild against tooling update
 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**python-requests**

 - Joey Riches: Update to 2.25.1

**python-idna**

 - Joey Riches: Update to 2.10

**gnome-online-accounts**

 - Joshua Strobl: Update to 3.38.1

**flatpak**

 - Joey Riches: Rebuild against toolchain
 - F. von Gellhorn: Safety rebuild
 - Joey Riches: Switch back to system bubblewrap now that setuid is disabled
 - Joshua Strobl: Update to 1.10.2

**enchant**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 2.2.15. No meaningful changes.

**orca**

 - Joshua Strobl: Update to 40.0

**libgnutls**

 - Joshua Strobl: Update to 3.7.2. Changelog available [here](https://lists.gnupg.org/pipermail/gnutls-help/2021-May/004708.html).
 - Joshua Strobl: Update to 3.7.1. Changelog available [here](https://lists.gnupg.org/pipermail/gnutls-help/2021-March/004698.html).
 - Joshua Strobl: Add / update ABI files

**json-c**

 - Joshua Strobl: Update to 0.15. Changelog available [here](https://github.com/json-c/json-c/blob/json-c-0.15-20200726/ChangeLog).
 - Joey Riches: Update abireport for glibc

**libpciaccess**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**sed**

 - F. von Gellhorn: Rebuild against tooling
 - Joey Riches: Update abireport for glibc

**imagemagick**

 - Joey Riches: Rebuild against libraw 0.20.2
 - Pierre-Yves: Update imagemagick to 7.0.11-13
 - Pierre-Yves: Update imagemagick to 7.0.11-11
 - Pierre-Yves: Update imagemagick to 7.0.11-8
 - Pierre-Yves: Update imagemagick to 7.0.11-6
 - Pierre-Yves: Update imagemagick to 7.0.11-3
 - Pierre-Yves: Update imagemagick to 7.0.11-2
 - Pierre-Yves: Update imagemagick to 7.0.11-1

**mdadm**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libxaw**

 - Thomas Staudinger: Update libxaw to 1.0.14

**libxau**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**glib-networking**

 - Joshua Strobl: Update to 2.68.0

**exiv2**

 - Joey Riches: Rebuild against toolchain
 - Reilly Brogan: exiv2: Security Updates

**v4l-utils**

 - F. von Gellhorn: Rebuild against tooling update
 - Martin Reboredo: Update v4l-utils to 1.20.0

**libetonyek**

 - Pierre-Yves: Update libetonyek to 0.1.10
 - Joey Riches: Update abireport for glibc

**modem-manager**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 1.16.2. Changelog avaialble [here](https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/blob/mm-1-16/NEWS).
 - Joshua Strobl: Add updated ABI files

**mjpegtools**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libgxps**

 - Joshua Strobl: Update to 0.3.2

**gnome-terminal**

 - Joshua Strobl: Update to 3.40.2. Changes listed [here](https://ftp.acc.umu.se/pub/GNOME/sources/gnome-terminal/3.40/gnome-terminal-3.40.2.changes).
 - Joshua Strobl: Update to 3.40. No changelog by upstream.
 - Joshua Strobl: Update to 3.38.3

**cyrus-sasl**

 - Joey Riches: Enable LOGIN support resolves T9005
 - Joey Riches: Rebuild for prosperity
 - Joey Riches: Update abireport for glibc

**systemd**

 - Joshua Strobl: Pull back to 247.7 to see if that fixes sddm.
 - Joshua Strobl: Update to 248.3. 248 changelog available [here](https://github.com/systemd/systemd-stable/blob/v248.3/NEWS).
 - Joshua Strobl: Update to 247.6. No changelog by upstream.
 - Joshua Strobl: Update to 247.4. Release notes available [here](https://lists.freedesktop.org/archives/systemd-devel/2020-November/045646.html).

**portaudio**

 - Joshua Strobl: Rebuild against toolchain
 - Martin Reboredo: Update portaudio to 20210406

**python-cffi**

 - Joey Riches: Update to 1.14.5

**libgcrypt**

 - F. von Gellhorn: Rebuild against tooling update
 - Joey Riches: Update abireport for glibc

**libxkbcommon**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 1.3.0. Changelog available [here](https://github.com/xkbcommon/libxkbcommon/blob/xkbcommon-1.3.0/NEWS).
 - Joshua Strobl: Update ABI files

**hplip**

 - Joey Riches: Fixup builddep and update abireport

**cairomm**

 - Joshua Strobl: Rebuild against GNOME 40 stack

**lash**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**lsof**

 - Joey Riches: Use libtirpc for RPC functionality and safety rebuild against glibc
 - Joey Riches: Update abireport for glibc

**libical**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 3.0.9

**at-spi2-atk**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**hyphen**

 - Pierre-Yves: Split hyphenation library & english rules in different packages
 - Pierre-Yves: Remove component.xml

**lsb-release**

 - Joshua Strobl: Bump to 4.3
 - Joshua Strobl: Bump for 4.2

**libmbim**

 - Joshua Strobl: Update to 1.24.6

**gdk-pixbuf**

 - Joshua Strobl: Update to 2.42.6
 - Joshua Strobl: Update to 2.42.4
 - Joshua Strobl: Add / update ABI files

**network-manager**

 - Joshua Strobl: Rebuild against systemd 247.7 to fix WiFi
 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update to 1.30.4
 - Joshua Strobl: Update to 1.30.2
 - Joshua Strobl: Update to 1.30
 - Joshua Strobl: Add ABI files

**libexempi**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**cracklib**

 - Martin Reboredo: Create the cracklib dictionary using a valid word file
 - Martin Reboredo: Update cracklib to 2.9.7

**procps-ng**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libplacebo**

 - Alexander Vorobyev: Update libplacebo to 3.120.3
 - Alexander Vorobyev: Update libplacebo to 3.120.2 & switch from glslang to shaderc

**kerberos**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**graphite2**

 - Joshua Strobl: Update to 1.3.14

**gstreamer-1.0-plugins-ugly**

 - Joshua Strobl: Rebuild against x264
 - Joshua Strobl: Update to 1.18.4. Changelog available [here](https://gstreamer.freedesktop.org/releases/1.18/#1.18.4).

**libde265**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gnome-keyring**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 40.0

**libnl**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libpeas**

 - Joshua Strobl: Update to 1.30.0. No meaningful changes.

**libgtop**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Rebuild against GNOME 40 stack

**avahi**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**pixman**

 - Joshua Strobl: Update to 0.40.0. Announcement available [here](https://lists.freedesktop.org/archives/pixman/2020-April/004959.html).
 - Joshua Strobl: Cleanup package and add new ABI files

**libassuan**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libxml2**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 2.9.12. News available [here](http://xmlsoft.org/news.html).

**graphene**

 - Joshua Strobl: Update to 1.10.6

**expat**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**cups-filters**

 - Joshua Strobl: Safety rebuild against poppler
 - F. von Gellhorn: Rebuild against tooling update
 - Joshua Strobl: Rebuild against poppler
 - Joshua Strobl: Rebuild against GNOME 40 stack
 - F. von Gellhorn: Update cups-filters to 1.28.7

**zenity**

 - Joshua Strobl: Update to 3.24.0. Updated translations.

**rhythmbox**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Sync with git for numerous fixes. Resolves T9621.
 - Joshua Strobl: Rebuild against GNOME 40 stack

**libgudev**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 236. Ported to Meson and GIR generation for multilib.

**gparted**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**coreutils**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libcap-ng**

 - Joey Riches: Rebuild against toolchain
 - Martin Reboredo: Update libcap-ng to 0.8.2

**libnice**

 - Bryan T. Meyers: Updated to 0.1.18 and enabled gstreamer support

**sqlite3**

 - F. von Gellhorn: Rebuild against tooling
 - Joey Riches: Update abireport for glibc

**gvfs**

 - Joshua Strobl: Safety rebuild
 - Rune Morling: gvfs: Rebuild against samba-4.13.9
 - Rune Morling: gvfs: Rebuild against samba
 - Joshua Strobl: Revert ProxyVolumeMonitor free of proxy object.
 - Joshua Strobl: Update to 1.48.1
 - Joshua Strobl: Update to 1.48.0
 - F. von Gellhorn: Safety rebuild
 - Joshua Strobl: Rebuild against GNOME 40 stack
 - Rune Morling: Safety rebuild for samba-4.13.7 update
 - Rune Morling: Safety rebuild (samba-4.13.x stack upgrade)
 - Rune Morling: Safety rebuild for samba-4.12.11

**pam**

 - Joshua Strobl: Backport Fedora patch from their 1.3.1 that fixes check against claims of non-existent user.
 - Joey Riches: Make sure libtirpc is available
 - Joshua Strobl: Do another safety rebuild
 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**liborcus**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc
 - Pierre-Yves: Update liborcus to 0.16.1

**pinentry**

 - Joshua Strobl: Update to 1.1.1
 - Joey Riches: Update abireport for glibc

**fuse**

 - Joey Riches: Rebuild against toolchain
 - F. von Gellhorn: Update fuse to 3.10.3

**audit**

 - Joshua Strobl: Update to 3.0.2. Changelog available [here](https://github.com/linux-audit/audit-userspace/blob/v3.0.2/ChangeLog).
 - Joey Riches: Update abireport for glibc

**comar**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**liblcms2**

 - Alexander Vorobyev: Update liblcms2 to 2.12

**gstreamer-1.0-libav**

 - Joshua Strobl: Update to 1.18.4

**breeze**

 - F. von Gellhorn: Update breeze to Desktop 5.22.2
 - F. von Gellhorn: Update breeze to Desktop 5.22.1
 - F. von Gellhorn: Fix SplitterProxy
 - F. von Gellhorn: Update breeze to Desktop 5.21.5
 - F. von Gellhorn: Update breeze to Desktop 5.21.4
 - F. von Gellhorn: Update breeze to Desktop 5.21.3
 - F. von Gellhorn: Update breeze to Desktop 5.21.2
 - F. von Gellhorn: Update breeze to Desktop 5.21.1
 - F. von Gellhorn: Rebuild against our new infrastructure tooling and some package cleanup

**totem-pl-parser**

 - F. von Gellhorn: Rebuild against tooling update
 - Joshua Strobl: Rebuild for GNOME 40 stack

**alsa-plugins**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**udisks**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libuv**

 - Joey Riches: Rebuild against toolchain
 - Martin Reboredo: Update libuv to 1.41.0

**ldb**

 - Joshua Strobl: Safety rebuild
 - Rune Morling: ldb: Update to 2.2.1 (samba-4.13.7 update)
 - Rune Morling: ldb: Update to 2.2.0 (samba-4.13.x stack upgrade)

**gnome-doc-utils**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**gnome-user-docs**

 - Joshua Strobl: Update to 40.0

**less**

 - Joshua Strobl: Update to 581.2. Changelog available [here](http://www.greenwoodsoftware.com/less/news.581.html).
 - Joey Riches: Update abireport for glibc

**libheif**

 - Martin Reboredo: Update libheif to 1.11.0
 - Joshua Strobl: Rebuild against aom and x265

**neon**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libvpx**

 - Fabio Forni: Update libvpx to 1.10.0
 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**evince**

 - Joshua Strobl: Safety rebuild against poppler
 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Rebuild against poppler
 - Joshua Strobl: Update to 40.1
 - Joshua Strobl: Update to 3.38.2

**firefox**

 - Joshua Strobl: Update to 89.0.2. Changelog available [here](https://www.mozilla.org/en-US/firefox/89.0.2/releasenotes/).
 - Joey Riches: Tweaks to improve performance
 - Joshua Strobl: Update to 89.0.1. Release notes available [here](https://www.mozilla.org/en-US/firefox/89.0.1/releasenotes/).
 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update to 89.0. Release notes available [here](https://www.mozilla.org/en-US/firefox/89.0/releasenotes/).
 - Joshua Strobl: Update to 88.0.1
 - Joshua Strobl: Update to 88.0. Release notes available [here](https://www.mozilla.org/en-US/firefox/88.0/releasenotes/).
 - Troy Harvey: Patch Firefox to fix widevine issue
 - Joshua Strobl: Update to 87.0. Changelog available [here](https://www.mozilla.org/en-US/firefox/87.0/releasenotes/).
 - Joshua Strobl: Update to 86.0.1 Changelog available [here](https://www.mozilla.org/en-US/firefox/86.0.1/releasenotes/).
 - Joey Riches: Backport patch to resolve T9605
 - Joshua Strobl: Update to 86.0. Release notes available [here](https://www.mozilla.org/en-US/firefox/86.0/releasenotes/).

**libglvnd**

 - Joey Riches: Rebuild against toolchain
 - Bryan T. Meyers: Updated to 1.3.3
 - Joey Riches: Update abireport for glibc

**openjpeg**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**aalib**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**samba**

 - Joey Riches: Use libtirpc and rpcsvc-proto for RPC functionality
 - Rune Morling: Samba: Remove MPD from suggested rebuilds
 - Rune Morling: Samba: Update to 4.13.9
 - Rune Morling: samba: Update to 4.13.8
 - F. von Gellhorn: Safety rebuild
 - Rune Morling: Samba: Update to 4.13.7
 - Rune Morling: Samba: Update to 4.13.5
 - Rune Morling: samba: Add smplayer to list of apps that need testing
 - Rune Morling: samba: Tweak README.md maintainer documentation
 - Rune Morling: samba: Update to 4.12.11

**libpcap**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**wayland**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 1.19.0
 - Joey Riches: Update abireport for glibc

**apparmor**

 - Kaktuspalme: Remove php-fpm profile
 - Joshua Strobl: Update to 3.x ABI. Disabled test suite. Enabled systemd unit.
 - Joshua Strobl: Update to 2.10.6. Changelog available [here](https://gitlab.com/apparmor/apparmor/-/tags/v2.10.6).

**inxi**

 - Campbell Jones: Update inxi to v3.3.01

**libreoffice**

 - Joshua Strobl: Safety rebuild against poppler
 - Joey Riches: Ensure precompiled headers are enabled for the next rebuild
 - Bryan T. Meyers: Rebuild for toolchain upgrades
 - Pierre-Yves: Update libreoffice to 7.1.4.2
 - Joshua Strobl: Update to 7.1.3.2.
 - Joshua Strobl: Rebuild against poppler
 - Pierre-Yves: Update libreoffice to 7.1.1.2
 - Joey Riches: Rebuild against poppler
 - Joshua Strobl: Fix patterned appdata that was moved to metainfo.
 - Pierre-Yves: Update libreoffice to 7.1.0.3

**libusbmuxd**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**glibmm**

 - Joshua Strobl: Update to 2.66.1
 - Joshua Strobl: Update ABI files

**swig**

 - F. von Gellhorn: Rebuild against tooling Update
 - Joey Riches: Update abireport for glibc

**libdrm**

 - Joey Riches: Rebuild against toolchain
 - Bryan T. Meyers: Updated to 2.4.106
 - Joey Riches: Update abireport for glibc

**libraw**

 - Joey Riches: Update to 0.20.2
 - Joey Riches: Update abireport for glibc

**libglade**

 - Joshua Strobl: Rebuild for GNOME 40 stack

**libixion**

 - Pierre-Yves: Update libixion to 0.16.1

**shadow**

 - Joey Riches: Safety rebuild
 - Joey Riches: Rebuild against fakeroot
 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**python3**

 - Reilly Brogan: python3: Update to 3.7.11, Update pip to 21.1.3
 - Joshua Strobl: Rebuild against toolchain
 - Reilly Brogan: python3: Security Updates
 - Rune Morling: Update python3 to 3.7.10

**libmtp**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**librevenge**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**hexchat**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Add patches to support Libera and default to it.
 - Reilly Brogan: [Hexchat] Add font rendering patch
 - Joshua Strobl: vala-panel-appmenu absolutely should not be a rundep. vala-panel-appmenu has no relation to Budgie or native GNOME Shell functionality.
 - Joshua Strobl: Revert "Add vala-panel-appmenu as a missing rundep per T9696"
 - Bryan T. Meyers: Add vala-panel-appmenu as a missing rundep per T9696

**xorg-server**

 - Joey Riches: Update to 1.20.12
 - Joey Riches: Add rundep on xorg-xwayland
 - Joey Riches: Don't install Xwayland (replaced by xorg-xwayland package)
 - Joey Riches: Merge branch 'master' of https://dev.getsol.us/source/xorg-server
 - Joey Riches: Try moving to meson again for libtirpc support
 - Joey Riches: Try moving to meson again for libtirpc support
 - Joshua Strobl: Update to 1.20.11 and revert prior change.
 - Joshua Strobl: Revert "Switch xorg-server to meson and ninja"
 - Joey Riches: Switch xorg-server to meson and ninja
 - Joshua Strobl: Rebuild against nettle

**python-certifi**

 - Algent Albrahimi: Update python-certifi to 2020.12.05

**xdg-desktop-portal**

 - Joshua Strobl: Add Settings implementation list patch.
 - Joey Riches: Rebuild against toolchain
 - F. von Gellhorn: Safety rebuild
 - Joshua Strobl: Update to 1.8.1

**gnome-settings-daemon**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Update to 40.0.1
 - Joshua Strobl: Add / update ABI files

**dnsmasq**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Rebuild against nettle and gnutls
 - Joshua Strobl: Update to 2.84. Announcement [here](https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2021q1/014640.html).
 - Fabio Forni: Update dnsmasq to 2.83

**espeak-ng**

 - Joshua Strobl: Update to 1.50. Changelog available [here](https://github.com/espeak-ng/espeak-ng/releases/tag/1.50).
 - Joey Riches: Update abireport for glibc

**shared-mime-info**

 - F. von Gellhorn: Rebuild against tooling
 - Joey Riches: Update abireport for glibc

**libcdio**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libssh**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**python-cryptography**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libicu**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libgsf**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**unrar**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc
 - Pierre-Yves: Update unrar to 6.0.4

**glibc**

 - Joey Riches: Update to latest commit in stable branch to resolve CVE-2021-33574.
 - Joey Riches: Complete bootstrap
 - Joey Riches: Rebootstrap against updated toolchain
 - Joey Riches: Update to 2.33

**libice**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**tracker**

 - Joshua Strobl: Update to 3.1.2
 - F. von Gellhorn: Rebuild against tooling update
 - Joshua Strobl: Update to 3.1.1
 - Joshua Strobl: Update to 3.1.0. Changelog available [here](https://gitlab.gnome.org/GNOME/tracker/-/blob/3.1.0/NEWS).

**libxt**

 - Joey Riches: Rebuild against toolchain
 - Thomas Staudinger: Update libxt to 1.2.1

**linux-firmware**

 - Joshua Strobl: Update to 20210511

**libwebkit-gtk**

 - Bryan T. Meyers: Rebuild for toolchain upgrades
 - Joshua Strobl: Update to 2.32.1. Changelog available [here](https://webkitgtk.org/2021/05/10/webkitgtk2.32.1-released.html).
 - Joshua Strobl: Disable GAMEPAD.
 - Joshua Strobl: Update to 2.32.0

**bc**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libgdata**

 - Joshua Strobl: Update to 0.18.1. Translation updates.
 - Joshua Strobl: Update to 0.18.0

**tdb**

 - F. von Gellhorn: Rebuild against toolung update
 - Joey Riches: Update abireport for glibc

**vapoursynth**

 - Alexander Vorobyev: Update vapoursynth to R53
 - Pierre-Yves: Safety rebuild vapoursynth for imagemagick 7.0.11-2

**dmidecode**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**wsdd**

 - Rune Morling: wsdd: Update to 0.6.4
 - Rune Morling: wsdd: Fix trailing spaces in README.md

**bolt**

 - F. von Gellhorn: Update bolt to 0.9.1
 - Joey Riches: Update abireport for glibc

**wget**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**evolution-data-server**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 3.40.2
 - Joshua Strobl: Update to 3.40.0. Changelog available [here](https://gitlab.gnome.org/GNOME/evolution-data-server/-/blob/gnome-40/NEWS).
 - Joshua Strobl: Update to 3.38.4

**libjpeg-turbo**

 - Algent Albrahimi: Update libjpeg-turbo to 2.1.0
 - Joey Riches: Update abireport for glibc

**intel-microcode**

 - Joshua Strobl: Update to 20210608. Resolves T9766.
 - Jarno Turkki: Update intel-microcode to 20210216

**libxres**

 - Thomas Staudinger: Update libxres to 1.2.1

**spice-vdagent**

 - F. von Gellhorn: Rebuild against tooling
 - Joey Riches: Update abireport for glibc

**srt**

 - Joey Riches: Rebuild against toolchain
 - Alexander Vorobyev: Update srt to 1.4.3

**tepl**

 - Joshua Strobl: Update to 6.0
 - Joshua Strobl: Rebuild against libgtksourceview4 rename.

**glib2**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update to 2.68.3
 - Joshua Strobl: Update to 2.68.2
 - Joshua Strobl: Update to 2.68.1
 - Joshua Strobl: Update to 2.68.0
 - Joshua Strobl: Update to 2.66.7

**stoken**

 - Joshua Strobl: Rebuild against nettle and gnutls

**libass**

 - Alexander Vorobyev: Update libass to 0.15.1

**libtiff**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**wpa_supplicant**

 - F. von Gellhorn: Rebuild against tooling Rebuild
 - Joey Riches: Update abireport for glibc

**disktype**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**ppp**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libgee**

 - Joshua Strobl: Update to 0.24.4
 - Joshua Strobl: Update ABI files

**libvte**

 - Joshua Strobl: Update to 0.64.2. Doc fixes.
 - Joshua Strobl: Rebuild against toolchain
 - Joshua Strobl: Update to latest stable release
 - Joshua Strobl: Rebuild for GNOME 40 stack and fix source URL
 - Joshua Strobl: Update to 0.62.3

**jack-audio-connection-kit**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**sane-backends**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**speech-dispatcher**

 - Joshua Strobl: Update to 0.10.2. Changelog available [here](https://github.com/brailcom/speechd/releases/tag/0.10.2).
 - Joey Riches: Update abireport for glibc

**groff**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**libxklavier**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**zip**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**gzip**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libiptcdata**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**file-roller**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 3.40.0
 - Joshua Strobl: Rebuild against GNOME 40 stack
 - Joshua Strobl: Update to 3.38.1
 - Joshua Strobl: Update ABI files

**mutter**

 - Joshua Strobl: Update to 40.2.1. Fixes crashes (already were patched in Solus).
 - Joshua Strobl: Add patch that fixes various crashes and major issues.
 - Joshua Strobl: Update to 40.2
 - Joshua Strobl: Update to 40.1
 - Joshua Strobl: Add patch to invalidate CRTC gamma when resuming or leaving power save.
 - Joshua Strobl: Update to 40.0. Changelog available [here](https://gitlab.gnome.org/GNOME/mutter/-/blob/40.0/NEWS).
 - Joshua Strobl: Add / update ABI files

**libshout**

 - Joshua Strobl: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**taglib**

 - Joshua Strobl: Update 1.12. Changelog available [here](https://github.com/taglib/taglib/releases/tag/v1.12).

**ostree**

 - Joey Riches: Rebuild against toolchain
 - F. von Gellhorn: Safety rebuild

**yelp**

 - Joshua Strobl: Update to 40.2. Updated translations.
 - Joshua Strobl: Update to 40.0. Changelog available [here](https://gitlab.gnome.org/GNOME/yelp/-/blob/40.0/NEWS).
 - Joshua Strobl: Update to 3.38.3. Updated translations.

**libieee1284**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**xdg-dbus-proxy**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**qpdf**

 - Algent Albrahimi: Update qpdf to 10.3.2
 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**ibus**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**file**

 - Martin Reboredo: Update file to 5.40

**curl**

 - Joey Riches: Rebuild against toolchain
 - Pierre-Yves: Update curl to 7.76.1 to fix multiple CVEs

**bzip2**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**python-six**

 - Joey Riches: Update to 1.15.0

**libflac**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**libnma**

 - Joshua Strobl: Safety rebuild
 - Joshua Strobl: Rebuild for GNOME 40 stack

**budgie-desktop**

 - Joshua Strobl: Update to 10.5.3 release.
 - Joshua Strobl: Sync with git.
 - Joshua Strobl: Sync with git.
 - Joshua Strobl: Sync with git for budgie-screensaver rename.
 - Joshua Strobl: Sync with git.
 - Joshua Strobl: Sync with git
 - Joshua Strobl: Add ABI files

**llvm**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Rebootstrap with gcc to avoid the issue mentioned in T9643
 - Joey Riches: Complete bootstrap against clang 11
 - Joey Riches: Update to 11.1.0
 - Campbell Jones: Modify LLVM update script to take version as a parameter

**rubberband**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**readline**

 - Joshua Strobl: Safety rebuild
 - Joey Riches: Update abireport for glibc

**eog**

 - Joshua Strobl: Update to 40.2
 - Joshua Strobl: Update to 40.1
 - Joshua Strobl: Update to 40.0
 - Joshua Strobl: Update to 3.38.2

**noto-sans-ttf**

 - Joey Riches: Do not force symlink creation

**linux-current**

 - Joshua Strobl: Update to 5.13.1. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.13.1).
 - Joshua Strobl: Update to 5.13.0.
 - Joshua Strobl: Add various DRM backports that would prevent some GPUs from entering idle state.
 - Joshua Strobl: Update to 5.12.13. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.12.13).
 - Joshua Strobl: Update to 5.12.11. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.12.119).
 - Joshua Strobl: Update to 5.12.10. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.12.10).
 - Joshua Strobl: Update to 5.12.9. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.12.9).
 - Joshua Strobl: Update to 5.11.22. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.22).
 - Joshua Strobl: Update to 5.11.21. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.21).
 - Joshua Strobl: Update to 5.11.16. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.16).
 - Joshua Strobl: Update to 5.11.12. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.12).
 - Joshua Strobl: Add CONFIG_NETFILTER_XT_TARGET_CHECKSUM for next build.
 - Joshua Strobl: Update to 5.11.9. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.9).
 - Joshua Strobl: Update to 5.11.7. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.7).
 - Joshua Strobl: Update to 5.11.6. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.6).
 - Joshua Strobl: Update to 5.11.3. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.11.3).
 - Joshua Strobl: Update to 5.10.15. Changelog available [here](https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.10.15).

**pulseaudio**

 - Reilly Brogan: pulseaudio: Add rtkit as rundep
 - Joshua Strobl: Rebuild against toolchain
 - janebuoy: Update pulseaudio to 14.2

**libcdio-paranoia**

 - Joey Riches: Rebuild against toolchain
 - Joey Riches: Update abireport for glibc

**xorg-driver-video-nouveau**

 - Joey Riches: Rebuild against toolchain
 - Joshua Strobl: Update to 1.0.17
