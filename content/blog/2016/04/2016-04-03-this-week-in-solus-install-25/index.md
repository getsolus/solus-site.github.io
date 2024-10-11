+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"TWIS"
]
date =  "2016-04-03T23:15:02Z"
title = "This Week in Solus -- Install #25"
url = "/2016/04/03/this-week-in-solus-install-25/"
+++

Welcome to This Week in Solus, installation#25. If you haven't already read our [big announcement on Budgie 10.2.5](https://solus-project.com/2016/03/27/budgie-10-2-5-released/), stop reading this post and catch up. 

#### Budgie

On the heels of Budgie 10.2.5, Ikey has landed further improvements to Budgie. These improvements have already landed in Solus and will be available in the next Budgie version:

-  We now accommodate GNOME Terminal notifications in Raven.

-  Improvements have been made to the Icon Tasklist: 
  - Atom and Telegram are forbid from overriding their icons. This keeps iconography consistent across your icon theme and what Budgie shows.
  - Icons are now non-focusable. Apparently Ikey had fun with this when taking screenshots.

#### Packaging Improvements

While undoubtedly Solus is the easiest operating system to package for, that doesn't mean we can't continue to make it better. Ikey spent time this week improving the experience of packaging.

1. Previously, you would need to use a component.xml file to define which component the package would belong to (whether that be desktop, graphics, programming, etc). Now, you are able to define that right in our package.yml file. Less files, less work, less 
for you to have to remember! I'd call that a win.
2. But you know what is a bigger win? Multilib. Ikey has spent time improving ypkg to separate out our build environments for 32-bit packages and normal, x86_64 builds. You no longer need to perform make cleans to ensure the environment is cleaned up 
before doing a build for the other architecture.
3. Lastly, we now have a new (**optional, though use is obviously encouraged**) section in our package.yml, called "check". Here is where you typically run a make check, which runs tests and validation against the built software.

#### Package Updates

Here is some highlights of package updates during the last week(ish):

New:

- breeze-cursor-theme 5.6.1
- breeze-snow-cursor-theme 5.6.1
- [font-ubuntu-ttf](https://git.solus-project.com/packages/font-ubuntu-ttf/)
- [gnome-music 3.18.2](https://git.solus-project.com/packages/gnome-music/)
- gom 0.3.2 -- Used in conjunction with updated grilo-plugins to enable playback in Gnome Music and Totem
- mypaint 1.2.0

Updated:

- alsa updates: 
  -  alsa-lib 1.1.1 -- Fixes PCM issues
  -  alsa-plugins 1.1.1
  -  alsa-utils 1.1.1 -- Fixes alsamixedr, alsactl issues
- atom 1.6.2
- budgie-desktop: Sync with git for all the shiny
- gnome-calendar 3.18.3
- gnumeric 1.12.28
- gnome-terminal improvements: 
  -  Fix new tab icon
  -  Imported Fedora's notification + transparency patch
- grilo 0.2.15
- grilo-plugins 0.2.17 & rebuild against GOM for bookmark support
- gvfs 1.28.0 -- Addresses mount crashes from externals and network, MTP issues, fuse crashes.
- hal-flash 0.3.3
- libgoffice 0.10.28
- libvte 0.42.5 -- Incorporated patch for Terminal notifications
- llvm 3.8.0
- mkvtoolnix 9.0.1
- nodejs 5.10.0
- php 7.0.5
- postgresql 9.5.2
- qbittorrent 3.3.4
- ruby 2.2.4 -- Addresses CVE-2015-7551
- smplayer 16.4.0
- tracker -- Enabled gstreamer tag, ffmpeg, totem-pl-parser. Ensures we index media content.
- udisks 2.1.7
- vertex-gtk-theme 20160329
- ypkg 7.0

{{< altimg "http://i.giphy.com/Yftg1iN1v6qnC.gif" >}}