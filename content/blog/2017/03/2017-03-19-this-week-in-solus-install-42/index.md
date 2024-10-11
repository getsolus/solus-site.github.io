+++
featuredimage = "/mate-1.18-in-solus.jpg"
categories = [
"news", 
"twis"
]
author = "joshua"
date = "2017-03-19T16:08:32+02:00"
title = "This Week in Solus - Install #42"
url = "/2017/03/19/this-week-in-solus-install-42"
+++

Welcome to the 42nd installation of This Week in Solus.

## Upgrades

Several significant upgrades happened this week (all of which are shipped in the stable repo at the time of publication), starting with Peter spending time upgrading our KDE Frameworks to 5.32.0 and upgrading our Kdenlive to the latest release.

We updated our kernel to the latest longterm release, 4.9.16.

Justin and Ikey landed MATE 1.18 today, which features our upstreamed patch for action icons in mate-notification-daemon (shown below) and the many [fantastic improvements](https://mate-desktop.org/blog/2017-03-13-mate-1-18-released/) from the MATE Desktop Team.

{{< relimg "mate-1.18-action-icons.jpg" >}}

## Learn Solus Packaging

Over the last few weeks, I've been doing livestreams to help people get started with Solus packaging. The benefit of these sessions is that the frequency of them enable the constant improvement and tweaks we do to solbuild and ypkg to be immediately discussed. The format is as follows:

- One week, a new "session" introduces users to setting up their system for Solus packaging, walks them through a simple example live and high-level talk about the relevant actionable macros, and the process for creating and submitting a patch.
- The following week is more "advanced" topics, such as going over the majority of our actionable macros, variables, and using additional files or applying patches.

If you haven't gotten involved in Solus packaging and you're wondering where you can get started, check out the latest session!

{{< youtube TXkf1ulWm98 >}}

## Upcoming This Week

We'll be doing some crunching this week on items for the upcoming Q1 ISO snapshots. Ikey will be working on:

- A new Brisk Menu release, which will feature [a right-click context menu for launching a menu editor for an item](https://github.com/solus-project/brisk-menu/issues/16) as well as the [ability to search for items which are present in the Control Center](https://github.com/solus-project/brisk-menu/issues/10).
- Budgie 10.3
- Resolving some corner cases in the UEFI support of the Solus Installer.
- Taming the verbosity of debug messages during boot time.

With the new Solus website designs nearly finalized, I'll be working on the new site design this coming week. Additionally, I'll be doing a sweep through our Dev Tracker.

Bryan will be continuing to work on [Cuppa, the upcoming upstream tracker](https://github.com/DataDrake/cuppa), primarily around improving the help system.

## Package Highlights

Here we go ladies and gents, the usual highlight of package inclusions and highlights (including the major upgrades I talked about above):

### New

- kitematic 0.13.1
- mate-calc 1.18.0
- puddletag 1.2.0
- tap-plugins 0.7.3
- tint2 0.13

### Updated

- albert 0.9.5
- alsa-tools 1.1.3
- audacious 3.8.2
- calibre 2.82.0
- deluge 1.3.14
- digikam 5.5.0
- evolution 3.22.6
- focuswriter 1.6.4
- filezilla 3.25.0
- firefox 52.0.1
- ffmpeg 2.8.11
- gnome-boxes 3.22.4
- gnome-calendar 3.22.3
- gnome-documents 3.22.1
- gnome-photos 3.22.5
- gnome-pomodoro 0.13.1
- gtk-vnc 0.7.0
- heroku-cli 5.7.0
- homebank 5.1.4
- irssi 1.0.2
- leocad 17.02
- meld 3.16.4
- mpd 0.20.6
- mypaint 1.2.1
- ninja 1.7.2
- peek 1.0.0
- php 7.0.17
- pidgin 2.12.0
- powerline 2.5.2
- qownnotes 17.03.6
- quodlibet 3.8.1
- retroarch 1.5.0
- rsibreak 0.12.6
- stoken: Split off graphical client of stoken to stoken-gui. Disable static library.
- sway 0.12.1
- thunderbird
  - Update to 45.8.0
  - Disable use of system ICU to resolve crash on search
- vivaldi-snapshot 1.8.770.25