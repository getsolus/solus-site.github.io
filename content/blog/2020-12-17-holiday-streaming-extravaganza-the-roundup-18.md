---
title: "Holiday Streaming Extravaganza | The Roundup #18"
author: "joshua"
categories:
- news
- roundup
date: 2020-12-17T13:15:16+02:00
featuredimage: "2020/12/hehe-solus-4_2-releases-soon.jpg"
url: "/2020/12/17/holiday-streaming-extravaganza-the-roundup-18"
---

Welcome to The Roundup #18, your bytes of Solus news. In this roundup, we are talking about our upcoming two week streaming extravaganza, Linux 5.10, new KDE goodies, and more!

<!--more-->

## Holiday Streaming

While most years we would all run off to spend time with our families for the holidays, we all know 2020 has been quite a different year entirely. But that does not mean we can not stay toasty next to our computers, hang around in IRC, and engage in some banter on some live streams.

So from next Monday, December 21st to Sunday, January 3rd, we will be having daily live streams! These live streams will range in subjects and projects, such as:

- A massive Haskell upgrade and rebuilds
- budgie-desktop-view
- ferryd
- libeopkg
- usysconf
- usysconf-dconf

Additionally, Bryan will be having some late night streams working on his pixel editor and we will be having a couple Friday game streams!

We have put together some fancy schedules so you will know the who, whens, and whats regarding the live streams. This schedule uses Eastern Standard Time (which is UTC -5) since Bryan will be the main streamer, but [here is a link](https://www.timeanddate.com/worldclock/converter.html?iso=20201217T150000&p1=421) to a timezone converter so you can figure out when it it starts for you.

If you want to watch these streams, there are a few ways you can do it:

- We have created a [Twitch account](https://twitch.tv/getsolus) which will host either Bryan or myself, with priority going to Bryan.
- When we are both streaming at the same time, you can watch us both using [multistre.am](https://multistre.am/therealdatadrake/joshstrobl/layout3/)
- [Bryan's Twitch channel](https://twitch.tv/therealdatadrake)
- [My Twitch channel](https://twitch.tv/joshstrobl)

Be sure to follow and enable notifications to know when we go live!

{{< altimg "2020/12/holiday-stream-week-1.jpg" >}}

{{< altimg "2020/12/holiday-stream-week-2.jpg" >}}

## KDE Applications 20.12.0, KDE Frameworks 5.77.0, Plasma 5.20.4

{{< altimg "2020/12/dolphin.jpg" >}}

Global Maintainer Friedrich von Gellhorn (a.k.a Girtablulu) has landed the latest improvements to KDE's beloved applications, frameworks, and Plasma desktop environment for Solus users to enjoy this Friday. While we encourage you to read the respective changelogs, we have highlighted some things below!

- Breeze Icons
  - Add icon for True Type XML font
  - Add symbolic name symlink for input-* icons
  - Remove useless blur from kontrast icon
- Dolphin’s address bar is now in the toolbar, for example, and, in Detail View mode, you can set the size to include everything in the folder including the nested folders inside the parent one.
- Elisa, a compact music player, now lets you change the color scheme of the app independent of the system wide color scheme. It also now lets you choose which view to display when the app launches.
- Kate, KDE's file browser, now has an *Open with* menu item.
- KFileMetaData: Add several subtypes for OpenDocument and OpenXML document.
- KNotification: Don’t pass transient hint.
- Konsole now has a configurable toolbar.
- Spectacle, which is KDE's screenshot application, now has an editor that enables you to add smilies, text, arrows, and more.
- Syntax Highlighting
  - C++ highlighting: update to Qt 5.15
  - Zsh, Bash, Fish, Tcsh: add truncate and tsort in unixcommand keywords
- kwin: Fixed Toggle Night Color global shortcut, which used i18n in object name, leading to erratic behavior e.g. when system locale or translations changed.
- plasma-desktop: Use plasma theme icons in kickoff leave view.
- plasma-workspace
  - Fix Environment Canada weather domain.
  - Re-add searching for breeze decoration.
  - The cursor previews are in a layout.

**Changelogs:**

- [KDE Applications 20.12.0](https://kde.org/announcements/releases/2020-12-apps-update/)
- [KDE Frameworks 5.77.0](https://kde.org/announcements/kde-frameworks-5.77.0/)
- [Plasma 5.20.4](https://kde.org/announcements/plasma-5.20.3-5.20.4-changelog/)

## Linux 5.10

{{< altimg "2020/12/linux-5_10.jpg" >}}

As some of you know, we held back linux-current from some of the newer kernel releases due to regressions introduced in 5.7 that prevented some Samsung NVMe devices and controllers from functioning correctly, which would result in failures to boot the OS. These issues were fortunately resolved in 5.10-rc1 and we have been validating every 5.10 release candidate since. With the formal release of 5.10, we are excited to deliver it to our users, with it coming to the stable repositories this Friday with Linux 5.10.1.  Linux 5.10 has a ton of [fantastic changes](https://kernelnewbies.org/Linux_5.10) and we have highlighted some of them below:

- Bluetooth suspend and resume events now get emitted.
- Faster ext4 metadata heavy operations and fsyncs.
- New XFS v5 format that supports widened timestamps to deal with y2038.
- Prevent "ondemand" and "conservative" from being configured as the default cpufreq governor in the case when schedutil is the default choice for the default governor setting.
- Support for various hardware such as new Intel sound SoCs, mute LED support on the HP Elitebook 845 G7, codec support in various cards.
- Support for Thunderbolt for Intel Tiger Lake-H

Alongside these updates, we have updated:

- intel-microcode to 20201118, which has fixes and security updates for Intel gen4 to gen10 processors
- linux-firmware to its latest release, introducing many firmware updates for: Intel Bluetooth, amdgpu, ath10k, ath11k, i915 DMC, and rtw88.
- nvidia-390-glx-driver to 390.138 and introduced patches for fixing compilation against 5.10
- nvidia-beta-driver to 460.27.04
- openrazer to 2.9.0
- nvidia-developer-driver and nvidia-glx-driver has both received patches for fixing compilation against 5.10, as well a patch for a page allocation failure error.
- virtualbox to 6.1.16

We took this opportunity to enable some kernel modules for various features, functionality, and hardware support. Here are some of our changes:

- AMD Renoir Audio Coprocessor support is now enabled via CONFIG_SND_SOC_AMD_RENOIR.
- Additional USB cameras have been enabled via CONFIG_USB_GSPCA_OV534 and CONFIG_USB_GSPCA_OV534_9.
- CONFIG_MFD_INTEL_PMC_BXT is now enabled for Intel PMC driver support for Broxton.
- CONFIG_MT7663U is now enabled for MediaTek MT7663U support
- CONFIG_SENSORS_AMD_ENERGY is now enabled for AMD RAPL MSR-based energy driver support.
- CONFIG_XFS_SUPPORT_V4: Ensures the continuation of XFS v4 format support. While we will eventually deprecate XFS v4 support from our kernel, it is going to be supported for several years and therefore we are not in an immediate need to do so.
- Multiple Intel sound SoCs.
- Multiple NFTABLES flags
- schedutil is enabled via CONFIG_CPU_FREQ_GOV_SCHEDUTIL. `performance` is still the default.

## Mesalib 20.2.3

Mesalib has been updated to 20.2.3 with an update to 20.2.4 coming down the update pipeline soon. Mesalib 20.2 series introduces many fixes and improvements. Some major changes include:

- RADV now uses ACO per default as backend
- Many new supported Vulkan Extensions for ANV (Intel) and RADV (AMD)

If you want to check out all the fixes and improvements, feel free to click on any of the changelogs below:

- [20.2.0](https://docs.mesa3d.org/relnotes/20.2.0.html)
- [20.2.1](https://docs.mesa3d.org/relnotes/20.2.1.html)
- [20.2.2](https://docs.mesa3d.org/relnotes/20.2.2.html)
- [20.2.3](https://docs.mesa3d.org/relnotes/20.2.3.html)

## Packaging Highlights

Here's a highlight of some packages that has been updated this week. Please note that this is not a comprehensive list:

- [aom 2.0.1](https://dev.getsol.us/R4629:0203889a00ba2481b32c9927ee387766d34e720b)
- [apache-ant 1.10.9](https://dev.getsol.us/R365:3b43798d782f7d58444b2276441ab714c8db2d2a)
- [autofs: change local static autofs library to a local shared library](https://dev.getsol.us/R407:8188fe55a631e5497e9340f735b9b277ed1a8ac1)
- [bat 0.17.1](https://dev.getsol.us/R4509:511d8f8f87f6f59b19d2032eb8a4473b2a7b690f)
- [brave 1.18.70](https://dev.getsol.us/R4107:fecd3cbde296ab5c88dc7f50686e7f03e3816f94)
- [dustrac 2.1.0](https://dev.getsol.us/R673:3d1ea042010bba5dab6cc843e85a0d3199344487)
- [eid-mw 5.0.11](https://dev.getsol.us/R684:8381fb7e52f24ec553269bbd57c452bf58ed22a8)
- [flightgear 2020.3.4](https://dev.getsol.us/R770:e5cfa8a7134450dda10ba435ad568ec45e27f6b1)
- [firefox 84.0](https://dev.getsol.us/R755:499f3df92d8e435fb65f70ff32ca50cae3584e54)
- [fontforge 20201107](https://dev.getsol.us/R804:f6d39601cbb500c9f33241c2795c5e9f7945320c)
- [gdb 10.1](https://dev.getsol.us/R878:c61757dd35165614d6e6262a9c81e25ece80a850)
- [gdm 3.38.2.1](https://dev.getsol.us/R881:51022519a41af9e3d674938613dac7e106f940d6)
- [git-lfs 2.13.1](https://dev.getsol.us/R914:e99ca8eb26ce6d76ababcb2ac39d3bc1c2cef384)
- [htop 3.0.3](https://dev.getsol.us/R1411:e9518891bfd4f12014c870bb0cbecaeadcf389b0)
- [kotlin-native 1.4.21](https://dev.getsol.us/R4853:c41af302ba6820827e5009ff2c79db43a3024082)
- [lbry-desktop 0.49.1](https://dev.getsol.us/R5046:89a70c0aa8aed9af19a241050fc7cece10415a45)
- [libheif 1.10.0](https://dev.getsol.us/R4395:945c95a6f367d55cfd2a32d43a6ef0ac7721ac8b)
- [libgtk-4](https://dev.getsol.us/R5107:5ac58944a68d47a2038ec675e5d4134f0fb77342)
- [libusb 1.0.24](https://dev.getsol.us/R1880:9077ac037f92e462c5b2f4c1a4942033331426fc)
- [libvirt 6.10.0](https://dev.getsol.us/R1891:afdb801a2f2b957a0d79925af49f2dfc6531b5c6)
- [lmms 1.2.2 and re-enabled VST support](https://dev.getsol.us/R1974:2552af053ea67ca1ddbb2a95bfe24aa624f2c7ed)
- [mangohud 0.6.1](https://dev.getsol.us/R5038:f13bb46ab75d0bdbf593fc500d6dfa5bb7a3a8aa)
- [mongodb-compass 1.24.1](https://dev.getsol.us/R4994:a7928f896c99f835b56ea07a3c83a865ee14188a)
- [mupdf 1.18.0](https://dev.getsol.us/R4906:b4c450ded2a12ac58815d1f1ac09f22eb9c47f99)
- [nitrokey-app 1.4.2](https://dev.getsol.us/R4518:fc317482f5cbeac7efb48409ad9169439fc1d672)
- [nodejs 14.15.2](https://dev.getsol.us/R2177:5076cf171056d764497372c0573d9bcc4c8b6706)
- [obs-studio 26.1](https://dev.getsol.us/R2214:2883f9d727a49a417e24837b1c256fdcf1480ded)
- [proc-maps 1.0.1](https://dev.getsol.us/R4393:b870874a36f820ae6a6744cbdc5944a2a51b8915)
- [python-qscintilla 2.11.6](https://dev.getsol.us/R2677:d10019d6d182374a0eea1b3d1d88d5ec76903b88)
- [qscintilla 2.11.6](https://dev.getsol.us/R2734:2dfc777dca1ecb21ef231d528477f4dbf98287ee)
- [shellcheck 0.7.1](https://dev.getsol.us/R2897:3ce8fb97d72c813feecc103d7806a921e70d4af5)
- [solus-sc: Drop Flash Player NPAPI and PPAPI support.](https://dev.getsol.us/R2930:e8dd5a1c835b4f0bf47a046e02c2ce2ac9632bc1)
- [tracker 3.0.2](https://dev.getsol.us/R3058:e9576a20683558ad0d413590aa543b4e5b74ca08)
- [vlc: Drop VDPAU support.](https://dev.getsol.us/R3140:99d8cc7ddccd33ed4b0594b7f62b2a30121ce54a)
- [vscode 1.52.1](https://dev.getsol.us/R3148:b26bb3f6b170eb201d880c6c10d5333233188f16)
- [xfsprogs 5.10](https://dev.getsol.us/R3230:012cd61b159d27397bee66b01718ed18bd56c458)