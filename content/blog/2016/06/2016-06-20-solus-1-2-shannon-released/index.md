    +++
author = "joshua"
categories = [
"Budgie",
"News",
"Releases"
]
date =  "2016-06-20T02:53:43Z"
title = "Solus 1.2 Shannon Released"
url = "/2016/06/20/solus-1-2-shannon-released/"
+++

#### Overview

We are proud to announce the release of Solus 1.2, the second minor release in the Shannon series of releases. Solus 1.2 builds upon the groundwork of 1.1 and 1.0, with continued improvements to Budgie, a huge focus on software optimizations, in addition 
to laying the framework for providing a performant gaming experience. Solus 1.2 furthers us on our journey to realizing the future of home computing.

##### Solus

{{< relimg "Budgie1.2.png" >}}

Solus is an operating system that is designed for modern PCs. Every tweak, configuration, and optimization enables us to deliver a singular, cohesive desktop experience.

##### Budgie

{{< relimg "BudgieApplets1.2.png" >}}

Budgie is the flagship desktop of Solus and is a Solus project. Designed with the modern user in mind, it focuses on simplicity and elegance. Written from scratch with integration in mind, the Budgie desktop tightly integrates with the GNOME stack, employing 
underlying technologies to offer an alternative desktop experience.

We have continued to improve Budgie over the course of the Solus 1.2 development cycle, with development changes shipping in Solus 1.2. This release features a multitude of bug fixes and some of the following highlighted improvements:

-  Fix stretching of GTK Switches in CSS themes.
-  Fixed some untranslatable strings.
-  Icon and GTK themes are now properly detected using our new ThemeScanner.
-  Notifications will no longer expand Raven.
-  Resolved drawing issues for Calendar, Sound, and MPRIS applets.
-  Some users experienced instances where battery / power indicators would not accurately reflect the amount of batteries on their system, typically due to changes between critical state and charging. These issues should now be resolved.
-  We now ensure multiple applications abide by the user's icon theme, such as Atom, Gnome Builder, Gnome Photos, Gnome TODO, Telegram, and more.
-  While not specifically affecting Solus, Budgie has received multiple GTK 3.20 fixes.
-  You can now click the desktop while Raven is open and have Raven be dismissed.

For more details on Budgie, [click here](https://solus-project.com/budgie/).

#### Software Optimizations

Solus 1.2 delivers a large set of targeted software optimizations that leverage our knowledge in profile-guided optimizations and inspiration from the work done by the [Clear Linux* Project for Intel Architecture](https://clearlinux.org/). As a result 
of Solus specifically targeting modern personal computing devices and the x86_64 architecture, we are able to make bolder optimizations on software than other tier-one operating systems. Here are 
[some results](http://openbenchmarking.org/result/1606039-HA-1606036KH29) from Phoronix Test Suite benchmarks comparing Linux Mint 17.3, Ubuntu 16.04, and Solus 1.2:

{{< relimg "jpeg_decode_fast_integer.png" >}}

{{< relimg "jpeg_decode_float.png" >}}

{{< relimg "jpeg_decode_integer.png" >}}

{{< relimg "libxml2_parsing.png" >}}

{{< relimg "xz_decompression.png" >}}

Although Solus is tested across a wide range of hardware, and enhanced accordingly, we wished to show the scaled improvements in common, base-level components, that comprise the moving parts of the majority of user-facing applications, on even the 
cheapest entry-level hardware. The benchmarks above are representative of entry-level hardware testing and may vary based on your own hardware.

#### Performant Gaming Experience

{{< relimg "Screenshot-from-2016-05-25-05-37-19.png" >}}

In Solus 1.2, we aimed at getting you the most performant gaming experience. We have landed multilib packages and replaced Steam's old pre-packaged and unoptimized runtime with our own native, optimized runtime.

{{< relimg "LinuxSteamIntegration.png" >}}

In addition to runtime replacement, we've developed an open source tool called [Linux Steam Integration](https://github.com/solus-project/linux-steam-integration) to enable you to easily switch between native and pre-packaged runtime, as well 
as forcing 32-bit mode for Steam. This will help ensure that you not only get the most performant gaming experience, but ensure that the widest variety of Linux games are available to be enjoyed!

As stated by [Softpedia](http://news.softpedia.com/news/solus-project-announces-new-tool-for-enabling-better-steam-integration-on-linux-504567.shtml) on the announcement of Linux Steam Integration:

> "thanks to this little open-source project, which any OS vendor can integrate into its GNU/Linux operating system, things should run more smoothly for gamers."

We have also landed support for a multitude of gaming devices, such as the Steam Controller, DualShock controllers, and more.

#### Software Center

We're happy to announce that the Software Center in Solus 1.2 has been rewritten to provide a better experience at discovering, obtaining, and managing software.

{{< relimg "software_center.png" >}}

Additionally, you are now able to install a select set of supported 3rd Party software right from within the Software Center. No longer is it necessary to drop down to a terminal for the installation of applications like Chrome, it's just a few 
clicks away!

#### Initial Installation Experience

The installation of Solus 1.2 has been made significantly easier with the introduction of improvements to our Installer.

##### Keyboard Layout and Language

{{< relimg "keyboard_layout_language.png" >}}

In the new Installer, you able to select your keyboard layout and language in a more fluid manner.

##### Simplified Installation

{{< relimg "InstallerStrategy1.2.png" >}}

The new Installer features a vastly simplified experience for configuring how you want to install Solus. We still maintain the capability to manually partition your system, however it is no longer necessary. We implement several "strategies" for the configuring 
of your system:

-  Dual-boot strategy: Solus will install alongside your existing operating system. In the event you have more than one operating system installed, we will choose the operating system utilizing the most disk space and provide you the capability to choose how 
much space Solus should use.
-  Full-disk strategy: Solus will erase all existing content on disk and install Solus.
-  Manual strategy: You can create, resize, and manually configure disk partitions yourself.
-  Replace OS: Solus will replace the largest Linux-based OS on your system.

##### Fixes & Other Improvements

We have addressed a few issues individuals had with the installation of Solus with our previous installer, such as:

-  eMMC storage devices should now be recognized.
-  Previously, you were able to enter a mixed-case hostname for your device, which would prevent the installation of Solus. We now indicate when your hostname is incorrect.
-  We now automatically create the ESP (EFI System Partition) on machines that use UEFI.
-  We now dynamically change the keyboard layout rather than it being fixed to en_US.
-  You are now able to create and set a separate home partition. This isn't the recommended behavior, due to the potential conflicts you may have if you're using a home partition from another Linux operating system, but the option will exist nonetheless to 
give you the most flexibility.

#### General Improvements

In the Solus 1.2 development cycle, we have addressed over 150 bugs from a wide range of categories, ranging from Budgie to software availability. Your choice for software is larger than ever and issues like those listed below have been resolved:

-  Audacious and Baobab would open if you tried opening a directory from an application, such as Chrome, Firefox, Transmission, etc. This is no longer the case.
-  Files (Nautilus) would lock up when copying files from specific devices and network shares. This should be resolved with improvements made to GVFS that have landed in Solus 1.2.
-  We have improved support for RTL-based languages by adding more font support.

We also ship an absolutely stunning new wallpaper, in addition to our current selection, generously provided by <a href="http://www.twistedpixelsphotography.com/">Twisted Pixels</a>.

#### Software Availability

Solus 1.2 ships out-of-the-box with numerous applications to enhance the desktop experience. Below are some highlights of applications Solus 1.2 ships with:

-  firefox 47
-  nautilus 3.18.5
-  rhythmbox 3.3.1
-  thunderbird 45.1.0
-  vlc 2.2.4

##### Firefox, GTK, and Icon Themes

We enhance the out-of-the-box desktop and Firefox experiences by defaulting to the [Arc GTK Theme](https://github.com/horst3180/arc-theme) as well as 
[Arc Firefox Theme](https://github.com/horst3180/arc-firefox-theme). For iconography, we are proud to be the **first** operating system shipping with the new and absolutely stunning 
[Arc Icon Theme](https://github.com/horst3180/arc-icon-theme), with a fallback to Moka.

##### System

Solus 1.2 ships with gstreamer media libraries, a multitude of system utilized fonts such as Clear Sans and Hack, and the stunning Breeze Snow cursor theme. We leverage the GTK 3.18 stack, in accordance with the policies set forth in our 
[Release Cycle](https://solus-project.com/release-cycle/) document, and like Solus 1.1, Solus 1.2 is UEFI enabled via goofiboot, a distribution-agnostic fork of gummiboot, to ensure a wider variety of modern hardware is capable of using Solus.

In addition to the further hardware enablement, Solus ships with the latest LTS version of the Linux kernel, 4.4.13.

#### Looking Towards The Future

Solus 1.2 is the embodiment of the hard work and dedication of countless individuals. Before looking towards the future, we want to thank our Patrons, those that donated via PayPal, and DediServe for supporting this project, as well as horst3180 and 
Sam Hewitt for contributing user experience improvements.

We have a long road ahead towards realizing our goals and ideals for the future of home computing. We thank you for being a part of this journey, supporting us, and for those piqued we'll mention a few things that are coming soon 
(**cough* before 1.3 cough***):

-  Full-disk encryption and LVM support.
-  Full IBUS support due to technical interactions between GSD and Budgie WM

#### Download

Solus 1.2 ISOs can be downloaded across official and community-supported mirrors internationally, as well as BitTorrent, by [clicking here](https://solus-project.com/download).

#### Press

If you are a member of the press, we recommend visiting our [Press Center](https://solus-project.com/press-center/) for more information and branding information.

  