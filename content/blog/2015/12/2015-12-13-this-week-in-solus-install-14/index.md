---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
categories:
- Budgie
- News
- Packages
- TWIS
date: "2015-12-13T20:54:41Z"
title: 'This Week in Solus  -- Install #14'
url: /2015/12/13/this-week-in-solus-install-14/
---

Welcome to the 14th installation of This Week in Solus. 

![relimg](http://i.giphy.com/mxDZecDOOsWCA.gif)

### Budgie Next

Work has progressed well on the rewrite of Budgie.

- The rewrite is now integrated into GNOME Session and uses its phase initialization system, so Budgie starts in the panel initialization phase and the window manager in the WindowManager phase.
- Information such as whether dark theme is enabled, your widget theme, and icon theme are now integrated into Raven.

Also, work on the panel editor has now begun. A screenshot is available below.

![relimg](Screenshot-from-2015-12-09-10-12-19.png)

### Multilib

As you may (_or may not, in which case you should really tune in more_) know multilib has been a large item on our path to 1.0. Ikey has been working extensively this week on the multi-stage process for landing 32-bit libraries, and we are happy to report 
that 32-bit enabled GCC is now landing in the repositories.

Before I get into what that means, let's go over the process of getting there:

- **Stage 1**: In the first stage, we cross-compiled a new temporary toolchain to solve the chicken and egg problem: You must have a multilib toolchain to build a multilib toolchain. By cross-compiling a **static*- GCC we defer full GCC (using the system's glibc and headers) to stage 2.
- **Stage 2**: In the second stage, we rebuilt to gain a fully featured toolchain that is used to populate a minimal chroot filesystem to allow barebones functionality in terms of being able to compile simple packages
- **Stage 3**: In the third and final stage, we produced **native*- gcc, glibc, and binutils.

![relimg](http://i.giphy.com/91fEJqgdsnu4E.gif)

I know, I had to get Ikey to explain it to me too. In fact I ended up just opting to copy and paste what he said.

**The basics**: We cross-compiled a temporary toolchain to compile stuff, to rebuild stuff to use in a minimal chroot filesystem, then produced some native multilib gcc, glibc, and binutils.

![relimg](vplcm.jpg)

These multilib (32-bit enabled) utilities and libraries are going to be the basic for enabling a wider set of applications and another major item that has been a 1.0 requirement, **Steam**.

### Package Updates

Here are some highlights of package updates:

- [atom has been updated to 1.3.1](https://git.solus-project.com/packages/atom/commit/?id=5ca831aaac5f7b857193e7a4b6cc9ec239819e90)
- [flash-player-nonfree has been updated to 11.2.202.554](https://git.solus-project.com/packages/flash-player-nonfree/commit/?id=6e310ca993f3942a01df1200218fb58bf245619f)
- [geany has been updated to 1.26](https://git.solus-project.com/packages/geany/commit/?id=89bdd5bb0a22e2c8866715743c8efe3709c18f5c)
- [gnome-disk-utilities 3.18.3 has been added to the repo](https://git.solus-project.com/packages/gnome-disk-utility/commit/?id=aed7477780e6749bb8ddbcaab88fbabcc69d6a6e)
- [git has been updated to 2.6.4](https://git.solus-project.com/packages/git/commit/?id=d7c4a6901cfc8fd6927e7db4323e52f054f0c274)
- [lollypop has been updated to 0.9.75](https://git.solus-project.com/packages/lollypop/commit/?id=e96675c11724fca1f45a09234b0fadd036ceedd1)
- [kernel has been updated to 4.1.14](https://git.solus-project.com/packages/kernel/commit/?id=f57a5855ae489b4eeb27e48cce862dc837396a22)
- [php has been updated to 7.0.0](https://git.solus-project.com/packages/php/commit/?id=f55c5cf341c9d1b3e7df9fee2bdb9efe09411159)
- [r has been updated to 3.2.3](https://git.solus-project.com/packages/r/commit/?id=32760c451fd9906bfe42681c8e9ed850bd7b223c)
- [rhythmbox has been updated to enable mtp and vala support](https://git.solus-project.com/packages/rhythmbox/commit/?id=b8c83663e172fc23f575a95a7d91894ea2cc3d4e)
- [rust has been updated to 1.5.0](https://git.solus-project.com/packages/rust/commit/?id=dc84877ba9d4eea071d21ed585f8e471d8222c38)
- [supertuxkart 0.9.1 has been added to the repo](https://git.solus-project.com/packages/supertuxkart/commit/?id=3d915ee1d7b88cfb71f657cd99c25df54cf36f54)
- [qbittorrent has been updated to 3.3.1](https://git.solus-project.com/packages/qbittorrent/commit/?id=b9c3e8749670b1f1b22116fb9740d42874ca9f30)
- [youtube-dl has been updated to 2015.12.09](https://git.solus-project.com/packages/youtube-dl/commit/?id=a7f57874b6cb545953a5f75395331e3060af4d03)

Thanks for tuning in this week!