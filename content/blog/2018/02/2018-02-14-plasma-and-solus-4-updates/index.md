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

Today we've updated our Mesalib to 18.0.0 RC4, which includes a plethora of RADV fixes as well as Intel i965 OpenGL and Vulkan updates.

Additionally, we updated our LTS and stable "current" kernels to 4.9.81 and 4.15.3 respectively. On the current kernel front, we've enabled AMDGPU DC support. If you'd like to read more, I welcome you to check out [this Phoronix article](https://www.phoronix.com/scan.php?page=news_item&px=AMDGPU-DC-Accepted).

## Plasma

Peter has been hard at work continuing to improve the Plasma experience on Solus and issued an ISO earlier this week to [Patrons](https://patreon.com/solus) with a multitude of fixes, such as:

- SDDM integration with Optimus has been fixed with [linux-driver-management 1.0.3](https://github.com/solus-project/linux-driver-management/releases), fixing Xsetup with newer SDDM so we have a correctly initialized environment and that we return the exit code of our helper.
- Missing XDG packages (namely `xdg-utils` and `xdg-user-dirs`) are now present and thus XDG Directories like Pictures are now properly constructed. xdg-user-dirs-update is now a systemd unit, rather than being XDG Autostart application.
- system-wide locale is now exported for login, which should hopefully resolve Plasma locale issues.

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
  - plex-media-player 2.4.1
- Updated
  - adapta-gtk-theme: Update to 3.93.0.119
  - asciinema: Update to 2.0.0
  - calibre: Update to 3.17.0
  - freeplane: Update to 1.6.13
  - gdbm: Update to 1.14.1
  - gnome-session: Make sure Budgie/GNOME users have full XDG toolset
  - guake: Update to 3.0.4
  - mate-power-manager: Backport HiDPI Fixes
  - mate-settings-daemon: Backport HiDPI Fixes
  - mate-session-manager: Make sure MATE users have full XDG toolset
  - opera-stable: Update to 51.0.2830.26
  - papirus-icon-theme: Update to 20180214
  - peek: Update to 1.2.2
  - php: Update to 7.1.14
  - seafile-client: Update to 6.1.5
  - seafile: Update to 6.1.5
  - syncthing: Update to 0.14.44
  - teamspeak3: Update to 3.1.8
  - tlp: Update to 1.1
  - v4l-utils: Update to 1.14.2
  - vala-panel-appmenu: Add patch to fix MATE applet expand
  - vivaldi-snapshot: Update to 1.15.1099.3
  - vscode: Update to 1.20.1
  - yubikey-manager: Update to 0.6.0
