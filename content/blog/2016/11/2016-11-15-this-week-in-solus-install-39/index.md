+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-11-15T20:41:02+02:00"
featuredimage = "/firefox-50.jpg"
title = "This Week in Solus - Install #39"
url = "/2016/11/15/this-week-in-solus-install-39/"
+++

Welcome to This Week in Solus, install #39.

## Announcing Partnership with Unixstickers

{{<relimg "laptop-solus-sticker-small.jpg" >}}

We recently announced our partnership with Unixstickers to provide high-quality Solus stickers for our community and fans. If you have yet to read about it, click 
[here](https://solus-project.com/2016/11/15/solus-announces-partnership-with-unixstickers).

## Roadmap

We know many of you have been curious to hear our plans for the future, now that Solus 1.2.1, and today we're ready to share some details.

### First ISO Snapshot

With the [latest xorg-server released](https://lists.x.org/archives/xorg-announce/2016-November/002737.html), we will be putting out our first ISO snapshot soon. This ISO snapshot will feature:

- Kernel 4.8.8 and enabling support for sound on some Bay Trail laptops by enabling `CONFIG_SND_SOC`, `CONFIG_SND_SOC_INTEL_BYT_MAX98090_MAC` (*rolls right off the tongue, doesn't it*), and more.
- An upgraded xorg-server, libinput and associated xorg-driver-input-libinput package
- Our proprietary drivers will reflect the latest versions released by the appropriate vendors, such as NVIDIA.

### Linux Driver Management

Upon the release of our first ISO snapshot, we will shift to development of [Linux Driver Management](https://github.com/solus-project/linux-driver-management), our modern distro-agnostic solution for detection 
and configuration of drivers. This work will enable Optimus support as well as open the door for future, dynamic switchable graphics.

### Budgie 11

Once we are confident in the quality and initial functionality of Linux Driver Management, we will set our sights on Budgie 11 development and enhancing its architecture. 
[We have already expressed interest in numerous new features, functionality, and changes for Budgie 11](https://github.com/budgie-desktop/info), such as (*but not limited to*):

- Improving accessiblity and ensure all components are reusable, ATK registered, and don't break a11y.
- Budgie Panel and Raven will use separate, versioned trees, and individual plugins will be appropriately namespaced.
- Settings will be moved to a new Budgie Settings application, which we intend to be a replacement for Gnome Control Center. 
- Budgie will see the introduction of multi-monitor panel support, which the ability to drag reorder widgets, lock the panel, permit the panel on any edge, intellihide, and more.
- Raven will be resizable, switch to a "drawer mode" so it may overlay panels, support widgets such as RSS and Weather, and support our plans for richer, actionable notifications.
- Such richer, actionable notifications will be grouped, with the ability to dismiss them on a per-notification or per-group basis. And when you want a bit of peace and quiet, you'll be able to turn on "Quiet Mode" (a.k.a Do Not Disturb). 
Perfect for studying, watching movies, gaming, and more!

That is just the tip of the iceberg for what we have planned for Budgie 11 and we have more in store to talk about in the future regarding Budgie.

### Sol

Once the big Budgie 11 is released, our focus will return from our distro-agnostic desktop environment to improvements to some underlying bits of Solus, namely shifting from eopkg to a C-based "sol" package manager, which you can read 
about [here](https://solus-project.com/2016/07/05/this-week-in-solus-install-30/).

## Continued Broadening of Developer and Technical Tooling

This week we've continued broadening our selection of developer and technical tooling in the repository, as well as improving existing software. We're happy to announce that:

- The machine translation platform, Apertium, is now available on Solus.
- Programming languages got some love this week, with [Julia](http://julialang.org) landing in the repository, updating our R to 3.3.2, updating our PHP to 7.0.13, and pip to 9.0.1.
- httpd (*otherwise referred to as Apache 2*) has landed in the repo.
- The work towards enabling httpd, by landing items like fcgi and nghttp2 also means that [Valum](https://github.com/valum-framework/valum), the web micro-framework written in Vala, has also landed in the repository.
- The robust threat detection engine, [Suricata](https://suricata-ids.org/), has landed in the repository.

## General Fixes, Goodies, and Improvements

A multitude of fixes, upgrades and improvements have been made to other software in our repository, such as:

- Firefox 50
- Fixes to Asunder, Meld and git-cola.
- Our protobuf and libboost have seen upgrades to the latest of their respective versions.
- Resolved issues for some i3 users and their backlight controls not functioning. We now use [light](https://github.com/haikarainen/light/) for backlight controlling.

## Package Highlights

Here is a highlight of new inclusions and updates to software in our repository.

**New:**

- amsynth 1.7.0
- apertium 3.4.2
- arc-red-gtk-theme 1
- bdftopcf 1.0.5
- ckb 0.2.6
- fcgi 2.4.0
- font-adobe-75dpi
- font-adobe-100dpi
- gimagereader 3.1.99
- gource 0.44
- gnome-power-manager 3.20.0
- [httpd 2.4.23](https://git.solus-project.com/packages/httpd/)
- httpie 0.9.6
- httrack 3.48.21
- ibus-chewing 1.5.1
- ibus-unikey 0.6.1
- iio-sensor-proxy 1.3
- julia 0.5.0
- lttoolbox 3.3.3
- mkfontdir 1.0.7
- nghttp2 1.16.0
- nmon 16f
- openscad 2015.03
- recoll 1.22.3
- retroshare 0.6.1
- retro-gtk 0.8.1
- sigil 0.9.7
- streamlink 0.0.2
- suricata 3.1.2
- tessdata 3.04.00
- valum 0.2.16
- vice 2.4.32
- xiphos 4.0.4

**Updated:**

- asunder: Added missing vorbis-tools
- arc-firefox-theme 50.2016.1114
- atom 1.12.2
- boost 1.62.0 and convert to ypkg
- brackets 1.8
- cockatrice 20161030
- electrum 2.7.12 and fixed missing rundeps
- firefox 50.0
- fish 2.4.0
- font-util 1.3.1
- freeorion 0.4.6
- git-cola: Change to using python-qt5 as build and rundeps.
- hplip 3.6.10
- hugin 2015.2.0
- irssi: Unbreak description, use official upstream source
- krita 3.0.1.1
- lollypop 0.9.216
- lyx 2.2.2
- meld 3.16.3
- mkfontscale 1.1.2
- ncmpcpp 0.7.7
- neofetch 1.9.1
- neovim 0.1.6 and add neovim symlink for sanity
- nginx 1.11.6
- numix-gtk-theme 2.6.5
- numix-icon-theme-circle 16.11.09
- numix-icon-theme 20161006
- openflas: use thread for numpy boost
- php 7.0.13
- pip 9.0.1
- pisi:
  - Completely moved to eopkg
  - Ensure evobuild creates eopkg directory
- poedit 1.8.11
- python3: Fix splitting for pyconfig header
- python-pbr: Enable python3
- python-stevedore: Enable python3
- python-requests 2.11.1 - Updated for httpie
- r 3.3.2
- sardi-icons 8.0
- SFML 2.4.1
- simplescreenrecorder 0.3.8
- smplayer 16.11.0
- suitesparse 4.5.3
- tesseract: Add tessdata as rundep
- virtualenvwrapper:
  - Enable python3
  - Add missing rundep python-stevedore
- vagrant 1.8.7: Use system libraries for nokogiri, fix unofficial installer warning, fix error when installing plugins due to external bundler
- vim 8.0.0085
- vsftpd - Drop quotes around login
- wine 1.9.23 - Drop staging patches
- yarn 0.17.0
- youtube-dl 2016.11.14.1
- yubioath-desktop: Require CCID and fix desktop file