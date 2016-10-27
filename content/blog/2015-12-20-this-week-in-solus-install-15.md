---
author: Joshua Strobl
categories:
- Budgie
- News
- Packages
- TWIS
date: 2015-12-20T20:52:45Z
id: 922
title: 'This Week in Solus -- Install #15'
url: /2015/12/20/this-week-in-solus-install-15/
--- 
Welcome to the 15th Installation of This Week in Solus. Let's just get right into it. 

#### 1.0 Release

We **will** be releasing Solus 1.0 on the 25th. Happy holidays everyone!

{{< altimg "http://i.giphy.com/10lejR0T1gf1II.gif" >}}

We anticipate the final ISO will have:

- Skylake enabled, with the latest 4.3 kernel
        
- AMDGPU driver support
        
- libinput xorg driver replacing syntaptics and evdev input drivers
        
- Intel + nouveau packages will be synced with latest git snapshots.
        
- Budgie Rewrite to replace Budgie

nvidia 304 will be also declared sufficiently flaky at this point.

#### Budgie

Budgie Next has undergone a lot of work this week. We now require our own theme to completely override many elements, which enables a consistent Budgie experience. This will be expanded on in the future, as we will enable users to choose their own custom themes for use with Budgie.

There has also been continued improvements made for accessibility, which we consider to be important and in dire need of improvement through the entire Linux ecosystem. Thanks to the work done by [Horst3180](https://plus.google.com/113168459677947885445),
we now have native support for HighConstrast. Below is a video that highlights some of the improvements so far to Budgie Next as well as highlighting HighContrast support.

There has also been improvements to customization. As Ikey put it: "**Now your setup can be as impossibly weird as you want 😛**".

{{< altimg "2015/12/Screenshot-from-2015-12-17-18-01-03.png" >}}

#### Games

On the 15th of December, we landed Steam in unstable, as promised before our big 1.0 release. We have thoroughly "validated" that gaming works under Solus and surprisingly have managed to still get work done after landing Steam.

{{< altimg "2015/12/Screenshot-from-2015-12-15-06-01-34.png" >}}

There is still some work we want to do before landing it in stable, namely ensuring Steam uses system libraries instead of its own, and replacing the Steam runtime. This work will be done before the 1.0 release.

{{< altimg "https://i.imgur.com/jjSia8V.gif" >}}

#### Printing

Printing support is almost finished, which is great for the five (**drastic underestimation**) people left in the world that still use printers.  Printer support will be done before 1.0.

{{< altimg "Screenshot-from-2015-12-15-14-31-12.png" >}}

Spoiler: It fails to add the printer.

#### Ripping

We were informed that CD ripping was non-functionality in Solus. Below is photo taken with a potato of the purchased external drive.

{{< altimg "2015/12/IMAG0091.jpg" >}}

We are happy to report that for the six (**once again, underestimate**) people that still use CDs, CD ripping is now supported.

{{< altimg "2015/12/Screenshot-from-2015-12-18-16-12-05.png" >}}

 #### Packaging Updates

Below is a highlight of package updates and additions from this week:

- [arc-firefox-theme has been updated to 43.20151213](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=1bf5c1e220695205b6bf57a67633a29041bea95c)        
- [arc-gtk-theme has been updated to 20151214](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=806801711c55f8a14978aca5529578ba4be6dedc)        
- [arc-plank-theme 20151214 has been added to the repo](https://git.solus-project.com/packages/arc-plank-theme/commit/?id=fd92420dc1e2c0af6d0a34bea1d23d09b9cb72d0)        
- [atom has been updated to 1.3.2](https://git.solus-project.com/packages/atom/commit/?id=c23203d70657989ab0be00185ada0d5a5f6d439d)        
- [epiphany has been updated to 3.18.2](https://git.solus-project.com/packages/atom/commit/?id=c23203d70657989ab0be00185ada0d5a5f6d439d)        
- [erlang has been updated to 18.2](https://git.solus-project.com/packages/erlang/commit/?id=ffa92c92cf232388c148de2623cb51c93bb4fdda)        
- [evolution has been updated to 3.18.3](https://git.solus-project.com/packages/evolution/commit/?id=c83f36acaf837eee7bdfcfb63e3c999ef77e19c8)        
- [firefox has been updated to 43.0](https://git.solus-project.com/packages/firefox/commit/?id=3e6161764f63d067bbc37b518c19470fbdc6e518)        
- [gstreamer-0.10 0.10.36 has been added to the repo](https://git.solus-project.com/packages/gstreamer-0.10/commit/?id=98052d7c332a316bdb8a628168b3febeb44ea9e1)        
- [llvm has been updated to enable RTTI](https://git.solus-project.com/packages/llvm/commit/?id=8c72ba33b3708ba05f4c890adf0819c6d4b7a363)        
- [kernel has been updated to 4.1.15](https://git.solus-project.com/packages/kernel/commit/?id=11558e452623ef05e896c7b88c60316b9ce4e3e3)        
- [nautilus has been updated to 3.18.3](https://git.solus-project.com/packages/nautilus/commit/?id=ceb51d82bd7f442326b718509bfb2176f174965e)        
- [nautilus-python 1.1 has been added to the repo](https://git.solus-project.com/packages/nautilus-python/commit/?id=82836d34349f29852e88a5ba767f1d8613f0cf1b)        
- [nodejs has been updated to 5.3.0](https://git.solus-project.com/packages/nodejs/commit/?id=fdb4623a6a9003e6879c996d3b8f377a5d9f631e)        
- [php has been updated to 7.0.1](https://git.solus-project.com/packages/php/commit/?id=b44b763057234aa88036d0303bee4a35fec23f21)        
- [plank has been updated to 0.10.1](https://git.solus-project.com/packages/plank/commit/?id=62bdb52606093a456531593de0c347a26fa26466)        
- [steam 1.0.0.51 has been added to the repo](https://git.solus-project.com/packages/steam/commit/?id=fc4edf1b5777b74dc2e9ae70240e395deeab515e)        
- [telegram has been updated to 0.9.15](https://git.solus-project.com/packages/telegram/commit/?id=e52d799d9f98b67933d4cb7c2e99d497615c60d2)        
- [ufw 0.3.4 has added to the repo](https://git.solus-project.com/packages/ufw/commit/?id=c5685befdf083c50e6a03bf6de2ab03f3bfa3391)