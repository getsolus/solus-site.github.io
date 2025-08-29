---
title: "Brisk Menu 0.5.0 Released"
author: "ikey"
categories:
- news
date: 2017-11-02T20:55:31+02:00
featuredimage: "/brisk-menu-0-5-0.jpg"
url: "/2017/11/02/brisk-menu-0-5-0-released"
---

[Brisk Menu 0.5.0 is here](https://github.com/solus-project/brisk-menu/releases/tag/v0.5.0)! This is the first of 2 planned releases for the course of the next few weeks.

Brisk Menu is a collaborative project between Solus and [Ubuntu MATE](https://ubuntu-mate.org/). Huge thanks to Ubuntu MATE for their ongoing sponsorship of the Brisk Menu, as part of a unified effort to bring modern, first-class options to the MATE desktop.
<!--more-->

So, what's new?

## Favourites support

![relimg](brisk-menu-pin-to-favourites.jpg)

Stefan Ric (cybre) added support for a new Favourites backend, that does exactly what it says on the tin. This adds a new Favourites category to the menu, and users can pin and unpin items from anywhere in the menu by right clicking on an item.

## Actions support

As if the new favourites wasn't enough of a challenge for Stefan, he also added support for `.desktop` file actions in the context menu. This means you're able to right click on Google Chrome and open it in a new incognito window.

## Pinning

Building on Stefan's backend work, I modified the APIs to allow all backends to emit actions per item, and extended the favourites backend to allow pinning and unpinning from the desktop. These actions work from anywhere in the menu, so you can search for an item, right click it and unpin it from the favourites menu or the desktop.

This will be expanded in future to support dock pinning.

## Modularity

The last release of Brisk introduced a cleaner architecture split between the backend providers and the frontend. This release takes things even further by limiting the use of the mate-panel-applet APIs to the applet component only, with the rest of the codebase split into various modules.

In the next release of Brisk, we'll expand upon this modularity by having base classes for Brisk frontends, and introduce a new "dash" frontend for Brisk.

## Upcoming stuff

We'll be introducing a new base level `BriskWindow` and move much of the boilerplate code out of `BriskMenuWindow` into here. This will enable us to easily extend the backend nature of Brisk to support another frontend, providing a modern dash UI as an alternative to the classic menu, but with all the underlying power and speed of Brisk.

Additionally, we'll implement support for asynchronous queries in the backends so that more dynamic backends can be built (such as querying local storage and applications).

If there is interest, we'll also split out the core Brisk libraries into a base runtime for other applications to use. A trivial example might be an enhanced run dialog.

## Changelog

- Sync translations (thank you!)
- New Favourites backend (backed by gsettings)
- Optimised backends to ensure `O(1)` lookup times
- Extended backend actions API for context sensitive backend actions (pin/unpin)
- Added `~/Desktop` pin/unpin
- Move to meson to help with modularity (bye bye, autotools!)
- Confined MATE Applet APIs to the applet component (not frontend/backend/etc)
- Moved BriskKeyBinder and window positioning logic into frontend, ready for next release
- Mask confusing inverted `MatePanelAppletOrient` in favour of `GtkPositionType`