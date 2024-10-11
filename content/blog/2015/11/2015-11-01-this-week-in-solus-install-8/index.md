+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2015-11-01T17:22:46Z"
title = "This Week in Solus -- Install #8"
url = "/2015/11/01/this-week-in-solus-install-8/"
+++ 
Welcome to This Week in Solus, Installation #8.

#### Release Candidate 1

We were happy to [announce](https://solus-project.com/2015/10/29/announcing-1-0-release-candidate-1/) Solus 1.0 Release Candidate 1 last Thursday. We have gotten an immense amount of feedback since then, bug reports to tackle, and lots of 
new package requests! We also can confidently say that we reached over **2000 downloads** of the RC1 ISO, across reported mirrors and BitTorrent, which is fantastic for a Release Candidate!

We've been hard at work fixing bugs and updating software, something that'll be highlighted below.

#### Firefox Fixes

We can fairly confidently state that we've resolved crashes in Firefox. We've opted to enable Firefox to use it's own cairo, as well as libpng and pixman. Alongside these fixes, we've pushed more enabling of HTML5 features, namely MediaSource, including 
MediaSource WebM specific features. In essense, this means HD, WebM-based video content is now playable under Firefox. This was primarily an issue for content on YouTube.

{{< relimg "Screenshot-from-2015-10-30-19-59-53.png" >}}

#### Package Updates

As per the usual, we'll break down the package changes since last week based on contributor and if the package is new or updated. We'll also have a highlights section, so it is clear what the more major items are!

##### Highlights from everyone:

- atom 1.1.0        
- doflicky 3        
- dracut: Garbage collect old initramfs files        
- ekiga 4.0.1        
- evolve-sc: Include select/deselect fix        
- firefox: Enable more HTML5 features and reduce crashing        
- gnome-contacts 3.16.2        
- gnome-mpv 0.6        
- grub-customizer 4.0.6        
- kernel: Hopefully enable touchpoints and other such wonders        
- kodi 15.2        
- mercurial 3.5.2        
- mpv 0.12.0        
- nodejs 5.0        
- qbittorrent 3.2.5        
- remmina: 1.1.2        
- rust 1.4.0        
- simplescreenrecorder 0.3.4        
- xfsprogs 4.2.0

##### Ikey Doherty

###### Updated

- arc-firefox-theme: Ensure Firefox is a rundep        
- atkmm: Rebuild against C++ ABI change        
- cairomm: Replace libcairomm* packages        
- dracut: Garbage collect old initramfs files        
- evolve-sc: Include select/deselect fix        
- firefox: Enable more HTML5 features and reduce crashing        
- gparted: Emulate how Arch pkexec launch gparted, so it works on Solus        
- gtkmm: Rebuild against C++ ABI change        
- inkscape: Rebuild against C++ ABI change        
- kernel: Hopefully enable touchpoints and other such wonders        
- mesalib 11.0.4        
- os-installer: Include an override to stick launcher on the panel by default        
- pangomm: Rebuild against C++ ABI change        
- PHP: Fixed php.ini symlink issue        
- pip: Unbreak /usr/bin/pip

 ######  New

- doflicky 3        
- goocanvas1 1.0.0        
- goocanvas 2.0.2        
- pygoocanvas 0.14.1

 ##### Justin Zobel

 ###### Updated

- hplip: Fix hplip dependencies        
- gnome-mpv 0.6        
- kodi 15.2        
- lightzone 4.1.3        
- lollypop: Additional rundeps        
- mpv 0.12.0        
- python-beautifulsoup4: Ensure python3 build        
- simplescreenrecorder 0.3.4

 ###### New

- autoconf-archive        
- grub-customizer 4.0.6        
- libidl 0.8.14        
- libvncserver 0.9.10        
- mdadm 3.3.4        
- python-reportlab 3.2.0        
- python-wikipedia 1.4.0        
- remmina: 1.1.2        
- xfsprogs 4.2.0

 ##### Joshua Strobl

 ###### Updated

- atom 1.1.0        
- nodejs 5.0        
- qtpass 1.0.3        
- rust 1.4.0        
- tlp: Fix systemd file inclusion        
- youtube-dl 2015.10.24        
- zopfli 1.0.1

 ###### New

- ekiga 4.0.1        
- gnome-contacts 3.16.2        
- mercurial 3.5.2        
- opal 3.10.10        
- ptlib 2.10.10        
- qbittorrent 3.2.5        
- qjson 0.8.1