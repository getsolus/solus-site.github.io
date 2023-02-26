---
title: "Plasma and Solus 4 Updates | The Roundup #4"
author: "joshua"
categories:
- news
- roundup
date: 2018-02-14T18:34:49+02:00
featuredimage: "/kernel_4_15_3.jpg"
url: "/2018/02/14/plasma-and-solus-4-updates"
---

Welcome to The Roundup #4, your bytes of Solus news. In this roundup, we're talking updates to Kernels, Plasma, various items for Solus 4, and more!
<!--more-->

## New Mesalib and Kernels

Today we've [updated our Mesalib to 18.0.0 RC4](https://dev.solus-project.com/R2066:89d15ea723cbe045cf7d780c146e32bf231c864e), which includes a plethora of RADV fixes as well as Intel i965 OpenGL and Vulkan updates.

Additionally, we updated our LTS and stable "current" kernels to [4.9.81](https://dev.solus-project.com/R1966:576ccd1a33a9306dc7587a70725cbd24a042b5cd) and [4.15.3](https://dev.solus-project.com/R3571:52457ef36245301b4497c34aaf4998c200f18700) respectively. On the current kernel front, we've enabled AMDGPU DC support. If you'd like to read more, I welcome you to check out [this Phoronix article](https://www.phoronix.com/scan.php?page=news_item&px=AMDGPU-DC-Accepted).

## Plasma

Peter has been hard at work continuing to improve the Plasma experience on Solus and issued an ISO earlier this week to [Patrons](https://patreon.com/solus) with a multitude of fixes, such as:

- SDDM integration with Optimus has been fixed with [linux-driver-management 1.0.3](https://github.com/solus-project/linux-driver-management/releases), fixing Xsetup with newer SDDM so we have a correctly initialized environment and that we return the exit code of our helper.
- Missing XDG packages (namely `xdg-utils` and `xdg-user-dirs`) are now present and thus XDG Directories like Pictures are now properly constructed. xdg-user-dirs-update is [now a systemd unit](https://dev.solus-project.com/R3215:d2377272c5723bfa90f00cc2e9d89a07d584d2ae), rather than being XDG Autostart application.
- system-wide locale is [now exported for login](https://dev.solus-project.com/R420:bd9e6735c5ee996cab70490272b3fd43d56f15d9), which should hopefully resolve Plasma locale issues.

Since the issuing of the latest ISO, Peter has updated KDE Frameworks 5 to the latest [5.43.0](https://www.kde.org/announcements/kde-frameworks-5.43.0.php) release, which introduces fixes and improvements such as:

- Baloo
  - Fix KIO Slave tagged folder deep copies. This breaks listing tagged folders in the tag tree, but is better than broken copies
- Breeze Icons
  - Add emblem-shared colored icon
  - Add missing Krusader icons for folder sync
  - Make weather-fog day/night neutral
  - Update Dropbox systemtray icon theme
- KCompletion
  - Fix incorrect emission of textEdited() by KLineEdit
- KConfig
  - Use `Ctrl+Shift+`, as the standard shortcut for "Configure <Program>"
- KIO
  - Allow to filter places based on alternative application name
  - Improved error handling in file ioslave
  - Multiple performance improvements
  - Repair copying file to VFAT without warnings
- KNotification
  - The "Run Command" notification action has been fixed
- Plasma Framework
  - Default tooltip: Fix sizing
  - Fix RTL appearance for ComboBox
  - Plasma Dialog: Call window effects only if visible

## Solus 4

snapd integration for Solus 4 has been deferred to unblock the Solus 4 release. We will instead land the relevant integration in a future update to the Software Center as and when some pending feature-work has been fully integrated upstream.

The Software Center for Solus 4 will still introduce a fresh design and integrate all the work we've done [in Linux Driver Management](/2018/01/26/linux-driver-management-1-0-released) to provide an improved hardware support and driver installation experience. This Software Center will also utilize the plugin-based architecture that Ikey had worked on during his time at Ubuntu Rally last September, and this will simplify the process of implementing and enabling snapd integration in a future update.

So aside from the Software Center, what further items do we have for the release of Solus 4?

1. Enabling Hotspot support with `hostapd`
2. Budgie 10.4.1 Release
3. Brisk Menu Release
4. UI refreshing for our default MATE experience
5. Enabling an **experimental** Wayland session for GNOME. Wayland **will not** be the default for Solus Budgie or Solus GNOME, however GNOME users will be able to install a separate session package if they wish to test and experiment with Wayland support. During my testing, I have not found the quality of the GNOME + Wayland to be sufficient enough to be provided as a default experience for our users, and I largely concur with [Canonical's reasoning for deferring it as a default for Ubuntu as well](https://insights.ubuntu.com/2018/01/26/bionic-beaver-18-04-lts-to-use-xorg-by-default/).


## Package Updates

Here's a highlight of some packages that have been updated or included in the last few days (excluding all the KF5 updates noted in the Plasma section):

- New
  - [plex-media-player 2.4.1](https://dev.solus-project.com/R4050:30ce81aca259167e97db79d4607d720a4d6fa15e)
- Updated
  - adapta-gtk-theme: [Update to 3.93.0.119](https://dev.solus-project.com/R338:ce964eac7c509470ec229841c3db00275a2cb674)
  - asciinema: [Update to 2.0.0](https://dev.solus-project.com/R387:f36dac70d700a2153ba269c48bfdff32148f12d8)
  - calibre: [Update to 3.17.0](https://dev.solus-project.com/R485:25da87d9022f5870a0d5afafb3ed4c2a15593f9b)
  - freeplane: [Update to 1.6.13](https://dev.solus-project.com/R846:cf81b6979d0810eadfc636fecdbd0e7b59c3853d)
  - gdbm: [Update to 1.14.1](https://dev.solus-project.com/R879:2a6d61937c30da3f1a31afddbfc73cc782a977dc)
  - gnome-session: [Make sure Budgie/GNOME users have full XDG toolset](https://dev.solus-project.com/R990:1eb584995d87912e45378119f2bfec5882e95776)
  - guake: [Update to 3.0.4](https://dev.solus-project.com/R1116:0135301c5f8046cf62eebd1dabba4cc086305855)
  - mate-power-manager: [Backport HiDPI Fixes](https://dev.solus-project.com/R2038:34bc252f55ad68fcb8149baf76c688ffbae8ff36)
  - mate-settings-daemon: [Backport HiDPI Fixes](https://dev.solus-project.com/R2042:47689f16305fddb5fbc41c256c25dc248f152bc6)
  - mate-session-manager: [Make sure MATE users have full XDG toolset](https://dev.solus-project.com/R2041:8803b5bd5cb1580b84744c9263df92c06f326ec8)
  - opera-stable: [Update to 51.0.2830.26](https://dev.solus-project.com/R2263:2b4f4e375747cb1fc98184586990da8ad6d87066)
  - papirus-icon-theme: [Update to 20180214](https://dev.solus-project.com/R2298:ed879a1af36e9c9cb83bec3f162e0bf3553d10c6)
  - peek: [Update to 1.2.2](https://dev.solus-project.com/R2313:8dbcf39c17c7ca330278af6e2c0bade7a8818af3)
  - php: [Update to 7.1.14](https://dev.solus-project.com/R2424:7ad5afd19bd2408e1e5ed1e0945db73382491e78)
  - seafile-client: [Update to 6.1.5](https://dev.solus-project.com/R2881:66d7981f06b36f3f11ac3e41d5517fa826659274)
  - seafile: [Update to 6.1.5](https://dev.solus-project.com/R2880:17c0ffe73fc81d69010917c32c94793ff8646fba)
  - syncthing: [Update to 0.14.44](https://dev.solus-project.com/R2989:941b28a07da8dcb138d71eda2d6d805e6aaa3d80)
  - teamspeak3: [Update to 3.1.8](https://dev.solus-project.com/R3011:cb91d45a1fd480a07619c52a882ae48b2630c1d8)
  - tlp: [Update to 1.1](https://dev.solus-project.com/R3046:5f9317ef76289ec3ce123bfcc270bc478fd82739)
  - v4l-utils: [Update to 1.14.2](https://dev.solus-project.com/R3105:4e21c169679d93bd9006728a6ae35cc067347cd7)
  - vala-panel-appmenu: [Add patch to fix MATE applet expand](https://dev.solus-project.com/R3109:18a9a2918fe090270c21c25377f0a126044a2d45)
  - vivaldi-snapshot: [Update to 1.15.1099.3](https://dev.solus-project.com/R3138:3e59bcac038a860cdb97c751530f18b45f31d9d3)
  - vscode: [Update to 1.20.1](https://dev.solus-project.com/R3148:d33787f66067b35c4e2ec90c54ddaebf8f8a4fdb)
  - yubikey-manager: [Update to 0.6.0](https://dev.solus-project.com/R3307:48d848a6e93cf4fb4f01395f0f4923281155ed14)
