+++
author = "joshua"
categories = [
"News",
"Packages",
"TWIS"
]
date =  "2016-05-24T03:29:14Z"
title = "This Week in Solus -- Install #29"
url = "/2016/05/24/this-week-in-solus-install-29/"
+++ 
Welcome to the 29th installation of This Week in Solus. 

#### Hackfest 1.2

On the 21st and 22nd of this month, Ikey and myself had the first Solus hackfest, "Hackfest 1.2". The main goals of the Hackfest were:

1. Successfully running Steam with our own runtime.
2. Refining the messaging on the site, including implementing consistent branding and updating content such as the [Help](https://help.getsol.us/) page and
 [information on Solus](https://getsol.us/solus/about).

The Hackfest went on for roughly 11 hours across both days, with the recordings below! **Note: Not intended for younger audiences. Certainly PG13 at times.**

{{< youtube "wA5GilQ6Hm0">}}

{{< youtube "_6VJ50ST82E">}}

I'm happy to say that Ikey's goal for a native Steam runtime were accomplished, which let's be honest, that was the major thing we were all hoping for in the Hackfest, right?

The implications of a native Steam runtime are pretty serious too. Rather than having non-optimized Ubuntu libraries from Steam's runtime, we are able to provide optimized libraries for a **more performant** gaming experience than **any** other 
"tier one" operating system. There is still work to be done on the optimization front, but we're confident in this first step.

{{< relimg "Screenshot-from-2016-05-23-00-46-16.png" >}}

In addition to the native Steam runtime, some bug squashing happened as well:

- Disk Usage Analyzer (Baobab) no longer handles the inode/directory mime type. Basically this means you'll no longer be opening up Disk Usage Analyzer when you really meant to open Nautilus. This could happen across a wide range of software, such as 
Google Chrome, Veracrypt, Transmission, etc. Bug #734
- Steam Controller support now exists. Bug #729
- A multitude of contribute patches have landed: 
  - Bug #502 -- PATCH lsof
  - Bug #518 -- Patch python-virtualenvwrapper -- Landed as virtualenvwrapper
  - Bug #645 -- New package: ninja-build -- Landed as ninja
  - Bug #658 -- PATCH lshw
  - Bug #659 -- Patch SDL_ttf -- Landed as sdl-ttf
  - Bug #661 -- Patch sdl2_gfx -- Landed as sdl2-gfx
  - Bug #662 -- Patch xvidcore -- Landed as xvidcore
- ffmpeg now is enabled with xvid
- Bug #669 -- Patch sdl2-net
- Bug #670 -- Patch mcomix
- Bug #674 -- Patch grisbi
- Bug #716 -- New package : paper-icon-theme
- Bug #717 -- New package : paper-gtk-theme
- Bug #739 -- Patch quazip
- Bug #754 -- pip update to 8.1.1 and convert to ypkg2 -- Was actually updated to 8.1.2
- Bug #786 -- patch ghostwriter
- Bug #801 -- Patch fping3
- Bug #819 -- Request HomeBank

#### Package Updates

To say there was a lot of package updates this week would frankly be an understatement. Here are some highlights (**not including all the multilib enablement**):

New:

- fping 3.13
- ghostwriter 1.3.1
- grisbi 1.0.0
- homebank 5.0.7
- lsof 4.89
- mcomix 1.2.1
- ninja 1.7.1
- quazip 0.7.2
- sdl-gfx 2.0.25
- sdl-ttf 2.0.11
- sdl2-gfx 1.0.1
- sdl2-net 2.0.1
- virtualenvwrapper 4.7.1
- xvidcore 1.3.4

Updated:

- adapta-gtk-theme 3.21.1.215
- atom 1.7.4
- corebird 1.2.2
- Ensure brasero uses dvd_rw-tools
- ffmpeg -- Enable xvid
- git 2.8.3
- lollypop 0.9.107
- mercurial 3.8.2
- obs-studio 0.14.2
- paper-gtk-theme 2.0.1
- paper-icon-theme 1.3.2
- pip 8.1.2
- steam -- Ermagerd all the new runtime dependencies
- telegram 0.9.49
- youtube-dl 2016.05.21.2
