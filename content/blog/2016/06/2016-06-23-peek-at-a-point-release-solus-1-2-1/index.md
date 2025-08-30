---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
categories:
- News
- Plans
date: "2016-06-23T17:44:22Z"
title: 'Peek at a Point Release: Solus 1.2.1'
url: /2016/06/23/peek-at-a-point-release-solus-1-2-1/
---

A lot of [incredible work coalesced for Solus 1.2](https://solus-project.com/2016/06/20/solus-1-2-shannon-released/), ranging from improvements to our flagship desktop environment Budgie to significant performance gains in the underlying system. 
The Installer and Software Center were built from the ground up to address a wide variety of pain points and make the use of Solus easier for everyone. We also were the first operating system to ship the new 
[Arc Icon Theme](https://github.com/horst3180/arc-icon-theme), not only as the default for Solus 1.2, but also the first to make it readily available in the repo. 

There are always a few things we would've liked to have added in, but just didn't make the cut. We hinted at some of the upcoming improvements in our release announcement, and we'd like to go more in-depth about them now. So let's take a peek at Solus 
1.2.1, a point release we will have in **mid-July**.

#### Advanced Storage Configuration

In Solus 1.2.1, we'll support the use of advanced storage configuration in the Solus Installer, including RAID, LVM / LUKS, and full-disk encryption. Whether you're wanting to keep a simple snooper from looking at your vast collection of gifs and pictures of food 
or wanting to keep your entire system secure, we want to make it easy to do so.

#### Full IBUS Support

In Solus 1.2.1, we will be continuing our efforts to improve internationalization and multilingual usage. With full IBUS support, you can expect better support for Chinese / Chinese Phonetic, Japanese, Korean, and Vietnamese input methods.

#### Hardware Support

![relimg](vulkan.png)

We have updated our [linux-firmware](https://git.solus-project.com/projects/linux-firmware/) to introduce more hardware support, such as AMD Polaris UVD firmware and additional Intel Bluetooth devices. Solus 1.2.1 will see Vulkan support for 
Intel, OpenGL 4.3+ support across a wide range of hardware [thanks to Mesa 12.0.0-rc4](https://git.solus-project.com/packages/mesalib/commit/?id=2762dac94c9a09f1553ea6146d84e553f080e102), and Skylake improvements with the latest 
syncing of [xorg-driver-video-intel](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=9a7ddaed1fcf713c6efe3aa6e18e405cd90e6476).

#### Software Center

##### Background Service

The Software Center in Solus 1.2.1 will feature a background service to automate the checking of software updates, which will discretely notify users of updates and will remain in Raven's Notification View until the user has acknowledged it. The background 
service will also abide by the user's connection settings, such as disabling the background service on a metered connection, and provide the user the ability to toggle that functionality on/off.

##### Third-Party

In addition to the background service, the Software Center will include a more advanced mechanism for installing 3rd Party software to replace the existing, admittedly primitive prototype.

#### The Everlasting Mission of Performance

With the 1.2 release, we started putting the gears in motion to facilitate greater performance improvements in Solus, and a fair number of those were in relation to gaming.

This is an ongoing challenge and one we'd gladly have your help in realising faster. If you're experienced in real world graphics benchmarking, i.e. in a gaming context, drop us a line, we'd love to hear from you. We want to do our utmost to ensure that Solus 
flies, and with your help, we can do that, and track the progress in a sensible fashion over time.