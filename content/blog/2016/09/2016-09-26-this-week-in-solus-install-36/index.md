+++
author = "joshua"
categories = [
"News",
"Packages",
"TWIS"
]
date =  "2016-09-26T22:13:25Z"
title = "This Week in Solus -- Install #36"
url = "/2016/09/26/this-week-in-solus-install-36/"
+++ 

Welcome to the 36th installation of This Week in Solus. 

#### MATE

{{< relimg "Screenshot-at-2016-09-25-19-43-00.png" >}}

We're happy to report the landing of MATE 1.16.0 in the Solus unstable repository. This MATE release improved GTK3 support and improvements to MATE applications such as:

- caja now will always show the right-arrow button, now uses GtkAboutDialog.
- engrampa now having p7zip-rar support
- mate-polkit dropping GTK2 code.
- mate-terminal dropping GTK2 code and moving to using GtkAboutDialog.

Hats off to the MATE community for the fantastic release. For their full release announcement, [click here](http://mate-desktop.com/blog/2016-09-21-mate-1-16-released/).

#### Solus Packaging Series

The Solus Packaging video series has finally been redone to reflect ypkg 2.0 and all the various improvements to the packaging and submission process throughout the months. You can check out the playlist below!

#### Package Highlights

Here is a highlight of additions and updates to packages in the last week(ish), excluding all the MATE loveliness:

New:

- amule 2.3.2
- ethtool 4.6
- font-awesome-ttf 4.6
- glabels 3.4.0
- gnote 3.20.1
- nethogs 0.8.5
- nitroshare-desktop 0.3.3
- nxcomp 3.5.0
- rmlint 2.4.4
- platformio 3.0.1
- shotcut 16.09
- sl 5.02
- solaar 0.9.2
- veracrypt 1.18
- vsftpd 3.0.3
- x2goclient 4.0.5.1
- x2goserver 4.0.1.19
- xdo 0.5.3
- xtitle 0.3

Updated:

- adapta-gtk-theme 3.22.0.28
- arc-firefox-theme 49.20160919
- aria2 1.27.1
- audacious 3.8
- audacious-plugins 3.8
- elementary-icon-theme 4.0.1
- firefox 49.0
- focuswriter 1.6.1
- glances 2.7.1.1
- granite 0.4.0.1
- irssi: Update to 0.8.20 to resolve CVE-2016-7044 and CVE-2016-7045
- kernel: 
  - Enable CONFIG_B43_PHY_N per issue T651 
  - This option enables N generation (type 4) devices to work with our B43 driver.
  - Update to the latest upstream release, 4.7.5
  - Enable CONFIG_RCU_FAST_NO_HZ
  - Move to voluntary-preempt, enable BPF JIT, other micro-optimisations
- kodi 17.0-b2
- krita: Include Krita locales.
- lemonbar: Add xtitle as a rundep to draw tasklist.
- lmms: Add fltk, rebuild against Qt4 and GCC changes.
- lollypop 0.9.205
- mesalib: 
  - Sync with git
  - Update to latest upstream version for Intel i965 changes
- ncmpcpp: Enable outputs and visualizer.
- noise 0.4
- openal: Fix crash when toggling HRTF in Devil Daggers
- openssl: Update to 1.0.2i to address numerous CVEs
- pantheon-terminal 0.4
- paper-icon-theme 1.3.3
- python-babel: Fix locale support
- solus-hardware-config: Dropped tlp as a rundep to reduce boot times.
- sxhkd: Ensure xdo is a rundep
- telegram 0.10.7
- vim 8.0.0014
- VLC: Landed x265, realrtsp, libdvbpsi support.
- vulkan: 
  - Enable smoketest, vulkaninfo, and layers
  - Update to 1.0.26.0
- vscode 1.5.3
- xorg-driver-video-intel: Sync with git for cursor/ kaby lake, etc, fixes
- youtube-dl 2016.09.24
- ypkg: Sync with git for avx2 support.