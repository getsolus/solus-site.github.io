---
title: "Solus 4.3 Released"
author: "joshua"
categories:
- news
- releases
date: 2021-07-09T10:37:35+03:00
draft: true
featuredimage: ""
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

TODO: ADD IMAGE HERE

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

TODO: IMAGE HERE

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

TODO: IMAGE HERE

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

TODO: IMAGE HERE

Solus 4.3 Plasma Edition ships with the latest Plasma Desktop 5.22.2, KDE Frameworks 5.83, Applications 21.04.2 and the backported patches for QT 5.15.2, which brings many new features some highlighted below:

- Adaptive Transparency for Breeze.
- System Settings introduces a new Speed Dial page, giving you direct access to commonly used features such as light / dark theme changing, wallpaper changing, and access to common settings.
- System Tray got a rework with a redesigned Digital Clock.
- If you are sharing or recording your screen the Notifications widget will automatically enter "Do not Distrub" mode.
- Krunner can now be used as a mini command-line launcher.

Solus-specific Plasma integration has received various refinements, specifically:

- Plasma-Systemmonitor replaces Ksysguard as default install for the ISO.
- Fixes for the SolusDark Theme for better integration.
- konversation uses now the Libera.chat server and uses TLS connection as default.

## Download

To download our latest Editions, you can go to our [Download](/download) page, where direct links and torrents are available!

## Thank You

We would like to thank everyone that has supported and contributed to Solus and its endeavors. It is you, our community, that has made this release possible. Whether you have filed bugs, fixed software, contributed code, translated Budgie Desktop, validated testing ISOs, or shared Solus releases with your colleagues, friends, and family: you've helped shape this release and improved the project for everyone.

If you would like to financially support Solus, enabling us to continue to cover infrastructure costs as well as opening the door to future full-time work by the Solus team, you can support us via our [OpenCollective](https://opencollective.com/getsolus). If you are interested in other ways of getting involved, we encourage you to check out our dedicated [documentation](https://getsol.us/articles/contributing/getting-involved/en/) on doing so!

## Changelog of ISO (Budgie)