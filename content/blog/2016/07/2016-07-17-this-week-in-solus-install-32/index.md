---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- News
- Packages
- Plans
- TWIS
date: "2016-07-17T19:17:00Z"
title: 'This Week in Solus -- Install #32'
url: /2016/07/17/this-week-in-solus-install-32/
---
 
Welcome to the 32nd installation of This Week in Solus. 

#### Solus 1.2.1 Releases Tomorrow

We're really excited to be releasing our last "traditional" release, Solus 1.2.1, tomorrow. We opted to delay by a day just to ensure we don't push ourselves too hard after the recent Hackfest, as well as being able to take the time to do additional QA.

#### Infrastructure Improvements & Closure of 1.0 Upgrade Path

We have used Bugzilla since mid-2015 and while it has served us well, we are continuously reviewing alternatives and as of Friday, July 22nd, **we will be locking down our BTS**. This will enable us to shift to a better alternative and cherry-pick bug history 
to migrate over.

This downtime for the Bugzilla will also open the window for additional infrastructure maintenance and **deprecate the upgrade path** from Solus 1.0, which was released over 6 months ago. This means that updating from 1.0 release 
**will no longer be possible** after Friday and we will be removing the old repository. If you have already upgraded to 1.2, whether it be through the migration tooling during 1.1 or after, **you will not be affected**.

#### Impromptu Hackfest & Sundays with Solus

On Saturday, we decided to have an impromptu hackfest to work on items for Solus 1.2.1. If you have the time to watch, we'd recommend it!

{{< youtube "hZexPAobsSo" >}}

If you just want a summary of the impromptu Hackfest or want to hear what is coming up next week, check out our short Sundays with Solus!

#### Package Highlights

A lot of packaging work occurred during the week as well as in our Impromptu Hackfest, here are some highlights:

New:

- [bullet3 2.83.7](https://git.solus-project.com/packages/bullet3/commit/?id=c03a036d047bd678040556eabb67b8ba5ed3f1db)
- [calibre 2.62](https://git.solus-project.com/packages/calibre/commit/?id=3cef8bde20f6985b148d124960a9f7384caea730)
- [cmus 2.7.0](https://git.solus-project.com/packages/cmus/commit/?id=8220262b75ab4f7938e9ef8313238818390f423d)
- [dbus-sharp 0.8.1](https://git.solus-project.com/packages/dbus-sharp/commit/?id=fadb115ea837b97c12b7f1d59c246278945243bc)
- [ffmpegthumbnailer 2.1.1](https://git.solus-project.com/packages/ffmpegthumbnailer/commit/?id=7cec3d396b9f6326145387922904cbc7e9446fde)
- [graphviz 2.38.0](https://git.solus-project.com/packages/graphviz/commit/?id=79daa487277e6da27b3de0552a047841ad4fee4a)
- [gnome-pie 0.6.8](https://git.solus-project.com/packages/gnome-pie/commit/?id=8643fc4e16c66a753b7d79b8e553a671e994d940)
- [kicad 4.0.2](https://git.solus-project.com/packages/kicad/commit/?id=919a3ed2577bbeef43db9f962afd14c436474870)
- [lmms 1.1.3](https://git.solus-project.com/packages/lmms/commit/?id=bb26129ea2f8d7997f00672ce9eada427f11c6f1)
- [mtpaint 3.4](https://git.solus-project.com/packages/mtpaint/commit/?id=3bb4c1fe1593e1d51a5042c5c9216b1f7c0364eb)
- [musescore 2.0.3](https://git.solus-project.com/packages/musescore/commit/?id=504f93797cb8b5c94ff0ce8fe355a6beb6a5e5b2)
- [newt 0.52.19](https://git.solus-project.com/packages/newt/commit/?id=c496feab47c285d5a62ea0afe441a2fc6b401bbc)
- [rawtherapee 4.2](https://git.solus-project.com/packages/rawtherapee/commit/?id=5c8949a55a7e9f37627ec3b4cb4fcbb5b13cae31)
- [sassc 3.3.6](https://git.solus-project.com/packages/sassc/commit/?id=9ee914c1d23e60f3e0d8f8a1381da8f7a7ac56e6)
- [sloccount 2.26](https://git.solus-project.com/packages/sloccount/commit/?id=cc88f2b8b140d2ed62fd54dcf1dfbd3f803bf88c)
- [texlive 20160523b](https://git.solus-project.com/packages/texlive/commit/?id=0a6ca6b9d7d914bb59fbd78b2301d1e9d18167b4)
- [texstudio 2.11.0](https://git.solus-project.com/packages/texstudio/commit/?id=3d09425db1019d060e14320dcf1b8a5989064127)
- [xkill 1.0.4](https://git.solus-project.com/packages/xkill/commit/?id=dbe4aa164754934ee78574dce071b3302c7ddf3a)

Updated:

- [codelite 9.2](https://git.solus-project.com/packages/codelite/commit/?id=b1e2d88a281d5cf5a90df0ee771ab70f49946f9a)
- [dia: Enforce --integrated for single-window mode.](https://git.solus-project.com/packages/dia/commit/?id=901de860fc7ad5dd203f91445ab925793bcd20b4)
- [easytag: Drop the inode/directory mimetype handler.](https://git.solus-project.com/packages/easytag/commit/?id=8816a748d0afbd3e2bf8aa69ded24bd519727333)
- [gimp: Update to 2.8.18 and enable ascii exif and jpeg2000 support.](https://git.solus-project.com/packages/gimp/commit/?id=a94df23b611d4a8842096b286d9a4364d65a2f3d)
- [git 2.9.1](https://git.solus-project.com/packages/git/commit/?id=93c971a1a64edd3d773b59bf4de030c1833bc5b0)
- [haste-applet 0.2.4](https://git.solus-project.com/packages/haste-applet/commit/?id=d02803a751c9e015e2f14a397cf2e1242a44870f)
- [hplip 3.16.5](https://git.solus-project.com/packages/hplip/commit/?id=becb01a5db3497b6a27b6284595a6a59e3290ad2)
- [kernel: Enable CONFIG_BRCMFMAC_USB and fix kernel-tools](https://git.solus-project.com/packages/kernel/commit/?id=039f75c76b6b3e3d134a749aa813dfb67a946fb1)
- [r: Now uses lapack for -lapack instead of openblas.](https://git.solus-project.com/packages/r/commit/?id=978c3dd85513780c96d5cbe189a934a157335b02)
- [screenshot-applet 0.3.5](https://git.solus-project.com/packages/screenshot-applet/commit/?id=173db4479e86c2eed651be61a3413cf6a44ae691)
- [texworks 1.6.1](https://git.solus-project.com/packages/texworks/commit/?id=49939f5d86a02890f4f889a1dffd5e4c7a6bda4f)
- [zim: Enable support for following plugins: Insert Diagram, Insert Gnuplot, and Insert Screenshot (via rundeps).](https://git.solus-project.com/packages/zim/commit/?id=19fb607fc6914ca1c3f331d9651ed629e00cde1b)