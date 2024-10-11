+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-11-01T08:27:41+02:00"
title = "This Week in Solus - install #38"
url = "/2016/11/01/this-week-in-solus-install-38/"
+++

Welcome to This Week in Solus, installation #38. Lots have happened since the last one, so let's get started.

## Budgie

Last week, Ikey migrated Budgie Desktop to be its own GitHub organization, viewable [here](https://github.com/budgie-desktop). This is a reflection of the direction we want to take Budgie, which is moving from a monolithic 
architecture to a modular one, breaking up Budgie into individually components, empowering us to independently develop, iterate and release components of Budgie.

Ikey has already began work on creating a `budgie-core`, the component that all other Budgie components will depend on. This core contains gsettings schemas (*stored traditionally in the panel*) and theming used 
throughout the Budgie Desktop. We plan on extending the core in the future to provide an animation framework, as well as accented colors.

We also have the following components:

- `budgie-daemon` : Provides session support services for Budgie Desktop
- `budgie-panel`: The panel component of the Budgie Desktop
- `budgie-polkit-dialog`: Our PolicyKit Agent UI for Budgie Desktop
- `budgie-run-dialog`: Our keyboard-driven application launcher for the Budgie Desktop.
- `budgie-wm`: The window manager of the Budgie Desktop
- Current plans on inclusion of a `budgie-session` component.

This re-architecting of Budgie will first appear in Budgie 11.0.0. Yes, proper [semver](http://semver.org/) folks.

## Hackfest

During Saturday, Bryan and I had ourselves a hackfest / "build-o-rama" (*name is inspired by building and packaging of software*). During this Hackfest, Bryan worked on packaging, for example landing gzdoom, lbreakout2, 
and tools such as shellcheck. He also triaged and fixed issues, such as resolving dependencies for Gnome Builder, further putting a dent in our backlog.

During the Hackfest, I worked on the site and landed community patches.

{{< youtube "peXzufAT_Lc" >}}

{{< youtube "oMzkCEt64sk" >}}

{{< youtube "DEFQQ6cHT68" >}}

## Website and Infrastructure

### Website

As you might have noticed, our website has changed quite significantly on Saturday. Previously, we were using Wordpress to deliver information about the Solus project and Budgie, however it simply didn't fit 
our needs and was quite frankly a royal pain to work with. So it has been completely tossed out and replaced with this new Hugo-based website, which not only gives us the opportunity to tell the Solus story in a more 
tailored fashion, but opens the door to a lot of possibilities in the future.

During this week's build-o-rama / hackfest (videos above), I worked to resolve issues discovered by the community, such as font-rendering, but also landed some new functionality like easy access to our RSS feeds. With the 
launch behind us, it's time to focus on the road ahead and lay it out for those curious.

First off, I want to flesh out the content more extensively, and re-introduce the Solus page, originally shown off during earlier streams, with some differentiators from the homepage. I also understand that some may 
view the new site to be less information dense and more reliant on imagery, which is a polar opposite of the previous Wordpress-based website, and this is something I plan on gradually addressing. I'm of the opinion that 
starting with less but highly discoverable content, then working towards improving what content we do provide, is a far better path than starting with too much information that affects discoverability, that we'd gradually need to 
remove or shift elsewhere.

Once I'm happier with the content we do provide, I'll be working on adding more features and functionality, such as providing an integrated Help Center. This will enable a high-quality method for discovering and querying 
frequently asked questions, guides, and more. The original plans of dropping the User Guide Google Doc and shifting it to Markdown can then be executed upon. In the coming days, the 
[User Guide](https://github.com/solus-project/user-guide) will be updated to reflect Solus 1.2.1, Installer improvements, and more. This work will then be incorporated into the future Help Center and we'll automatically 
generate PDFs for offline usage.

Theoretically, although yet to be decided, this could enable us to eliminate our MediaWiki installation and enable the broader community to contribute to the Help Center. We haven't enabled contributions to the MediaWiki 
due to the potential of abuse (*mainly from bots*), however providing a Git-based method for people to contribute would enable us to curate and quality control contributions.

### Repo Search Tool

Moving beyond that, there are some ideas floating around Solus HQ on providing an online repo search tool, which would enable those who haven't installed Solus yet to discover our software offerings with more ease than 
the present day. We don't have more concrete details to talk about at this moment in time, but I'll obviously talk about it in future This Week in Solus installments.

### Mail

Whether it is signing up for the forums or getting emails about patches on our Phabricator, email is heavily used for and with Solus on a daily basis. As any of you, whom might've attempted to sign up for the forums noticed, 
the mail doesn't exactly always get delivered, as a result of being blacklisted by some companies due to bad actors on the same I.P. block.  We've investigated resolving this issue however the best course of action appears to be 
moving to a commercial mail provider, so we'll be working towards resolving that issue.

---

## Package Highlights

Here is a highlight of new and updated packages.

**New**

- albert 0.8.11
- arx-libertatis 1.1.2
- clustershell 1.7.2
- cool-retro-term
- dmz-cursor-theme 0.4.4
- drive 0.3.8.1
- duckmarines 1.0c
- freeplane 1.5.17
- gourmet 0.17.4
- gradio 4.0.1
- gretl 2016c
- gxmessage
- gzdoom 2.2.0
- jq 1.5
- lbreakout2 2.6.5
- leveldb 1.19
- lmdb 0.9.18
- mate-dock-applet 0.73
- mate-menu 16.10.1
- micro 1.1.2
- mrrescue 1.02e
- openastro 1.1.48
- phoronix-test-suite 6.6.1
- painobar 2016.06.02
- pioneer 20161015
- ppsspp 1.3
- shellcheck 0.4.5
- sienna 1.0c
- urlscan 0.8.3
- witchbvlast 0.7.5
- xdotool 3.20160808.1
- yubioath-desktop

**Updated**

- abiword 3.0.2
- armagetronad - Fix missing menu entry
- bitcoin 0.13.1
- blender 2.78a
- bspwm 0.9.2
- btrfs-progs 4.8.2
- darktable 2.0.7
- docker 1.12.3
- electrum 2.7.11
- evince - Enable PS (spectre) and XPS (gxps)
- evopop-gtk-theme 2.0.4
- flightgear - Changed component to games
- gajim 0.16.6 and add necessary python deps for security
- gnome-control-center: Enable the manpages
- gnuplot - Enable cairo for gretl
- gnome-builder: Add missing python deps
- golang 1.7.3
- hexchat 2.12.3
- hplip 3.16.9
- kodi 17.0 beta 4
- lutris 0.4.1
- kernel 4.8.5 and enable Corsair devices
- mate-themes 2.20.13
- mgba 0.5.1
- n1 0.4.59
- nim 0.15.2
- nmap 7.31
- openjazz - Changed component to games.platformer
- peek - 0.8.0 and add missing rundeps
- php - Enable PEAR
- postgresql 9.5.5
- sc-controller 0.3.1
- screenshot-applet - Fix rundeps goof
- telegram 0.10.19
- transmission - Change to network.download component and use new tarball location
- tzdata 2016h
- vim 8.0.0054
- vsftpd - Added pam service name and seccomp sandbox setting.
- youtube-dl 2016.10.26
- ypkg:
  - Sync with git fixes
  - AVX2: Drop -msse4
  - Finalize the AVX2 implementation
- zathura - Enabled PS with libspectre