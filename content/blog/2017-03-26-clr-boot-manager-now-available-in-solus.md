+++
categories = ["news"]
author = "joshua"
date = "2017-03-26T19:52:23+03:00"
title = "clr-boot-manager now available in Solus"
url = "/2017/03/26/clr-boot-manager-now-available-in-solus"
featuredimage = "2017/03/clr-boot-manager.jpg"
notitle = true
+++

We're happy to announce the rollout of  [clr-boot-manager](https://github.com/ikeydoherty/clr-boot-manager) in Solus's stable repository. clr-boot-manager enables a **more bulletproof  update experience** by handling the maintenance and garbage collection of kernels, as well as configuration of GRUB and UEFI. Furthermore, it enables us to store older, known-working kernels, so in the event a kernel upgrade results in the inability to boot, you'll still be able to go back to a known, working configuration of your system.

clr-boot-manager also **addresses modules of the currently in-use kernel being removed from the disk** during an update. As an example, if we have kernel 4.9.17 and are updating to 4.9.18, those actually use *unique* paths on the disk, i.e. `/lib/modules/$version`. Prior to clr-boot-manager, those modules would be removed, meaning if the module wasn't previously loaded, it can't load. This would result in USB devices not functioning, like a USB headset or mounting an external USB. A worse case would be it failing to load the NTFS filesystem, thus not being able to mount an NTFS disk. This would result in Windows disappearing during GRUB, since it could no longer "see" it.

On the configuration front, clr-boot-manager enables easier management and use of custom cmdline arguments. Simply apply your modifications / additions to the `/etc/kernel/cmdline` file and re-run `sudo clr-boot-manager update`. This is useful if you want to add arguments such as `i8042.nomux=1`, `resume=/dev/somePartition`, etc.