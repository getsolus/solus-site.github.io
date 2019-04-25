---
title: "GNOME Of Thrones | The Roundup #12"
author: "joshua"
categories:
- news
- packages
- roundup
date: 2019-04-25T16:14:28+03:00
featuredimage: "/2019/04/budgie-on-gnome-332.jpg"
url: "/2019/04/25/gnome-of-thrones"
---

Welcome to The Roundup #12, your bytes of Solus news. In this roundup, we're talking about our latest GNOME Stack upgrade and the new KDE Applications 19.04 updates!

<!--more-->

## GNOME Stack Upgrade

We are thrilled to announce that we have just landed the latest GNOME 3.32 Stack into Solus unstable repository for testing. This stack upgrade brings new features and improvements to GNOME Shell as well as GNOME applications. On the GNOME applications front, Solus users can expect the latest goodies such as:

- Many GNOME applications have seen a consolidation of their menus into a singular application menu rather that being split in two. This can be noticed with applications like Calendar, Evince, and GNOME System Monitor.
- Numerous improvements to GNOME Control Center.
 - GNOME Control Center now has a new Applications panel that lists application-specific permissions (such as notifications) and storage usage. 
 - Night Light color temperature can now be adjusted.
 - Sound settings has been re-designed to be more intuitive.
- GNOME Music now works better with dark themes.
- GNOME Terminal no longer uses traditional window decorations but has now adopted the use of GTK3 Headerbar, with faster access to search, new tab creation, and more.
- GNOME Weather will now show tomorrow's forecasts at the end of the day.

During our testing of both Budgie and GNOME Shell under the latest GNOME Stack, we have seen varying performance improvements, as well as CPU and memory usage reductions.

Budgie saw a significant reduction in memory usage in Budgie WM at cold start-up, largely thanks to improvements made to Mutter, which it is currently built on. On a laptop with an AMD Ryzen 2500U, we saw memory usage reductions of about 50%, going from 58MiB to 27.2MiB. On a desktop with an AMD Ryzen 1700 and a NVIDIA GeForce GTX 1070Ti (running NVIDIA Beta Driver 418.43) we saw a memory usage reduction of roughly 30%, going from 122MiB to 84MiB.

On GNOME Shell, we saw a slight reduction in memory usage at cold start-up and a CPU usage reduction of about 10-15% on our laptop with the AMD Ryzen APU, especially during animations and interaction with GNOME Shell's Applications dashboard / view, so those with lower-end systems that opt to use GNOME Shell should expect it to be less taxing on their system!

Alongside all these updates, we have also updated Network Manager to 1.16 series, upgraded Enchant to 2.x (while still maintaining backwards compatibility with an enchant16 library), and finally deprecated a legacy version of WebKit.

For our Budgie users, we are now using Budgie git builds with GNOME 3.32 support. This support was graciously provided by the Ubuntu Budgie developers and we're grateful for their contribution to the Budgie Desktop. We have performed a few changes on top of this new support to ensure we continue to use Budgie WM schemas (to make any transitions between stack upgrades and newer Budgie releases occur more smoothly), as well as fixed instances where we would not be performing a redraw on closing the Budgie Menu, resulting in artifacts.

Additionally, Budgie has now gained support for setting font hinting and antialiasing in Budgie Desktop Settings.

As with every GNOME Stack upgrade, we take this opportunity to remove packages from our repository that have either:

1. Implemented changes which result in the application no longer being aligned with the goals / purpose of Solus
2. Not received updates for several stack upgrades or an extended period of time
3. No longer compile / work as originally intended against newer upgrades

The majority of the packages which have been removed during this GNOME Stack upgraded are listed below (and the reason for their deprecation):

- dleyna-renderer: Not under active development and does not build against gupnp 1.2
- empathy and multitude of telepathy libraries: Not under active development, with usage of the telepathy libraries being deprecated across the GNOME Stack
- galculator: Hasn't seen a release since 2015
- gnome-code-assistance: Hasn't seen a release since 2016 and was only used by GNOME Builder
- gnome-contacts and gnome-games: Now requires libhandy, a mobile-focused UI library built by Purism and currently considered unstable. Not only do we largely not accept the usage of unstable libraries in the repository, but having applications which target or force the installation of mobile UXs or their libraries is not acceptable, considering we are solely focused on modern home computing devices (laptops and desktops).
 - As a result of the deprecation of gnome-games, retro-gtk has been removed.
- gnome-todo: No longer compiles against latest Evolution Data Server. Should it receive a new stable release (we have been on git builds since late in GNOME 3.28 cycle) that compiles against it, we are open to including it in the repository again.
- libwebkit3-gtk: This is an old release of WebKit GTK that was only used by uzbl. To reduce the complexities of maintaining and rapidly updating our stack against changes to libsoup, cairo, glib2, etc. we have decided to deprecate libwebkit3-gtk and uzbl from the repository.

Amongst these changes, we also performed an upgrade of deja-dup which has resulted in the removal of Google Drive support. This is the result of deja-dup now requiring the use of pydrive, a python Google Drive API wrapper library that hasn't seen a release in several years and doesn't use a maintained OAuth2 library. If you are a using Deja-Dup and its previous Drive support, we encourage you to [reach out to the developer](https://gitlab.gnome.org/World/deja-dup/) to implement an alternative solution.

We all know you are incredibly excited to try out the latest goodies from GNOME! With Solus being a curated rolling release, you know you can get the latest packages at a pace which doesn't compromise the usability of your system. With the GNOME Stack upgrade being as comprehensive and wide-reaching as it is, we have decided to defer our sync to the stable repositories until Friday, May 3rd, which provides an additional work week of testing for all of our unstable repo users.

If you are on the unstable repository, feel free to upgrade and start testing. We have created a [task on our development tracker](https://dev.getsol.us/T7902) detailing what has been tested, and we'd love for you to contribute in the comments of the task with your own experience! If you run into any issues, please file an issue on our development tracker so we can investigate and address the matter. This testing doesn't just apply to Budgie and GNOME Shell, but to MATE as well.

If you are currently using the stable repository but wish to help test these latest changes, you are welcome to [reach out to us in our IRC channel](/articles/contributing/getting-involved/en/#irc)

## KDE Applications 19.04.0

It's not just Budgie and GNOME users that are getting a bunch of goodies this week though! Friedrich (Girtablulu) has been hard at work [before his vacation](https://discuss.getsol.us/d/767-plasma-on-vacation/26) to provide the latest KDE Applications for our Solus Plasma users on the unstable repo.

KDE Applications 19.04 comes with a bunch of improvements, such as:

- Dolphin can now display previews for EPub, Microsoft Office, and Blender files.
- KMail can now correct your grammar in messages. It will also detect phone numbers in emails, which can be dialed directly via KDE Connect.
- Kdenlive has been refactored and comes with massive improvements to its timeline.
 - The timeline now uses QML.
 - Audio and video now always go to separate tracks when you add a clip to the timeline.
 - Copy / pasting now works between project windows
- Okular now has added scaling options to their Print Dialog.
- You can now verify digital signatures in PDF files via Okular.

We encourage you to read [KDE's announcement](https://kde.org/announcements/announce-applications-19.04.0.php) for all the news about these updates!