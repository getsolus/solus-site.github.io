+++
author = "ikey"
categories = [
"News",
"Releases"
]
date =  "2015-06-29T07:48:19Z"
title = "First Unstable Daily ISO"
url = "/2015/06/29/first-unstable-daily-iso/"
+++

We're enormously happy to be shipping our very first daily ISO today! In a nut-shell, its built directly from our latest unstable development material, meaning its brand 
spanking new, and all yours for the humble price of $0.00! This ISO is configured to continue using our unstable software sources, and as such is not meant for production 
usage. However, we'll be uploading ISOs every day now, in a fully transparent development process. This enables you, our awesome users, to give us real time feedback on 
breakages, feature enhancements, and see tangible results every single day.

This image features the 4.1.0 Linux Kernel, Budgie Desktop taken directly from git, latest stable GNOME stack (3.16.x), and many other goodies. New packages are appearing 
in the repositories daily, such as our initial Blender build! As always, get your package requests in, and we'll get them in for you!

### Why now?

We've already finished our beta cycle, this is the road to RC and beyond. And we want to get there without hanging around. With direct community involvement, we can 
achieve our goals very quickly! As an example, today EFI dual-boot is broken in this ISO, tomorrow it won't be. We'll have people verify those issues. As opposed to following 
upgrades continuously on custom installations, we can keep improving the entire experience, and land our installer changes, with real people to test them!

### Sweet. Where do I get it?

Head over to our [download](https://solus-project.com/download) page! Once you've done that, you're going to want to use the appropriate program, be it rufus, or dd, to get 
that ISO onto a USB stick. We really do not recommend engaging in this testing process using CDs. Not only are USBs much faster, they're more reusable. You can use CDs if 
you like, but there are gonna be a lot of ISOs. So unless you really like frisbees, we'd highly recommend the USB option. As always, remember that Solus is 
**not compatible with unetbootin**! Do **not** attempt to use it, as it just does not work. This is the single-most common boot issue by far.

An example dd command (assuming your USB stick is /dev/sdb. Do not write to partition numbers, it will not work!)

```
sudo dd if=Solus-Daily.iso bs=1M of=/dev/sdb
```

Always ensure the device is not mounted or in use. You can use this ISO in virtualized environment, just remember we do not make any optimisations at all for these systems. Solus sticks close to the metal, whether its optimised packages or utilising the GPU acceleration for the desktop environment. Here's an example qemu boot line (Adjust RAM allocation as needed)

```
qemu-system-x86_64 -enable-kvm -m 4096M -cdrom Solus-Daily.iso
```

### Other Awesome Updates

Our [Patreon](https://www.patreon.com/solus?ty=h) campaign is really starting to take shape! We recently hit our first target of $150 a month, which will cover base project running costs. This is a monthly project sponsorship, and helps us to do all the 
awesome things we need to do with the project. As much as we distribute Solus for free, there is much personal financial and time investment involved. The more we can balance, the quicker we can achieve our goals. Solus is a long-standing passion, and 
if we realise our goals of establishing a company, it'll be awesome all around. More hardware, testing, and time to dedicate, as well as a project that is liable. We are aiming for OEM images.. so :]

### Feedback

As usual, leave a comment here, on the [forums](https://solus-project.com/forums/), in our [G+ community](https://plus.google.com/communities/104830131595272878110), or on [IRC](irc://chat.freenode.net/#Solus)!

### Obligatory screenshots

{{< relimg "Screenshot-from-2015-06-29-07-44-32.png" >}}

{{< relimg "Screenshot-from-2015-06-29-07-40-07.png" >}}