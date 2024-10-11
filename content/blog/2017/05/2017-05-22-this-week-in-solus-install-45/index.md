+++
author = "joshua"
categories = ["news", "twis"]
date = "2017-05-22T16:37:58+03:00"
featuredimage = "/mariadb.jpg"
title = "This Week in Solus - Install #45"
url = "/2017/05/22/this-week-in-solus-install-45"
+++

Welcome to the 45th install of This Week in Solus.

## Brisk Menu

{{< relimg "brisk-menu-0_4.jpg" >}}

We recently released Brisk Menu 0.4, which has since landed in the stable repository for all of our MATE users. Brisk Menu, our modern MATE menu implementation, features new improvements such as:

- The `Super`/ Windows key now works.
- Label text is now configurable.
- The menu now dynamically adapts to vertical layouts.
- Control Center applications are now listed in `Preferences` and `Administration` categories.

Brisk Menu also saw some significant backend changes, as Ikey notes below:

> *With the 0.4.0 release, we opted to split the frontend from the backend, but more importantly, abstract the "items" so much that the frontend isn't aware of the specifics of MATE Menus or even `.desktop` files. The default `AppsBackend` is responsible for monitoring changes in the system `.desktop` files and dynamically rebuilding `BriskItem` and `BriskSection` for the frontend to include within the display. This in turn resolved a whole host of issues, including items not appearing after installation due to some assumptions in the mate-menus library, as well as allowing us to integrate the `Administration` and `Preferences` menu providers.*
>
> *In the future, this architecture change will allow different backends to be added in the upcoming 0.5.0 release, including a new Favourites backend. Along with supporting basic "Pin To" functionality in the menu, it will support reordering, and keyboard shortcut activation (CTRL+1 through to CTRL+0).*

Thanks to [vkareh](https://github.com/vkareh), [feddasch](https://github.com/feddasch), and [cybre](https://github.com/cybre) for their contributions, as well as the ongoing support from Martin Wimpress and the Ubuntu MATE project!

## Kernel and NVIDIA GLX Driver

We have updated our Linux kernel to 4.9.29 this week. We have also decided to switch to using the short-lived branch of NVIDIA GLX Driver, specifically 381.22. This release enables:

- SteamVR support
- Improvements and additional support of Pascal cards, such as GTX 10xx series. This has been validated with Ikey's NVIDIA GTX 1060 (GP106).

## MariaDB

MariaDB 10.1.23 is now available in our repositories, enabling more web developers to work on their content locally without requiring the use of containerization or virtualization software like Docker and Vagrant.

We'll be expanding on this by validating MariaDB / MySQL support in PHP and improving our Help Center documentation to make setting up a LAMP stack under Solus for local development painless.

## Software Center

{{< relimg "solus-sc-multi.jpg" >}}

v18 of our Software Center was released last week. This release featured a bunch of UX improvements, starting with improved AppStream integration that enables us to express more information about an application and its developer(s). This is most noticable when paired with our new package view page.

The new package view page features screenshot support, as well as exposing more in-depth app descriptions, installed package size, version information, and various buttons to the developer's website and donation links that they may provide.

The package view page also saw an improved changelog, with Phabricator / Diffusion commit parsing, and a separate section for license information.

The search functionality was also improved in v18. For instance, in situations where you may use spaces in a search query, such as "gnome multi writer", we now find the package name, replacing the space behind the scenes with either an underscore or hyphen. We also filter out `dbginfo` sub-packages where possible.

Other various changes include:

- Adding `Ctrl + F` to jump to the Search page.
- Adding the ability to navigate back using the back button on a mouse.
- Continued improving our organization of applications with new components, such as a dedicated `office.finance` section. Applications will be gradually moved to these new sections.
- We now enforce 64x64 by scaling when necessary. This should resolve instances where some application icons were very large, such as when using the Adwaita icon theme.

## Website

Various improvements have been deployed to the site this week, such as:

- Implementing a slick widget for Sundays with Solus episode information and playback, shown off on [This Week in Solus - Install #43](/2017/04/24/this-week-in-solus-install-43/).
- Blocking less "above the fold" content by moving our scripts to load asynchronously, deferring execution of our scripts until page load is complete, and separating out font request from CSS to using Google WebFonts APIs.
- Reducing load time by compressing more content and ensuring we set expire headers on more content.
- Resolving scaling issues on featured images for featured blog posts.

We also now provide MP3 and OGG RSS feeds of Sundays with Solus on the sidepane of the Blog. I plan on submitting the podcasts for inclusion in Google Play and iTunes soon<sup><small>TM</small></sup>.

## Package Highlights

As always, here is a highlight of new and updated packages in Solus:

**New:**

- mariadb 10.1.23
- opus-tools 0.1.10

**Updated:**

- albert 0.11.2
- ardour 5.9
- aria2 1.32.0
- brisk-menu 0.4.0
- calibre 2.85.1
- deluge 1.3.15
- dmenu 4.7
- elixir 1.4.4
- erlang 19.3.4
- firefox 53.0.3
- ghostwriter 1.5.0
- gnome-documents 3.24.2
- gnome-pomodoro 0.13.2
- gnupg 2.1.21
- granite 0.4.1
- homebank 5.1.5
- hugo 0.21
- inxi: Add missing rundeps
- libinput 1.7.2
- linux-lts 4.9.29
- lmms: Enable 32-bit VST plugins support
- lollypop 0.9.237
- lutris 0.4.10
- lyx 2.2.3 and switch to Qt5
- midori: Change default homepage, fix maximize removing titlebar
- minidlna: Fix broken systemd unit
- meld: Fix compare files
- mono:
  - Pattern non symlink .so files to main package
  - Update to 4.8.1.0
- mutter: Resolve red and blue value swap during current window screenshots.
- nim 0.17.0
- nvidia-glx-driver 381.22
- obs-studio 19.0.2
- opera-stable 45.0.2552.812
- php 7.1.5
- postgresql 9.6.3 and adding systemd unit
- qgis 2.18.8
- qownnotes 17.05.8
- sc-controller 0.3.10
- silver-searcher 1.0.3
- skrooge 2.8.1 and fix icon not showing in GNOME Shell
- smplayer 17.5.0
- solarus 1.5.3
- solus-sc v18
- syncthing 0.14.28
- systemd: Always create sysusers before tmpfiles
- telegram 1.1.2
- thunderbird 52.1.1, re-enable hunspell
- valum 0.3.13
- vivaldi-stable 1.9.818.50
- vivaldi-snapshot 1.10.845.3
- vlc 2.2.5.1
- vscode 1.12.2
- weechat 1.8
- x2goserver: Add further required rundeps: nx-libs and perl-file-which
- xdg-tools 1.1.2
- yarn 0.24.5
- youtube-dl 2017.05.18.1
- zstd 1.2.0