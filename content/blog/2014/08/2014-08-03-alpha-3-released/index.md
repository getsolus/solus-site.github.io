---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- News
date: "2014-08-03T18:55:28Z"
title: Alpha 3 Released
url: /2014/08/03/alpha-3-released/
---

I am pleased to announce the release of Evolve OS Alpha 3. This image is only suitable for 64-bit machines, and is not yet EFI capable. This release incorporates all recent 
updates, including X.Org 1.16.0, MesaLib 10.2.4, Linux Kernel 3.15.6, Firefox 31.0 and the GNOME 3.12 stack.
<!--more-->
This represents the third and final alpha of the Evolve OS images, as we're moving towards daily-builds and then beta stages. Please help to identify issues 
within the system so that we can make Evolve OS as enjoyable an experience as possible.

![relimg](https://solus-project.com/release_images/gnome-cc.png)

## Explaining the missing EFI image

It became painfully obvious today the installer needs an overhaul to handle EFI nicely, so we're going to publish a delayed EFI image later this week as a daily, keep checking 
and a blog post will go up as and when its ready. For the curious we'll be using gummiboot only for (U)EFI machines. GRUB2 will not be supported in this configuration.

## Main changes

As previously stated all updates have been included in this release, bringing the main components of the stack up to date. Please also note that this is the very last alpha 
release of Evolve OS, as we're now moving to daily builds. We'll branch again for the beta1 release, as and when its ready.

ALSA should now be correctly configured and integrated with PulseAudio -- you can verify this by attempting to listen to a flash video in YouTube via headphones. 
The volume should also stay set now. On the first start of your fresh install note you'll still need to unmute.

## Downloading Evolve OS

Please visit the downloads page to download the latest ISO.

### Note!

Please use `dd` or equivalent to write the ISO to a USB stick if this is your preferred method (Much faster than CDs) -- note that unetbootin is **NOT** compatible.

## Updating from previous releases

Update using the following command:

```
sudo pisi up
```

## Giving feedback and getting involved

There are a few ways to embrace the community. We have our own [forums](https://solus-project.com/forums/) and [IRC channel](irc://irc.freenode.net/#evolveos) over at 
Freenode, as well as our [Google+ community.](https://plus.google.com/u/0/communities/103032596316713958671). Make sure you pop in and chat! 🙂

Also note we're [I am pleased to announce the release of Evolve OS Alpha 3. This image is only suitable for 64-bit machines, and is not yet EFI capable. This release 
incorporates all recent updates, including X.Org 1.16.0, MesaLib 10.2.4, Linux Kernel 3.15.6, Firefox 31.0 and the GNOME 3.12 stack.

This represents the third and final alpha of the Evolve OS images, as we're moving towards daily-builds and then beta stages. Please help to identify issues within the 
system so that we can make Evolve OS as enjoyable an experience as possible.