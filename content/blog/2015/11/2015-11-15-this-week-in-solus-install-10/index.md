+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2015-11-15T18:24:25Z"
title = "This Week in Solus -- Install #10"
url = "/2015/11/15/this-week-in-solus-install-10/"
+++ 
Welcome to This Week in Solus, Installation #10. 

### Budgie Next

The rewrite of Budgie has seen some considerable progress and development that has been accelerated by the need to resolve issues that arose during the GNOME 3.18 Stack upgrade.

As some of you may be aware, a keyboard issue has arisen since the Stack upgrade where pressing certain numbers on your keyboard will control font scaling instead. This issue specifically affects users of the Budgie desktop environment. 
For workaround information, click [here](https://solus-project.com/forums/viewtopic.php?f=17&t=804).

Ikey has been working hard to improve the rewrite and you can track the git commits [Google+](https://gitlab.com/solus-project/arc-desktop"here</a> as well as through the usual postings on <a href="https://plus.google.com/+Solus-Project/posts/.).

Please note in both the repository provided above, the name "Arc Desktop" is being **temporarily** used. This is **not** the new name of Budgie, it is being developed under a different name than Budgie and Budgie Next to facilitate development 
without the side-effect of library collisions / conflicts. "Arc Desktop" code will be merged back into Budgie when ready.

Developers can expect to be able to write Budgie Next extensions for both the panel as well as Raven (our Notification Center), in Python3. Our options are currently limited to what is offered by 
[libpeas](https://wiki.gnome.org/Projects/Libpeas) and is open to being changed in the future.

### Package Updates

Below is a highlight of packages that have been since updated after the GNOME 3.18 Stack upgrade:

- [audacious has been updated to 3.7](https://git.solus-project.com/packages/audacious/commit/?id=ff8f108c02ec20a6c3efa774a76739be81eba253)        
- [atom has been updated to 1.2.1](https://git.solus-project.com/packages/atom/commit/?id=d7c12b262649bd9542ae62d6ae2f885c78ee18f1)        
- [bluefish 2.2.7 has been added to the repo](https://git.solus-project.com/packages/bluefish-editor/commit/?id=86db0af34bfaeffb9c90d05e297bd1ffca60aca0)        
- [eog has been updated to 3.18.2](https://git.solus-project.com/packages/eog/commit/?id=8ae7e71a8a6c3a7caf8cafebf511dabeaaa441f2)        
- [empathy has been updated to 3.12.11](https://git.solus-project.com/packages/empathy/commit/?id=7e6d3e12d56b0ab437991ad663348c5aa5709142)        
- [gnome-contacts has been updated to 3.18.1](https://git.solus-project.com/packages/gnome-contacts/commit/?id=83dac0d9b740b744f7c2c66f35cf3ab787fbd4d2)        
- [gnome-documents has been updated to 3.18.2](https://git.solus-project.com/packages/gnome-documents/commit/?id=9dda299f932c4b5390afea838a956f5e9cb8abd2)        
- [gnome-maps has been updated to 3.18.2](https://git.solus-project.com/packages/gnome-maps/commit/?id=9ec8ee9ec9f41673aa9c747ab51dfedd868cd175)        
- [gnome-system-monitor has been updated to 3.18.2](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=3e6f00e7fcdc036b13c15af29b654853544299b1)        
- [mpv has been updated to 0.13.0](https://git.solus-project.com/packages/mpv/commit/?id=18c08d2d1f8ee2467e9c2f36c25a67cf2315dac1)        
- [nautilus has been updated to 3.18.2](https://git.solus-project.com/packages/nautilus/commit/?id=735aa30f0b01d9234927c666af1ba408035185d4)        
- [nim 0.12.0 has been added to the repo](https://git.solus-project.com/packages/nim/commit/?id=5e088a07141ab1bbe07e9daee7171604949bc8ef)        
- [php has been updated to 5.6.15](https://git.solus-project.com/packages/php/commit/?id=001debc17b77ae7850d9b3a05ac96832a36dfdbd)        
- [remmina now has RDP support enabled](https://git.solus-project.com/packages/remmina/commit/?id=389947add9a11b424d4677558b067ba5e7b8a2b4)        
- [tracker has been updated to 1.6, enabled a bunch of stuff](https://git.solus-project.com/packages/tracker/commit/?id=c225d07883c62397b71fed95ba6eb98bfe73b8c2)        
- [uget has been updated to 2.0.3](https://git.solus-project.com/packages/uget/commit/?id=d784000ecad6a2f58c417ed2466e555e52c61a0b)        
- [youtube-dl has been updated to 2015.11.10](https://git.solus-project.com/packages/youtube-dl/commit/?id=6da71c1532b15a8094d792e3bc1af54810e06fa7)