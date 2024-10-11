+++
author = "joshua"
categories = [
"News",
"Packages",
"Security",
"TWIS"
]
date =  "2016-10-09T19:45:00Z"
title = "This Week in Solus -- Install #37"
url = "/2016/10/09/this-week-in-solus-install-37/"
+++ 

Welcome to the 37th installation of This Week in Solus. 

{{< altimg "https://media.giphy.com/media/IMXrsmoW5kuxq/giphy.gif" >}}

#### Linux 4.8.1

{{< relimg "Screenshot-from-2016-10-08-00-23-15.png" >}}

This week Linux 4.8.1 landed in Solus, in addition to numerous changes and improvements, such as:

- We enabled CONFIG_HARDENED_USERCOPY which prevents a lot of heap overflow exploits (so a further level of protection against 0-day exploits in the future until patches come forward). 
[You can read more here](https://www.phoronix.com/scan.php?page=news_item&px=Hardened-Usercopy-Linux-4.8).

- We enabled [virtio-vsock](http://qemu-project.org/Features/VirtioVsock) which enables native sockets over a hypervisor, which will be useful for software such as spice in the future.

- We now have support for the Microsoft Surface Pro 3's touchscreen.

- We now have support for the "Intel Virtual Button", which is a required driver for some newer hardware, notably the power button on the new Dell XPS 13.

#### Libreoffice 5.2.2.2

{{< relimg "Screenshot-from-2016-10-08-23-19-22-1.png" >}}

LibreOffice 5.2.2.2 has landed in the repo. LibreOffice 5.2 brings a lot of fantastic improvements, such as:

- A new Single Toolbar mode is available to provide a less cluttered UX.
- Calc: 
  - Currency drop-down list attached to currency toolbar icon makes it easy to choose and use desired currency format."
  - RAWSUBTRACT and Forecast.ETS functions have been added.
- Impress: 
  - "Speed drop down menus with presets are replaced with comboboxes with editable values."
  - You now can get "quick access to slide and page properties in a new 'Slide' and 'Page' content panel in the 'Properties' sidebar tab."
- GUI: 
  - Improved resizing behavior for images, videos and OLE objects: Dragging a corner will resize proportionately while dragging an edge will resize unproportionately.

For more information, check out LibreOffice's comprehensive list of changes [here](https://wiki.documentfoundation.org/ReleaseNotes/5.2). **They also have some great vids!**

#### Other Goodies

Some other goodies have landed in Solus this week, such as:

- RADV, the open source Radeon Vulkan driver, is now supported in Solus, as well as swr driver (AVX2).
- systemd user session support is now enabled.

#### Package Highlights

Here is a **highlight** of new and updated packages in Solus:

New:

- bam 0.4.0
- bzflag 2.4.6
- catfish 1.4.2
- flightgear 2016.3.1
- fritzing 0.9.3b
- fritzing-parts 0.9.3b
- gnome-sudoku 3.20.5
- gradle 3.1.0
- openmw 0.40.0
- openra 20160508
- simgear 2016.3.1
- teeworlds 0.6.3
- vagrant 1.8.6

Updated:

- adapta-gtk-theme 3.22.1.12
- arc-gtk-theme 20161005
- budgie-desktop: Sync with git to fix systemd journal spam
- bullet3: Enable extra libs
- c-ares: Update to 1.12.0 to address CVE-2016-5180
- cherrytree 0.37.5
- corebird 1.3.3
- electrum 2.7.4
- elixir 1.3.4
- filezilla 3.22.1
- firefox 49.0.1
- git 2.10.1
- gnome-twitch: Fixes the issue with getting followers list
- gnuchess 6.2.3
- gnutls 3.4.15
- hexchat 2.12.2
- imagemagick 7.0.3
- kernel 4.8.1
- kodi 17.0 beta 3
- libarchive 3.2.1
- librecad 2.1.3
- libreoffice 5.2.2
- libX11 1.6.4
- libXfixes 5.0.3
- libXi 1.7.7
- libXrandr 1.5.1
- libXrender 0.9.10
- libXtst 1.2.3
- libXv 1.0.11
- libXvMC 1.0.10
- llvm 3.9.0
- lollypop 0.9.210
- mesalib: Sync with git commit 4d7d9825f34a31368e63c493c28d57c8f84a984c
- mkvtoolnix 9.4.2
- mercurial 3.9.2
- mumble 1.2.17
- neofetch 1.8.1
- octave:Added additional libs, fixed docs
- openssl 1.0.2j
- paper-icon-theme 1.3.4
- pinta 1.7
- retroarch: Enabled alsa and xset
- q4wine 1.3.3
- scummvm: Update to 1.8.1 and enable flac, OpenGL, JPEG, MPEG2, FAAD, PNG, Theora, Vorbis, MAD. Also enables engine for Wintermute.
- syncthing 0.14.8
- synergy 1.8.3
- systemd: Fix PAM configuration to enable systemd user
- telegram 0.10.11
- texinfo 6.3
- texstudio 2.11.2
- thunderbird 45.4
- tmux 2.3
- vim 8.0.0027
- weechat 1.6
- wine 1.9.20
- x265 2.1
- x2goserver: Fixed installation of .service file
- xgamma 1.0.6
- xz 5.2.2
- zathura 0.3.6

{{< altimg "https://media.giphy.com/media/66hrbnBs4PYha/giphy.gif" >}}