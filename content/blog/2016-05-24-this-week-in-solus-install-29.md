---
author: Joshua Strobl
categories:
- News
- Packages
- TWIS
date: 2016-05-24T03:29:14Z
id: 1325
title: 'This Week in Solus -- Install #29'
url: /2016/05/24/this-week-in-solus-install-29/
--- 
Welcome to the 29th installation of This Week in Solus. 

#### Hackfest 1.2

On the 21st and 22nd of this month, Ikey and myself had the first Solus hackfest, "Hackfest 1.2". The main goals of the Hackfest were:

1. Successfully running Steam with our own runtime.
2. Refining the messaging on the site, including implementing consistent branding and updating content such as the [Support](https://solus-project.com/support/) page and 
 [information on Solus](https://solus-project.com/solus/).

The Hackfest went on for roughly 11 hours across both days, with the recordings below! **Note: Not intended for younger audiences. Certainly PG13 at times.**

I'm happy to say that Ikey's goal for a native Steam runtime were accomplished, which let's be honest, that was the major thing we were all hoping for in the Hackfest, right?

The implications of a native Steam runtime are pretty serious too. Rather than having non-optimized Ubuntu libraries from Steam's runtime, we are able to provide optimized libraries for a **more performant** gaming experience than **any** other 
"tier one" operating system. There is still work to be done on the optimization front, but we're confident in this first step.

{{ altimg "2016/05/Screenshot-from-2016-05-23-00-46-16.png" }}

In addition to the native Steam runtime, some bug squashing happened as well:

- Disk Usage Analyzer (Baobab) no longer handles the inode/directory mime type. Basically this means you'll no longer be opening up Disk Usage Analyzer when you really meant to open Nautilus. This could happen across a wide range of software, such as 
Google Chrome, Veracrypt, Transmission, etc. [Bug #734](https://bugs.solus-project.com/show_bug.cgi?id=734)
- Steam Controller support now exists. [Bug #729](https://bugs.solus-project.com/show_bug.cgi?id=729)
- A multitude of contribute patches have landed: 
 - [Bug #502 -- [PATCH] lsof ](https://bugs.solus-project.com/show_bug.cgi?id=502)
 - [Bug #518 -- [Patch] python-virtualenvwrapper -- Landed as virtualenvwrapper](https://bugs.solus-project.com/show_bug.cgi?id=518)
 - [Bug #645 -- New package: ninja-build -- Landed as ninja](https://bugs.solus-project.com/show_bug.cgi?id=645)
 - [Bug #658 -- [PATCH] lshw](https://bugs.solus-project.com/show_bug.cgi?id=658)
 - [Bug #659 -- [Patch] SDL_ttf -- Landed as sdl-ttf](https://bugs.solus-project.com/show_bug.cgi?id=659)
 - [Bug #661 -- [Patch] sdl2_gfx -- Landed as sdl2-gfx](https://bugs.solus-project.com/show_bug.cgi?id=661)
 - [Bug #662 -- [Patch] xvidcore -- Landed as xvidcore](https://bugs.solus-project.com/show_bug.cgi?id=662) 
- ffmpeg now is enabled with xvid
- [Bug #669 -- [Patch] sdl2-net](https://bugs.solus-project.com/show_bug.cgi?id=669)
- [Bug #670 -- [Patch] mcomix](https://bugs.solus-project.com/show_bug.cgi?id=670)
- [Bug #674 -- [Patch] grisbi](https://bugs.solus-project.com/show_bug.cgi?id=674)
- [Bug #716 -- New package : paper-icon-theme](https://bugs.solus-project.com/show_bug.cgi?id=716)
- [Bug #717 -- New package : paper-gtk-theme ](https://bugs.solus-project.com/show_bug.cgi?id=717)
- [Bug #739 -- [Patch] quazip](https://bugs.solus-project.com/show_bug.cgi?id=739)
- [Bug #754 -- [pip] update to 8.1.1 and convert to ypkg2 -- Was actually updated to 8.1.2](https://bugs.solus-project.com/show_bug.cgi?id=754)
- [Bug #786 -- [patch] ghostwriter](https://bugs.solus-project.com/show_bug.cgi?id=786)
- [Bug #801 -- [Patch] fping3](https://bugs.solus-project.com/show_bug.cgi?id=801)
- [Bug #819 -- [Request] HomeBank](https://bugs.solus-project.com/show_bug.cgi?id=819)

 #### Package Updates

To say there was a lot of package updates this week would frankly be an understatement. Here are some highlights (**not including all the multilib enablement**):

New:

- [fping 3.13](https://git.solus-project.com/packages/fping/commit/?id=17a0416b0fc915803c0569acd1bfe60925b3f267)
- [ghostwriter 1.3.1](https://git.solus-project.com/packages/ghostwriter/commit/?id=430b9f474a959515cc1d5a2dab5ff1b12d889912)
- [grisbi 1.0.0](https://git.solus-project.com/packages/grisbi/commit/?id=f77470c62c9d0895874cad30db076a5617b6c234)
- [homebank 5.0.7](https://git.solus-project.com/packages/homebank/commit/?id=3bcebdf00e0b38332f7a96386b90c3426047788f)
- [lsof 4.89](https://git.solus-project.com/packages/lsof/commit/?id=421d194f21eab52c3e5b2d6c1f0de7d6b1762dca)
- [mcomix 1.2.1](https://git.solus-project.com/packages/mcomix/commit/?id=b57c57057c403b6768b5a3e0593ac92c3fb5af14)
- [ninja 1.7.1](https://git.solus-project.com/packages/ninja/commit/?id=2666a796d40e577edc5b56796f96602588d692ad)
- [quazip 0.7.2](https://git.solus-project.com/packages/quazip/commit/?id=02866b89bb6e11652c869d08c008be84939388e3)
- [sdl-gfx 2.0.25](https://git.solus-project.com/packages/sdl-gfx/commit/?id=159e3c4340547f80b520cc07c17ec30b80ffbb2b)
- [sdl-ttf 2.0.11](https://git.solus-project.com/packages/sdl-ttf/commit/?id=a64e77c564b1730f4e7fd96561714d2fe96b76c2)
- [sdl2-gfx 1.0.1](https://git.solus-project.com/packages/sdl2-gfx/commit/?id=29c803a680e768bc3bbeac4556c3f55376c3794b)
- [sdl2-net 2.0.1](https://git.solus-project.com/packages/sdl2-net/commit/?id=88d58e9979e75fa53b6a8ce89d36ea14fb7f2419)
- [virtualenvwrapper 4.7.1](https://git.solus-project.com/packages/virtualenvwrapper/commit/?id=eac4f09d3b8593bd321d8f28db6dc23ba02999bf)
- [xvidcore 1.3.4](https://git.solus-project.com/packages/xvidcore/commit/?id=78e0a8482d776423a00e2f0de5c41fabe9203c25)

Updated:

- [adapta-gtk-theme 3.21.1.215](https://git.solus-project.com/packages/adapta-gtk-theme/commit/?id=100c9b766e669ca0bd000ef9cb945bdb5b6ef618)
- [atom 1.7.4](https://git.solus-project.com/packages/atom/commit/?id=99762ad21f75560292e330fd69e052c05a18f7e8)
- [corebird 1.2.2](https://git.solus-project.com/packages/corebird/commit/?id=7e043c196dcfc99ff798b3c3e8c2cc171a23a320)
- [Ensure brasero uses dvd_rw-tools](https://git.solus-project.com/packages/brasero/commit/?id=54334d4db19976748c2281d9b72844e9c27b9d9e)
- [ffmpeg -- Enable xvid](https://git.solus-project.com/packages/ffmpeg/commit/?id=27bba2b537f7bd8c006519f7f952579319dae1b1)
- [git 2.8.3](https://git.solus-project.com/packages/git/commit/?id=eb97d10276dba74102806c8add75764228850279)
- [lollypop 0.9.107](https://git.solus-project.com/packages/lollypop/commit/?id=9910402594823b34381c8072f782b49e0d0c9d7c)
- [mercurial 3.8.2](https://git.solus-project.com/packages/mercurial/commit/?id=b9e05b2049539f8b569e6bb3969a6b4e40976e8f)
- [obs-studio 0.14.2](https://git.solus-project.com/packages/obs-studio/commit/?id=fc8c3c966e469538f3261e16e4bd02da9aff51b9)
- [paper-gtk-theme 2.0.1](https://git.solus-project.com/packages/paper-gtk-theme/commit/?id=29790e3da558cedd8001598775f018d72d9863da)
- [paper-icon-theme 1.3.2](https://git.solus-project.com/packages/paper-icon-theme/commit/?id=5b9c47a15d603a64f62003e78e0c657d09e093f1)
- [pip 8.1.2](https://git.solus-project.com/packages/pip/commit/?id=f900c39e69c17a09aefbeb9f893bdf59a721778e)
- [steam -- Ermagerd all the new runtime dependencies](https://git.solus-project.com/packages/steam/commit/?id=c83990fe9996184471f3344671deacc927ffa12b)
- [telegram 0.9.49](https://git.solus-project.com/packages/telegram/commit/?id=5fca066915c75893471938f910e254202faa5d24)
- [youtube-dl 2016.05.21.2](https://git.solus-project.com/packages/youtube-dl/commit/?id=7329057541058ef8ac0b23cfa61fe68d5cea4a98)