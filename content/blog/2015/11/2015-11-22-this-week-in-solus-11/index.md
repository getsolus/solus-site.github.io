---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
categories:
- Budgie
- News
- TWIS
date: "2015-11-22T16:30:26Z"
title: 'This Week in Solus #11'
url: /2015/11/22/this-week-in-solus-11/
---
 
Welcome to This Week in Solus, Installation #11. 

### Budgie Next

Considerable progress has been around Budgie Next. Lots of work this week was spent with Raven, which now sports the following:

- MPRIS support for media playback support
- Volume changing and input/output device switching and toggling.

Budgie Next also now abides by your primary monitor, which should eliminate issues that multi-monitor users can have of Budgie rendering on your non-primary display when you have a secondary monitor plugged in.
      
Work has also been done to improve multi-panel support and ensuring they render properly with Raven. Below is a video from a few days ago (considerable progress since then).

#### Upcoming Work

Right now work is being done on Drag-and-Drop support. This work will integrated into Budgie's panel for applet moving and in the future, widget moving for Raven.
      
Alongside Drag-and-Drop support, the following will be worked on this week:

1. Adopting a plugin style for Raven like the Budgie panel has.
2. Adding more content for Raven, such as a Weather widget that will tie into libgnome-weather.
3. Porting the remaining applets for Budgie
4. General polishing (such as animations, bug fixes, testing).

We are also planning on rolling out Budgie Next **this week**.

![relimg](http://i.giphy.com/GCLlQnV7wzKLu.gif)

### Christmas

Many of you have been curious when Solus 1.0 will be out. It was [announced by Ikey](https://plus.google.com/u/0/+Solus-Project/posts/H5U2u4hzaKd) that, assuming Murphy doesn't interfere again, we will have Solus 1.0 out before Christmas!

![relimg](http://i.giphy.com/WWBtctfyG5ykE.gif)

### Package Updates

But enough with all the exciting news, lets get do some highlights of package updates!

- [atom has been updated to 1.2.3](https://git.solus-project.com/packages/atom/commit/?id=1a2d6df47cc53d9cfe9ff8ef7928dd1c2a90be22)        
- [epiphany has been updated to 3.18.1](https://git.solus-project.com/packages/epiphany/commit/?id=8df930fc875456887eec51981f47de3f86a42dfe)        
- [evolution was updated to 3.18.2](https://git.solus-project.com/packages/evolution/commit/?id=f175a43051f9ad1742a3736712f9dba3f913dad5)        
- [feedreader was updated to 1.4.1](https://git.solus-project.com/packages/feedreader/commit/?id=af443d73d712361ee796a6c3e5499bea49a50588)        
- [flash-player-non free was updated to 11.2.202.548](https://git.solus-project.com/packages/flash-player-nonfree/commit/?id=a6757987349d28db1116a2a9752de06753d1e4e9)        
- [ffmpeg has had the following CVEs fixed](https://git.solus-project.com/packages/ffmpeg/commit/?id=eb44dbacbef2e14358ed11ba0e8749eb76bfb950): CVE-2015-8216, CVE-2015-8217, CVE-2015-8218, CVE-2015-8219
- [gnome-control-center: Disabled cheese to address boom](https://git.solus-project.com/packages/gnome-control-center/commit/?id=97d980d018d241df07214fa38bd0375a29e1456e)        
- [gnome-shell was updated to 3.18.3](https://git.solus-project.com/packages/gnome-shell/commit/?id=75ec3c9230fbea3f7438daed314c213557864706)        
- [libsndfile has been patched to address CVE-2015-7805](https://git.solus-project.com/packages/libsndfile/commit/?id=5f1e81fc541ba19d290e821ce157dcda87a2b527)        
- [nodejs was updated to 5.1.0](https://git.solus-project.com/packages/nodejs/commit/?id=40445041af486c7620f9370fac28f35a359abb14)        
- [nvidia-glx-driver has been updated to 352.63 to address CVEs](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a2c3da5ffbcee53573f3737e095dea55281537cd)        
- [nvidia-304-glx-driver has been updated to 304.131 to address CVEs](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=ae3b095c929646f10a4d2e4ecb51f3b0107bfc41)        
- [nvidia-340-glx-driver has been updated to 340.96 to address CVEs](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a12c9183db0b5f3c1a8e96d82fcc6d480a0ec6dc)        
- [obs-studio has been updated to 0.12.2](https://git.solus-project.com/packages/obs-studio/commit/?id=d46d6ee29681b3c8d1a40231e69b0fcb61a6e699)        
- [qtpass has been updated to 1.0.5](https://git.solus-project.com/packages/qtpass/commit/?id=d8ef37402d8a5d15d7e2bb5995f5a8aca0dcb71c)        
- [wireshark: updated to 1.12.8 -- negates CVE-2015-7830](https://git.solus-project.com/packages/wireshark/commit/?id=60d22d14ef337959b162e4d5193a352c6cfba4cc)        
- [youtube-dl has been updated to 2015.11.21](https://git.solus-project.com/packages/youtube-dl/commit/?id=aad3dda0c1b378fca198a120083e79bed1765fef)