---
title: "Endless DE-ssert | The Roundup #17"
author: "joshua"
categories:
- budgie
- packages
- news
- roundup
date: 2020-11-26T17:08:12+02:00
featuredimage: "2020/11/the-roundup-17-featured.jpg"
url: "/2020/11/26/endless-de-ssert-the-roundup-17"
---

Welcome to The Roundup #17, your bytes of Solus news. In this roundup, we're talk about our new desktop icons implementation for Budgie, GNOME 3.38, KDE and Plasma updates, and more!

<!--more-->

## Budgie

{{< altimg "2020/11/budgie-desktop-settings-with-view.jpg" >}}

Since the early days of Budgie, we have been using Nautilus' (now legacy) desktop icons implementation to provide desktop icon support. While some other desktop environments have strayed away from providing this functionality over the years, some going so far as to remove it entirely and require you to jump through hoops to enable it, we have always recognized that for many it is a cornerstone of their desktop experience, and as such it has remained a priority for us to retain that aspect of the Budgie experience.

Of course, we recognized that keeping Solus on an old version of Nautilus was not going to be sustainable. Not only did we want a newer version of GNOME's file manager with all the fancy bells and whistles that come with it, but we wanted to enable our downstreams to ship Budgie akin to how Solus does without potentially compromising on functionality.

To facilitate this, our goal from the start for Budgie 10.5.2 was to introduce a new, separate project that could be iterated on independently from Budgie Desktop itelf. This project needed to be rigorously focused and developed with an understanding of the scope and intent of the project, not trying to be a file manager but rather a method of quickly accessing the content and applications you consider most important.

Today we are thrilled to announce the [first generally public development release of Budgie Desktop View](https://github.com/getsolus/budgie-desktop-view)! This release focuses on providing the essentials to a desktop icons experience:

1. Access to "special" folders as your home directory and trash.
2. Showing active drive / volume mounts (including mounted removable media).
3. An ordered list of Desktop directory contents, prioritizing folders before files while maintaining order of content that respects locales, as well as generating thumbnails for images to enable you to find the content you're looking for faster.
4. Independently adjustable icon sizing from your file manager (Nautilus' legacy desktop icons implementation has its sizes depend on the zoom level of Nautilus).
5. Right-click menu options for the background canvas to quickly access Budgie Desktop and System Settings, as well right-click menu options for opening a file using the default app, or via the Terminal.

This isn't the final form Budgie Desktop View will take however! We're aiming to introduce the ability to choose between single and double-click options for launching items for the big `1.0` release, and adding drag & drop support in `1.1`. Once GTK4 introduces its first stable release, we'll also be assessing moving Budgie Desktop View to it to take advantage of all the improvements the GNOME team has done to the latest major version of the toolkit.

Budgie has always been about striking a balance in customization and that extends to the support we provide downstreams like Ubuntu Budgie as well. That is why we have also been working hard on introducing a new vendor-oriented mechanism to enable downstreams to choose a desktop icons implementation that fits them and their users best. Out-of-the-gate alongside our own desktop icons implementation, we're providing official support in Budgie Desktop's Settings application for the configuration of alternatives as well. Depending on the choice by the downstream (or any savvy user that can look at gsettings), you will get options that align with that implementation.

Initially we will provide support for [DesktopFolder](https://github.com/spheras/desktopfolder), which has been validated by the Solus team, and we've added some preliminary functionality for Nemo, which is awaiting validation and some TLC from downstreams (as Nemo is not something Solus ships in its repo).

I want to thank all the community members that have been testing this new implementation on Solus' unstable repository over the last couple weeks, providing feedback and identifying issues for us to fix before releasing it to the world.

We look forward to introducing it as a "stable" release next week alongside Budgie 10.5.2 (spoiler alert), which features countless improvements and bug fixes, as well as [new and updated translations](https://discuss.getsol.us/d/5774-call-to-action-translators-needed)!

## GNOME 3.38

{{< altimg "2020/11/gnome-3-38.jpg" >}}

This week we are also rolling out the GNOME 3.38 stack upgrade to the stable repository! This stack upgrade provides the latest and greatest in GNOME Shell, GNOME's desktop environment, as well as many of their applications.

### Highlights

Solus users can expect goodies such as:

- A brand new major release of Tracker, GNOME's search engine and database for local and remote content.
- Disks will now always show other filesystem format choices and has fixes for drive unmounting and partition creation.
- Improved screen recording functionality in GNOME Shell.
- Maps has received numerous improvements.
  - Allow editing negative elevations on OSM objects.
  - Display population in place bubbles using localized number format.
  - Fix a race-condition bug in search-as-you-type resulting in out-of-sync search results in some circumstances
- Numerous improvements to the Mutter window manager.
  - Improved memory usage such as optimizing background painting, offscreen effect cache invalidation, resource scale computation optimizations, and more.
  - Night Light fixes after DPMS (Display Power Management Signaling).
  - Support for custom keyboard layouts under `$XDG_CONFIG_HOME/xkb`.
  - Support tap-button-map and tap-drag-lock touchpad settings.
  - Various clipboard issues have been fixed.
- Music has numerous bug fixes and a rework of art retrieval.
- Photos now has a new image filter called Trencin, similar to Instagram's Clarendon filter.
- The video editor Pitivi now has a new major release!
  - A developer console plugin allows interacting with the project in a Python console.
  - Ability to favorite effects in the Effects Library.
  - Ability to mute or hide an entire layer.
  - A plugin system allows extending the Pitivi functionality medium-term, targeted for teams of editors.
  - Composition guidelines in the Viewer.
  - Easy alignment for video clips.
  - The refreshed clip effects UI allows working on multiple effects at a time.
  - The new Greeter perspective replaces the Welcome wizard dialog and allows a slick selection of a recently opened project.
  - The Effects Library has been redesigned to allow quick access to effects.
  - When being resized, the Viewer shows the percent of the actual widget size in relation to the project video size.
- Totem, GNOME's video player, has fixes for keyboard shortcuts, YouTube search, stutters when the current state is being written to disk, and support for auto-loading VTT subtitles.
- Various Nautilus improvements (yes, Solus now ships with the latest release).
  - Added newly created files to Recent.
  - Auto-escape filenames on NTFS and exFAT mounts.
  - Prevent jump to the old scrolling position after changing location.
  - Show notification on completion of file transfers if the window isn't focused.
  - Trash empty speedup by preventing recursion.

### Upgrading

As always during a GNOME update, if you are using GNOME Shell, be sure to **disable any extensions** which we do not provide / have enabled out-of-the-box to ensure the best possible upgrade experience. Not doing so may result in a broken desktop experience, crashes, or worse. It is not the responsibility of Solus or GNOME to ensure those extensions are maintained and updated against newer GNOME Shell APIs. If they break, we suggest you kindly reach out to the developer. For the best possible upgrade experience, you may want to properly reset your extensions back to the stock configuration. This can be done by opening up a Terminal and running the command listed below.

```
gsettings reset org.gnome.shell 'enabled-extensions'
```

With any ecosystem as large as GNOME's, you can expect and may encounter various issues with GNOME Shell, the window manager, or applications. We always encourage you check the respective upstream projects for issues, filing bugs with them to enable all users across the Linux ecosystem to benefit.

- For GNOME Shell, we would advice checking [GNOME Shell's issue tracker](https://gitlab.gnome.org/GNOME/gnome-shell/issues).
- For Mutter, we are aware of an **upstream issue** which may cause window flickering during window resize on some system configurations. Unfortunately, [this issue](https://gitlab.gnome.org/GNOME/mutter/-/issues/1445) has not been addressed by upstream GNOME, but we are monitoring it for any changes and will backport any fixes immediately should they occur.
- For applications, searching [GNOME's GitLab instance](https://gitlab.gnome.org) is the best way to find and reach the respective developers.

As with every GNOME Stack upgrade, we take this opportunity to remove packages from our repository that have either:

1. Implemented changes which result in the application no longer being aligned with the goals / purpose of Solus
2. Not received updates for several stack upgrades or an extended period of time
3. No longer compile / work as originally intended against newer upgrades

The majority of the packages which have been removed during this GNOME Stack upgraded are listed below, excluding old auto-generated documentation packages, and the reason for their deprecation:

- gnome-documents: Does not support tracker 3.0.
- gnome-sound-recorder: Now requires libhandy, a mobile-focused UI library built by Purism. We do not consider applications which target or force the installation of mobile UXs or their libraries to be acceptable, considering we are solely focused on modern home computing devices (laptops and desktops).
- libcloudproviders-32bit: libcloudproviders is still in the repository, however the multilib 32-bit package was not used by any software and it did not make sense to build the 32-bit package. So it has been deprecated.
- noise: No longer had a maintainer and is expected to have libhandy support in the future.
- vino: GNOME Control Center changed Vino support out for gnome-remote-desktop in Mutter.

We have also held back deja-dup to 40.x, gnome-boxes to 3.36.x, and gnome-screenshot to 3.36.x due to their new requirement for libhandy. This is in addition to existing applications held back. It is always worth keeping in mind that should you desire the most recent versions of this software, flatpak and snap support is available!

## GStreamer 1.18.1

Gstreamer has been updated to its latest major release, 1.18.1. This includes improvements and fixes such as:

- High Dynamic Range (HDR) video information representation and signalling enhancements
- Instant playback rate change support
- MPEG-TS muxing now also supports TV broadcast compliant muxing with constant bitrate muxing and SCTE-35 support
- RTP support was enhanced with new RTP source and sink elements to easily set up RTP streaming via rtp:// URIs
- Streamer Editing Services gained support for nested timelines, per-clip speed rate control and the OpenTimelineIO format.
- gstreamer plugins "good"
  - avidemux can handle H.265 video now
  - deinterlace: new YADIF deinterlace method which should provide better quality than the existing methods and is LGPL licensed.
  - pulseaudio: device provider improvements: fix discovery of newly-added devices and hide the alsa device provider if we provide alsa devices.
- gstreamer plugins "bad"
  - nvdec: add support for 12-bit 4:4:4/4:2:0 and 10-bit 4:2:0 decoding
- gstreamer plugins "ugly"
  - respect YouTube bitrate recommendation when user sets the YouTube profile preset
  - separate high-10 video formats from 8-bit formats to improve depth negotiation and only advertise suitable input raw formats for the desired output depth

## Pulseaudio 14

Audiophiles rejoice, we have updated our Pulseaudio to latest release, 14.0! While the improvements are [truly endless](https://www.freedesktop.org/wiki/Software/PulseAudio/Notes/14.0/), some of the highlights are:

**Automatic switching to HDMI is now disabled by default.**

This actually prevented Solus from upgrading to 13.x due to this issue, and we're happy to see it was an unintended change resolved in 14.0. Here's an excerpt from the Pulseaudio notes:

> PulseAudio 13.0 started to switch output to HDMI automatically when module-switch-on-connect was loaded (upstream PulseAudio doesn't load it by default, but some distributions do). This change was not intentional, and caused very annoying behaviour in cases where waking up the monitor from sleep appears as a plug-in event in ALSA. Now module-switch-on-connect has a configurable blacklist, which by default prevents switching to HDMI devices.

**Better support for some USB gaming headsets**

Pulseaudio 14 introduces custom configuration for several headsets, such as:

- HyperX Cloud Orbit S
- LucidSound LS31
- Razer Kraken Tournament Edition
- SteelSeries Arctis 5 (2019 edition)
- SteelSeries Arctis Pro (2019 edition)

Pulseaudio will now also create separate stereo and mono voice sinks for these headsets

**Flat volumes are now disabled by default**

`flat-volumes` is a feature Solus has patched to be disabled for a long time now and we're happy to no longer be required to do so. Here is Pulseaudio's notes on the matter:

> With flat volumes the stream volumes control also the sink volume. In the simple case of only one stream, the stream and the sink volume are always the same. In case of multiple streams, the sink volume is set to the maximum of the stream volumes. The purpose of this is to simplify the volume control of an application: the full volume range is always available via the application volume slider, so there's no need to think about the sink volume. In practice, however, this has caused more harm than good (the worst problem is that some applications automatically set their stream volume to 100%, causing the audio to be played at the maximum volume that the hardware can produce), and most large distributions have patched PulseAudio to disable flat volumes by default. Now that patching won't be needed any more.

## KDE Applications 20.08.3

KDE Applications have been updated to the latest release 20.08.3. You can see KDE's announcement [here](https://kde.org/announcements/releases/2020-11-apps-update/) and we've highlighted some changes below!

- gwenview received a fix for a bug that would occur when opening some images if the thumbnail bar was enabled, causing it to open a new window.
- kaccounts-integration fixed an unreadable row on the account details page when using dark themes.
- kdenlive
  - Don’t allow removing the only keyframe in an effect (was possible from the on monitor toolbar and crashing).
  - Fix crash inserting zone over grouped clips in same track.
  - Fix on monitor displayed fps with high fps values.
  - Project archiving: check after each file if archiving works, add option to use zip instead of tar.gz.
  - Fix playlist clips have no audio regression.
  - When switching project profile and there is only 1 clip in timeline, update the timeline clip duration accordingly to profile change.
- kmail
  - Apply data from mailto information.
  - Fix missing text when removing charset encoding.
- okular
  - Do not disable flick if cursor has been wrapped.
  - Fix fast scrolling with Shift+Scroll.
  - Fix middle click on sidebar tab bar unloads the document.
  - Fix scrolling with scrollbar when the slider is not clicked.
  - Fix wrong memory access that may cause crash.

## KDE Framework 5.76.0

KDE Frameworks are "addon libraries to Qt which provide a wide variety of commonly needed functionality in mature, peer reviewed and well tested libraries with friendly licensing terms". During our update of KDE Applications and Plasma, KDE Frameworks was also updated to its latest release: 5.76.0. While you can read the full announcement [here](https://kde.org/announcements/kde-frameworks-5.76.0/), here's a highlight of some of the changes:

- Breeze Icons
  - Add 48px dialog-warning icon
  - Add some color mode icons for Okular
  - Add task-complete icons
  - Add network-limited icon
  - Add meeting-organizer icons
  - Add fingerprint icon
  - Add task-recurring and appointment-recurring icons 
  - Change style of media-repeat-single to use number 1
  - Symlink kup.svg to preferences-system-backup.svg
- Extra CMake Modules
  - add missing minimum version for RENAME parameter
  - improve default formatting options
- KCalendarCore: Add COLOR property serialization from RFC7986
- KCMUtils
  - Deprecate KSettings::PluginPage
  - Port from QStandardPaths::DataLocation to QStandardPaths::AppDataLocation
- KCoreAddons: Fix potential memory leak in KAboutData::registerPluginData
- KImageFormats
  - Add support for RLE-compressed, 16 bits per channel PSD files
- KIO
  - Avoid pointless probing for nonexisting thumbnail images
  - CopyJob: Include skipped files in progress calculation when renaming
  - CopyJob: fix total number of files/dirs in progress dialog (when moving)
  - FileWidget: Show Selected file preview on mouse leave
  - Support for xattrs on kio copy/move
- KNotification
  - Add comments to describe DesktopEntry field in notifyrc file
  - Fix: enable legacy tray on platforms without dbus
- KRunner
  - Do not set the type to File/Directory if it does not exist
- KTextEditor: Fix memory leak in KateMessageLayout
- Plasma Framework
  - Allow plasmoids to ignore the margins
  - Always show ExpandableListitem buttons, not just on hover
  - Fix BusyIndicator rotating even when invisible, again
  - Lock the header colours of Breeze Dark and Breeze Light 
  - Remove unnecessary anchors in the ComboBox.contentItem
  - Unify aspect ratio of 32px and 22px battery icons
- Syntax Highlighting
  - Decrease opacity in separator of Breeze & Dracula themes
  - Feature: Add the comments.xml as an umbrella syntax for various comment kinds
  - Feature: Replace Alerts w/ Special-Comments syntax and remove Modelines
  - Solarized themes: improve separator
  - fix php/* generation for new Comments hl

## Plasma 5.20.3

{{< altimg "2020/11/plasma-with-system-settings.jpg" >}}

If Budgie or GNOME Shell aren't your cups of coffee (or tea), this week's updates also include the latest Plasma 5.20.3! Here's a highlight of some improvements and fixes:

- khotkeys: Fixed import of files
- kscreen: Improve consistency of the lid behaviour.
- ksysguard: Stop the daemon if we have no client.
- kwin
  - Drm: Make sure the screens are turned on when we come from suspend.
  - Effects/screenshot: fix the screenshot on GLES.
  - Transform a pending repaint into a workspace repaint before destroying Deleted.
- plasma-desktop: Only allow multi key shortcuts for standard shortcuts.
- plasma-disks: Actually erase devices.
- plasma-nm: Do not show absurdedly high speeds on first update.
- plasma-workspace
  - Fix edge case for tilde and ENV command.
  - Fix missing “Switch User” button on lockscreen with systemd 246.
  - lookandfeel: Fix switching to a different user session.
  - System Tray: Fall back to tool tip title if no title is set.

## Qt5 5.15.2

Our Qt5 has been updated to 5.15.2, containing 176 bug fixes. Here's a short highlight of some of the fixes, the full changelog available [here](https://wiki.qt.io/Qt_5.15.2_Change_Files).

- qt3d
  - Only use surfaceSize if m_surfaceSize is not valid
  - Rework Scene3D to fix potential crash on shutdown
  - Update QShaderFormat matching logic to account for RHI shader snippets
- qtbase
  - Fixed a crash in QImage conversions still ongoing on shutdown.
  - Fixed an XPM read error caused by off-by-one in overflow check.
  - Network: Fixed a crash in HTTP/2 when handling Remote Disconnected.
  - QCalendarWidget: The calendar widget now shows the year correctly after editing.
  - QJsonObject: Fixed sorting in QJsonObject when parsing UTF-8 JSON text so that searching works afterwards.
  - QMenu: We now close popups on windowWillMiniaturize notification so that context menus are not left visible when a window is minimized.
  - QMimeDatabase:Fixed handling of glob-deleteall in QMimeDatabase.
  - QScreen now emits geometryChanged() when the logical DPI changes so as to resize widgets and fonts after moving to a screen with different DPI.
  - SVG now allows smooth curve stroking of very wide lines.
- qtgraphicaleffects
  - Fixed some effects turning black when source is empty..
- qtmultimedia: Fixed the capture signal emission. CaptureToBuffer, and CaptureToFile will now emit imageAvailable, and imageSaved, respectively. Additionally imageCaptured will now only be emitted if there is a video frame available.
- qtsvg
  - Allowed loading SVG files with a doctype declaration
  - Implemented a basic format check for compressed svgs so it will fail early if the file does not start with a svg or xml tag after decompressing.
  - Reduced memory consumption significantly for huge files.
- qtwebengine
  - Fix crashes on resize
  - Fix regression crash when not handling QQuickWebEngineNewViewRequest
  - Fix remapped menu key being mapped back to menu key
  - Handle non-ASCII names for PulseAudio

---

## Package Highlights

Here's a highlight of some other package updates that have been done since our last sync. Please note this is not a comprehensive list, we weren't going to go through hundreds of package updates:

- [alacritty 0.6.0](https://dev.getsol.us/R4608:e72a211e6b789298f1e43f87ab7e5d42d1b1d41b)
- [antimicrox 3.1.3](https://dev.getsol.us/R4934:3e373c0a410a7e38aa683dd4be0b83367dad15ac)
- [atom 1.53.0](https://dev.getsol.us/R394:1987adc897948de96a57a03af34f60d3fcce5bd8)
- [bottom 0.5.1](https://dev.getsol.us/R5070:317392305f0e566435c2ec6911d4cdf8573c9bd1)
- [cargo-c 0.6.18](https://dev.getsol.us/R5009:36c385c10f660553156911930c23b478714ca34b)
- [cozy 0.7.5](https://dev.getsol.us/R4098:746b0868c671eb2ed241adfd58a79c9a4993da42)
- [element 1.7.13](https://dev.getsol.us/R2816:1caff2a6896009f975546348d801b78117fcc247)
- [ffmpeg: enable SMB support for mpv](https://dev.getsol.us/R742:ce49927526c31af5fed87228f42474df7fe3e5bc)
- [flatpak 1.8.3](https://dev.getsol.us/R766:81df42b5dad4c593c178a0bb8b89021fcaa679af)
- [firefox 83.0](https://dev.getsol.us/R755:b44269d3e0d8f8925ace71ff383de8e97e7b58d0)
- [gnuchess 6.2.7](https://dev.getsol.us/R1021:8554f7ba60da8cb7007418379082899722f7fdbb)
- [gnupg 2.2.25](https://dev.getsol.us/R1025:7a982b9f6c965a865c6cf82ca3bbd64ed2c69ff3)
- [i3 4.19](https://dev.getsol.us/R1438:8afd0975563cacdf2b685760d4b9eb57b1a04f46)
- [initial inclusion of headset-control](https://dev.getsol.us/R5099:78b7f2de541970c0a2eccf813c9e788f2ca76515)
- [initial inclusion of onefetch](https://dev.getsol.us/R5091:2fa067eb1313a7ebecd1a6ee5f35d76ea9b3b659)
- [iverilog 11.0](https://dev.getsol.us/R4191:f54230f0f8eee41a6df9bbe6a62190307b5f8819)
- [julia 1.5.3](https://dev.getsol.us/R1510:063e644c5a27839cacbbbffe281615b9ed7e25de)
- [kitty 0.19.2](https://dev.getsol.us/R4194:c38f44c27084ad191c1e12668d29e29f4cab3008)
- [kodi 18.9](https://dev.getsol.us/R1571:c93f0574a7a1ac5c3d2b3155a35a8d62657cd7aa)
- [lutris 0.5.8](https://dev.getsol.us/R1992:bfd1a176985c02db974026426f1b2ecb6011a37f)
- [matcha-gtk-theme](https://dev.getsol.us/R4811:846ef45dc91b252556dddd8234bc072b4b1c8da9)
- [mpv 0.33.0](https://dev.getsol.us/R2107:410a8c5afeb9298d411eabc3fb056aa3622b5e98)
- [nano 5.3](https://dev.getsol.us/R2131:fbaa6e5f1b58926a90362002aafb8281926d135f)
- [nextcloud-client 3.0.3](https://dev.getsol.us/R3740:f85e3b165ca0986b1101a58ae635112f9c21a400)
- [nnn 3.5](https://dev.getsol.us/R4586:a5e36e49ea7f4cc5bf31248f88ba885d3b0967ef)
- [nodejs 14.15.1](https://dev.getsol.us/R2177:a2d40c9d7829979945e824e09dd33d28c96758c4)
- [nvidia-beta-driver 455.45.01](https://dev.getsol.us/R4465:57d7b7c6b1d885a5d4524310b368095d6ebd0d6e)
- [nvidia-developer-driver 455.46.02](https://dev.getsol.us/R4560:b941bac5046c59ca985d4f335180902ab2d535a1)
- [nvidia-glx-driver 455.45.01](https://dev.getsol.us/R2210:fee6e449b213704041e0953df641f7b723e3a92b)
- [opera-stable 72.0.3815.400](https://dev.getsol.us/R2263:864d629f9769513b80673ac20289535479d5b2e8)
- [onedrive 2.4.7](https://dev.getsol.us/R4605:037527f9f33483e95355bac2c06b8af6b78c7868) -- **the 10000th patch submitted to our development tracker**
- [owncloud-client 2.7.1](https://dev.getsol.us/R2279:66c2e2626ca3fb22bebea1b1284b097583867510)
- [phoronix-test-suite 10.0.1](https://dev.getsol.us/R2423:1367e0e923fd4c25a3f4f347e3e7508546021d68)
- [pipewire 0.3.16](https://dev.getsol.us/R4226:57206d7717e10d3af2e85f236de749a9220da17b)
- [pulseeffects 4.8.2](https://dev.getsol.us/R3867:f210f20666a4a4f3fe1c3995491eecda78d9853e)
- [qpdf 10.0.3](https://dev.getsol.us/R2731:d29d6540b0182fdac95e122f5f187720c60f7cff)
- [qownnotes 20.11.9](https://dev.getsol.us/R2730:cf1c1cdf2dda1ec5a0f97c0b2460faeaff2573fd)
- [rofi 1.6.1](https://dev.getsol.us/R2821:2866ae2347be461eccc47e676945bc9aa8396aaf)
- [samba 4.12.10](https://dev.getsol.us/R2842:0808ecd7f8549dca2a0ecb8fee9c40fa659e8b55)
- [scala 2.13.3](https://dev.getsol.us/R2852:a91ae48f1e3849d530361c989d27f69456cfb72d)
- [sigil 1.4.2](https://dev.getsol.us/R2904:845bca7e4205a4b6a3c4fa2961a0af07a83e7bca)
- [signal-desktop 1.38.2](https://dev.getsol.us/R3823:f2d4f8fa417b4a15537a315b06fdd67b09cf59b6)
- [simplenote 2.1.0](https://dev.getsol.us/R2907:41e6c4a8f7666ab1e978413c5aafa0576276db58)
- [spyder3 4.2.0](https://dev.getsol.us/R3882:c0d412542d85fcc00d3e201ab791a3b65a7406ea)
- [steam 1.0.0.67](https://dev.getsol.us/R2962:bd285d5cd64ba91069e47599363fdd63d124e403)
- [strawberry 0.8.4](https://dev.getsol.us/R4656:cde4f88610b010ffa42c92e6ba9d0bcadae9be87)
- [subsurface 4.9.9](https://dev.getsol.us/R4628:bf08b136ea5dedc75f211407a7c2edabaacb6809)
- [tor 0.4.4.6](https://dev.getsol.us/R3054:5848a99c1c3f58daa3bd4a001595b25328688dde)
- [vivaldi-snapshot 3.5.2115.4](https://dev.getsol.us/R3138:a19ef82268c7bd09d2be35856e47345695dfe65c)
- [yt-dlc 2020.11.11-3](https://dev.getsol.us/R3304:4d660e9d9064537c4c9e6743b3ee08452549f62a)
- [zim 0.73.4](https://dev.getsol.us/R3322:806ff4a8393ac357c00c22e06d6cfe72006f47d6)