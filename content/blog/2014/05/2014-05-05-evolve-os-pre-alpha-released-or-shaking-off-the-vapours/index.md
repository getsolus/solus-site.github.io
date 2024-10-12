+++
author = "ikey"
categories = [
"News"
]
date =  "2014-05-05T14:48:52Z"

title = "Evolve OS Pre-Alpha Released (Or shaking off the vapours)"
url = "/2014/05/05/evolve-os-pre-alpha-released-or-shaking-off-the-vapours/"
+++

Hello all,

As a follow up from yesterday's status update, well, it boots! So today I'm happy to release a **pre-alpha validation ISO**. Note this ISO is only available as a 64-bit system, 
and is not persistent! The desktop and installer are deliberately absent from this ISO, but you can use it to validate the system base, compiler, etc.<!--more-->

{{< relimg "Screenshot-from-2014-05-05-152458.png" >}}

### What's in the system?

This is a 64-bit LiveCD ISO, which is also bootable on a USB stick. It features the following software versions:

* GCC 4.8.1
* binutils 2.23.2
* glibc 2.18
* Linux kernel 3.14.2
* bash 4.2.045
* OpenSSL 1.0.1g
* systemd 206
* And a fair few more

Those quick to observe might notice slightly older versions, such as glibc 2.18 vs 2.19. Note this is completely intentional, and they are unlikely to be updated 
beyond security patches or point releases in this cycle.

Please also note that there is no desktop included, nor is there any form of networking or firmware available. This is done deliberately as this is only a pre-alpha, 
its not something that will be updated. Alpha 1 will be the beginning of our release cycle (which will come in around 3 weeks).

### What do you need, Ikey?

I could do with some help validating the base system works, and I also want to ensure that at the base level it is **functional.** There are bound to be some bugs 
inherited from SolusOS 2, and the most enormous change was migrating from a 32-bit toolchain to a complete 64-bit system.

I'd also like the compiler works for everyone (simple .c files right now :)), things don't crash and all components actually *work* (check pisi list-installed and pisi 
info to find things to play with)

### Known issues

* IDE CDROM booting isn't possible with this LiveCD. This is inherited from SolusOS 2
* "quiet" isn't enabled in the kernel cmdline, so you'll get a spammy start. This is intentional.
* Some branding changes are still present from SolusOS 2 (grub, sudo commentary, kernel, etc.)
* gnutls and sudo are not yet updated. This will be addressed for Alpha 1.
* syslinux doesn't display splash.jpg on boot
* Boot does not support EFI. This will be addressed in the future. Please use legacy mode (BIOS) on newer UEFI machines.
* bash-completion is ancient. We can now switch to the Debian maintained bash-completion package in the next image.

### **Reporting Issues**

Please leave issues in the Evolve OS Google+ Community for now, as we currently have nowhere to
host bug trackers or IRC channels.

### **Downloading/running Evolve OS**

The download is 447MB in size. It would've been half the size but the system.devel component is also present so you can verify compilation works, etc.

MD5SUM:

**fa72258afbc98905dd2aac70eded1302 Evolve-OS-PreAlpha.iso** 

Please use this link to download Evolve OS. I'm under no delusion that the server will probably come under a heavy load (and potentially die a few times), 
but we've literally just exited the vapourware stage with no resources. If you want to mirror, please do! Host it, shoot me an email and I'll update links. When there are 
more than 2 mirrors the images subdomain will be removed to save the server load.

Edit: Thanks to LayerJet you can now download from the following locations:

* Download from Germany
* Download from France

IDE Booting isn't working right now, no doubt due to the kernel configuration. To boot using qemu: (all options are actually required, ensure your machine supports KVM)

**qemu-system-x86_64 -enable-kvm -drive file=Evolve-OS-PreAlpha.iso,if=scsi,media=cdrom -vga std**

In VirtualBox just ensure you use a SATA drive to add the CDROM. Note VirtualBox attempts IDE by default.

For the brave, this is a hybrid ISO. You can dd to a USB and try it on baremetal!

The root password is **root**, and there is a normal sudo-enabled user named "**live**" with no password. Please ensure sudo works too!

### **And lastly..**

This release has been a long time in coming. Again, remember it is only a pre-alpha, but it does indicate that Evolve OS now legitimately exists and we're now 
on the path to real releases. I want to extend my personal thanks to everyone who has supported both myself, and my projects. I look forward to your 
feedback on this initial ISO, and forging stronger relations with others in the community who share the same vision.
