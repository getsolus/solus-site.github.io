---
title: "Solus 4.1 Fortitude Released"
author: "joshua"
categories:
- news
- releases
date: 2020-01-25T15:51:24+02:00
featuredimage: "2020/01/solus-4.1-featured.jpg"
url: "/2020/01/25/solus-4-1-released"
---

We are proud to announce the immediate availability of Solus 4.1 Fortitude, a new Solus 4 series release. This release delivers a brand new desktop experience, updated software stacks, and hardware enablement.
<!--more-->

## General

### Default Applications

All our editions feature:

- Firefox 72.0.2
- LibreOffice 6.3.4.2
- Thunderbird 68.4.1

For audio and video multimedia playback, we offer software out-of-the-box that caters specifically to our desired experience for that edition.

- Budgie, GNOME, and MATE editions all ship with Rhythmbox for audio playback, with the latest release of the Alternate Toolbar extension to provide a more modern user experience.
- Budgie and GNOME ship with GNOME MPV for video playback.
- MATE ships with VLC for video playback.
- Plasma ships with Elisa for audio playback and SMPlayer for video playback.

### Hardware and Kernel Enablement

This release of Solus ships with Linux kernel 5.4.12, enabling us to provide support for a wide range of new hardware from AMD, Intel, and NVIDIA, such as:

- Newer AMD Radeon RX graphics cards, such as the 5700 and 5700XT.
- Newer AMD Ryzen 3rd generation processors, such as the 3600 and 3900X.
- Newer Intel Comet Lake and Ice Lake CPUs.
- Newer NVIDIA GPUs such as RTX 2080Ti.

Mesa has been upgraded to the latest release, 19.3.2. Mesa 19.3 introduces OpenGL 4.6 support (for supported cards) and enables the new experimental ACO shader compiler, in addition to a wide variety of improvements for AMD APUs (Raven Ridge) and Intel Iris Pro Graphics.

### Zstandard, Meet Solus

Solus 4.1 is the first ISO release to feature the use of Zstandard(zstd) compression for the SquashFS images. Compared to the XZ compressed ISOs from previous releases, the ztsd compressed size is a little bit larger. But as a result, the decompression times are significantly improved (3-4x), leading to a much faster installation process than ever previously achieved. In most cases, you can expect to spend more time filling out the questions in the installation wizard than it will actually take to copy everything to disk. We hope you are just as surprised as we were at just how fast this process has become.

### Multimedia Upgrades

This release ships with ffmpeg 4.2.2, the latest in the 4.2 series. This release has enabled us to deliver faster AV1 decoding by making dav1d the preferred ffmpeg AV1 decoder.

Solus ships with the latest release of gstreamer, 1.16.2. This release features numerous [bug fixes](https://gstreamer.freedesktop.org/releases/1.16/#1.16.2) such as:

- CineForm video support in AVI
- VAAPI H265 decoder fixes
- VP9 decoding fixes
- Various MPEG-TS and RTSP fixes

Other libraries have seen minor updates as well, such as:

- libogg has been updated to 1.3.4 and [features faster slice-by-8 CRC32 implementation](https://lwn.net/Articles/453931/).
- libpng now has SSE3 optimizations to increase decode performance, as much as 41% depending on image size and type.
- libvdpau features VP9 decode support, HEVC 444 support, and new frame and field mode chroma types.
- libwebp features lossless encode / decode performance improvements.
- x265 features encoder enhancements for improving the quality of frames following dark scenes in ABR mode.

### Upgraded systemd

Solus 4.1 ships with the latest release of systemd, v244. systemd v244 introduces a bunch of desired features by our users as well as paves the way for future improvements to Solus around EFI support.

- Cloudflare DNS is now used as a fallback secondary to Google
- Improved security on 64-bit systems to reduce PID collisions
- Newer features in systemd-resolved for DNS-over-TLS

We have also [taken care](/2020/01/17/new-updates-for-a-new-decade/) to ensure that software which currently only supports cgroups v1, such as Docker and podman (when leveraging runc, as opposed to crun). So if you utilize Docker or podman in your development workflow, you'll feel right at home under Solus with no additional effort around kernel command-line flags required!

### Other Improvements

#### ESync Support

Gaming under Solus just got even simpler! Solus 4.1 now ships with raised file limits to enable ESync support, raising the file limits in our [PAM package](https://dev.getsol.us/R2286:21c2f3b0996c434705cb71e4576a5d77c2b018b9) to [Lutris' suggested value](https://github.com/lutris/lutris/wiki/How-to:-Esync), so you can spend less time configuring your system and more time playing games!

#### Improved AOT Compiler for AppArmor Profiles

Solus develops an ahead-of-timer compiler for AppArmor profiles called [aa-lsm-hook](https://github.com/getsolus/aa-lsm-hook/), which we utilize to compile AppArmor profiles leveraged by software such as snapd and improve boot performance by loading from our generated cache. During this release cycle, `aa-lsm-hook` was completely rewritten in Go for simplicity and long-term maintenance, as well as enabling us to support newer versions of AppArmor which have changed cache directory locations. A benefit of this new support is the end user should no longer encounter issues where some of their snaps fail to launch after a reboot!

#### Updated NetworkManager and wpa_supplicant

Solus ships with NetworkManager 1.22.4. Since the release of Solus 4 and its shipped NetworkManager 1.10.10, new features and fixes such as the following have been added:

- Added an '802-1x.optional' property to consider the wired 802.1X authentication as optional.
- Don't disable PMF on Wi-Fi connections using SAE.
- Handle ReachableTime and RetransTimer from IPv6 Router Advertisements.
- Use the Network Cost Wi-Fi information element to determine metered device state.
- tui: support WPA3-Personal (SAE).

wpa_supplicant has been updated to 2.9, which enables support for WPA3-SAE and OWE. WPA3-SAE is set to supersede WPA2-PSK eventually with wifi access points now starting to provide a WPA2/WPA3 mixed mode. OWE (Opportunistic Wireless Encryption) uses SAE (Simultaneous Authentication of Equals) to encrypt open wifi networks where possible.

## Budgie

{{< altimg "Budgie.jpg" "/release-images/4.1/" >}}

Solus ships with the latest release of our flagship desktop environment, [Budgie 10.5.1](/2019/10/03/budgie-and-its-army-of-gnomes/). Released last October, this release introduced fixes and quality of life improvements such as:

- Budgie Menu
  - Menu artificating (such as window borders still showing in some cases) is now fixed.
  - Menu items are now sorted using [locale linguist rules](https://github.com/solus-project/budgie-desktop/issues/1546).
- IconTasklist
  - If you have a single window open for a given IconButton in the Icon Tasklist, we will now update the tooltip when you hover over.
  - Fixed the ability to move non-favorited running applications / windows in IconTasklist across grouping and non-grouping modes. These are now allowed to intermingle with your favorited applications without concern for a panel crash. We're doing this by more heavily leveraging our AbominationRunningApp to provide more consistent window-specific IDs.
- Budgie Desktop Settings
  - Hinting and anti-aliasing settings are now available in our Fonts section of Budgie Desktop Settings, allowing you even more flexibility with how document, interface, monospace, and window title fonts render. Hinting and anti-aliasing support will vary in impact based on the font chosen by the user.
- Raven
  - Application controls in the Sound applet will now handle Gvc ChannelMap changes. This is useful since some applications do not provide accurate GvcStream volume immediately when creating their stream, such as Firefox when starting a video. We'll now ensure we're updating those values and ensuring applications like Firefox more accurately reflect muted states over Gvc.
- Workspaces
  - You can now persistent workspaces created at the launch of Budgie, with a configurable amount of default workspaces. Under the Desktop section of Budgie Desktop Settings, you'll find a new option called "Number of virtual desktops", where you can go from just having one workspace up to eight!
- Window Manager
  - We now enforce an instant auto raise of windows when the focus-mode is set to mouse over / mouse focus and 250ms on click, resulting in speedy window raising.

## GNOME

{{< altimg "GNOME.jpg" "/release-images/4.1/" >}}

Solus 4.1 GNOME Edition ships with the latest release of the GNOME 3.34 Stack, 3.34.3. GNOME 3.34.3 introduces various fixes to the GNOME experience such as:

- Ensuring the user is able to create application folders in GNOME Shell (by drag and dropping application icons on top of each other) when no folders existed previously.
- Fixes to KMS freezing after pageflip.
- Fixes to window recording on HiDPI monitors.
- Seahorse contains a fix for a crash when deleting a subkey.

Solus GNOME Edition continues to ship with our curated out-of-the-box experience leveraging a multitude of extensions, such as:

- Dash to Dock for quick and easy access to favorited and running applications
- Drive Menu for quick access to plugged-in devices (such as USB thumb drives)
- Impatience for faster animations
- Top Icons for system tray icon support out-of-the-box

## MATE

{{< altimg "MATE.jpg" "/release-images/4.1/" >}}

Solus 4.1 MATE Edition ships with the latest release of the MATE 1.22 series, with contains numerous bug fixes and under-the-hood improvements. Some of the highlights include:

- MATE Applets improvements
  - The Display Applet got a full revamp, allowing for better monitor control directly from the panel.
  - The Timer applet now has much better mouse interaction.
- The window and desktop switchers have been modernized to make them more visually appealing.
- The session manager now properly terminates all processes on systemd. Additionally, apps can now be auto-started after a user-selected delay.
- The Caja file manager can now optionally display desktop notifications for long-running file operations.
- Eye of MATE has a reworked sidebar and better image metadata support.
- Tabs in Pluma now have the ability to be switched with keyboard shortcuts and mouse scrolling.
- Calculator can now support up to 15 characters of accuracy. Copy/paste support was also improved a bit.
- Engrampa adds support for several new compression formats, as well as a new pause/restart functionality.
- A few new key shortcuts have been added, including support for different types of media keys like Bluetooth, WiFi, touchpads, and global killswitches.

### Brisk Menu

Solus MATE Edition ships with the latest release of our Brisk Menu implementation, 0.6.1. The 0.6 series features various fixes and improvements, such as:

- Added a new "dash" style menu.
- MATE 1.22 support.
- Prioritizing Favorites.
- Fixing key-binder from consuming Super+Mouse events.
- Translations in over **20 languages**, such as: Arabic, Bengali, Bulgarian, French, German, Irish, Russian, Spanish, and Swedish.
- Unsetting Lock key masks when closing the menu.

### MATE User Manager

{{< altimg "2020/01/mate-user-admin.jpg" >}}

Solus MATE Edition now ships with a new utility for user and groups management called [MATE User Manager](https://github.com/zhuyaliang/user-admin/), replacing the previous group and user management functionality in MATE Control Center.

## Plasma

{{< altimg "Plasma.jpg" "/release-images/4.1/" >}}

We're proud to announce a new addition to the Solus family: Solus Plasma Edition. Solus Plasma Edition has been a long sought after experience by current and prospective users alike, melding our ability to create a curated out-of-the-box experience with the sophistication of the Plasma Desktop experience.

Solus 4.1 Plasma Edition features Plasma Desktop [5.17.5](https://kde.org/announcements/plasma-5.17.5.php), the latest of 5.17 series, and is complemented by KDE Frameworks [5.66](https://kde.org/announcements/kde-frameworks-5.66.0.php), KDE Applications [19.12.1](https://kde.org/announcements/releases/19.12.1) and QT [5.13.2](https://www.qt.io/blog/qt-5.13.2-released).

Solus Plasma Edition refines the Plasma Desktop experience by:

- Introducing Solus Dark Theme, which is a custom theme that is darker than Breeze-Dark, bringing it closer to the style of the other Solus Editions, which are using the Plata GTK theme as their default.
- Changing the position of the Show Desktop widget inside the system tray.
- Creating a custom layout of the Digital Clock widget.
- Shortening the timeout for logout from 30 to 10 seconds.

Solus Plasma Edition ships with Solus-specific integrations for KDE Applications and Frameworks, such as:

- Baloo only performs basic indexing and excludes common folders such as the `snap` directory.
- Breeze size grip and titlebar separators are disabled by default.
- Klipper will not ignore images.
- Kwin will default to centering windows.
- Line numbers in Kate are enabled by default.
- Single-click is enabled by default.
- Tap-to-click is enable by default for Synaptic touchpads.

Solus Plasma Edition ships with the following default applications (outside of the usual Solus Edition defaults such as Firefox and Thunderbird):

- [Elisa](https://community.kde.org/Elisa) as default music player.
- [Smplayer](https://www.smplayer.info/) as default video player.
- [Konversation](http://konversation.kde.org) as default IRC Program with setup IRC `#Solus` server for support.
- [Kdeconnect](https://community.kde.org/KDEConnect).

## Thank You

We would like to thank everyone that has supported and contributed to Solus and its endeavors. It's you, our community, that has made this release possible. Whether you've filed bugs, fixed software, contributed code, translated Budgie Desktop, validated testing ISOs, or shared Solus releases with your colleagues, friends, and family: you've helped shape this release and improved the project for everyone.

Thank you for believing in our shared vision for the project. We look forward to working alongside all of you on more releases this year.

## Download

To download our latest Editions, you can go to our [Download](/download) page, where direct links and torrents are available!

---

## Changelog of ISO (Budgie)

**less**

 - [Pierre-Yves: Update less to 551](https://dev.getsol.us/source/less/browse/master/;0004e5e)

**lz4**

 - [Pierre-Yves: Update lz4 to 1.9.2](https://dev.getsol.us/source/lz4/browse/master/;fce4420)

**libvpx**

 - [Joshua Strobl: Update to 1.8.1.](https://dev.getsol.us/source/libvpx/browse/master/;2919333)
 - [Joey Riches: Remove old unused patches](https://dev.getsol.us/source/libvpx/browse/master/;edc51d4)

**libxtst**

 - [F. von Gellhorn: Safety rebuild libxtst for xorgproto](https://dev.getsol.us/source/libxtst/browse/master/;ebcde85)

**libnspr**

 - [Pierre-Yves: Update libnspr to 4.24](https://dev.getsol.us/source/libnspr/browse/master/;521ebb2)
 - [Pierre-Yves: Update libnspr to 4.22](https://dev.getsol.us/source/libnspr/browse/master/;05cf885)

**x264**

 - [Joshua Strobl: Update to 20191013.2245](https://dev.getsol.us/source/x264/browse/master/;90737f3)

**x265**

 - [Joshua Strobl: Update to 3.2](https://dev.getsol.us/source/x265/browse/master/;b2e0443)
 - [Pierre-Yves: Update x265 to 3.1.2](https://dev.getsol.us/source/x265/browse/master/;bf51138)
 - [Pierre-Yves: Update x265 to 3.1.1](https://dev.getsol.us/source/x265/browse/master/;2fdab40)

**gdbm**

 - [Jacob Alzén: Update gdbm to 1.18.1](https://dev.getsol.us/source/gdbm/browse/master/;7e33428)

**gstreamer-1.0-plugins-base**

 - [Joshua Strobl: Update to 1.16.2](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;14926bc)
 - [Pierre-Yves: Update gstreamer-1.0-plugins-base to 1.16.1](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;6d07244)
 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;dde206a)
 - [Pierre-Yves: Update gstreamer-1.0-plugins-base to 1.16.0](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;0dbdcb8)
 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/gstreamer-1.0-plugins-base/browse/master/;e554085)

**libglvnd**

 - [F. von Gellhorn: Safety rebuild libglvnd for xorgproto](https://dev.getsol.us/source/libglvnd/browse/master/;889d2c7)

**pango**

 - [Joshua Strobl: Update to 1.44 series](https://dev.getsol.us/source/pango/browse/master/;396fe41)
 - [Joshua Strobl: Resolves CVE-2019-1010238](https://dev.getsol.us/source/pango/browse/master/;0c1fde1)
 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/pango/browse/master/;236aaf8)

**gobject-introspection**

 - [Joshua Strobl: Update to 1.62.0](https://dev.getsol.us/source/gobject-introspection/browse/master/;a61e132)
 - [Joshua Strobl: Update to 1.60.2](https://dev.getsol.us/source/gobject-introspection/browse/master/;d85266e)
 - [Joshua Strobl: Update to 1.60.1](https://dev.getsol.us/source/gobject-introspection/browse/master/;4b293e9)

**systemd**

 - [Joshua Strobl: Force legacy cgroup hierarchy. See T8609.](https://dev.getsol.us/source/systemd/browse/master/;da4676b)
 - [Joshua Strobl: Upgrade to latest major release, 244.](https://dev.getsol.us/source/systemd/browse/master/;e77eba6)

**libxdmcp**

 - [F. von Gellhorn: Safety rebuild libxdmcp for xorgproto](https://dev.getsol.us/source/libxdmcp/browse/master/;39aac38)
 - [Bryan T. Meyers: Update to 1.1.3](https://dev.getsol.us/source/libxdmcp/browse/master/;7051c9d)

**libnss**

 - [Pierre-Yves: Update libnss to 3.49.1](https://dev.getsol.us/source/libnss/browse/master/;83b89fe)
 - [Pierre-Yves: Update libnss to 3.49](https://dev.getsol.us/source/libnss/browse/master/;240b692)
 - [Pierre-Yves: Update libnss to 3.48](https://dev.getsol.us/source/libnss/browse/master/;9533279)
 - [Pierre-Yves: Update libnss to 3.47.1](https://dev.getsol.us/source/libnss/browse/master/;7f5ea34)
 - [Pierre-Yves: Update libnss to 3.47](https://dev.getsol.us/source/libnss/browse/master/;6ea331d)
 - [Pierre-Yves: Update libnss to 3.46](https://dev.getsol.us/source/libnss/browse/master/;98de247)
 - [Pierre-Yves: Update libnss to 3.45 to address CVEs](https://dev.getsol.us/source/libnss/browse/master/;a2cf845)
 - [Pierre-Yves: Update libnss to 3.44.1](https://dev.getsol.us/source/libnss/browse/master/;047f06d)
 - [Pierre-Yves: Update libnss to 3.44](https://dev.getsol.us/source/libnss/browse/master/;bfc4f3f)

**gstreamer-1.0**

 - [Joshua Strobl: Update to 1.16.2](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;5797079)
 - [Pierre-Yves: Update gstreamer-1.0 to 1.16.1](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;a9c4947)
 - [Joshua Strobl: Safety rebuild against gobject-introspection and glib2](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;1601f0a)
 - [Pierre-Yves: Update gstreamer-1.0 to 1.16.0](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;3c5cd62)
 - [Joshua Strobl: Rebuild against glib2](https://dev.getsol.us/source/gstreamer-1.0/browse/master/;e66e8c5)

**grub2**

 - [Pierre-Yves: Update grub2 to 2.04](https://dev.getsol.us/source/grub2/browse/master/;35e443a)

**inxi**

 - [Algent Albrahimi: Update inxi to 3.0.37](https://dev.getsol.us/source/inxi/browse/master/;c81337d)
 - [Algent Albrahimi: Update inxi to 3.0.36.1](https://dev.getsol.us/source/inxi/browse/master/;2e270e6)
 - [flinux@vongellhorn.ch: Update inxi to 3.0.34](https://dev.getsol.us/source/inxi/browse/master/;017fa51)

**gmp**

 - [Joey Riches: Rebuild against toolchain](https://dev.getsol.us/source/gmp/browse/master/;d7eba7d)

**mpc**

 - [Joey Riches: Rebuild against toolchain](https://dev.getsol.us/source/mpc/browse/master/;a2288b8)

**python**

 - [Pierre-Yves: Update python to 2.7.17](https://dev.getsol.us/source/python/browse/master/;04be47c)
 - [Joshua Strobl: Apply security fixes.](https://dev.getsol.us/source/python/browse/master/;3d1cd66)

**python-dbus**

 - [Joey Riches: Update to 1.2.12](https://dev.getsol.us/source/python-dbus/browse/master/;e609113)

**aa-lsm-hook**

 - [Bryan T. Meyers: Update to 0.1.3 for fixes from JoshStrobl's testing](https://dev.getsol.us/source/aa-lsm-hook/browse/master/;584b2ac)
 - [Bryan T. Meyers: Updated to 0.1.2 to fix issues with profiles not loading on reboot](https://dev.getsol.us/source/aa-lsm-hook/browse/master/;a64f281)
 - [Bryan T. Meyers: Updated to 0.1.0](https://dev.getsol.us/source/aa-lsm-hook/browse/master/;1797496)
 - [Joshua Strobl: Update to 0.0.3](https://dev.getsol.us/source/aa-lsm-hook/browse/master/;6106dc2)

**bash-completion**

 - [flinux@vongellhorn.ch: Update bash-completion to 2.9](https://dev.getsol.us/source/bash-completion/browse/master/;153e49d)

**libbluray**

 - [Pierre-Yves: Update libbluray to 1.1.2](https://dev.getsol.us/source/libbluray/browse/master/;0f89344)

**libdrm**

 - [Bryan T. Meyers: Updated to 2.4.100](https://dev.getsol.us/source/libdrm/browse/master/;0134a9b)
 - [Bryan T. Meyers: Updated to 2.4.99](https://dev.getsol.us/source/libdrm/browse/master/;6f1c776)
 - [Bryan T. Meyers: Update to 2.4.98](https://dev.getsol.us/source/libdrm/browse/master/;c6e6e4e)

**libgtk-2**

 - [Pierre-Yves: Update libgtk-2 to 2.24.32](https://dev.getsol.us/source/libgtk-2/browse/master/;a469f82)

**util-linux**

 - [Joshua Strobl: Drop python3 as an explicit rundep.](https://dev.getsol.us/source/util-linux/browse/master/;03b1459)
 - [Joshua Strobl: Revert back to python2.](https://dev.getsol.us/source/util-linux/browse/master/;49761d4)
 - [Fabio Forni: Update util-linux to 2.33.2](https://dev.getsol.us/source/util-linux/browse/master/;46a92ce)

**ca-certs**

 - [Pierre-Yves: Update ca-certs to 20200109](https://dev.getsol.us/source/ca-certs/browse/master/;28796a1)
 - [Pierre-Yves: Update system certificates to 20190710](https://dev.getsol.us/source/ca-certs/browse/master/;d414afa)

**libp11-kit**

 - [Pierre-Yves: Update libp11-kit to 0.23.18.1](https://dev.getsol.us/source/libp11-kit/browse/master/;47b6233)

**libcairo**

 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/libcairo/browse/master/;57d00d1)
 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/libcairo/browse/master/;c0e2017)

**dbus**

 - [Joshua Strobl: Update to 1.12.16](https://dev.getsol.us/source/dbus/browse/master/;dfe2734)
 - [Joshua Strobl: Update to 1.12.14](https://dev.getsol.us/source/dbus/browse/master/;ddc3ad6)

**libxcomposite**

 - [F. von Gellhorn: Safety rebuild libxcomposite for xorgproto](https://dev.getsol.us/source/libxcomposite/browse/master/;5eeada2)
 - [Bryan T. Meyers: Update to 0.4.5](https://dev.getsol.us/source/libxcomposite/browse/master/;04b31f8)

**findutils**

 - [Pierre-Yves: Update findutils to 4.7.0](https://dev.getsol.us/source/findutils/browse/master/;76c9ab2)

**parted**

 - [Pierre-Yves: Update parted to 3.3](https://dev.getsol.us/source/parted/browse/master/;914b29a)

**json-c**

 - [Joshua Strobl: Move to system.base as cryptsetup will need it.](https://dev.getsol.us/source/json-c/browse/master/;8393a30)

**sed**

 - [Pierre-Yves: Update sed to 4.8](https://dev.getsol.us/source/sed/browse/master/;badc906)

**libwebp**

 - [Pierre-Yves: Update libwebp to 1.0.3](https://dev.getsol.us/source/libwebp/browse/master/;42d8446)

**libssh**

 - [Pierre-Yves: Update libssh to 0.9.2](https://dev.getsol.us/source/libssh/browse/master/;698a22c)
 - [flinux@vongellhorn.ch: Update libssh to 0.9.1](https://dev.getsol.us/source/libssh/browse/master/;ecf5a28)

**libxshmfence**

 - [F. von Gellhorn: Safety rebuild libxshmfence for xorgproto](https://dev.getsol.us/source/libxshmfence/browse/master/;756797f)

**libxau**

 - [F. von Gellhorn: Safety rebuild libxau for xorgproto](https://dev.getsol.us/source/libxau/browse/master/;4a0e740)

**libicu**

 - [Joshua Strobl: Update to 65.1.](https://dev.getsol.us/source/libicu/browse/master/;f5a577f)

**v4l-utils**

 - [Pierre-Yves: Update v4l-utils to 1.18.0](https://dev.getsol.us/source/v4l-utils/browse/master/;a0feac5)

**nano**

 - [Arturo J. Pérez: Update nano to 4.7](https://dev.getsol.us/source/nano/browse/master/;56711a2)
 - [Algent Albrahimi: Update nano to 4.6](https://dev.getsol.us/source/nano/browse/master/;bd4fe86)
 - [Algent Albrahimi: Update nano to 4.5](https://dev.getsol.us/source/nano/browse/master/;c9dea50)
 - [Justin Zobel: Update to 4.4](https://dev.getsol.us/source/nano/browse/master/;41154f6)
 - [Joshua Strobl: Test infra again. Soz.](https://dev.getsol.us/source/nano/browse/master/;2bcb0e4)
 - [Joshua Strobl: Bump to test infra.](https://dev.getsol.us/source/nano/browse/master/;0c05dfb)
 - [Justin Zobel: Bump](https://dev.getsol.us/source/nano/browse/master/;135cabc)
 - [Pierre-Yves: Update nano to 4.2](https://dev.getsol.us/source/nano/browse/master/;3d96ef2)
 - [Pierre-Yves: Update nano to 4.1](https://dev.getsol.us/source/nano/browse/master/;9ae9795)

**xdpyinfo**

 - [F. von Gellhorn: Safety rebuild xdpyinfo for xorgproto](https://dev.getsol.us/source/xdpyinfo/browse/master/;8f995e2)

**hwdata**

 - [Bryan T. Meyers: Update to 0.324](https://dev.getsol.us/source/hwdata/browse/master/;cdf6d5f)
 - [flinux@vongellhorn.ch: Update hwdata to 0.323](https://dev.getsol.us/source/hwdata/browse/master/;d8e9f57)

**elfutils**

 - [Joey Riches: Update to 0.177](https://dev.getsol.us/source/elfutils/browse/master/;3e085c5)

**inotify-tools**

 - [Bryan T. Meyers: Update to 3.20.1 and fix repo location](https://dev.getsol.us/source/inotify-tools/browse/master/;1b88980)

**libice**

 - [F. von Gellhorn: Update libice to 1.10.0 and rebuild for xorgproto](https://dev.getsol.us/source/libice/browse/master/;2a9b400)

**linux-firmware**

 - [Bryan T. Meyers: Updated to git 20191220](https://dev.getsol.us/source/linux-firmware/browse/master/;96cc873)
 - [F. von Gellhorn: Update linux-firmware to 20191215](https://dev.getsol.us/source/linux-firmware/browse/master/;7e7aed1)
 - [flinux@vongellhorn.ch: Update to 20191022 for Intel and AMD drivers](https://dev.getsol.us/source/linux-firmware/browse/master/;9ee776a)
 - [Bryan T. Meyers: Add intel-microcode as a rundep](https://dev.getsol.us/source/linux-firmware/browse/master/;9526b20)
 - [Bryan T. Meyers: Updated to 20190815 for Intel and AMD drivers](https://dev.getsol.us/source/linux-firmware/browse/master/;b5e7fab)
 - [Bryan T. Meyers: Update to 20190514](https://dev.getsol.us/source/linux-firmware/browse/master/;76decaf)
 - [Joshua Strobl: Fix relnum so this lands in repo.](https://dev.getsol.us/source/linux-firmware/browse/master/;a558710)
 - [Bryan T. Meyers: Update to 20190502](https://dev.getsol.us/source/linux-firmware/browse/master/;8888bc1)
 - [Bryan T. Meyers: Update to 20190409](https://dev.getsol.us/source/linux-firmware/browse/master/;331d4f3)

**libpng**

 - [Joey Riches: Enable SSE2 optimizations to increase decode performance](https://dev.getsol.us/source/libpng/browse/master/;a52ddc6)
 - [Pierre-Yves: Update libpng to 1.6.37 to address CVE-2019-7317](https://dev.getsol.us/source/libpng/browse/master/;164e756)

**modem-manager**

 - [Joshua Strobl: Update to 1.10.6.](https://dev.getsol.us/source/modem-manager/browse/master/;27e3e4c)
 - [Bryan T. Meyers: Enable ModemManager service by default. Fixes T7858.](https://dev.getsol.us/source/modem-manager/browse/master/;bddb01e)
 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/modem-manager/browse/master/;710609d)

**libxext**

 - [F. von Gellhorn: Safety rebuild libxext for xorgproto](https://dev.getsol.us/source/libxext/browse/master/;c27a4b9)
 - [Bryan T. Meyers: Update to 1.3.4](https://dev.getsol.us/source/libxext/browse/master/;edcfc69)

**libcap2**

 - [Pierre-Yves: Update libcap2 to 2.27](https://dev.getsol.us/source/libcap2/browse/master/;23186bf)

**libqmi**

 - [Joshua Strobl: Update to 1.22.6](https://dev.getsol.us/source/libqmi/browse/master/;63cb5f3)
 - [Bryan T. Meyers: Enable QMI over MBIM, resolves T7898](https://dev.getsol.us/source/libqmi/browse/master/;7a58839)

**gawk**

 - [Pierre-Yves: Update gawk to 5.0.1](https://dev.getsol.us/source/gawk/browse/master/;19e203d)
 - [Pierre-Yves: Update gawk to 5.0.0](https://dev.getsol.us/source/gawk/browse/master/;a9ae1c7)

**libxv**

 - [F. von Gellhorn: Safety rebuild libxv for xorgproto](https://dev.getsol.us/source/libxv/browse/master/;d36ddd2)

**dmidecode**

 - [Algent Albrahimi: Update dmidecode to 3.2](https://dev.getsol.us/source/dmidecode/browse/master/;6cc74f1)

**libxft**

 - [Bryan T. Meyers: Update to 2.3.3](https://dev.getsol.us/source/libxft/browse/master/;4fb1a29)

**libgcrypt**

 - [Pierre-Yves: Update libgcrypt to 1.8.5](https://dev.getsol.us/source/libgcrypt/browse/master/;4325508)

**bash**

 - [ZVNexus: Update bash to 5.0.11](https://dev.getsol.us/source/bash/browse/master/;cd786e6)
 - [ZVNexus: Update bash to 5.0.7](https://dev.getsol.us/source/bash/browse/master/;f43c71b)

**libedit**

 - [Joey Riches: Update to 2019-10-25.3.1](https://dev.getsol.us/source/libedit/browse/master/;3ba2634)

**sdl2**

 - [flinux@vongellhorn.ch: Update SDL2 to 2.0.10](https://dev.getsol.us/source/sdl2/browse/master/;e1f242c)

**openssh**

 - [Pierre-Yves: Update openssh to 8.1p1](https://dev.getsol.us/source/openssh/browse/master/;1d8e5b0)
 - [Bryan T. Meyers: Safety rebuild for linux-headers](https://dev.getsol.us/source/openssh/browse/master/;a42257c)
 - [Bryan T. Meyers: Rebuild for linux-headers](https://dev.getsol.us/source/openssh/browse/master/;5392fd6)
 - [Pierre-Yves: Update openssh to 8.0p1 for CVE-2019-6111](https://dev.getsol.us/source/openssh/browse/master/;685db3e)

**openssl**

 - [Pierre-Yves: Update openssl to 1.0.2u](https://dev.getsol.us/source/openssl/browse/master/;111ecbf)
 - [Joshua Strobl: Update to 1.0.2t](https://dev.getsol.us/source/openssl/browse/master/;b37c099)

**isl**

 - [Joey Riches: Update to 0.21](https://dev.getsol.us/source/isl/browse/master/;af00fd1)

**glib2**

 - [Joshua Strobl: Update to 2.62.4](https://dev.getsol.us/source/glib2/browse/master/;937d607)
 - [Joshua Strobl: Update to 2.62.3](https://dev.getsol.us/source/glib2/browse/master/;86c3e0f)
 - [Joshua Strobl: Update to 2.62.2](https://dev.getsol.us/source/glib2/browse/master/;84a5174)
 - [Joshua Strobl: Update to 2.62.1](https://dev.getsol.us/source/glib2/browse/master/;e7f8910)
 - [Joshua Strobl: Update to 2.62.0](https://dev.getsol.us/source/glib2/browse/master/;9463a41)
 - [Joshua Strobl: Update to 2.60.6](https://dev.getsol.us/source/glib2/browse/master/;25f7a5c)
 - [Joshua Strobl: Update to 2.60.5](https://dev.getsol.us/source/glib2/browse/master/;da24c97)
 - [Joshua Strobl: Update to 2.60.4](https://dev.getsol.us/source/glib2/browse/master/;f891a75)
 - [Joshua Strobl: Update to 2.60.3](https://dev.getsol.us/source/glib2/browse/master/;0aa1e4a)
 - [Joshua Strobl: Update to 2.60.2](https://dev.getsol.us/source/glib2/browse/master/;74e6388)
 - [Joshua Strobl: Update to 2.60.x series.](https://dev.getsol.us/source/glib2/browse/master/;008268b)

**libxxf86vm**

 - [F. von Gellhorn: Safety rebuild libxxf86vm for xorgproto](https://dev.getsol.us/source/libxxf86vm/browse/master/;fb44582)

**cryptsetup**

 - [Joshua Strobl: Update to latest stable release.](https://dev.getsol.us/source/cryptsetup/browse/master/;e706ada)

**mesalib**

 - [Bryan T. Meyers: Update to 19.3.3](https://dev.getsol.us/source/mesalib/browse/master/;1fdb30b)
 - [Joshua Strobl: Re-introduce gles patch.](https://dev.getsol.us/source/mesalib/browse/master/;fcd387c)
 - [Bryan T. Meyers: Update to 19.3.1](https://dev.getsol.us/source/mesalib/browse/master/;e631000)
 - [F. von Gellhorn: Safety rebuild mesalib for xorgproto](https://dev.getsol.us/source/mesalib/browse/master/;d313ccf)
 - [Bryan T. Meyers: Update to 19.2.6](https://dev.getsol.us/source/mesalib/browse/master/;7368ae2)
 - [Bryan T. Meyers: Update to 19.2.5](https://dev.getsol.us/source/mesalib/browse/master/;1371001)
 - [Bryan T. Meyers: Update to 19.2.4](https://dev.getsol.us/source/mesalib/browse/master/;03df048)
 - [Bryan T. Meyers: Patched to fix regression in some games following the 19.2.3 update](https://dev.getsol.us/source/mesalib/browse/master/;26b26f6)
 - [Joey Riches: Rebuild against LLVM 9](https://dev.getsol.us/source/mesalib/browse/master/;4b3bf2a)
 - [Bryan T. Meyers: Update to 19.2.3](https://dev.getsol.us/source/mesalib/browse/master/;08f8fd4)
 - [Bryan T. Meyers: Update to 19.2.2](https://dev.getsol.us/source/mesalib/browse/master/;fd637bf)
 - [Bryan T. Meyers: Update to 19.2.1](https://dev.getsol.us/source/mesalib/browse/master/;da7a0b1)
 - [Bryan T. Meyers: Update to 19.1.7](https://dev.getsol.us/source/mesalib/browse/master/;8670104)
 - [Bryan T. Meyers: Re-add GLES pkgconfigs](https://dev.getsol.us/source/mesalib/browse/master/;c1efa61)
 - [Bryan T. Meyers: Update to 19.1.6](https://dev.getsol.us/source/mesalib/browse/master/;e45ca71)
 - [Joey Riches: Rebuild against LLVM 8](https://dev.getsol.us/source/mesalib/browse/master/;b7183f1)
 - [Bryan T. Meyers: Update to 19.0.6](https://dev.getsol.us/source/mesalib/browse/master/;0be2371)
 - [Bryan T. Meyers: Update to 19.0.4](https://dev.getsol.us/source/mesalib/browse/master/;e53b7ac)
 - [Bryan T. Meyers: Update mesa to 19.0.3](https://dev.getsol.us/source/mesalib/browse/master/;151c0ac)

**libtiff**

 - [Joshua Strobl: Switch to git for multiple security fixes.](https://dev.getsol.us/source/libtiff/browse/master/;195c2b2)
 - [Pierre-Yves: Rebuild libtiff for zstd 1.4.0](https://dev.getsol.us/source/libtiff/browse/master/;ad21b0d)

**wpa_supplicant**

 - [Joey Riches: Enable support for WPA3-SAE and OWE](https://dev.getsol.us/source/wpa_supplicant/browse/master/;80deb4a)
 - [Joshua Strobl: Update to 2.9. Changelog available [here](https://w1.fi/cgit/hostap/tree/wpa_supplicant/ChangeLog?h=hostap_2_9&id=ca8c2bd28ad53f431d6ee60ef754e98cfdb4c17b).](https://dev.getsol.us/source/wpa_supplicant/browse/master/;ee883f3)

**harfbuzz**

 - [Joshua Strobl: Update to 2.6.4](https://dev.getsol.us/source/harfbuzz/browse/master/;6768ba4)
 - [Joey Riches: Build with Link Time Optimization](https://dev.getsol.us/source/harfbuzz/browse/master/;07857f7)
 - [Joshua Strobl: Update to 2.x series](https://dev.getsol.us/source/harfbuzz/browse/master/;121af2b)
 - [Joshua Strobl: Safety rebuild](https://dev.getsol.us/source/harfbuzz/browse/master/;f4089f4)

**libxcursor**

 - [F. von Gellhorn: Safety rebuild libxcursor for xorgproto](https://dev.getsol.us/source/libxcursor/browse/master/;52e6ad6)
 - [Bryan T. Meyers: Update to 1.2.0](https://dev.getsol.us/source/libxcursor/browse/master/;ac708fb)

**xz**

 - [Bryan T. Meyers: Switch to a trackable upstream](https://dev.getsol.us/source/xz/browse/master/;395c345)

**font-droid-ttf**

 - [flinux@vongellhorn.ch: Change url to getsol.us](https://dev.getsol.us/source/font-droid-ttf/browse/master/;5ff5ed7)

**libxcb**

 - [F. von Gellhorn: Safety rebuild libxcb for xorgproto](https://dev.getsol.us/source/libxcb/browse/master/;68f8b6d)

**perl**

 - [Pierre-Yves: Update perl to 5.30.1](https://dev.getsol.us/source/perl/browse/master/;2373653)
 - [Pierre-Yves: Update perl to 5.30.0](https://dev.getsol.us/source/perl/browse/master/;32adf59)
 - [flinux@vongellhorn.ch: Rebuild for gdbm 1.18.1](https://dev.getsol.us/source/perl/browse/master/;d693e05)
 - [Pierre-Yves: Update perl to 5.28.2](https://dev.getsol.us/source/perl/browse/master/;7b4716e)

**curl**

 - [Pierre-Yves: Update curl to 7.68.0](https://dev.getsol.us/source/curl/browse/master/;acd1ca0)
 - [Pierre-Yves: Update curl to 7.67.0](https://dev.getsol.us/source/curl/browse/master/;ae0e9ad)
 - [Pierre-Yves: Update curl to 7.66.0 to address CVE-2019-5481 and CVE-2019-5482](https://dev.getsol.us/source/curl/browse/master/;6599b18)
 - [Joshua Strobl: Update to 7.65.3](https://dev.getsol.us/source/curl/browse/master/;68003e4)
 - [Pierre-Yves: Update curl to 7.65.2](https://dev.getsol.us/source/curl/browse/master/;5346ef1)
 - [flinux@vongellhorn.ch: Update curl to 7.65.1](https://dev.getsol.us/source/curl/browse/master/;e2e170e)
 - [Pierre-Yves: Update curl to 7.65.0 to address CVEs](https://dev.getsol.us/source/curl/browse/master/;0c5ed1e)
 - [flinux@vongellhorn.ch: Update curl to 7.64.1](https://dev.getsol.us/source/curl/browse/master/;3eae3bc)

**libssh2**

 - [Pierre-Yves: Update libssh2 to 1.9.0](https://dev.getsol.us/source/libssh2/browse/master/;79a3563)

**openal-soft**

 - [flinux@vongellhorn.ch: Safety rebuild for SDL2 update](https://dev.getsol.us/source/openal-soft/browse/master/;0d97ce7)

**gdk-pixbuf**

 - [Joshua Strobl: Update to 2.40.0](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;98df747)
 - [Joshua Strobl: Update to 2.38.2](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;a822a42)
 - [Joshua Strobl: Update to 2.38.1](https://dev.getsol.us/source/gdk-pixbuf/browse/master/;441bcae)

**libva**

 - [Joey Riches: Update to 2.5.0](https://dev.getsol.us/source/libva/browse/master/;37e6db5)

**tzdata**

 - [Pierre-Yves: Update tzdata to 2019c](https://dev.getsol.us/source/tzdata/browse/master/;d676685)
 - [Pierre-Yves: Update tzdata to 2019b](https://dev.getsol.us/source/tzdata/browse/master/;8104ae4)
 - [Pierre-Yves: Update tzdata to 2019a](https://dev.getsol.us/source/tzdata/browse/master/;c686bdf)

**nghttp2**

 - [Joshua Strobl: Update to 1.39.2](https://dev.getsol.us/source/nghttp2/browse/master/;e570f9a)

**libxinerama**

 - [F. von Gellhorn: Safety rebuild libxinerama for xorgproto](https://dev.getsol.us/source/libxinerama/browse/master/;1f507dc)

**libxrandr**

 - [F. von Gellhorn: Safety rebuild libxrandr for xorgproto](https://dev.getsol.us/source/libxrandr/browse/master/;4e6381f)
 - [Bryan T. Meyers: Update to 1.5.2](https://dev.getsol.us/source/libxrandr/browse/master/;0b7c9f8)

**libvdpau**

 - [F. von Gellhorn: Safety rebuild libvdpau for xorgproto](https://dev.getsol.us/source/libvdpau/browse/master/;39f9844)
 - [Joey Riches: Update to 1.3](https://dev.getsol.us/source/libvdpau/browse/master/;ce324ed)

**libdmx**

 - [F. von Gellhorn: Safety rebuild libdmx for xorgproto](https://dev.getsol.us/source/libdmx/browse/master/;8abb1d4)

**expat**

 - [Joshua Strobl: Update to 2.2.7](https://dev.getsol.us/source/expat/browse/master/;0b0ced4)

**ncurses**

 - [Philipp Trulson: Link static libs from ncurses](https://dev.getsol.us/source/ncurses/browse/master/;1fa7d25)

**libxi**

 - [F. von Gellhorn: Safety rebuild libxi for xorgproto](https://dev.getsol.us/source/libxi/browse/master/;9fe0753)

**kerberos**

 - [Pierre-Yves: Update kerberos to 1.17](https://dev.getsol.us/source/kerberos/browse/master/;3878596)

**grep**

 - [Pierre-Yves: Update grep to 3.4](https://dev.getsol.us/source/grep/browse/master/;ca2b53e)

**ffmpeg**

 - [Pierre-Yves: Update ffmpeg to 4.2.2](https://dev.getsol.us/source/ffmpeg/browse/master/;7ff77fe)
 - [Pierre-Yves: Safety rebuild ffmpeg for dav1d 0.5.1](https://dev.getsol.us/source/ffmpeg/browse/master/;2c1e65f)
 - [Joshua Strobl: Rebuild against x264 and x265](https://dev.getsol.us/source/ffmpeg/browse/master/;062cb9b)
 - [Pierre-Yves: Make dav1d the preferred ffmpeg AV1 decoder](https://dev.getsol.us/source/ffmpeg/browse/master/;93694a2)
 - [Joshua Strobl: Rebuild against libvpx 1.8.1](https://dev.getsol.us/source/ffmpeg/browse/master/;d2b8d2f)
 - [Pierre-Yves: Update ffmpeg to 4.2.1](https://dev.getsol.us/source/ffmpeg/browse/master/;a89de9e)
 - [flinux@vongellhorn.ch: Safety rebuild for SDL2 Update](https://dev.getsol.us/source/ffmpeg/browse/master/;16db21c)
 - [Pierre-Yves: Rebuild ffmpeg for x265 3.1](https://dev.getsol.us/source/ffmpeg/browse/master/;e041fb3)
 - [Pierre-Yves: Update ffmpeg to 4.1.4 & enable libdrm](https://dev.getsol.us/source/ffmpeg/browse/master/;b0a748b)

**faad**

 - [Jacob Alzén: Update faad to 2.9.1 to fix a bunch of CVEs](https://dev.getsol.us/source/faad/browse/master/;91ffd03)

**linux-current**

 - [Joshua Strobl: Add touchpad pinctrl patch for sunrise point. Resolves T8616.](https://dev.getsol.us/source/linux-current/browse/master/;057858c)
 - [Joshua Strobl: Add systemd.unified_cgroup_hierarchy=0 to cmdline](https://dev.getsol.us/source/linux-current/browse/master/;94b2b6a)
 - [Joshua Strobl: Update to 5.4.12.](https://dev.getsol.us/source/linux-current/browse/master/;9a51eb1)
 - [Bryan T. Meyers: Updated to 5.4.8](https://dev.getsol.us/source/linux-current/browse/master/;1a22bcf)
 - [Bryan T. Meyers: Patch for HDMI audio regression in ALSA subsystem](https://dev.getsol.us/source/linux-current/browse/master/;812f281)
 - [Bryan T. Meyers: Updated to 5.3.18](https://dev.getsol.us/source/linux-current/browse/master/;5ccae62)
 - [Joshua Strobl: Revert to 5.3 series.](https://dev.getsol.us/source/linux-current/browse/master/;4bc1a6d)
 - [Joshua Strobl: Revert to 5.3 series.](https://dev.getsol.us/source/linux-current/browse/master/;99fed35)
 - [Joshua Strobl: Revert e1000e watchdog changes to hopefully fix e1000e networking.](https://dev.getsol.us/source/linux-current/browse/master/;84428da)
 - [Bryan T. Meyers: Updated to 5.4.1](https://dev.getsol.us/source/linux-current/browse/master/;1d79ec3)
 - [Bryan T. Meyers: Updated to 5.3.13](https://dev.getsol.us/source/linux-current/browse/master/;41ec03c)
 - [Bryan T. Meyers: Updated to 5.3.10](https://dev.getsol.us/source/linux-current/browse/master/;8e9500c)
 - [Bryan T. Meyers: Updated to 5.3.8](https://dev.getsol.us/source/linux-current/browse/master/;98a51f2)
 - [Bryan T. Meyers: Actually add the patch this time](https://dev.getsol.us/source/linux-current/browse/master/;d6a3eee)
 - [Bryan T. Meyers: Add patch to fix PS4 controllers, resolves T8360](https://dev.getsol.us/source/linux-current/browse/master/;cf224b1)
 - [Bryan T. Meyers: Updated to 5.3.7](https://dev.getsol.us/source/linux-current/browse/master/;dad3cd0)
 - [Bryan T. Meyers: Updated to 5.2.20](https://dev.getsol.us/source/linux-current/browse/master/;ad510a7)
 - [Bryan T. Meyers: Revert to 5.2 series for Nvidia and update to 5.2.8](https://dev.getsol.us/source/linux-current/browse/master/;4cd22bc)
 - [Bryan T. Meyers: Enable CPU Memory Hotplug to expose /sys/devices/system/memory for Nvidia drivers](https://dev.getsol.us/source/linux-current/browse/master/;899ad21)
 - [Bryan T. Meyers: Updated to 5.3.1](https://dev.getsol.us/source/linux-current/browse/master/;70ca91b)
 - [Bryan T. Meyers: Updated to 5.2.13](https://dev.getsol.us/source/linux-current/browse/master/;9423a11)
 - [Joshua Strobl: Update to 5.2.9.](https://dev.getsol.us/source/linux-current/browse/master/;5be1c96)
 - [Joshua Strobl: Update to 5.2.8.](https://dev.getsol.us/source/linux-current/browse/master/;c5eb4a2)
 - [Joshua Strobl: Update to 5.2.7.](https://dev.getsol.us/source/linux-current/browse/master/;122714b)
 - [Bryan T. Meyers: Updated to 5.2.2](https://dev.getsol.us/source/linux-current/browse/master/;7333240)
 - [Joshua Strobl: Update to 5.1.14](https://dev.getsol.us/source/linux-current/browse/master/;5bed190)
 - [Bryan T. Meyers: Update linux-current to 5.1.12](https://dev.getsol.us/source/linux-current/browse/master/;c8f4649)
 - [Bryan T. Meyers: Remove unneeded patch](https://dev.getsol.us/source/linux-current/browse/master/;682f752)
 - [Bryan T. Meyers: Update linux-current to 5.1.7](https://dev.getsol.us/source/linux-current/browse/master/;06931b1)
 - [Bryan T. Meyers: Update linux-current to 5.0.16](https://dev.getsol.us/source/linux-current/browse/master/;e255fd6)
 - [Bryan T. Meyers: Update linux-current to 5.0.12](https://dev.getsol.us/source/linux-current/browse/master/;bc563d9)
 - [Bryan T. Meyers: Update linux-current to 5.0.7](https://dev.getsol.us/source/linux-current/browse/master/;20168e5)

**libtasn1**

 - [Pierre-Yves: Update libtasn1 to 4.15.0](https://dev.getsol.us/source/libtasn1/browse/master/;3bf3451)
 - [Pierre-Yves: Update libtasn1 to 4.14](https://dev.getsol.us/source/libtasn1/browse/master/;4483ac2)

**coreutils**

 - [flinux@vongellhorn.ch: Update coreutils to 8.31](https://dev.getsol.us/source/coreutils/browse/master/;ea6369d)

**libxrender**

 - [F. von Gellhorn: Safety rebuild libxrender for xorgproto](https://dev.getsol.us/source/libxrender/browse/master/;f80482b)

**libjpeg-turbo**

 - [Fernando Monteiro: Update libjpeg-turbo to 2.0.4](https://dev.getsol.us/source/libjpeg-turbo/browse/master/;3465edf)
 - [Joey Riches: Update to 2.0.3](https://dev.getsol.us/source/libjpeg-turbo/browse/master/;ad619e7)
 - [Joey Riches: Update to 2.0.2](https://dev.getsol.us/source/libjpeg-turbo/browse/master/;8a85b1c)

**avahi**

 - [flinux@vongellhorn.ch: Rebuild for gdbm 1.18.1](https://dev.getsol.us/source/avahi/browse/master/;e8670ca)

**alsa-utils**

 - [Pierre-Yves: Update alsa-utils to 1.1.9](https://dev.getsol.us/source/alsa-utils/browse/master/;7e5ec46)

**man-db**

 - [Pierre-Yves: Update man-db to 2.8.7 again](https://dev.getsol.us/source/man-db/browse/master/;f46c4ee)
 - [Pierre-Yves: Downgrade mad-db to 2.8.6.1](https://dev.getsol.us/source/man-db/browse/master/;c812f3c)
 - [Pierre-Yves: Bump & rebuild](https://dev.getsol.us/source/man-db/browse/master/;106f81d)
 - [Pierre-Yves: Update man-db to 2.8.7](https://dev.getsol.us/source/man-db/browse/master/;3cede95)
 - [Pierre-Yves: Update man-db to 2.8.6.1](https://dev.getsol.us/source/man-db/browse/master/;20cfc31)
 - [flinux@vongellhorn.ch: Rebuild for gdbm 1.18.1](https://dev.getsol.us/source/man-db/browse/master/;0a06805)

**sudo**

 - [Pierre-Yves: Update sudo to 1.8.30](https://dev.getsol.us/source/sudo/browse/master/;dc41fb8)
 - [Pierre-Yves: Update sudo to 1.8.29](https://dev.getsol.us/source/sudo/browse/master/;db33298)
 - [Pierre-Yves: Update sudo to 1.8.28p1](https://dev.getsol.us/source/sudo/browse/master/;1c5fd7c)
 - [Joshua Strobl: Update to 1.8.28](https://dev.getsol.us/source/sudo/browse/master/;ea1bbf7)

**file**

 - [Fernando Monteiro: Update file to 5.38](https://dev.getsol.us/source/file/browse/master/;a8260ec)
 - [flinux@vongellhorn.ch: Update file to 5.37](https://dev.getsol.us/source/file/browse/master/;3266c1b)

**libgudev**

 - [Joshua Strobl: Update to 233](https://dev.getsol.us/source/libgudev/browse/master/;e163e61)

**wavpack**

 - [Joshua Strobl: Resolves multiple security issues.](https://dev.getsol.us/source/wavpack/browse/master/;2025598)

**gcc**

 - [Joey Riches: Rebootstrap 9.2.0 against shared libs](https://dev.getsol.us/source/gcc/browse/master/;fecf465)
 - [Joey Riches: Bootstrap 9.2.0 against static libs](https://dev.getsol.us/source/gcc/browse/master/;6455a3c)

**lame**

 - [Jacob Alzén: Update license and update summary](https://dev.getsol.us/source/lame/browse/master/;04a2635)

**libflac**

 - [Jacob Alzén: Update libflac to 1.3.3](https://dev.getsol.us/source/libflac/browse/master/;106c3f7)

**alsa-lib**

 - [Pierre-Yves: Update alsa-lib to 1.1.9](https://dev.getsol.us/source/alsa-lib/browse/master/;3033382)

**gettext**

 - [Pierre-Yves: Update gettext to 0.20.1](https://dev.getsol.us/source/gettext/browse/master/;40c62f3)

**network-manager**

 - [Joshua Strobl: Update to 1.22.4](https://dev.getsol.us/source/network-manager/browse/master/;60cefc5)
 - [Joshua Strobl: Update to 1.20.8](https://dev.getsol.us/source/network-manager/browse/master/;09a9620)
 - [Joshua Strobl: Update to 1.20.6](https://dev.getsol.us/source/network-manager/browse/master/;b88760b)
 - [Joshua Strobl: Update to 1.20.4](https://dev.getsol.us/source/network-manager/browse/master/;9e63ed3)
 - [Joshua Strobl: Update to 1.20.2.](https://dev.getsol.us/source/network-manager/browse/master/;e3de78e)
 - [Joshua Strobl: Update to 1.16.0](https://dev.getsol.us/source/network-manager/browse/master/;5e5e28e)

**usysconf**

 - [Bryan T. Meyers: Updated to 0.5.3](https://dev.getsol.us/source/usysconf/browse/master/;9038ef0)

**libatk**

 - [Joshua Strobl: Update to 2.34.1](https://dev.getsol.us/source/libatk/browse/master/;a6926e4)
 - [Joshua Strobl: Update to 2.32.0](https://dev.getsol.us/source/libatk/browse/master/;59bb299)

**sqlite3**

 - [Pierre-Yves: Update sqlite3 to 3.30.1](https://dev.getsol.us/source/sqlite3/browse/master/;d919041)
 - [Pierre-Yves: Update sqlite3 to 3.30.0](https://dev.getsol.us/source/sqlite3/browse/master/;c643027)
 - [Pierre-Yves: Update sqlite3 to 3.29.0](https://dev.getsol.us/source/sqlite3/browse/master/;911bef1)
 - [Pierre-Yves: Update sqlite3 to 3.28.0](https://dev.getsol.us/source/sqlite3/browse/master/;b6f6404)

**libxdamage**

 - [F. von Gellhorn: Safety rebuild libxdamage for xorgproto](https://dev.getsol.us/source/libxdamage/browse/master/;a0eab84)
 - [Bryan T. Meyers: Update to 1.1.5](https://dev.getsol.us/source/libxdamage/browse/master/;7cd89bc)

**pam**

 - [Joshua Strobl: Bump nofile limits to 524288. Resolves T8601.](https://dev.getsol.us/source/pam/browse/master/;21c2f3b)

**llvm**

 - [Joey Riches: Complete bootstrap against clang 9](https://dev.getsol.us/source/llvm/browse/master/;94ef157)
 - [Joey Riches: Update LLVM stack to 9.0.0](https://dev.getsol.us/source/llvm/browse/master/;6376afc)
 - [Joey Riches: Update to 8.0.1](https://dev.getsol.us/source/llvm/browse/master/;f7b08e5)
 - [Joey Riches: Complete bootstrap against clang 8](https://dev.getsol.us/source/llvm/browse/master/;af72604)
 - [Joey Riches: Update LLVM stack to 8.0.0](https://dev.getsol.us/source/llvm/browse/master/;427d3be)
 - [Bryan T. Meyers: Re-enable 32-bit clang, turn on RTTI for mesalib](https://dev.getsol.us/source/llvm/browse/master/;9286b0c)

**cups**

 - [Pierre-Yves: Patch cups for CVE-2019-8696 and CVE-2019-8675](https://dev.getsol.us/source/cups/browse/master/;4997bd4)

**zimg**

 - [Pierre-Yves: Update zimg to 2.9.2](https://dev.getsol.us/source/zimg/browse/master/;7453c6a)
 - [Pierre-Yves: Update zimg to 2.9.1](https://dev.getsol.us/source/zimg/browse/master/;2c67914)

**bzip2**

 - [Joshua Strobl: Update to 1.0.8](https://dev.getsol.us/source/bzip2/browse/master/;058da56)

**xrandr**

 - [Justin Zobel: Update to 1.5.1](https://dev.getsol.us/source/xrandr/browse/master/;770d96f)
 - [Peter O'Connor: Update abireport](https://dev.getsol.us/source/xrandr/browse/master/;5f8ac85)

**libogg**

 - [Jacob Alzén: Update libogg to 1.3.4](https://dev.getsol.us/source/libogg/browse/master/;aa75578)

**libxfixes**

 - [F. von Gellhorn: Safety rebuild libxfixes for xorgproto](https://dev.getsol.us/source/libxfixes/browse/master/;9f49e03)

**audit**

 - [Joshua Strobl: Update to 2.8.5](https://dev.getsol.us/source/audit/browse/master/;1b4ead1)

**libxxf86dga**

 - [F. von Gellhorn: Safety rebuild libxxf86dga for xorgproto](https://dev.getsol.us/source/libxxf86dga/browse/master/;ab73f71)
 - [Bryan T. Meyers: Update to 1.1.5](https://dev.getsol.us/source/libxxf86dga/browse/master/;3211165)

**iso-codes**

 - [Pierre-Yves: Update iso-codes to 4.4](https://dev.getsol.us/source/iso-codes/browse/master/;3c61341)

**libx11**

 - [F. von Gellhorn: Update libx11 to 1.6.9](https://dev.getsol.us/source/libx11/browse/master/;e441851)

**usbutils**

 - [Pierre-Yves: Update ubsutils to 012](https://dev.getsol.us/source/usbutils/browse/master/;5ac0de8)

**binutils**

 - [Joey Riches: Resolve multiple CVE's](https://dev.getsol.us/source/binutils/browse/master/;dd3699b)
 - [Joey Riches: Rebuild against toolchain](https://dev.getsol.us/source/binutils/browse/master/;5223b4b)
 - [flinux@vongellhorn.ch: Update binutils to 2.32](https://dev.getsol.us/source/binutils/browse/master/;9fc4d02)

**pciutils**

 - [flinux@vongellhorn.ch: Update pciutils to 3.6.2](https://dev.getsol.us/source/pciutils/browse/master/;c6431e0)

**glibc**

 - [Joey Riches: Fix AVX2 on systems without AVX2 instructions](https://dev.getsol.us/source/glibc/browse/master/;07068ab)
 - [Joey Riches: Rebuild against toolchain](https://dev.getsol.us/source/glibc/browse/master/;a87d2c8)

**mpfr**

 - [Joey Riches: Update to 4.0.2](https://dev.getsol.us/source/mpfr/browse/master/;05a2136)