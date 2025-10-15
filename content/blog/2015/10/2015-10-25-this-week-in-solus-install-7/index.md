---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- News
- TWIS
date: "2015-10-25T18:23:15Z"
title: 'This Week in Solus -- Install #7'
url: /2015/10/25/this-week-in-solus-install-7/
---
 

Welcome to This Week in Solus, Installation #7. As you may (**or may not**) have noticed, this blog post is in a different location. As of this blog post, these installations are official. If you want to see previous installs, you can read them by 
going [here](http://joshuastrobl.com/tag/this-week-in-solus/).

### Project Announcements

**Core Team Roles**

We have some project announcements to make this week. Roles and titles have been provided to core team members.

- Ikey Doherty has been provided the obvious role of Project Manager. He will do what he currently does, which is develop and oversee the Solus Project and the work being done on the Solus operating system.
- Justin Zobel has been provided the role of Community & Social Media Manager. He will oversee social media accounts and community issues that are not under the scope of the Communications Manager.
- I, Joshua Strobl, have been provided the role of Communications Manager. I will help facilitate the communication between the media and the Solus Project, inform our community on information pertaining to the Solus Project, and work 
with Justin on ensuring issues brought up by the community are addressed.

These roles will accompany the coding and package development that is existing currently.

**Community Guidelines**

Some formal rules and guidelines have been set within the Solus Project. We have also posted the guidelines of the team so the community can understand what our process is for enforcing guidelines.

You may view these community guidelines by going to [this page](https://wiki.solus-project.com/Community_Guidelines).

### Status of Budgie

As Budgie 2.0 is in development, the status of Budgie will remain a talking point of these weekly updates. As of this week, Budgie is currently pending some cleanup and merging of the codebase. There has been some issues discovered in the current 
system, such as notification applet crashes, and as a result those issues will need to be addressed as well.

### Status of GNOME 3.18 Stack

As we work on moving to the GNOME 3.18 stack, there has been a multitude of issues that have been addressed. Currently we are working on addressing an issue where keyboard layouts in Mutter do not function as intended.

### Status of Steam and multilib

There currently is no news to report on Steam and multilib (32-bit libraries). Currently other aspects of the Solus operating system are being addressed, which you can read about in the **Current Work** section of this blog post.

### Debug Information Packages in Solus

We are currently in the process of creating debug information (**-dbginfo**) packages for software in the Solus operating system. These debug information packages will enable us to debug software under Solus and we plan to have a system to 
automatically generate stack traces for coredumps uploaded to our system. This will enable us to track and address software issues more easily. In the event they are found to not be Solus-specific, such issues will be reported to upstream package 
providers for fixing.

### Current Work

Currently, the driver management graphical tool, referred to as DoFlicky, is taking priority. We have recently enabled the NVIDIA 304xx legacy driver, with 340xx and AMD planned as well. We will have full automatic driver detection and installation.

### Package Updates

The following package updates are broken down based on contributor and within each contributor section, a "new package" and "updated package" sections (where it applies). Not everything that landed is included, just some major items.

#### Ikey Doherty

##### Updated

- [budgie-desktop: Updated to 8.3 for maintenance updates](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e3d30fd6f970cb83fa964b3b83f3fa5d13ae992b)
- [gvfs: Enabled CDDA and Avahi integration](https://git.solus-project.com/packages/gvfs/commit/?id=3e030bc8c36e713530713f1a9ffe6edb1d233742)
- [kernel: Linux kernel has been updated to 4.1.11](https://git.solus-project.com/packages/kernel/commit/?id=b2203d7ba01e1ee1b865da1cad73ef4773c1a20c)
- [pisi: Implemented proper build-info based dbginfo](https://git.solus-project.com/packages/pisi/commit/?id=ac8bfcfd454db21e93965010bcaaa8332d08e5b9)
- [valgrind has been updated to 3.11](https://git.solus-project.com/packages/valgrind/commit/?id=798c17f0c43af5fb4537f4a28d8674378d10aa70)
- [xorg-driver-video-intel has been updated to re-enable DRI3](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=3aeaabf09cd2dabedad71bfd4b56660be178a756)
- [xorg-server has been updated to fix modesetting driver](https://git.solus-project.com/packages/xorg-server/commit/?id=f245e21d592c405fb41fc165ce454644a5ca2d03)
- [ypkg now force-purges .la](https://git.solus-project.com/packages/ypkg/commit/?id=60472e3986d15fcd6b5c9ae203c7a0b80e1e9768)

##### New

- [libcdio-paranoia 10.2.0.93.1 has been added](https://git.solus-project.com/packages/libcdio-paranoia/commit/?id=19ff5ca5b2a8acc5928708cf3b2a64a6533efe85)
- [nvidia-304-glx-driver 304.128 has been added](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=1b2ee1e928299055e58af78095520fc3342d9b22)

#### Justin Zobel

##### Updated

- [flash-player-nonfree has been updated to 11.2.202.540](https://git.solus-project.com/packages/flash-player-nonfree/commit/?id=3e9e84f4b149fff0a321ae476f430733a772cd68)

##### New

- [libdbi 0.9.0 has been added](https://git.solus-project.com/packages/libdbi/commit/?id=a882ad0e13324342d44a43490500d2482f9c586d)
- [net-snmp 5.7.3 has been added](https://git.solus-project.com/packages/net-snmp/commit/?id=667856c031c6b86731e3a8cecc1c1e0e678a43f8)

#### Joshua Strobl

##### Updated

-  [gstreamer-1.0-plugins-ugly: Updated to utilize CD support from libcdio-paranoia](https://git.solus-project.com/packages/gstreamer-1.0-plugins-ugly/commit/?id=c1f3360a18e439ba36f4d43622b8ef27ab9671fe)
-  [jemalloc has been updated to 4.0.4](https://git.solus-project.com/packages/jemalloc/commit/?id=4218c0107db972479903ab69a1c01cf625ccf08d)
-  [libsodium has been updated to 1.0.4](https://git.solus-project.com/packages/libsodium/commit/?id=362b8133258f5f3e88deda3eb6cfa33cf4d588bb)
-  [lollypop has been updated to 0.9.6](https://git.solus-project.com/packages/lollypop/commit/?id=e1b08f1a1cbb827757121feebc1500198ed34b06)
-  [toxcore has been updated to upstream build 3513](https://git.solus-project.com/packages/toxcore/commit/?id=0ebc4f5eade23bc5c58cc7709fdf512e3aa6e3eb)