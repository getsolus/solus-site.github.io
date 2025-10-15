---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- News
- Releases
date: "2015-03-16T02:56:51Z"
title: Solus Beta 1.1 Released
url: /2015/03/16/evolve-os-beta-1-1-released/
---

The Solus Project team is pleased to announce the immediate availability of Solus Operating System Beta 1.1. This release focused on stability and bringing the core 
systems up to scratch. Please note that as this is an update to Solus Operating System Beta 1 (Quality Cycle), changes that are intended for beta2 will not be present 
(such as UEFI support). Also note Solus is only available as a 64-bit system. 

<!--more-->

#### Core changes

Solus has had several core parts updated, including, but not limited to:

- Linux kernel 3.19.1
- GCC 4.9.2
- Clang/LLVM 3.5.0
- systemd 218

Many Solus packages are now being built with Clang by default, and as such we have begun to reduce the overall footprint of the system. A live booted Solus Beta 1.1 (via USB) will use around 185-190MB of RAM idle on a Thinkpad X1 Carbon, and boots in 2.318s on an Intel NUC (D54250WYK) installation.

#### Issues resolved

Unfortunately with our last ISO some users were unable to boot due to a conflict regarding USB3. This has since been resolved, and is a result of the xhci module 
split in Linux 3.18. As such we have rigorously tested all recent ISOs in a variety of boot configurations, and we are now 100% confident that Solus boots on USB3.
 
Many bugs present within the Budgie Desktop itself have also been resolved, such as clean log outs. Performance and stability issues have been addressed across the 
board, and changes for usability too. Users will now notice they are no longer required to enter any passwords on the Solus Beta 1.1 image, which will make simple tasks 
such as connecting to the WiFi, simple again. We also have full multimedia key support within Budgie, as well as many fixes to ensure Qt and Java applications behave in 
a native and consistent fashion.
 
Many more packages have entered the repos, and are entering daily. We revamped our build process, and have switched to a YAML based file format (ypkg) to describe 
package builds, with an overlayfs-powered chroot builder to greatly speed up our development processes. During this Quality Cycle the repository has seen over 300 
commits in a concerted effort to stabilise and improve our core system.
 
Users please note that the Evolve OS Software Center is currently in its infancy. LibreOffice is available, and VLC is preinstalled with full codec support. The re-categorisation 
of the software center will make many hidden packages visible, but this will come throughout the week via updates. Simply typing "libreoffice" into the search bar of Evolve 
OS Software Center will reveal these packages.
 
Graphical issues suffered on some Intel chipsets have also been resolved through updates to the graphics driver, and as such resolve visual artefacts often seen with 
window shadows.

#### Issues remaining

- Firefox (36.0.1) is known to crash on certain systems when opening a new tab. This is currently being worked on and an update will be issued during the week.
- The installer has no accessible shortcut directly on the Budgie Panel. For now you may search for "install os" in the Budgie Menu (invoke it using the "Window key")

#### Obtaining Evolve OS
 
Solus Operating System is distribute as an "ISO" file. This is a raw disc image that can either be burned to a CD or DVD, and then booted like any other system. It is also 
installable, but we caution you that this is a beta system, thus not best suited for production environments. Optical media is much slower than USB drives, as such we 
recommend you write the image to one of these instead. Evolve OS is incompatible with unetbootin, so we would advise you to use [Rufus](https://rufus.akeo.ie/) 
on Windows, or if you are comfortable using Linux already, dd. Various solutions for Linux exist, please check with your own distribution first for their recommended 
method that performs an **image write**, and not a file copy/extract.
 
Now visit our [Download ](https://solus-project.com/download/) page to grab your copy of Solus. We hope you enjoy, and look forward to your feedback! Use the 
community links at the top of this webpage to contact us either by [IRC](irc://irc.freenode.net/#evolveos), or through our [forums](https://solus-project.com/forums/).