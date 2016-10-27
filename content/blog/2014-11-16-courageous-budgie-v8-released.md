---
author: ikey
categories:
- Budgie
date: 2014-11-16T22:03:43Z
id: 402
title: Courageous Budgie (v8) Released!
url: /2014/11/16/courageous-budgie-v8-released/
---

Hello all! I am pleased to announce version 8 of the Budgie Desktop! We've changed many things, with a vastly simplified main menu, cleaner animations and on the whole 
a much more responsive desktop.

This release represents 78 commits with 36 files changed, 3577 insertions and 351 deletions.

{{< altimg "2014/11/8Menu.png" >}}

## What's changed?

We added a whole bunch of options for the Budgie Menu to the panel preferences, enabling you to use the traditional layout we used with the Budgie Menu, or indeed stick 
with the new version that doesn't employ categories. We've visually refreshed the run dialog and menu, with a much simpler and intuitive (not to mention more responsive) 
feel to everything. Interaction played a huge part this time round, with the menu now sorting items by usage, saving you a lot of time!

We have auto hide support, a new dark look, application pinning (pin apps as launchers to the panel), dynamic support for GNOME Panel theming, a menubar applet, 
cleaned up the animations and a whole bunch more!

- IconTasklist: Add pinning support
- IconTasklist: Use .desktop files for quicklists
- IconTasklist: Use .desktop files for icon resolution
- IconTasklist: Support "attention" hint (blue blink)
- Panel: Support dark theme (used by default)
- Add Menubar applet
- Panel: Initial autohide support (manual, not automatic)
- Panel: Support shadow onall screen edges
- Panel: Dynamic support for gnome panel theming
- RunDialog: Complete visual refresh (bootiful)
- BudgieMenu: Add compact mode, use by default
- BudgieMenu: Sort items by usage
- BudgieMenu: Remove old power option
- Editor: Add all menu options to UI
- Support from GNOME 3.10 up to 3.16 (unreleased, git)
- wm: Kill workspace animation (resolve after v8)
- wm: Better animations for changing of wallpapers
- And Other Stuff! (Test it!_<)

## A huge thank you!

A huge thank you to everyone who has contributed to the project, and to help with the new design, and testing. Remember you can help the project in a number of ways, 
whether its buying the developer a cup of tea, sending a patch to add a new feature or to fix a bug, or even reporting bugs so we can improve Budgie, you're helping all of us 
(dev and users included) to perfect Budgie!

**Edit**: A [fundraiser was launched](https://solus-project.com/2014/11/16/evolve-osbudgie-fund-raiser/) after this post was first published

{{< altimg "https://solus-project.com/wp-content/uploads/2014/11/8Prefs.png" >}}