+++
author = "joshua"
categories = [
"News",
"Plans",
"TWIS"
]
date =  "2016-04-24T19:03:35Z"
title = "This Week In Solus -- Install #27"
url = "/2016/04/24/this-week-in-solus-install-27/"
+++ 
Welcome to the 27th installation of This Week in Solus and one I'm happy to say is actually being written and published on schedule. 

#### 1.2

Let's be blunt here. We all know 1.2 is coming. We've said it is coming, our [release schedule](https://solus-project.com/release-cycle/) shows it is coming, and we're currently entering what we consider a "stabilization phase" for next month's release.
We will be seeding our first testing ISO to our Patrons tonight and we want **highly critical** feedback from you folks. We anticipate seeding multiple testing ISOs throughout the week, so if you're a Patron, keep your eyes peeled on your email. 
**If you're not a Patron, don't mind the "accidental" screenshots on Google+.**

#### Learn Solus Packaging

Yesterday afternoon I hosted an event where people could learn the basics to packaging on Solus. Condensed down to an hour, people were walked through everything from setting up their Solus install to packaging basics, in this session the example was 
Gnome Weather.

An edited version of the Hangouts On Air session is available to watch below and I plan on releasing both new and updated videos on the Packaging Series throughout the week, featuring all the new goodies of ypkg 2.0!

{{< youtube "kIaY1Bro3ag" >}}

#### Multilib

Multilib enablement is still on target for availability by the release of Solus 1.2 and we are currently in the process of landing the last of them. We have some expectations internally on when multilib should land but I'm declining to say when, mainly because 
I'm evil.

#### Kernel

For those that have been living under a rock, I'm happy to inform you that Solus is a Linux-based operating system, and as such uses the Linux kernel. For the rest of you, you'll be happy to know that we have updated to the latest 4.4.8 LTS version. We 
have also followed the lead of the [Clear Linux* Project for Intel® Architecture](https://clearlinux.org/) project by adopting a 
[scheduler tweak](https://git.solus-project.com/packages/kernel/commit/?id=ba0d14e1a6ed926d845bf403cd2149675664813f) that should help to mitigate the "wasted cores" problem (whereby workload isn't balanced across all the available cores).

#### Stability and Testing

DRI3 has been temporarily disabled in the Intel driver pending an investigation into instances where fonts may glitch. If you have been affected by this issue, please apply updates and inform us whether it resolves said issue. If the update not resolve this 
issue, please let us know so we can re-enable DRI3 and further investigate the glitch. Internet points and cookies in advance for all the testers!
We have also reverted to an older version of os-prober. In some reported instances, Windows would not be shown as an available boot option and as such, we rolled back to resolve this issue. We had initially updated os-prober to resolve an issue where 
newer Windows versions would be reported as Vista. But I'm sure we'd all rather have Windows be an option to boot, even if it claims it is Vista, than not at all.

#### Package Updates
Wait, you mean to tell me we don't stick with the same version of software for years? Here is a highlight of packages that have been updated this week:

New:

- [evolution-ews 3.18.5](https://git.solus-project.com/packages/evolution-ews/commit/?id=54d5d69d712a0bb4f399404dbf5661bb7d8c7c43)

Updated:

- [adapta-gtk-theme 3.20.3.56](https://git.solus-project.com/packages/adapta-gtk-theme/commit/?id=05a258f27de100390f7a6347316eb1ea15c87fde)
- [aria2 1.22](https://git.solus-project.com/packages/aria2/commit/?id=ca3f6de0766c2fb49e160e0341052c42d37ce692)
- [atom 1.7.2](https://git.solus-project.com/packages/atom/commit/?id=4293f96719b00544352e41668977b91dc97c15c0)
- [cups-filter 1.4.0](https://git.solus-project.com/packages/cups-filters/commit/?id=2d6569b79651bac84c69606fb6d07410c15286e9)
- [evolution 3.18.5.2](https://git.solus-project.com/packages/evolution/commit/?id=c1643028ce689d95971c071257f62404abfe01e5)
- [gzip 1.7](https://git.solus-project.com/packages/gzip/commit/?id=cb6aa3e95f2ec9d811db88b8106ca8c88cf08a51)
- [librecad 2.0.10](https://git.solus-project.com/packages/librecad/commit/?id=a231146390b4be8ab28784f8764c6e749299d712)
- [lollypop 0.9.98](https://git.solus-project.com/packages/lollypop/commit/?id=651a6c961f53c29dc5d64214e335d092efedef4e)
- [mercurial 3.7.3](https://git.solus-project.com/packages/mercurial/commit/?id=c6302b847ef3a2e6b66d62c5b2d01ed2011d3006)
- [mesalib 11.2.1](https://git.solus-project.com/packages/mesalib/commit/?id=f3a6c6a43673b32b4bd7aae3737d910b606b96e9)
- [moc 2.5.1](https://git.solus-project.com/packages/moc/commit/?id=527e3b093293226caf972822ea3157811a56ffd6)
- [nodejs 5.11.0](https://git.solus-project.com/packages/nodejs/commit/?id=0ffd6b13e8ed08228dfa2390b3c70799057b7e1b)
- [optipng 0.7.6](https://git.solus-project.com/packages/optipng/commit/?id=0bb9830a4aa13e16e7520a2331eb2580a386d0b8)
- [telegram 0.9.44](https://git.solus-project.com/packages/telegram/commit/?id=9062b48adde6faf6bbfeb6b25e932b466f5ab0e3)
- [tilda 1.3.3](https://git.solus-project.com/packages/tilda/commit/?id=55ecf3ed887033f5536bc6e3ba7bccb8dfa2facf)
- [xorg-driver-video-amdgpu 1.1.0](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=0edb1d3c9b348b3bfeec479f8f5d1e3adb39f883)
- [xorg-driver-video-vesa 2.3.4](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=dc79984129c9f66b566c1a68afc4ef9631bf077f)
- [xorg-server 1.18.3](https://git.solus-project.com/packages/xorg-server/commit/?id=ec4b810115508571fdee7ceadeef8ee445bd9a0b)