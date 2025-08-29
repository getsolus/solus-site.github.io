+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"Releases",
"TWIS"
]
date =  "2015-11-29T23:18:50Z"
title = "This Week in Solus -- Install #12"
url = "/2015/11/29/this-week-in-solus-install-12/"
+++ 
Welcome to This Week in Solus, Installation #12. 

You know how I've said before "I think this is the biggest TWIS I've done"? Well, just consider that restated, again.

![relimg](http://media.giphy.com/media/q540XuK9hMxY4/giphy.gif)
Deal with it.

#### Budgie Next

There has been a lot of user experience work done on Budgie Next this week. Thanks to the fantastic work (as you can see below) done by Horst3180, we have a user experience design for Raven that enables us to:

- Separate out Applets and Notifications.
- Enable Budgie, Theming, and Raven customization

![relimg](GUwr5Jh.png)

As you can see from the recent video by Ikey, implementation of the design is coming along and work on its functionality will begin soon.

#### Goofiboot

The Solus Project has forked gummiboot, which is now considered dead upstream, to ensure we (**as in the entire Linux community, not just the Solus community**) have a separate and independent bootloader that provides the necessary 
features and distribution support that should be expected from a responsible upstream. [Goofiboot](https://github.com/solus-project/goofiboot), as the fork is named, is [already being used in production](https://plus.google.com/+Solus-Project/posts/WJJESPrv5yi) 
on our new daily image (as also stated in the New Daily section below) and according to Ikey:

> One of the nasty problems we hit in the past with gummiboot was actually **case sensitivity**. The EFI System Partition is FAT32, which is case insensitive, but sadly, preserves case. We've encountered multiple instances now whereby various standardised directories used the wrong case, which caused installation to fail.

![relimg](JPL-Celebration-at-Mars-Landing.gif)

**This issue is now resolved.**

#### Hardware Support

We have resolved syslinux issues that have affected the Acer C720 (Chromebook), "whereby SeaBIOS reserves the lower 16MB of memory, causing syslinux to enter into an infinite reboot loop". If you have a Chromebook, we're open to you testing 
out the latest daily image or installation and seeing where we can continue to improve our support. We know that there's work to be done yet on gestures and mulittouch, but we'll get there!

#### Installer

Work has been progressing on the new installer from [Michael Rutherford](https://plus.google.com/+MichaelRutherford97). He does not anticipate the installer being done before 1.0, however this is a complete rewrite and massive 
improvement over the existing one, and here are some of the improvements he has made to it since last week:

- Added password comparison functionality
- Dark theme is enabled as the default theme.
- Added some more icons by Alexandros.
- Reorganized the project file structure.
- User setup info is now saved. Ex. user name, password, full name, etc.
- Added a full disk partitioning mode and an advanced partitioning mode with accompanying tabs.
- Added a debug mode for developers <3
- Cleaned up and reformatted the code and added re-implemented popup windows in a more pragmatic way.
- Fixed all run-time GTK errors

He also posted a poll regarding availability of encryption options. If you haven't voted yet, you [here](https://plus.google.com/+MichaelRutherford97/posts/E5Kj8hHfEgJ"should</a>! You can check out the installer 
[here](https://github.com/michaelrutherford/solus-installer).

#### New Daily

**We're happy to announce a new Daily image, 0.201548.7.0, which is available for download [here](https://solus-project.com/daily-iso/).**

![relimg](https://media1.giphy.com/media/aWpbEcyxa2VSo/200.gif)

This new daily features a lot of changes and improvements since Release Candidate 1 and we'd like to highlight some of them below (full changelog at bottom of article):

##### Firefox

We have resolved freetype issues, updated to the latest Firefox, and have enabled HTML5 1080p video by enabling MediaSource and WebM-specific MediaSource support.

##### Goofiboot

We have switched from using gummiboot to Goofiboot to help resolved UEFI-specific booting issues.

##### I/O Throughput

We have tripled our I/O throughput in a recent update. According to Ikey:

> This was tracked down last night to using the CONFIG_SCSI_MQ_DEFAULT option, which was inadvertently enabled in a make oldconfig at some point.

##### Linux Kernel 4.1.13

We are using the Linux Kernel 4.1.13, as 4.3 is in our view not yet ready for production, namely for older Nvidia hardware. We are currently tracking [relevant bugs](https://bugzilla.kernel.org/show_bug.cgi?id=106431) and keeping an eye out for issue resolutions.

##### Other Updates

There has also been other updates since RC1, as well as changes to the default ISO, some of which are highlighted below:

- arc-firefox-theme: [Update to 42.20151103](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=9f51bf3)        
- arc-gtk-theme: [Update to 20151031, enable 3.18 and some extra desktops](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=946fdd2)        
-  dracut: [Garbage collect old initramfs files](https://git.solus-project.com/packages/dracut/commit/?id=1507ce6)        
- evince: [Update to 3.18.1](https://git.solus-project.com/packages/evince/commit/?id=c3991a1)        
- evolve-sc: [Include select/deselect fix](https://git.solus-project.com/packages/evolve-sc/commit/?id=34780e0)        
- gnome-control-center:
  - [Disable cheese, for it go boom](https://git.solus-project.com/packages/gnome-control-center/commit/?id=97d980d)
  - [Update to 3.18.2](https://git.solus-project.com/packages/gnome-control-center/commit/?id=2fcca13)        
- gtk3: [Update to 3.18.5](https://git.solus-project.com/packages/gtk3/commit/?id=f3af43b)        
- nvidia-glx-driver: [Update to 352.63 to address a number of CVEs](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a2c3da5)        
- pulseaudio:
  - [Kill broken bash_completion as it bricks GDM X11 sessions](https://git.solus-project.com/packages/pulseaudio/commit/?id=155f989)
  - [Disable flat volumes](https://git.solus-project.com/packages/pulseaudio/commit/?id=da6ffcc)        
- primary image: [Drop deprecated package from default ISO](https://git.solus-project.com/images/primary/commit/?id=dcc8fe7f56d9c66b358f3fb3ae80b6eadfd24629)        
- thunderbird: [Update to 38.4.0](https://git.solus-project.com/packages/thunderbird/commit/?id=68d2be1)

#### Package Updates

Here is a highlight of package updates that have occurred this week:

- atom: [Updated to 1.2.4](https://git.solus-project.com/packages/atom/commit/?id=5bfab1a987150cb32a97de4ce6162d95deb36c62)        
- ffmpeg: [Updated to 2.8.3](https://git.solus-project.com/packages/ffmpeg/commit/?id=6c719bac5a3818177b1d0f28e93f44fedce3c704)        
- gimp: [Updated to 2.9.2](https://git.solus-project.com/packages/gimp/commit/?id=daf7695699d0e005e51a2ef212c32dd5ce0a3d4d)        
- gnome-user-docs: [Added 3.18.1 to repo](https://git.solus-project.com/packages/gnome-user-docs/commit/?id=6a84046a9f5e177d1df82608198491f2a39c78ef)        
- lollypop: [Updated to 0.9.70](https://git.solus-project.com/packages/lollypop/commit/?id=cb1e67131133a3d3f1039ed1b0af23c0054417ca)        
- lxc: [Added 1.1.5 to repo](https://git.solus-project.com/packages/lxc/commit/?id=c65b66131460cd08a8fa62b8b00d860c91f3176f)        
- php: [Updated to 5.6.16](https://git.solus-project.com/packages/php/commit/?id=4a19c88e02c605b178820ae00eb0d6037eb6a4f1)        
- unrar: [Updated to 5.3.8](https://git.solus-project.com/packages/unrar/commit/?id=fbe0db613f059adf4e8ad3d7f4e18f05734a7b55)        
- thunderbird: [Updated to 38.4.0](https://git.solus-project.com/packages/thunderbird/commit/?id=68d2be1c54a706ef81844959a4ad502d29895e3e)        
- yelp: [Added 3.18.1 to repo](https://git.solus-project.com/packages/yelp/commit/?id=0e2151a8ea560cc73355aaa29df6861c925cf080)        
- youtube-dl: [Updated to 2015.11.27.1](https://git.solus-project.com/packages/youtube-dl/commit/?id=fded16ae3695fcbb5af454e2507bbefe133ec0d3)

---

#### Full Changelog of ISO

##### Packages added to this release:

- aalib
- atkmm
- cairomm
- goofiboot
- libgdata
- networkmanager-openvpn
- vino

##### Packages removed from this release:

- cheese
- clutter-gst-2.0
- evopop-icon-theme
- gnome-video-effects
- gummiboot
- libatkmm
- libcairomm
- libglu

##### Changes in this release:

**colord**

- [Ikey Doherty: Rebuild against updated libgusb](https://git.solus-project.com/packages/colord/commit/?id=030033a)

**evince**

- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/evince/commit/?id=c3991a1)

**gnome-system-monitor**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=3e6f00e)        
- [Ikey Doherty: Update to 3.18.0 -- enable systemd+wnck](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=2cfa665)        
- [Justin Zobel: Bump for rebuild](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=79f5db8)        
- [Ikey Doherty: Rebuild against new C++ ABI](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=a1f3185)

**gstreamer-1.0-plugins-base**

- [Ikey Doherty: Update to 1.6.1](https://git.solus-project.com/packages/gstreamer-1.0-plugins-base/commit/?id=fd40999)

**gobject-introspection**

- [Ikey Doherty: Update to 1.46.0](https://git.solus-project.com/packages/gobject-introspection/commit/?id=c9ca912)

**libsndfile**

- [Ikey Doherty: Address CVE-2015-7805](https://git.solus-project.com/packages/libsndfile/commit/?id=5f1e81f)

**dconf-editor**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/dconf-editor/commit/?id=beffbba)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/dconf-editor/commit/?id=bbf3d46)

**libpwquality**

- [Ikey Doherty: Update to 1.3.0](https://git.solus-project.com/packages/libpwquality/commit/?id=628f404)

**gstreamer-1.0**

- [Ikey Doherty: Update to 1.6.1](https://git.solus-project.com/packages/gstreamer-1.0/commit/?id=53cd5f1)

**gdk-pixbuf**

- [Ikey Doherty: Update to 2.32.1](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=8009828)

**gtk2mm**

- [Ikey Doherty: Rebuild against C++ ABI](https://git.solus-project.com/packages/gtk2mm/commit/?id=b8c175d)

**evolve-sc**

- [Ikey Doherty: Include select/deselect fix](https://git.solus-project.com/packages/evolve-sc/commit/?id=34780e0)

**unzip**

- [Ikey Doherty: Address CVE-2015-7696 and CVE-2015-7697](https://git.solus-project.com/packages/unzip/commit/?id=9d7f838)

**moka-icon-theme**

- [Ikey Doherty: Update to git commit 6f1cea3fcd0720d952145dfa6b0415ab2b4ca9d7](https://git.solus-project.com/packages/moka-icon-theme/commit/?id=1c00875)

**nvidia-340-glx-driver**

- [Ikey Doherty: Rebuild against 4.1.13 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=57741e8)        
- [Ikey Doherty: Update to 340.96 to address a number of CVEs](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a12c918)        
- [Rebuild against 4.3 kernel"](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=4a035dd">Ikey Doherty: Revert )        
- [Ikey Doherty: Rebuild against 4.3 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c8b5f49)        
- [Ikey Doherty: Rebuild for new kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=0a93f72)        
- [Ikey Doherty: Rebuild against 4.1.12 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=6983266)

**glibmm**

- [Ikey Doherty: Update to 2.46.1](https://git.solus-project.com/packages/glibmm/commit/?id=25d4134)        
- [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/glibmm/commit/?id=c58260d)

**gtk3**

- [Justin Zobel: Update to 3.18.5](https://git.solus-project.com/packages/gtk3/commit/?id=f3af43b)        
- [Justin Zobel: Update to 3.18.4](https://git.solus-project.com/packages/gtk3/commit/?id=b680d80)        
- [Justin Zobel: Update to 3.18.3](https://git.solus-project.com/packages/gtk3/commit/?id=b0fcc08)        
- [Ikey Doherty: Update to 3.18.2](https://git.solus-project.com/packages/gtk3/commit/?id=19cce78)

**os-installer**

- [Ikey Doherty: Fix major bork](https://git.solus-project.com/packages/os-installer/commit/?id=3cfeb78)        
- [Ikey Doherty: Update to v3 and try not to murder UEFI altogether](https://git.solus-project.com/packages/os-installer/commit/?id=449571f)

**pango**

- [Ikey Doherty: Rebuilt against fixed names](https://git.solus-project.com/packages/pango/commit/?id=1b8f92b)        
- [Ikey Doherty: Update to 1.38.1](https://git.solus-project.com/packages/pango/commit/?id=86958ea)

**atkmm**

- [Ikey Doherty: Update to 2.24.1](https://git.solus-project.com/packages/atkmm/commit/?id=35f87fc)        
- [Ikey Doherty: Convert to ypkg, rebuild against C++ ABI](https://git.solus-project.com/packages/atkmm/commit/?id=2b60dc2)

**ca-certs**

- [Ikey Doherty: Update certs due to Pandora changes](https://git.solus-project.com/packages/ca-certs/commit/?id=ba91210)        
- [Ikey Doherty: Update certs for 1.0](https://git.solus-project.com/packages/ca-certs/commit/?id=6ac06cf)

**freetype2**

- [Ikey Doherty: Update to 2.6.1](https://git.solus-project.com/packages/freetype2/commit/?id=50de63f)

**hexchat**

- [Ikey Doherty: Fix component](https://git.solus-project.com/packages/hexchat/commit/?id=964cf92)

**unrar**

- [Justin Zobel: Update to 5.3.8](https://git.solus-project.com/packages/unrar/commit/?id=fbe0db6)

**gnome-control-center**

- [Ikey Doherty: Disable cheese, for it go boom](https://git.solus-project.com/packages/gnome-control-center/commit/?id=97d980d)        
- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-control-center/commit/?id=2fcca13)        
- [Ikey Doherty: Fix the 'sharing' panel to show up](https://git.solus-project.com/packages/gnome-control-center/commit/?id=7039a28)        
- [Justin Zobel: Rebuild](https://git.solus-project.com/packages/gnome-control-center/commit/?id=e21ee67)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gnome-control-center/commit/?id=022948a)
**gnome-online-accounts**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=bd3e81a)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=a21ac2d)        
- [Justin Zobel: Convert to yml, update to 3.16.4 and rebuild due to webkit change](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=fdd6dcb)

**cogl**

- [Ikey Doherty: Update to 1.22.0](https://git.solus-project.com/packages/cogl/commit/?id=05a316c)

**pangomm**

- [Ikey Doherty: Update to 2.38.1](https://git.solus-project.com/packages/pangomm/commit/?id=81e1d52)        
- [Ikey Doherty: Rebuild against C++ ABI change, convert to ypkg](https://git.solus-project.com/packages/pangomm/commit/?id=1aaf2ba)

**gtksourceview**

- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gtksourceview/commit/?id=4d6bc78)

**kernel**

- [Ikey Doherty: Update to 4.1.13, kill CONFIG_SCSI_MQ_DEFAULT](https://git.solus-project.com/packages/kernel/commit/?id=d201a50)        
- [Update to the 4.3.0 kernel to enable Skylake and x86/SMP optimisations"](https://git.solus-project.com/packages/kernel/commit/?id=881b324">Ikey Doherty: Revert )        
- [Ikey Doherty: Fix derp](https://git.solus-project.com/packages/kernel/commit/?id=dc4977c)        
- [Ikey Doherty: Modify Daniel's patch to export symbol in the header](https://git.solus-project.com/packages/kernel/commit/?id=55e5e5e)        
- [Ikey Doherty: Patch against NV DRM failure](https://git.solus-project.com/packages/kernel/commit/?id=9ed7f5e)        
- [Ikey Doherty: Update to the 4.3.0 kernel to enable Skylake and x86/SMP optimisations](https://git.solus-project.com/packages/kernel/commit/?id=9cae99d)        
- [Ikey Doherty: Hopefully enable trackpoint and other such wonders](https://git.solus-project.com/packages/kernel/commit/?id=5db7d97)        
- [Ikey Doherty: Update to 4.1.12](https://git.solus-project.com/packages/kernel/commit/?id=1277cb7)

**libinput**

- [Ikey Doherty: Update to 1.1.0](https://git.solus-project.com/packages/libinput/commit/?id=0afb605)

**libxslt**

- [Ikey Doherty: Address CVE-2015-7995](https://git.solus-project.com/packages/libxslt/commit/?id=29f3be1)

**gnome-desktop**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-desktop/commit/?id=0a0f6a7)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gnome-desktop/commit/?id=c83f656)

**v4l-utils**

- [Ikey Doherty: Resolve SBZ#105 (webcam support)](https://git.solus-project.com/packages/v4l-utils/commit/?id=3ee4697)

**pisi**

- [Ikey Doherty: Fix broken .la handling](https://git.solus-project.com/packages/pisi/commit/?id=fc3fec3)

**nano**

- [Ikey Doherty: Update to 2.4.3](https://git.solus-project.com/packages/nano/commit/?id=b1df794)        
- [Ikey Doherty: Rebuild to test server configuration](https://git.solus-project.com/packages/nano/commit/?id=f98805e)

**libevdev**

- [Ikey Doherty: Update to 1.4.4](https://git.solus-project.com/packages/libevdev/commit/?id=a773526)

**arc-firefox-theme**

- [Ikey Doherty: Update to 42.20151103](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=9f51bf3)

**linux-firmware**

- [Ikey Doherty: Update to 20150822](https://git.solus-project.com/packages/linux-firmware/commit/?id=ab1b452)

**nvidia-304-glx-driver**

- [Ikey Doherty: Rebuild against 4.1.13 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=be454fa)        
- [Ikey Doherty: Update to 304.131 to address a number of CVEs](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=ae3b095)        
- [Rebuild against 4.3 kernel"](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=69da1c8">Ikey Doherty: Revert )        
- [Ikey Doherty: Rebuild against modfified DRM](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=ef31056)        
- [Ikey Doherty: Rebuild against 4.3 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=43a96c2)        
- [Ikey Doherty: Bump for kernel rebuild](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=b37ca67)        
- [Ikey Doherty: Rebuild against 4.1.12 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=4feab36)

![relimg](https://media4.giphy.com/media/12XMGIWtrHBl5e/200.gif)

**upower**

- [Ikey Doherty: Update to 0.99.3](https://git.solus-project.com/packages/upower/commit/?id=d8d6e88)

**gnome-terminal**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-terminal/commit/?id=6bd9214)        
- [Ikey Doherty: Update to 3.18.1 -- temporarily drop patches](https://git.solus-project.com/packages/gnome-terminal/commit/?id=193ed09)

**gnome-screenshot**

- [Justin Zobel: Update to 3.18.0 and yml](https://git.solus-project.com/packages/gnome-screenshot/commit/?id=29f0f47)

**gnome-bluetooth**

- [Justin Zobel: Update to 3.18.1](https://git.solus-project.com/packages/gnome-bluetooth/commit/?id=b65ab3b)        
- [Justin Zobel: Update to 3.18.0](https://git.solus-project.com/packages/gnome-bluetooth/commit/?id=90deb17)        
- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/gnome-bluetooth/commit/?id=12ea219)

**faba-icon-theme**

- [Ikey Doherty: Sync with git for SBZ#242](https://git.solus-project.com/packages/faba-icon-theme/commit/?id=3b34d87)

**libsigc++**

- [Ikey Doherty: Update to 2.6.1](https://git.solus-project.com/packages/libsigc++/commit/?id=c660a9b)        
- [Ikey Doherty: Convert to ypkg as the old package is just super borked](https://git.solus-project.com/packages/libsigc++/commit/?id=0b87140)        
- [Ikey Doherty: Rebuild against C++ ABI change](https://git.solus-project.com/packages/libsigc++/commit/?id=81f2bf4)

**libgnome-menus**

- [Ikey Doherty: Update to 3.13.3](https://git.solus-project.com/packages/libgnome-menus/commit/?id=4a4a4c8)

**libgcrypt**

- [Ikey Doherty: Rebuild to fix libgcrypt-config](https://git.solus-project.com/packages/libgcrypt/commit/?id=1999b49)

**seahorse**

- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/seahorse/commit/?id=02a26c2)

**webkitgtk**

- [Ikey Doherty: Disable full relro and LD_AS_NEEDED](https://git.solus-project.com/packages/webkitgtk/commit/?id=8c1a376)        
- [Ikey Doherty: Update to 2.10.3](https://git.solus-project.com/packages/webkitgtk/commit/?id=5556d70)        
- [Ikey Doherty: Rebuild due to C++ ABI changes](https://git.solus-project.com/packages/webkitgtk/commit/?id=1fe6c6c)

**cairomm**

- [Ikey Doherty: Update to 1.12.0](https://git.solus-project.com/packages/cairomm/commit/?id=bfdc1b4)        
- [Ikey Doherty: Convert to ypkg, replace libcairomm* packages](https://git.solus-project.com/packages/cairomm/commit/?id=80d851c)

**libgweather**

- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/libgweather/commit/?id=dbd1115)

**libgusb**

- [Ikey Doherty: Update to 0.2.7 for gnome-multiwriter](https://git.solus-project.com/packages/libgusb/commit/?id=9effe4a)

**glib2**

- [Ikey Doherty: Update to 2.46.1](https://git.solus-project.com/packages/glib2/commit/?id=e2dee5a)

**at-spi2-atk**

- [Ikey Doherty: Update to 2.18.1 -- replace old packaging](https://git.solus-project.com/packages/at-spi2-atk/commit/?id=119230e)

**firefox**

- [Ikey Doherty: Attempt to fix the freetype 2.6.1 issue](https://git.solus-project.com/packages/firefox/commit/?id=7d63819)        
- [Ikey Doherty: Fix linking with freetype 2.6.1](https://git.solus-project.com/packages/firefox/commit/?id=f7e5ed4)        
- [Ikey Doherty: Fix .desktop file (from Firefox) for shortcuts and association (SBZ#339)](https://git.solus-project.com/packages/firefox/commit/?id=8884ffc)        
- [Ikey Doherty: Update to 42.0 to address 23 CVEs](https://git.solus-project.com/packages/firefox/commit/?id=9e7339e)        
- [Ikey Doherty: Crash less, HTML5 moar](https://git.solus-project.com/packages/firefox/commit/?id=3353286)

**gnome-themes-standard**

- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/gnome-themes-standard/commit/?id=dee8d68)

**shared-mime-info**

- [Ikey Doherty: Update to 1.5 -- replace old packaging](https://git.solus-project.com/packages/shared-mime-info/commit/?id=50c0d4f)

**wpa_supplicant**

- [Ikey Doherty: Address CVE-2015-8041](https://git.solus-project.com/packages/wpa_supplicant/commit/?id=a7b172a)

**harfbuzz**

- [Ikey Doherty: Update to 1.0.6 and enable graphite2](https://git.solus-project.com/packages/harfbuzz/commit/?id=f961ed4)

**gtkmm**

- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/gtkmm/commit/?id=cafc2b0)        
- [Ikey Doherty: Rebuild against new C++ ABI](https://git.solus-project.com/packages/gtkmm/commit/?id=8364774)

**libvte**

- [Ikey Doherty: Update to 0.42.1](https://git.solus-project.com/packages/libvte/commit/?id=b2a1c0e)

**wayland**

- [Ikey Doherty: Update to 1.9.0](https://git.solus-project.com/packages/wayland/commit/?id=08e8e29)

**python3-gobject**

- [Ikey Doherty: Update to 3.18.2](https://git.solus-project.com/packages/python3-gobject/commit/?id=1cc278b)

**orc**

- [Ikey Doherty: Update to 0.4.24 for GStreamer 1.6.1](https://git.solus-project.com/packages/orc/commit/?id=8ef3655)

**dracut**

- [Ikey Doherty: Garbage collect old initramfs files](https://git.solus-project.com/packages/dracut/commit/?id=1507ce6)
**cracklib**

- [Ikey Doherty: Update to 2.9.6](https://git.solus-project.com/packages/cracklib/commit/?id=af44d66)

**nvidia-glx-driver**

- [Justin Zobel: Rebuild for new kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=66e1bbd)        
- [Ikey Doherty: Update to 352.63 to address a number of CVEs](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a2c3da5)        
- [Rebuild against 4.3 kernel"](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=ab017dc">Ikey Doherty: Revert )        
- [Ikey Doherty: Rebuild against 4.3 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2cfa044)        
- [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c7fbb8d)        
- [Ikey Doherty: Rebuild against 4.1.12 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=ff661ea)

**mutter**

- [Ikey Doherty: Blacklist ccache](https://git.solus-project.com/packages/mutter/commit/?id=d1347e3)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/mutter/commit/?id=92e9262)        
- [Ikey Doherty: Rebuild against newer GL](https://git.solus-project.com/packages/mutter/commit/?id=998caf9)        
- [Ikey Doherty: Rebuild to get past borkage..](https://git.solus-project.com/packages/mutter/commit/?id=25da39c)        
- [Sync git patches to address nvidia screen flickering (bug 728464)"](https://git.solus-project.com/packages/mutter/commit/?id=1b7ed16">Ikey Doherty: Revert )        
- [Ikey Doherty: Sync git patches to address nvidia screen flickering (bug 728464)](https://git.solus-project.com/packages/mutter/commit/?id=7ad69d6)

**gnome-keyring**

- [Ikey Doherty: Update to 3.18.3](https://git.solus-project.com/packages/gnome-keyring/commit/?id=9f4f737)

**grilo**

- [Ikey Doherty: Update to 0.2.14](https://git.solus-project.com/packages/grilo/commit/?id=bbb02be)

**ffmpeg**

- [Justin Zobel: Update to 2.8.3](https://git.solus-project.com/packages/ffmpeg/commit/?id=6c719ba)        
- [Ikey Doherty: Address numerous CVEs](https://git.solus-project.com/packages/ffmpeg/commit/?id=eb44dba)

**libpeas**

- [Ikey Doherty: Update to 1.16.0 and replace old packaging](https://git.solus-project.com/packages/libpeas/commit/?id=79e7ee6)

**libepoxy**

- [Ikey Doherty: Update to 1.3.1](https://git.solus-project.com/packages/libepoxy/commit/?id=e0e6b23)

**libgtop**

- [Ikey Doherty: Update to 2.32.0](https://git.solus-project.com/packages/libgtop/commit/?id=443bc1c)

**xorg-driver-input-evdev**

- [Ikey Doherty: Resolv file conflict with xorg-server](https://git.solus-project.com/packages/xorg-driver-input-evdev/commit/?id=7d288fe)        
- [Ikey Doherty: Update to 2.10.0](https://git.solus-project.com/packages/xorg-driver-input-evdev/commit/?id=d574161)

**nautilus**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/nautilus/commit/?id=735aa30)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/nautilus/commit/?id=4047700)

**libxml2**

- [Ikey Doherty: Update to 2.9.3](https://git.solus-project.com/packages/libxml2/commit/?id=2127219)

**ibus**

- [Ikey Doherty: Update to 1.5.11](https://git.solus-project.com/packages/ibus/commit/?id=47b8dfc)

**gedit**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gedit/commit/?id=3a10776)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gedit/commit/?id=e2426bd)

**clutter-gtk**

- [Ikey Doherty: Update to 1.6.6](https://git.solus-project.com/packages/clutter-gtk/commit/?id=0c07d8b)

**clutter**

- [Ikey Doherty: Update to 1.24.2](https://git.solus-project.com/packages/clutter/commit/?id=627d7e2)

**gsettings-desktop-schemas**

- [Ikey Doherty: Actually apply the patch. On account of it helps.](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=8527f65)        
- [Ikey Doherty: Update to 3.18.1 and replace old packaging](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=d713486)

**budgie-desktop**

- [Ikey Doherty: Blacklist ccache](https://git.solus-project.com/packages/budgie-desktop/commit/?id=628de51)        
- [Ikey Doherty: Rebuild against all the new GNOME libs](https://git.solus-project.com/packages/budgie-desktop/commit/?id=db86549)

**gparted**

- [Ikey Doherty: Emulate how Arch pkexec launch gparted, so it works on Solus](https://git.solus-project.com/packages/gparted/commit/?id=2c3f1ff)        
- [Ikey Doherty: Update to 0.24.0](https://git.solus-project.com/packages/gparted/commit/?id=9c4c5c8)

**gcr**

- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/gcr/commit/?id=76ee4ea)

**gvfs**

- [Ikey Doherty: Update to 1.26.1 and enable Google support](https://git.solus-project.com/packages/gvfs/commit/?id=03689bf)

**libsoup**

- [Ikey Doherty: Update to 2.52.1](https://git.solus-project.com/packages/libsoup/commit/?id=92be3f2)

**gnome-calculator**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/gnome-calculator/commit/?id=21bda6c)        
- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gnome-calculator/commit/?id=ac754ca)

**adwaita-icon-theme**

- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/adwaita-icon-theme/commit/?id=c59a3f4)

**gnome-settings-daemon**

- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=6e8d3f7)

**baobab**

- [Ikey Doherty: Update to 3.18.1](https://git.solus-project.com/packages/baobab/commit/?id=882f3dd)

**udisks**

- [Ikey Doherty: Update to 2.1.6](https://git.solus-project.com/packages/udisks/commit/?id=d6aa2ac)

**eog**

- [Justin Zobel: Update to 3.18.2](https://git.solus-project.com/packages/eog/commit/?id=8ae7e71)        
- [Ikey Doherty: Update to 3.18.0](https://git.solus-project.com/packages/eog/commit/?id=764416b)

**thunderbird**

- [Justin Zobel: Update to 38.4.0](https://git.solus-project.com/packages/thunderbird/commit/?id=68d2be1)        
- [Justin Zobel: Fix component](https://git.solus-project.com/packages/thunderbird/commit/?id=96bbcf5)

**pulseaudio**

- [Ikey Doherty: Disable flat volumes](https://git.solus-project.com/packages/pulseaudio/commit/?id=da6ffcc)        
- [Ikey Doherty: Kill broken bash_completion as it bricks GDM X11 sessions](https://git.solus-project.com/packages/pulseaudio/commit/?id=155f989)

**arc-gtk-theme**

- [Ikey Doherty: Update to 20151031, enable 3.18 and some extra desktops](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=946fdd2)

**at-spi2**

- [Ikey Doherty: Update to 2.18.1](https://git.solus-project.com/packages/at-spi2/commit/?id=080be1a)

![relimg](http://i.imgur.com/7drHiqr.gif)