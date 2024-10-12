+++
author = "joshua"
categories = [
"News",
"Packages",
"TWIS"
]
date =  "2016-08-31T09:15:47Z"
title = "This Week in Solus -- Install #34"
url = "/2016/08/31/this-week-in-solus-install-34/"
+++
Welcome to the 34th installation of This Week in Solus. 

{{< altimg "https://i.giphy.com/OCu7zWojqFA1W.gif" >}}

#### Creativity is getting turned up a notch

Let's start out with the couple applications that have landed as of last week, that have been long-standing requested items within Solus, however due do them requiring varies bits of KDE Frameworks 5, they were frankly set off to the side awaiting 
someone that enjoys diving down rabbit holes in search of adventure.

That's right folks, we have **Kdenlive and Krita**. Thanks to the hard work of community member Peter a.k.a sunnyflunk, you're now able to unleash more of your creativity or enjoy editing on unarguably one of the best video editors on Linux.

{{< relimg "Screenshot-from-2016-08-25-17-52-00.png" >}}

Kdenlive is currently being put through its paces and I've ensured that we enable H.265 under Solus (**enabling it in both ffmpeg and gstreamer-1.0-plugins-bad**) with 8-bit, 10-bit, and 12-bit color depths. So far some editing and effects have been 
tested as well as exporting in WebM (VP9), H.264 and H.265. We also ship breeze-icons to ensure iconography is utilized in Kdenlive. Next step is to make these applications look sexier with GTK.

#### GAMES!

{{< relimg "all-the-games.jpg" >}}

Alongside our Steam with a native runtime and Lutris, we have a fantastic selection of open source games, and they've only been expanding with the hard work of community member Bryan, a.k.a. DataDrake. After a few Game-Fests, we're now providing a 
broader range of arcade, adventure / RPG, and racing games!

In terms of arcade games, we now have:

- Dustrac -- A tile-based, cross-platform 2D racing game
- Endless Sky -- A sandbox-style space exploration game similar to Elite, Escape Velocity, or Star Control.
- OpenJazz -- Jazz Jackrabbit reborn on Linux.

{{< relimg "endless-sky.png" >}}

In terms of adventure / RPG games, we now have:

- Angband -- Angband is a free, single-player dungeon exploration game
- Zelda -- Mystery of Solarus XD (**This is a parody of Mystery of Solarus DX)**
- Zelda -- Return of the Hylian SE -- a remake of the original Zelda Return of the Hylian

#### i3

{{< relimg "2016-08-31-110305_1366x768_scrot.png" >}}

Traditionally, Solus has followed a single-desktop policy. This has allowed us, over time, to continuously refine our base system and practices, without having to make compromise. We're now at a point where our core system has a very distinct and 
uncompromising shape. It must be remembered that as a whole, we build a complete Linux-based operating system, and as such our goals encompass much more than **just** the frontend.

Of late, it is these goals that have become more and more attractive to users of other Linux distributions, who have stated that their blocker in using Solus is their requirement of a power-user orientated UI. Budgie, on the other hand, tries to take a more 
simplistic and user-friendly approach to desktop management. We don't believe in a one-size-fits-all approach at Solus, a core part of the reason why Solus isn't a generic OS available for multiple architectures or verticals. We focus on the desktop, it is up 
to the user how and with what they make that desktop experience. As always, we continue to provide our **sane defaults**, coupled with a sane architecture and project-specific goals, whilst retaining the users freedom to ensure they have the best possible 
desktop experience, for them, period.

This week we landed the tiling window manager i3, specifically the i3-gaps fork, to provide a power-user oriented user experience, and out-of-the-box our i3 provides:

- Integration of function keys, including: 
  - Brightness controls which utilize xbacklight
  - Media playback controls which utilize playerctl
  - Print (typically PrntScrn) which utilizes scrot.
  - Volume controls which utilize alsactl
- Shortcut for quickly locking your screen. This can be done using $mod+Shift+S and triggers i3lock.
- Usage of gaps (as shown in the screenshot above) including window titles being automatically hidden.

Note that all the above is opt-in. If i3-config-wizard sees that you already have provided i3 configuration, it won't prompt you to utilize ours, and you can always change to it later!

We've also landed lxappearance so you can easily change the GTK theming and further integration improvements are planned in the future.

#### Package Highlights

Here is a highlight of package updates (excluding items such as KDE Frameworks 5):

New:

- ack 2.14
- angband 4.0.5
- apache-ant 1.9.7
- asciinema 1.3.0
- asunder 2.7
- breeze-icons 5.25.0
- cherrytree 0.37.3
- dmenu 4.6
- dosbox 0.74
- dustrac 1.11.0
- electrum 2.6.4
- endless-sky 0.9.2
- font-fira-ttf 4.202
- gaupol 0.92
- geos 3.5.0
- dleyna-renderer 0.5.0
- gcompris 15.10
- git-cola 2.8
- gnome-dictionary 3.20.0
- gnome-logs 3.20.1
- gnome-pie 0.6.9
- gnome-sound-recorder 3.20.2
- hugo 0.16.0
- i3 4.12
- i3lock 2.8
- i3status 2.1
- kdenlive 16.08.0
- klavaro 3.02
- krita 3.0
- lxappearance 0.6.2
- openjazz 160214
- playerctl 0.5.0
- pspp 0.10.2
- qgis 2.16.1
- qt-creator 4.0.3
- ranger 1.7.2
- sc-controller 0.2.16
- scipy 0.18.0
- sqlitebrowser 3.8.0
- solarus-quest-editor
- telegram 0.10.1
- trackma 0.6.1
- tuxmath 2.0.3
- tuxpaint 0.9.22
- vorbis-tools 1.4.0
- x265 2.0
- xbacklight 1.2.1
- xboxdrv 0.8.8
- zelda-roth-se 1.1.0
- zstd 0.6.2
- zsdx 1.11.0
- zsxd 1.11.0

Updated:

- atom 1.9.9
- bitcoin 0.13.0
- bleachbit 1.12
- calibre 2.65.1
- feedreader 1.6.1
- ffmpeg: Rebuild with x265
- flash-player-nonfree 11.2.202.632
- filezilla 3.21.0
- firefox: 
  - Update to 48.0.2
  - Disable libevent in config.
- fotoxx 16.08.1
- gegl3: Enable jasper / raw support for GNOME Photos
- ghostwriter 1.4.2
- glfw 3.2.1
- gjs 1.45.4
- gstreamer-1.0-plugins-bad: Drop component.xml, rebuild with x265
- htop 2.0.2
- kernel 4.7.2 and raise NCPU to 48
- kodi 17.0b1
- lutris 0.3.8
- lyx 2.2.1: Enable hunspell and use system boost
- mpv 0.20.0
- mutt 1.7.0
- nautilus: Introduce upstream patch for fixing icon chooser dialog
- obs-studio: Ensure we declare the OBS version, since that shows in the title
- openjdk-8: Complete the bootstrap with a native clean build
- php 7.0.10
- polari 3.20.3
- quassel: Enable SSL, add WebKit support via Qt5WebKit, drop unnecessary zlib pkgconfig.
- rawtherapee: Use system theme by default
- rhythmbox 3.4
- rust 1.11.0
- shotwell 0.23.5
- tlp: 
  - Update to 0.9, disable default of USB_AUTOSUSPEND=1
  - Disable audio power saving on battery
- wine: 
  - Convert to a full WoW64 build
  - Update to WINE staging: 1.9.17
  - youtube-dl 2016.08.28
