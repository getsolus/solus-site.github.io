---
author: Ikey Doherty
categories:
- News
date: 2014-07-06T19:10:45Z
id: 197
title: Evolve OS Alpha 1 Released
url: /2014/07/06/evolve-os-alpha-1-released/
---

I am pleased to announce the release of Evolve OS Alpha 1. This version marks the beginning of our public availablity as a desktop Linux distribution. 
This image is a 64-bit ISO, and comes with the Budgie Desktop as standard. Please help by download and testing the image so we can ensure our future 
releases are as polished as possible for our users.

<!--more-->

{{< altimg "https://solus-project.com/release_images/weather.png" >}}

## What's new in this release?

This release is the first graphical and installable release of Evolve OS, marking the start of our general availability. This image is targeted at the GNOME 3.10 stack, with 
some items already included. We'll remain with GNOME 3.10 until the release and general availability of GNOME 3.14 around September, when we will sync ourselves with 
our desktop's upstream.

We have Firefox 30.0 as our default browser, and Budgie Desktop comes straight from our git repository. You'll find gnome-control-center, gnome-weather, gedit, file-roller 
and nautilus all ready to go.

This image ships with the 3.14.2 Linux Kernel, but will be updated to the 3.15 series in the coming days, the delay is due to an lz4 regression. The security issues noted in 
previous posts have been addressed either by updates or patches, and this image can be used and installed on either a virtual machine or real hardware.

Note: This is the very first alpha, please do not use in a production environment. It is helpful to us if someone has the time to install on real hardware (then both Budgie 
and Evolve OS can utilise the real power) but this is very early days! 🙂

## Download (620MB, or 649, dependent on disk type):

The image md5sum is:

```
25412ac90b87baf3ef5b61778bea9c2f  Evolve-OS-Alpha1.iso
```

* Download from [France](http://mirror6.layerjet.com/evolveos/images/Evolve-OS-Alpha1.iso) (LayerJet)
* Download from [Germany](http://mirror.layerjet.com/evolveos/images/Evolve-OS-Alpha1.iso) (LayerJet)
* [Torrent](http://linuxtracker.org/download.php?id=2df865bb11dbff33470b707a17dd2243fb55a750&f=Evolve-OS-Alpha1.iso.torrent&key=0) (Linuxtracker)

## Known issues

* Plenty, its an alpha! 🙂
* gnome-screenshot fails to launch, missing schema (workaround: install scrot from repo, sudo pisi it scrot)
* Stray development files in system: Please report them so these packages can be improved, i.e. the -devel packages need splitting correctly!
* Budgie Desktop doesn't "start" until mouse moves. Move it after log in, its really not slow. It just waits until input (weird bug, investigating)
* No automatic login (Deliberate due to budgie/mouse issue)
* No automatic partitioning in installer. (Not yet implemented. At least the complication **looks good**!)
* Remnants of legacy SolusOS 2 branding remains (grep it, report it!)
* No proprietary driver support (future!)
* No multimedia support (proprietary, future!)
* Hardly any software at all in the repos -- early days! 🙂 (GIMP, Inkscape and Blender all coming soon)

## Giving feedback

Reporting a bug? Head over to [our bug tracker](https://solus-project.com/project/os) and tell us what the issue is, lets get it fixed and improve each image 🙂 Want 
to just talk about the project? Drop us a line over at our [Google+ Community](https://plus.google.com/u/0/communities/103032596316713958671)!

## Special thanks

An enormous thank you goes to [John McCormack](https://plus.google.com/u/0/+JohnMcCormack/posts), who has provided all of the photography you see in this release, in 
glorious HD. Shipping without a brand is a very hard thing to do, but John's artwork is absolutely fantastic and brings the desktop to life.

Second thanks go to the [Numix Project](http://numixproject.org/), who after speaking with them on G+ were absolutely fine (and happy) for us to use their amazing 
Numix Circle icon theme by default, which works fantastically with the Budgie Panel.

As always, [DediServe](http://dediserve.com/), who have supported me and my vision over the last few years without wavering, for providing absolutely top-notch support 
in every matter. A big thank you.

[LayerJet](http://layerjet.com/) are currently our primary mirror, and work directly with the project at release time to ensure things go smoothly (Today is a Sunday!) -- thank 
you very much 🙂

And lastly, an enormous thank you to the [GNOME project](http://www.gnome.org/) and Linux developers everywhere. Without the foundation provided, Evolve OS 
wouldn't exist.

## Moar screenshots


{{< altimg "https://solus-project.com/release_images/firefox.png" >}}

{{< altimg "https://solus-project.com/release_images/installer2.png" >}}


{{< altimg "https://solus-project.com/release_images/menu.png" >}}