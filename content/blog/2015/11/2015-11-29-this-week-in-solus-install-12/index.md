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

{{< altimg "http://media.giphy.com/media/q540XuK9hMxY4/giphy.gif" >}}
Deal with it.

#### Budgie Next

There has been a lot of user experience work done on Budgie Next this week. Thanks to the fantastic work (as you can see below) done by Horst3180, we have a user experience design for Raven that enables us to:

- Separate out Applets and Notifications.
- Enable Budgie, Theming, and Raven customization

{{< relimg "GUwr5Jh.png" >}}

As you can see from the recent video by Ikey, implementation of the design is coming along and work on its functionality will begin soon.

#### Goofiboot

The Solus Project has forked gummiboot, which is now considered dead upstream, to ensure we (**as in the entire Linux community, not just the Solus community**) have a separate and independent bootloader that provides the necessary 
features and distribution support that should be expected from a responsible upstream. [Goofiboot](https://github.com/solus-project/goofiboot), as the fork is named, is [already being used in production](https://plus.google.com/+Solus-Project/posts/WJJESPrv5yi) 
on our new daily image (as also stated in the New Daily section below) and according to Ikey:

> One of the nasty problems we hit in the past with gummiboot was actually **case sensitivity**. The EFI System Partition is FAT32, which is case insensitive, but sadly, preserves case. We've encountered multiple instances now whereby various standardised directories used the wrong case, which caused installation to fail.

{{< relimg "JPL-Celebration-at-Mars-Landing.gif" >}}

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

{{< altimg "https://media1.giphy.com/media/aWpbEcyxa2VSo/200.gif" >}}

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

- arc-firefox-theme: Update to 42.20151103        
- arc-gtk-theme: Update to 20151031, enable 3.18 and some extra desktops        
-  dracut: Garbage collect old initramfs files        
- evince: Update to 3.18.1        
- evolve-sc: Include select/deselect fix        
- gnome-control-center:
  - Disable cheese, for it go boom
  - Update to 3.18.2        
- gtk3: Update to 3.18.5        
- nvidia-glx-driver: Update to 352.63 to address a number of CVEs        
- pulseaudio:
  - Kill broken bash_completion as it bricks GDM X11 sessions
  - Disable flat volumes        
- primary image: Drop deprecated package from default ISO        
- thunderbird: Update to 38.4.0

#### Package Updates

Here is a highlight of package updates that have occurred this week:

- atom: Updated to 1.2.4        
- ffmpeg: Updated to 2.8.3        
- gimp: Updated to 2.9.2        
- gnome-user-docs: Added 3.18.1 to repo        
- lollypop: Updated to 0.9.70        
- lxc: Added 1.1.5 to repo        
- php: Updated to 5.6.16        
- unrar: Updated to 5.3.8        
- thunderbird: Updated to 38.4.0        
- yelp: Added 3.18.1 to repo        
- youtube-dl: Updated to 2015.11.27.1

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

- Ikey Doherty: Rebuild against updated libgusb

**evince**

- Ikey Doherty: Update to 3.18.1

**gnome-system-monitor**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.0 -- enable systemd+wnck        
- Justin Zobel: Bump for rebuild        
- Ikey Doherty: Rebuild against new C++ ABI

**gstreamer-1.0-plugins-base**

- Ikey Doherty: Update to 1.6.1

**gobject-introspection**

- Ikey Doherty: Update to 1.46.0

**libsndfile**

- Ikey Doherty: Address CVE-2015-7805

**dconf-editor**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1

**libpwquality**

- Ikey Doherty: Update to 1.3.0

**gstreamer-1.0**

- Ikey Doherty: Update to 1.6.1

**gdk-pixbuf**

- Ikey Doherty: Update to 2.32.1

**gtk2mm**

- Ikey Doherty: Rebuild against C++ ABI

**evolve-sc**

- Ikey Doherty: Include select/deselect fix

**unzip**

- Ikey Doherty: Address CVE-2015-7696 and CVE-2015-7697

**moka-icon-theme**

- Ikey Doherty: Update to git commit 6f1cea3fcd0720d952145dfa6b0415ab2b4ca9d7

**nvidia-340-glx-driver**

- Ikey Doherty: Rebuild against 4.1.13 kernel        
- Ikey Doherty: Update to 340.96 to address a number of CVEs        
- Rebuild against 4.3 kernel"        
- Ikey Doherty: Rebuild against 4.3 kernel        
- Ikey Doherty: Rebuild for new kernel        
- Ikey Doherty: Rebuild against 4.1.12 kernel

**glibmm**

- Ikey Doherty: Update to 2.46.1        
- Ikey Doherty: Convert to ypkg

**gtk3**

- Justin Zobel: Update to 3.18.5        
- Justin Zobel: Update to 3.18.4        
- Justin Zobel: Update to 3.18.3        
- Ikey Doherty: Update to 3.18.2

**os-installer**

- Ikey Doherty: Fix major bork        
- Ikey Doherty: Update to v3 and try not to murder UEFI altogether

**pango**

- Ikey Doherty: Rebuilt against fixed names        
- Ikey Doherty: Update to 1.38.1

**atkmm**

- Ikey Doherty: Update to 2.24.1        
- Ikey Doherty: Convert to ypkg, rebuild against C++ ABI

**ca-certs**

- Ikey Doherty: Update certs due to Pandora changes        
- Ikey Doherty: Update certs for 1.0

**freetype2**

- Ikey Doherty: Update to 2.6.1

**hexchat**

- Ikey Doherty: Fix component

**unrar**

- Justin Zobel: Update to 5.3.8

**gnome-control-center**

- Ikey Doherty: Disable cheese, for it go boom        
- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Fix the 'sharing' panel to show up        
- Justin Zobel: Rebuild        
- Ikey Doherty: Update to 3.18.1
**gnome-online-accounts**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1        
- Justin Zobel: Convert to yml, update to 3.16.4 and rebuild due to webkit change

**cogl**

- Ikey Doherty: Update to 1.22.0

**pangomm**

- Ikey Doherty: Update to 2.38.1        
- Ikey Doherty: Rebuild against C++ ABI change, convert to ypkg

**gtksourceview**

- Ikey Doherty: Update to 3.18.1

**kernel**

- Ikey Doherty: Update to 4.1.13, kill CONFIG_SCSI_MQ_DEFAULT        
- Update to the 4.3.0 kernel to enable Skylake and x86/SMP optimisations"        
- Ikey Doherty: Fix derp        
- Ikey Doherty: Modify Daniel's patch to export symbol in the header        
- Ikey Doherty: Patch against NV DRM failure        
- Ikey Doherty: Update to the 4.3.0 kernel to enable Skylake and x86/SMP optimisations        
- Ikey Doherty: Hopefully enable trackpoint and other such wonders        
- Ikey Doherty: Update to 4.1.12

**libinput**

- Ikey Doherty: Update to 1.1.0

**libxslt**

- Ikey Doherty: Address CVE-2015-7995

**gnome-desktop**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1

**v4l-utils**

- Ikey Doherty: Resolve SBZ#105 (webcam support)

**pisi**

- Ikey Doherty: Fix broken .la handling

**nano**

- Ikey Doherty: Update to 2.4.3        
- Ikey Doherty: Rebuild to test server configuration

**libevdev**

- Ikey Doherty: Update to 1.4.4

**arc-firefox-theme**

- Ikey Doherty: Update to 42.20151103

**linux-firmware**

- Ikey Doherty: Update to 20150822

**nvidia-304-glx-driver**

- Ikey Doherty: Rebuild against 4.1.13 kernel        
- Ikey Doherty: Update to 304.131 to address a number of CVEs        
- Rebuild against 4.3 kernel"        
- Ikey Doherty: Rebuild against modfified DRM        
- Ikey Doherty: Rebuild against 4.3 kernel        
- Ikey Doherty: Bump for kernel rebuild        
- Ikey Doherty: Rebuild against 4.1.12 kernel

{{< altimg "https://media4.giphy.com/media/12XMGIWtrHBl5e/200.gif" >}}

**upower**

- Ikey Doherty: Update to 0.99.3

**gnome-terminal**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1 -- temporarily drop patches

**gnome-screenshot**

- Justin Zobel: Update to 3.18.0 and yml

**gnome-bluetooth**

- Justin Zobel: Update to 3.18.1        
- Justin Zobel: Update to 3.18.0        
- Ikey Doherty: Update to 3.18.0

**faba-icon-theme**

- Ikey Doherty: Sync with git for SBZ#242

**libsigc++**

- Ikey Doherty: Update to 2.6.1        
- Ikey Doherty: Convert to ypkg as the old package is just super borked        
- Ikey Doherty: Rebuild against C++ ABI change

**libgnome-menus**

- Ikey Doherty: Update to 3.13.3

**libgcrypt**

- Ikey Doherty: Rebuild to fix libgcrypt-config

**seahorse**

- Ikey Doherty: Update to 3.18.0

**webkitgtk**

- Ikey Doherty: Disable full relro and LD_AS_NEEDED        
- Ikey Doherty: Update to 2.10.3        
- Ikey Doherty: Rebuild due to C++ ABI changes

**cairomm**

- Ikey Doherty: Update to 1.12.0        
- Ikey Doherty: Convert to ypkg, replace libcairomm* packages

**libgweather**

- Ikey Doherty: Update to 3.18.1

**libgusb**

- Ikey Doherty: Update to 0.2.7 for gnome-multiwriter

**glib2**

- Ikey Doherty: Update to 2.46.1

**at-spi2-atk**

- Ikey Doherty: Update to 2.18.1 -- replace old packaging

**firefox**

- Ikey Doherty: Attempt to fix the freetype 2.6.1 issue        
- Ikey Doherty: Fix linking with freetype 2.6.1        
- Ikey Doherty: Fix .desktop file (from Firefox) for shortcuts and association (SBZ#339)        
- Ikey Doherty: Update to 42.0 to address 23 CVEs        
- Ikey Doherty: Crash less, HTML5 moar

**gnome-themes-standard**

- Ikey Doherty: Update to 3.18.0

**shared-mime-info**

- Ikey Doherty: Update to 1.5 -- replace old packaging

**wpa_supplicant**

- Ikey Doherty: Address CVE-2015-8041

**harfbuzz**

- Ikey Doherty: Update to 1.0.6 and enable graphite2

**gtkmm**

- Ikey Doherty: Update to 3.18.0        
- Ikey Doherty: Rebuild against new C++ ABI

**libvte**

- Ikey Doherty: Update to 0.42.1

**wayland**

- Ikey Doherty: Update to 1.9.0

**python3-gobject**

- Ikey Doherty: Update to 3.18.2

**orc**

- Ikey Doherty: Update to 0.4.24 for GStreamer 1.6.1

**dracut**

- Ikey Doherty: Garbage collect old initramfs files
**cracklib**

- Ikey Doherty: Update to 2.9.6

**nvidia-glx-driver**

- Justin Zobel: Rebuild for new kernel        
- Ikey Doherty: Update to 352.63 to address a number of CVEs        
- Rebuild against 4.3 kernel"        
- Ikey Doherty: Rebuild against 4.3 kernel        
- Ikey Doherty: Rebuild for kernel        
- Ikey Doherty: Rebuild against 4.1.12 kernel

**mutter**

- Ikey Doherty: Blacklist ccache        
- Ikey Doherty: Update to 3.18.1        
- Ikey Doherty: Rebuild against newer GL        
- Ikey Doherty: Rebuild to get past borkage..        
- Sync git patches to address nvidia screen flickering (bug 728464)"        
- Ikey Doherty: Sync git patches to address nvidia screen flickering (bug 728464)

**gnome-keyring**

- Ikey Doherty: Update to 3.18.3

**grilo**

- Ikey Doherty: Update to 0.2.14

**ffmpeg**

- Justin Zobel: Update to 2.8.3        
- Ikey Doherty: Address numerous CVEs

**libpeas**

- Ikey Doherty: Update to 1.16.0 and replace old packaging

**libepoxy**

- Ikey Doherty: Update to 1.3.1

**libgtop**

- Ikey Doherty: Update to 2.32.0

**xorg-driver-input-evdev**

- Ikey Doherty: Resolv file conflict with xorg-server        
- Ikey Doherty: Update to 2.10.0

**nautilus**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1

**libxml2**

- Ikey Doherty: Update to 2.9.3

**ibus**

- Ikey Doherty: Update to 1.5.11

**gedit**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1

**clutter-gtk**

- Ikey Doherty: Update to 1.6.6

**clutter**

- Ikey Doherty: Update to 1.24.2

**gsettings-desktop-schemas**

- Ikey Doherty: Actually apply the patch. On account of it helps.        
- Ikey Doherty: Update to 3.18.1 and replace old packaging

**budgie-desktop**

- Ikey Doherty: Blacklist ccache        
- Ikey Doherty: Rebuild against all the new GNOME libs

**gparted**

- Ikey Doherty: Emulate how Arch pkexec launch gparted, so it works on Solus        
- Ikey Doherty: Update to 0.24.0

**gcr**

- Ikey Doherty: Update to 3.18.0

**gvfs**

- Ikey Doherty: Update to 1.26.1 and enable Google support

**libsoup**

- Ikey Doherty: Update to 2.52.1

**gnome-calculator**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.1

**adwaita-icon-theme**

- Ikey Doherty: Update to 3.18.0

**gnome-settings-daemon**

- Ikey Doherty: Update to 3.18.1

**baobab**

- Ikey Doherty: Update to 3.18.1

**udisks**

- Ikey Doherty: Update to 2.1.6

**eog**

- Justin Zobel: Update to 3.18.2        
- Ikey Doherty: Update to 3.18.0

**thunderbird**

- Justin Zobel: Update to 38.4.0        
- Justin Zobel: Fix component

**pulseaudio**

- Ikey Doherty: Disable flat volumes        
- Ikey Doherty: Kill broken bash_completion as it bricks GDM X11 sessions

**arc-gtk-theme**

- Ikey Doherty: Update to 20151031, enable 3.18 and some extra desktops

**at-spi2**

- Ikey Doherty: Update to 2.18.1

{{< altimg "http://i.imgur.com/7drHiqr.gif" >}}         