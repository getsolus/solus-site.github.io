+++
author = "joshua"
categories = ["news", "twis"]
date = "2017-05-22T16:37:58+03:00"
featuredimage = "2017/05/mariadb.jpg"
title = "This Week in Solus - Install #45"
url = "/2017/05/22/this-week-in-solus-install-45"
+++

Welcome to the 45th install of This Week in Solus.

## Brisk Menu

{{< altimg "2017/05/brisk-menu-0_4.jpg" >}}

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

We have [updated our Linux kernel to 4.9.29 this week](https://dev.solus-project.com/R1966:40317e7c0eaf9a3ae35fa3deda0d0efacf74add1). We have also decided to switch to using the short-lived branch of NVIDIA GLX Driver, specifically [381.22](https://dev.solus-project.com/R2210:f1c8e878367c5615d5957221524072f4c3f3502b). This release enables:

- SteamVR support
- Improvements and additional support of Pascal cards, such as GTX 10xx series. This has been validated with Ikey's NVIDIA GTX 1060 (GP106).

## MariaDB

MariaDB 10.1.23 is now available in our repositories, enabling more web developers to work on their content locally without requiring the use of containerization or virtualization software like Docker and Vagrant.

We'll be expanding on this by validating MariaDB / MySQL support in PHP and improving our Help Center documentation to make setting up a LAMP stack under Solus for local development painless.

## Software Center

{{< altimg "2017/05/solus-sc-multi.jpg" >}}

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

- [mariadb 10.1.23](https://dev.solus-project.com/R2019:19b7b9da785d3cfa64387695b799aeb94966567b)
- [opus-tools 0.1.10](https://dev.solus-project.com/R3457:9b172fc9c1a05f401fb9575cc9ddaa337ce1bac1)

**Updated:**

- [albert 0.11.2](https://dev.solus-project.com/R345:fecbefd831d5d69329f04499d43d7b0207365583)
- [ardour 5.9](https://dev.solus-project.com/R381:d52f12aed1eb789bb771939aa1471cccb73d61ea)
- [aria2 1.32.0](https://dev.solus-project.com/R383:21e42643d6f84e062f86013391b2e20cd6489f6b)
- [brisk-menu 0.4.0](https://dev.solus-project.com/R457:7098e1d67263dbef59899e6e435f6025498400f7)
- [calibre 2.85.1](https://dev.solus-project.com/R485:c25efa5e00dc20451a6fbfda560aae928798016f)
- [deluge 1.3.15](https://dev.solus-project.com/R611:8f80c0c8aec7f6ea20c6a9cae7c8e8a4421a8348)
- [dmenu 4.7](https://dev.solus-project.com/R639:a426024d165022123ceb50dd598749b9af7713b3)
- [elixir 1.4.4](https://dev.solus-project.com/R692:ae4ffe4c5f919e6614ecdf64fa5ecf3dd02c9dbd)
- [erlang 19.3.4](https://dev.solus-project.com/R709:636f7bc4c029dd80591aa6637647bb15a4a5098b)
- [firefox 53.0.3](https://dev.solus-project.com/R755:89120d431282cd6e70d7bda6d76941af71992f35)
- [ghostwriter 1.5.0](https://dev.solus-project.com/R902:d5f4999dd2c19946ff38bd4dbd316764f1e0723d)
- [gnome-documents 3.24.2](https://dev.solus-project.com/R960:a0d661518c687de237e77d84edcf186675b46d41)
- [gnome-pomodoro 0.13.2](https://dev.solus-project.com/R984:fb6a04b1f1e1d6618c7085e5349a5fed5ae7eb84)
- [gnupg 2.1.21](https://dev.solus-project.com/R1025:62c758ac7bc817320b59682114362a925098e281)
- [granite 0.4.1](https://dev.solus-project.com/R1052:b4ffa883c629244bcb10b4f8771be39b544e0300)
- [homebank 5.1.5](https://dev.solus-project.com/R1407:2d9faaa5eeade01cc766c2e2617e2a8a731567c2)
- [hugo 0.21](https://dev.solus-project.com/R1419:682cc83cbaf5f40ce8cdfefd3813925e96b9297f)
- [inxi: Add missing rundeps](https://dev.solus-project.com/R1478:55baa997c17dd36b7a7fcdc1e1edae2dadf9dc8d)
- [libinput 1.7.2](https://dev.solus-project.com/R1743:e05ec559a1c65819d6ed4d6cc4a9b49cf02d9784)
- [linux-lts 4.9.29](https://dev.solus-project.com/R1966:40317e7c0eaf9a3ae35fa3deda0d0efacf74add1)
- [lmms: Enable 32-bit VST plugins support](https://dev.solus-project.com/R1974:1d4f6e6654dc05c4f086d4c51d4f05cefe3e3d16)
- [lollypop 0.9.237](https://dev.solus-project.com/R1978:55a4214752213b1d33cd19a6604eaa35dd5215f1)
- [lutris 0.4.10](https://dev.solus-project.com/R1992:21d0115e9e495ef4fd633e71d3fe884c9dbbc3f8)
- [lyx 2.2.3 and switch to Qt5](https://dev.solus-project.com/R1999:a3ad4469d5592c9a433024f079fb8d353eb7a162)
- [midori: Change default homepage, fix maximize removing titlebar](https://dev.solus-project.com/R2072:4004ed134d9550ec150018af3bbeef4c5dca224c)
- [minidlna: Fix broken systemd unit](https://dev.solus-project.com/R2795:38cc84f2f4de632a88aaf1f98f6dc7ff228257ee)
- [meld: Fix compare files](https://dev.solus-project.com/R2062:8373853dc6ee88c8210bbc72b01c2827b3d65a68)
- mono:
  - [Pattern non symlink .so files to main package](https://dev.solus-project.com/R2091:c1b905fd5344e24982fb74a83ed0b5bd5272c37e)
  - [Update to 4.8.1.0](https://dev.solus-project.com/R2091:35ce372fbc770517438d15dd72d435a1b3c52ec6)
- [mutter: Resolve red and blue value swap during current window screenshots.](https://dev.solus-project.com/R2123:365570116e4920391911f1d69c5416463eec4d77)
- [nim 0.17.0](https://dev.solus-project.com/R2167:43f55344fb021273fa018ae52bfee37188419599)
- [nvidia-glx-driver 381.22](https://dev.solus-project.com/R2210:f1c8e878367c5615d5957221524072f4c3f3502b)
- [obs-studio 19.0.2](https://dev.solus-project.com/R2214:f18622939b240c9e043ab26213f97dc85e1029bc)
- [opera-stable 45.0.2552.812](https://dev.solus-project.com/R2263:61a083893250fa80d63fc5bfee9756454f18ca4d)
- [php 7.1.5](https://dev.solus-project.com/R2424:d9574fdf5426a80df1d1298410d5cb45de6d1281)
- [postgresql 9.6.3 and adding systemd unit](https://dev.solus-project.com/R2469:621056096572cf53d1f1d84b32271523eaabed89)
- [qgis 2.18.8](https://dev.solus-project.com/R2726:bcb2f0980180b6242f980051c7b35fcf0fe87214)
- [qownnotes 17.05.8](https://dev.solus-project.com/R2730:624d8ef326c21e4da4c41e4965a09ea4b3b83d07)
- [sc-controller 0.3.10](https://dev.solus-project.com/R2854:18152bb28ad0af3cc94a2debcafdad9f43e48572)
- [silver-searcher 1.0.3](https://dev.solus-project.com/R2905:d28e8472f8dcd8cf7272e1d4273b472f5578a724)
- [skrooge 2.8.1 and fix icon not showing in GNOME Shell](https://dev.solus-project.com/R2911:fd364e3bb369349c349b985d37555d2cfa613132)
- [smplayer 17.5.0](https://dev.solus-project.com/R2916:7e5d7269ce299ca8a2054ef85b57f9d7fc35eb24)
- [solarus 1.5.3](https://dev.solus-project.com/R2923:d458a492a0f2b8fe6a3a7690b89d356f57c750c5)
- [solus-sc v18](https://dev.solus-project.com/R2930:526d60fd100c86643c079b7c212c7bd53c04c6bc)
- [syncthing 0.14.28](https://dev.solus-project.com/R2989:3c1d40b032aace76988fdb6acb878633967bbc11)
- [systemd: Always create sysusers before tmpfiles](https://dev.solus-project.com/R2999:cebb7d4c96fd846934b41fb96af48cda91c09fad)
- [telegram 1.1.2](https://dev.solus-project.com/R3013:beeb7f47e24de5dfa5e16a5d17c806fdaf83ca5e)
- [thunderbird 52.1.1, re-enable hunspell](https://dev.solus-project.com/R3035:bd32366a997482e1ca3f954372097dab2ed27fca)
- [valum 0.3.13](https://dev.solus-project.com/R3111:2445eef2fe531e7541937e68e901c25b8671363e)
- [vivaldi-stable 1.9.818.50](https://dev.solus-project.com/R3139:b016c402eb38adb2a2b62990dddef07e8996e132)
- [vivaldi-snapshot 1.10.845.3](https://dev.solus-project.com/R3138:3d38f781cf9790d784d72f7e07d97d584b9b6f24)
- [vlc 2.2.5.1](https://dev.solus-project.com/R3140:b131c043b184469f2f8be733e50595c33707cb0f)
- [vscode 1.12.2](https://dev.solus-project.com/R3148:989843858876fac3210dea33a21ee053e8cae74a)
- [weechat 1.8](https://dev.solus-project.com/R3160:e3e08c78719085952d32101f2b7bc14bd0c4d8ae)
- [x2goserver: Add further required rundeps: nx-libs and perl-file-which](https://dev.solus-project.com/R3190:f92b8aa64f559c66885a6d6e5ce7df50736136a2)
- [xdg-tools 1.1.2](https://dev.solus-project.com/R3217:c8ae87f8ccb04fbdced134539e97b2288778e4c7)
- [yarn 0.24.5](https://dev.solus-project.com/R3298:e7d8209815006608eeb66b500b369c1e0cee1286)
- [youtube-dl 2017.05.18.1](https://dev.solus-project.com/R3304:d03e73dd998b235ae96e2b490753138944e02862)
- [zstd 1.2.0](https://dev.solus-project.com/R3331:5c3d377813fee721e24b95b2eefe835b5a383583)