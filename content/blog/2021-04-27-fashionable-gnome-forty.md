---
title: "Fashionable GNOME Forty | The Roundup #19"
author: "joshua"
categories:
- budgie
- packages
- news
- roundup
date: 2021-04-27T14:58:33+03:00
featuredimage: "2021/04/gnome-40.jpg"
url: "/2021/04/27/fashionable-gnome-forty"
---

Welcome to The Roundup #19, your bytes of Solus news. In this roundup, we talk about our Budgie 10.5.3 bug fix release, GNOME 40, move to KDE's Qt5 patch collection, and more!

<!--more-->

## Budgie 10.5.3

[Budgie 10.5.3](https://github.com/solus-project/budgie-desktop/tree/v10.5.3) is a minor release that introduces fixes for bugs, various quality-of-life improvements, and support for the GNOME 40 stack.

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

### GNOME 40 Support

Budgie 10.5.3 introduces support for the GNOME 40 stack. GNOME 40 introduced various changes in Mutter, gsettings-desktop-schemas, and gnome-shell which impacted the ability to use Budgie under a GNOME 40 stack or in conjunction with GDM (GNOME's login manager which leverages gnome-shell).

When compiled alongside GNOME Settings Daemon 40.x, Budgie will use the migrated font anti-aliasing and hinting options, which were moved from `org.gnome.settings-daemon.plugins.xsettings` to `org.gnome.desktop.interface`. In [GNOME Shell](https://gitlab.gnome.org/GNOME/gnome-shell/-/commit/af5aff32514d7236d3261670a5ed0c087ee3abdd) and [GNOME Settings Daemon](https://gitlab.gnome.org/GNOME/gnome-settings-daemon/-/commit/f7702421321ff8aeeb2aad26afefee997b63e938) 40, there were changes introduced which impacted Budgie's ability to use dedicated screensavers, such as Solus' fork of gnome-screensaver (which we have been using since 2017). [This fork](https://github.com/getsolus/budgie-screensaver) has now been formally renamed to `budgie-screensaver`, bumped to `v4`, and promoted to a required component of Budgie Desktop, with changes introduced to facilitate Budgie's continued ability to lock the session and attempt to co-exist in an installation environment alongside GNOME Shell and GDM. As always, we encourage that Budgie be used with lightdm and an optional greeter such as slick-greeter, as opposed to being installed alongside GDM and GNOME Shell.

### Quality-of-life Improvements

{{< altimg "2021/04/budgie-desktop-settings.jpg" >}}

Here are some quality-of-life improvements shipping in Budgie 10.5.3

- Filter out audacious notifications so they do not clutter up Raven. 
- Hide "Default", which is typically Adwaita / GTK's internal theme. We continue to encourage the use of theming that officially supports Budgie, such as Materia and Plata.
- Mutter and WM preference schema settings are now only applied for Budgie session.
- Spacing is now configurable in the Status applet.
- The application fullscreen state tracking has been slightly rewritten to use the window XIDs, only call our track window state function on specific flags in the changed or current state, and reducing instances where some unset flags would not result in the application being removed as a fullscreen application.
- There is now an option in Budgie and exposed via Budgie Desktop Settings' "Windows" section to automatically pause notifications when a window is fullscreen and unpause when there no longer is a fullscreen window. This is useful in reducing distractions when gaming or watching content!
- To improve the default user experience of Budgie on some downstream operating systems such as Arch Linux, Budgie now ships with a default wallpaper, eliminating the need for downstreams to apply supplemental changes or ship a wallpaper package.
- We will no longer filter device added / removed notifications. This resolves issues where ejection notifications for external media would not get stored in Raven's Notifications section.
- When `xdotool` is available on the operating system, the Lock Keys applet can be clicked to toggle CapsLock and NumLock!

### Get the Release

Official distribution tarballs for Budgie 10.5.3 are available [here](https://github.com/solus-project/budgie-desktop/releases/tag/v10.5.3). For Solus users, Budgie 10.5.3 will be coming this Friday, though most improvements above are already in the stable repository!

## GNOME 40

{{< altimg "2021/04/gnome-40.jpg" >}}

With this Friday's sync to the stable repository, we will be rolling out the GNOME 40 stack. This stack upgrade introduces the latest updates to GNOME Shell, GNOME's desktop environment, as well as its applications, libraries, and window manager.

### Highlights

Solus users can expect goodies such as:

- GNOME Shell
  - Improved mouse gestures for switching workspaces (`Super` + `Alt` + `Scroll`)
  - New horizontal-oriented layout for application grid and dash.
  - Updated keyboard shortcuts for toggling the overview and switching workspaces.
- Boxes
  - Allow users to replace install source of live images
  - Improve human-readable names for OS variants
  - Indicate that we can open other formats other than .iso
  - Update the recommended-downloads list with latest releases
- Builder
  - Allow disabling show-right-margin with .editorconfig
  - Debug messages from GLib/GTK are now only shown when debugging your application, not running without debugger.
  - Fix highlight after pasting when multiple cursors are in use
  - GNOME application templates now provide example icons
  - New libide helpers for plugins to locate addins by module name
  - Project tree improvements
  - Support running GTK 4 applications
- Calculator
  - Added Ctrl+Delete shortcut for clearing the current equation
  - Added Ctrl+O shortcut for degrees symbol
  - Added support for frequencies conversion
  - Added support for converting to and from weeks
  - Added support for converting to and from centuries and decades
  - Dim inapplicable bits on word size change
  - Show 4 decimals in converter instead of only two
- Evince
  - Add support for RAR v5 archives through libarchive
  - libview: Fix support for HiDPI in link preview
- Files
  - Add support for extracting password-protected archives
  - Add support for creation date
  - Do not use default location instead of root in path bar
  - Don't save window state when tiled
  - Fix Batch rename dialog crashes
  - Fix crashes when closing the last tab
  - Fix detection and handling of remote files
  - Group files depending on the opening app
  - Improve tab completion in the location entry
  - Preserve mtime of non-empty directories on move
- GDM
  - Don't overwrite PATH set by user
  - PAM integration improvements
  - Support systems that boot before the graphics subsystem fully loads
- Gedit
  - Fix huge CPU consumption when a folder with content is deleted
  - Start to use TeplBuffer and TeplFile APIs. As a result the new tabs are now named "Untitled File", not "Untitled Document".
- GNOME Settings Daemon
  - Color: Consider night-light active when disabled until tomorrow
  - Fix rfkill on newer kernels
- Settings
  - Display: Try harder to select a good and working scale
  - Mouse & Touchpad: Allow horizontal scrolling in test page
  - Show hardware model and vendor in the About panel
  - Sound: Update mute button icon when volume changes
  - Various fixes to the language chooser
- Music
  - Fixed: Adding songs to favorite crashes the app
  - Fix album selection checkboxes style
  - Fix artist queries to retrieve art
  - Fix playlist deletion

### Defaults Changes

As a result of various changes to GNOME Shell, the current changes are being applied to various branding packages we ship or have shipped for Solus GNOME Edition:

- Plata-noir has been swapped out for Materia-dark. Plata Theme has not seen development since the GNOME 3.38 stack release, which has meant considerable breakages under 40, alongside GTK4. Materia GTK Theme provides a very similiar look and feel, so we are comfortable with applying this switch. If you changed your GTK or Shell theme to a non-default value, run the command:

  `gsettings reset org.gnome.desktop.interface 'gtk-theme'`
- Dash to Dock is **temporarily** deprecated from the Solus repositories and is no longer enabled by default via our desktop branding. We will reintroduce Dash-to-Dock support when the [current merge request for GNOME 40 support](https://github.com/micheleg/dash-to-dock/pull/1402), which introduces some instability and is "very much WIP" (exact quote), is merged in and a release is tagged around it.

The remaining extensions enabled by default, like Impatience and Tray-Icons-Reloaded, are still supported and enabled.

### Upgrading

As always during a GNOME update, if you are using GNOME Shell, be sure to **disable any extensions** which we do not provide / have enabled out-of-the-box to ensure the best possible upgrade experience. Not doing so may result in a broken desktop experience, crashes, or worse. It is not the responsibility of Solus or GNOME to ensure those extensions are maintained and updated against newer GNOME Shell APIs. If they break, we suggest you kindly reach out to the developer. For the best possible upgrade experience, you may want to properly reset your extensions back to the stock configuration. This can be done by opening up a Terminal and running the command listed below.

```
gsettings reset org.gnome.shell 'enabled-extensions'
```

With any ecosystem as large as GNOME's, you can expect and may encounter various issues with GNOME Shell, the window manager, or applications. We always encourage you check the respective upstream projects for issues, filing bugs with them to enable all users across the Linux ecosystem to benefit.

- For GNOME Shell, we would advise checking [GNOME Shell's issue tracker](https://gitlab.gnome.org/GNOME/gnome-shell/issues).
- For Mutter, GNOME's window manager, we advise checking their [issue tracker](https://gitlab.gnome.org/GNOME/mutter/issues). There is currently a known issue we are tracking related to [red tint with NVIDIA proprietary graphics under X.org](https://gitlab.gnome.org/GNOME/gnome-shell/-/issues/4071) that is the result of using a different ICC profile. If you use a dedicated color profile, the current workaround for this is to remove your color profile then add `Colorspace: sRGB`.
- For applications, searching [GNOME's GitLab instance](https://gitlab.gnome.org) is the best way to find and reach the respective developers.

As with every GNOME Stack upgrade, we take this opportunity to remove packages from our repository that have either:

1. Implemented changes which result in the application no longer being aligned with the goals / purpose of Solus
2. Not received updates for several stack upgrades or an extended period of time
3. No longer compile / work as originally intended against newer upgrades

The majority of the packages which have been removed during this GNOME Stack upgraded are listed below, excluding old auto-generated documentation packages, and the reason for their deprecation:

- epiphany: We have multiple alternative and objectively better web browsers in our repos. Epiphany has been held back for some time due to libhandy and we are more comfortable with deprecating it at this point. You can always get it from Flatpak.
- gnome-clocks: Used libhandy but actual deprecation reason is that it does not support new gweather APIs.
- nemiver: Has not been developed for a number of years by GNOME and they have other debugging utilities like what you can get via sysprof and Builder.

We have also held back baobab, gnome-disks, gnome-photos, and gnome-maps due to their new requirement for libhandy. This is in addition to existing applications held back. It is always worth keeping in mind that should you desire the most recent versions of this software, flatpak and snap support is available!

## KDE Framework 5.81.0 and Plasma 5.21.4

KDE Frameworks has been updated to 5.81.0. This introduces fixes such as:

- Baloo: Update filename terms when moving/renaming file 
- Breeze Icons
  - Added branches with leaves to Kmymoney icon
  - Add high-brightness and low-brightness icons
  - Fix location of brightness icons
  - Link svn-* icons to new vcs-* icons
  - Make lock icon filled status consistent
- KConfigWidgets: Introduce KHamburgermenu
- KCoreAddons: Enable Unicode support in QRegularExpression where needed
- KIO
  - Fix crash in ApplicationLauncherJob(service) when service is null
  - Handle errors during xattr copy in a more robust way
- KNotification: Don’t close resident notifications when action is invoked
- KTextEditor
  - Avoid gaps in indentation line drawing
  - Add option to keep spaces to the left of cursor when saving
  - Don’t warn about unsaved changes when closing if blank and unsaved
  - Don’t use F9 & F10 as shortcuts
  - Restrict horizontal range of cursor to avoid unintentionally wrapping 

Full announcement [here](https://kde.org/announcements/frameworks/5/5.81.0/).

## Plasma 5.21.4

Plasma has been updated to 5.21.4. This introduces numerous bug fixes such as:

- Bluedevil: Fix tooltip showing wrong name for connected device.
- KScreen: Prefer “21:9” over “64:27” aspect ratio
- KWin: Fix crash on hotplugging displays while switched to another TTY.
- Plasma Audio Volume Control: Round volume to avoid increasing or decreasing by more than stepSize.
- Plasma Desktop: Fix zero badges (eg when downloading small files with Firefox).
- Plasma NetworkManager: Fix bug with openfortivpn that do not support 2fa.
- Plasma Systemmonitor: Fix scrollbar overlapping configuration page.
- Plasma Workspace
  - applets/digital-clock: Fix timezone placeholder message positioning.
  - Fix color scheme preview.
  - Krunner: Restore history related property and methods for compatibility with third party themes.

Full changelog [here](https://kde.org/announcements/changelogs/plasma/5/5.21.3-5.21.4/).

## Postgresql 13

Our Postgresql has been updated to 13.2, which features various changes noted [in the Postgresql release notes](https://www.postgresql.org/docs/13/release-13-2.html). If you use postgresql for local development purposes, as with all major upgrades you will need to perform a dump / restore either prior to upgrading or by re-installing an older version of postgresql, performing the dump, then doing the restore post-upgrade.

To assist with migration, this has been [formally documented](/articles/software/postgresql/en/) on our Help Center!

## Qt 5.15.3 Upgrade

KDE / Plasma Desktop maintainer Friedrich von Gellhorn (a.k.a Girtablulu) has moved our Qt5 to [KDE's Qt 5 patch collection](https://dot.kde.org/2021/04/06/announcing-kdes-qt-5-patch-collection), released as 5.13.5, including the following packages:

- [qt5-3d](https://dev.getsol.us/R4727:766eff952057ffae465259adbe9e2def3a3ade2d)
- [qt5-base](https://dev.getsol.us/R2736:5e35f3c538cbe38d2243cc0591608fed74ae3184)
- [qt5-charts](https://dev.getsol.us/R3925:bda15a2d6eed25d105d5d813beb59d03ddb2fdd7)
- [qt5-connectivity](https://dev.getsol.us/R2737:268e8262928b14d456343e22ffe6532f748af2aa)
- [qt5-datavis3d](https://dev.getsol.us/R4991:b89bf6b3ae793fd287f37dfd3c96ab3d2b464637)
- [qt5-declarative](https://dev.getsol.us/R2738:2175f733c5bb225b87a498d62d11d96fd744453c)
- [qt5-graphical-effects](https://dev.getsol.us/R2740:0355294dcf5aee3056073022fa2e577210b890c6)
- [qt5-imageformats](https://dev.getsol.us/R4548:0007122ecab3312a18a1340f7bf399fdb42fe490)
- [qt5-location](https://dev.getsol.us/R2741:25cb75a482daf9e52a21ae3a8c34cb12dda5a19e)
- [qt5-multimedia](https://dev.getsol.us/R2742:0433518b8fc0df2a4dd185814a464f55076c0c89)
- [qt5-networkauth](https://dev.getsol.us/R4614:686b2f76db806f796dd0c56c920eb0f6da1bdb94)
- [qt5-quickcontrols](https://dev.getsol.us/R2743:0a3577e247b330b168f463fe216b18a81aef3d11)
- [qt5-quickcontrols2](https://dev.getsol.us/R2744:43a31ee257a581112beaff23b100dd54d0c7aec7)
- [qt5-script](https://dev.getsol.us/R2745:60124dbffe64dd4fd1a8fd25d09357131411b74b)
- [qt5-scxml](https://dev.getsol.us/R4385:e0e44e7246271ad68b6eeee83457f33338df2b18)
- [qt5-sensors](https://dev.getsol.us/R2746:b2d04b5e1d1cfa345803f21c501e43f52955a220)
- [qt5-serialbus](https://dev.getsol.us/R2747:d5d89947e5685a98d093ea455042e5dda183764d)
- [qt5-serialport](https://dev.getsol.us/R2748:eaf4a8ccc39a17ea825091cdac3f39bcea0cbd13)
- [qt5-speech](https://dev.getsol.us/R4521:bae7cd0c74565422c62457946c18085f83fa99c6)
- [qt5-svg](https://dev.getsol.us/R2749:596939b8185462aae91f6c21adffdfa832b6a0ed)
- [qt5-tools](https://dev.getsol.us/R2750:7a7527a092ff31656618ef4401f96d1b7df6ef74)
- [qt5-translations](https://dev.getsol.us/R2751:d630bdcb7bd972c9bb7b9c98b2bd095a2b7653b0)
- [qt5-virtualkeyboard](https://dev.getsol.us/R3789:7289345a6795eecc759b98e096b31ce19420347c)
- [qt5-x11extras](https://dev.getsol.us/R2757:9297e8a7a7aeba1247b0abf288015dc4d71d3f80)
- [qt5-xmlpatterns](https://dev.getsol.us/R2759:cc705b7a0a9af9111c0df862cded37900f7782a9)
- [qt5-wayland](https://dev.getsol.us/R2752:57aef6cb679d1937ad0ede75249699332f04b8a7)
- [qt5-webchannel](https://dev.getsol.us/R2753:5b65e4eb725f34624c803a152a627947ac2997de)
- [qt5-webengine](https://dev.getsol.us/R2754:a4f8c22858c2e3fbed75f88100cac101b1353949)
- [qt5-websockets](https://dev.getsol.us/R2756:03fa8b054dc02796962949fcb8dbc57d398eaab7)
- [qt5-webkit](https://dev.getsol.us/R2755:7b44e0442ff4d36b037152e1eff9bc50273a24fc)
- [qt5-webview](https://dev.getsol.us/R4846:1d1b3ee90d5793fcf2c60b2f13b602d169b571c8)

## Package Highlights

Here is a highlight of some other package updates that have been done since our last sync. Please note this is not a comprehensive list, we were not going to go through hundreds of package updates. It also is not going to cover anything that has landed between the release of the blog post and the sync on April 30th, because time does not work that way:

- [docker 20.10.6](https://dev.getsol.us/R649:1031e15b6ef6ed49259517f345b7322efbafca5b)
- [drawing 0.8.0](https://dev.getsol.us/R4813:13c6d3a240bdccd74e5059cfd380bad73174c0dc)
- [ffmpeg: enable module files support via libopenmpt](https://dev.getsol.us/R742:5d5abb3cda389b3ca5cfc6bb31b81798a5a2f18c)
- [firefox 88.0](https://dev.getsol.us/R755:af0a1510f5e5454ff915f3e9fe32479997333ae3)
- [godot 3.3](https://dev.getsol.us/R1031:284bbc5a0773cd15f17f19a4cdd07abade26be14)
- [google-cloud-sdk 337.0.0](https://dev.getsol.us/R5024:a7441548278ad491b485526e07adaeeb87694996)
- [goverlay 0.5](https://dev.getsol.us/R5040:389bd6131ecaeff056243a020a071d7035ff201f)
- [gstreamer-1.0-plugins-bad: switch from libmodplug to libopenmpt](https://dev.getsol.us/R1085:5849e266dfdbc12e663e973b3f8863932b879e85)
- [element 1.7.25](https://dev.getsol.us/R2816:52e94e5a01febc0818385752cb5405b6d45e4c90)
- [kubectl 1.21.0](https://dev.getsol.us/R4352:9d1f34ad0ca261c802cc614d50b0f01a4b90f770)
- [lazygit 0.28.1](https://dev.getsol.us/R5033:8321a3e359ca8cd989dced6c49dcf345f4b27130)
- [libgtk-3 3.24.29](https://dev.getsol.us/R1098:e2b1198534aad8f6ee227dfd6d5539e4fcc9fa10)
- [libplacebo 3.120.2 & switch from glslang to shaderc](https://dev.getsol.us/R4851:1e019140bcfd9cf582693a809661562ae4af2d9f)
- [lxc 4.0.6](https://dev.getsol.us/R1997:e2e1b1b0ee117f6c4baf20e6d2972b56c218d96f)
- [mailspring 1.9.1](https://dev.getsol.us/R3879:7fdf330f5ab57a984031ee5ad0ce8530724885f3)
- [mariadb 10.5.9](https://dev.getsol.us/R2019:615a6231992c128aa38d7dd0f0a0d7f050aaaab4)
- [matcha-gtk-theme 20210409](https://dev.getsol.us/R4811:af82630fbc926eb79782c75506ad1ec3d700843b)
- [mgba 0.9.1](https://dev.getsol.us/R2070:921eaf5e630cdf662290bf399d548c1596b5a50b)
- [minikube 1.19.0](https://dev.getsol.us/R2075:115c145cbae7b1389ee79d74d401cec3b426a470)
- [mono 6.12.0.122](https://dev.getsol.us/R2091:396ceb8d19f332f461d855a958a93821bbb0df88)
- [network-manager 1.30.4](https://dev.getsol.us/R2155:2d83575c10a7fcab6265d6047cd50a99671e643c)
- [nvidia-glx-driver 465.24.02](https://dev.getsol.us/R2210:eca067c3b5c875963a34978c520f7fc9e47e245d)
- [paraview: Build against all possible system libraries](https://dev.getsol.us/R4568:decea6685df8e68049cc886c68e64d7e13e94aad)
- [podman 3.1.2](https://dev.getsol.us/R4790:c8db10d7452e6512b6c18a6126e31f86e31d5cc9)
- [rednotebook 2.22](https://dev.getsol.us/R3477:c2e5ebd3436c19cebb6dca96f5441df0bd0f61da)
- [solaar 1.0.6](https://dev.getsol.us/R2922:f1889db3004e5d3535e293b4e440616c46afd34d)
- [strawberry 0.9.3](https://dev.getsol.us/R4656:5647e66843d14c7ed6dda953a94a2febacb07f6a)
- [virtualbox 6.1.20](https://dev.getsol.us/R3133:40c9ca5ee1102a59a44c91eb79694db24e4d83f5)
- [vulkan 1.2.170](https://dev.getsol.us/R4419:8264d596322f002cfede6916b04b58acb963e7be)
- [warzone2100 4.0.1](https://dev.getsol.us/R3153:86987b01f7540f29aefa0623b4165b17425ccc2d)
- [wine 6.7](https://dev.getsol.us/R3169:7d8f5effe99a06f3972221c7c15c2598f236528f)
- [youtube-dl 2021.04.17](https://dev.getsol.us/R3304:398032d366009ad5e344b68bf25dd6c084953947)