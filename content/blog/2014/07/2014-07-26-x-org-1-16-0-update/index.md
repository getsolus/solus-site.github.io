---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- packages
date: "2014-07-26T17:44:54Z"
title: X.Org 1.16.0 Update
url: /2014/07/26/x-org-1-16-0-update/
---

Users will now receive the X update when updating their installed version of Evolve OS. Several packages were updated and/or introduced, and the following is a 
list of key versions:
<!--more-->
* X.Org 1.16.0
* Mesa 10.2.4
* libdrm 2.4.55
* Intel Graphics Driver 2.99.914
* Nouveau Graphics Driver 1.0.10
* Radeon Graphics Driver 7.4.0
* libevdev 1.2, evdev Input Driver 2.9.0

![relimg](https://solus-project.com/release_images/xorg.png)

All drivers were updated where possible (newest versions existing) or rebuilt against the new X version. Note that initial vdpau support has been included, 
though vdpau-gl support is yet to be provided, and will be accompanied in the future by a sister firmware installation package.

To update, simply issue the following command:

```
sudo pisi up
```