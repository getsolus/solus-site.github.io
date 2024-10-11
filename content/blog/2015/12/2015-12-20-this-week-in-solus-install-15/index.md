+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"TWIS"
]
date =  "2015-12-20T20:52:45Z"
title = "This Week in Solus -- Install #15"
url = "/2015/12/20/this-week-in-solus-install-15/"
+++ 
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

{{< relimg "Screenshot-from-2015-12-17-18-01-03.png" >}}

#### Games

On the 15th of December, we landed Steam in unstable, as promised before our big 1.0 release. We have thoroughly "validated" that gaming works under Solus and surprisingly have managed to still get work done after landing Steam.

{{< relimg "Screenshot-from-2015-12-15-06-01-34.png" >}}

There is still some work we want to do before landing it in stable, namely ensuring Steam uses system libraries instead of its own, and replacing the Steam runtime. This work will be done before the 1.0 release.

{{< altimg "https://i.imgur.com/jjSia8V.gif" >}}

#### Printing

Printing support is almost finished, which is great for the five (**drastic underestimation**) people left in the world that still use printers.  Printer support will be done before 1.0.

{{< relimg "Screenshot-from-2015-12-15-14-31-12.png" >}}

Spoiler: It fails to add the printer.

#### Ripping

We were informed that CD ripping was non-functionality in Solus. Below is photo taken with a potato of the purchased external drive.

{{< relimg "IMAG0091.jpg" >}}

We are happy to report that for the six (**once again, underestimate**) people that still use CDs, CD ripping is now supported.

{{< relimg "Screenshot-from-2015-12-18-16-12-05.png" >}}

#### Packaging Updates

Below is a highlight of package updates and additions from this week:

- arc-firefox-theme has been updated to 43.20151213        
- arc-gtk-theme has been updated to 20151214        
- arc-plank-theme 20151214 has been added to the repo        
- atom has been updated to 1.3.2        
- epiphany has been updated to 3.18.2        
- erlang has been updated to 18.2        
- evolution has been updated to 3.18.3        
- firefox has been updated to 43.0        
- gstreamer-0.10 0.10.36 has been added to the repo        
- llvm has been updated to enable RTTI        
- kernel has been updated to 4.1.15        
- nautilus has been updated to 3.18.3        
- nautilus-python 1.1 has been added to the repo        
- nodejs has been updated to 5.3.0        
- php has been updated to 7.0.1        
- plank has been updated to 0.10.1        
- steam 1.0.0.51 has been added to the repo        
- telegram has been updated to 0.9.15        
- ufw 0.3.4 has added to the repo