---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- budgie
date: "2014-07-20T11:20:34Z"
title: Budgie Desktop v5.1 Released
url: /2014/07/20/budgie-desktop-v5-1-released/
---

Hello all!

Well its now official, I've released v5.1 of the Budgie Desktop. It was slated to be a v5 release but I had to bump due to an autotools issue in the release..<!--more-->
<!--more-->

![relimg](https://solus-project.com/release_images/menu_51.png)

## What's new?

Almost all of the changes since v4 have been related to the panel. It's been completely rewritten in Vala, lowering the maintenance overhead and significantly reducing 
the barrier of entry for new contributors.

So, when your update comes through later on (hopefully) today through OBS if you use it, or for Evolve OS users you already have the update, you should only see minor 
visual differences. The idea was not to change the look, but to rewrite what was there and make it **moar better.**

## Plugins!

All of the applets have been rewritten to use a plugin API. This makes no immediate difference to users but will be heavily expanded on in the upcoming v6 
(we'll try to avoid a v6.1 this time..). Users of the Budgie Desktop will be able to write their own plugins in any language supported by libpeas, which includes 
C, Vala, JavaScript and Python. This essentially means you'll be able to extend the panel with your own applets. To make life a bit easier the plugins will also be 
able to load from your home directory, promoting an easy way to share and use applets.

The existing panel will receive changes for v6 enabling you to completely customise the layout of the panel too, making it your own. But, those changes won't 
come till v6, so lets stop teasing 🙂

## Moar fixes

The panel now stays where it is meant to be, and the right size. This.. somewhat helps, being a panel&#8230; Currently no configuration options really exist 
for the panel, as this will come during the v6 cycle. So, what I can tell you is the panel has full support for top/bottom positions, and *preliminary* support for 
left/right screen edges, though the menu will look.. odd.

So, right now the panel is locked at 40px in height, has status icons that are 22x22px, and "launcher" icons that are 32x32. The panel and its menus
 (main menu and the clock area) should now be faster and smoother to open and operate.

The automatic darkening of the panel received love too, and it does its job very effectively. Right now its bound to start failing when you start moving the 
windows to different workspaces -- this is a thing to address in the future 🙂

## Lastly

The rewrite into Vala took quite some effort, but has immediately paid off. In the future all of the desktop will be rewritten to use Vala, and being the "second write" -- we 
do things better the second time around. Here are the stats for the initial panel rewrite to Vala

** 55 files changed, 2749 insertions(+), 2658 deletions(-)**

As always, if you're interested in seeing the code, check our [GitHub Repo!](https://github.com/solus-project/budgie-desktop/)