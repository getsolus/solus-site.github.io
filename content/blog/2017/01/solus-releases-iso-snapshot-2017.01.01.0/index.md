+++
author = "joshua"
categories = [
"News",
"Releases"
]
date =  "2017-01-01T21:47:26+02:00"
featuredimage = "/20170101-featured.jpg"
title = "Solus Releases ISO Snapshot 2017.01.01.0"
url = "/2017/01/01/solus-releases-iso-snapshot-20170101-0"
+++

We're happy to be kicking off the new year with the release of our **first ISO snapshot**, 2017.01.01.0, across our Budgie and MATE editions.

## General

### Improvements To The Out-Of-The-Box Experience

The out-of-the-box experience for shipped applications in Solus has improved, as we've worked towards enabling a larger set of features for them.

- A larger set of devices are now supported for MTP mounting, thanks to an upgraded libmtp.
- Evince can now handle PS and XPS files.
- Our package manager, eopkg, has received performance improvements as well as a fix to statelessness that'd cause the Software Center to hang.
- Instances where a corrupted cursor would appear while using Firefox have been resolved.
- VLC can now play content from SMB shares and SFTP locations. We've also done work on enabling subtitles for certain content played via MKV files.

Alongside those targeted improvements, Solus ships with Firefox 50.1.0 and Thunderbird 45.6.0. Firefox 50.1.0 brings security fixes on top of the various 
improvements to the Firefox 50 series, such as built-in emojis (*those are all the rage these days, right? 🎉*) and Thunderbird 45.6.0 delivers various bug and 
security fixes.

### Graphics and Kernel

Solus 2017.01.01.0 ships with the latest stable branch of the Linux Kernel, 4.8.15, as well as 13.0.2 of the OpenGL compatible 3D graphics library, Mesa. 
Via DoFlicky, our Hardware Drivers utility, we provide the latest of the NVIDIA proprietary drivers:

- `nvidia-glx-driver` - 375.26
- `nvidia-340-glx-driver` (340.xx series) - 340.101
- `nvidia-304-glx-driver` (304.xx series) - 304.134

### Installer

Due to a subtle bug in the Installer, swap partitions were ignored when using custom mount points. This issue has since been resolved.

## Software Center

This release of Solus ships with the latest version of our Software Center, v15, which features numerous improvements and bug fixes.

### Expanded Categories

{{< relimg "solus-sc-v15-new-categories.jpg" >}}

We have expanded our list of dedicated software categories to include:

- Office:
  - Note-taking applications.
  - E-book and PDF viewing applications.
- Programming:
  - Haskell libraries
  - General programming libraries.

### Third Party

{{< relimg "solus-sc-v15-third-party.jpg" >}}

We also have an expanded list of 3rd-Party applications that can be installed via the Software Center, such as:

- Bitwig Studio
- Enpass
- Flash Player (NPAPI)
- Flash Player (PPAPI)
- Google Earth
- Insync
- Mendeley Desktop
- Moneydance

### Software Viewing

{{< relimg "solus-sc-v15-software-view.jpg" >}}

When looking at software information, we now show software licenses.

### Translations

This release also features a huge set of translations by our community. Our Software Center is now fully translated into:

- Basque
- Catalan and Catalan (Spain)
- Chinese (Taiwan)
- Croatian
- Czech and Czech (Czech Republic)
- Danish
- Dutch
- Finnish
- French (France)
- German and German (Switzerland)
- Hungarian
- Indonesian
- Italian
- Japanese
- Nepali
- Polish
- Portuguese and Portuguese (Brazil)
- Romanian
- Russian
- Serbian and Serbian (Latin)
- Slovak
- Slovenian
- Spanish, Spanish (Argentina), and Spanish (Mexico)
- Swedish
- Turkish
- Ukrainian

We also have an almost completely translated Software Center in Arabic and partial translations for Greek and Spanish (Latin America). A **huge** thank you to all 
translators, we're always amazed by your hard work and dedication towards making Solus accessible around the world ❤️

## Budgie

{{< relimg "20170101-Budgie.jpg" >}}

Solus 2017.01.01.0 ships with the latest of our Budgie releases, 10.2.9. This release features a large set of bug fixes and improvements before our 
focus on Budgie 11 development, such as:

- In the Icon Tasklist, an issue with the spinning wheel that would persist for 30 seconds during the launching of an application has been resolved.
- Resolved an issue in the Keyboard Layout widget where we didn't manage to retrieve a language name from libgnome-desktop for the zh_CN locale. This resulted in rendering an odd label 
for the libpinyin IBUS engine, i.e. "(null) (libpinyin)". Now, when we fail to get a language based on the language code, we fall back to locale detection.
- Arabic is now a supported language.
- Chinese is now a supported language, both in Chinese (Traditional) as well as Chinese (Taiwan).
- Multiple languages have received translation improvements.

{{< relimg "budgie-replace-small.jpg" >}}

Prior to Budgie 10.2.9, it was easy to accidentally remove a panel. Now, we show a confirmation popover when clicking the removal button, to ensure accidentally panel removal doesn't occur.

**For more information, consult our [Budgie 10.2.9 release blog](/2016/12/16/budgie-10-2-9-released).**

## MATE

{{< relimg "20170101-MATE.jpg" >}}

Solus 2017.01.01.0 MATE Edition is a continuation of the goal we established with Solus 1.2.1, to deliver a Solus edition that has more traditional desktop experience and optimized for older hardware. 

This release ships with the MATE 1.16 series and is the first operating system to ship with [the Brisk Menu](/2016/12/30/solus-announces-first-release-of-brisk-menu), our distribution agnostic 
implementation of a clean, efficient, and modern menu for the MATE Desktop. Brisk Menu enables quick access to installed applications, the Control Center, Software Center, as well as session controls 
for logging out, locking your system, etc.

{{< relimg "20170101-MATE-Brisk-Open-Closeup.jpg" >}}

We have also renamed our MATE Notification theme from Solus to Slate to reflect our mission of distro agnostic software and such name is used in the Solus MATE Edition. Alongside being available in the 
Solus repositories, v4 of Slate is also available via [its GitHub Page](https://github.com/solus-project/mate-notification-theme-slate/releases/tag/v4).

---

## Full Changelog (Budgie)

#### Packages added to this release:

  - jansson
  - libdc1394
  - libebml
  - libgxps
  - libmatroska
  - libraw1394
  - libsamplerate
  - libspectre
  - libssh2
  - nghttp2
  - qt5-base
  - qt5-x11extras
  - sdl1-image
  - xorg-driver-video-qxl


#### Packages removed from this release:

- aalib
- enca
- mlocate
- qt5


#### Changes in this release:

**libao**

  - Shayne Sweeney: Fix sane defaults conf file for libao


**evince**

  - Joshua Strobl: Move to office.viewers
  - Joshua Strobl: Rebuild against libtiff and poppler
  - Bryan T. Meyers: Enabled PS (spectre) and XPS (gxps)


**gd**

  - Ikey Doherty: Address CVE-2016-7568
  - Joshua Strobl: Rebuild against libtiff


**libnspr**

  - Ikey Doherty: Update to 4.13
  - Ikey Doherty: Add abireport


**gstreamer-1.0-plugins-good**

  - Joshua Strobl: Rebuild against taglib 1.11.1


**firefox**

  - Ikey Doherty: Fix typo, go back to bed
  - Ikey Doherty: Add missing dbus-glib-1 dependency
  - Ikey Doherty: Update to 50.1.0
  - Ikey Doherty: langpacks: Update for 50.1.0
  - Ikey Doherty: Update to 50.0.2
  - Ikey Doherty: langpacks: Update for new release
  - Ikey Doherty: Update to Firefox 50.0.1
  - Ikey Doherty: langpacks: Update for new release
  - Ikey Doherty: Update to Firefox 50.0
  - Ikey Doherty: Disable forced acceleration due to nouveau being awful
  - Ikey Doherty: langpacks: Prepare for 50.0
  - Ikey Doherty: Update to 49.0.2
  - Ikey Doherty: Bump langpacks


**gpgme**

  - Bryan T. Meyers: Converted to ypkg
  - Bryan T. Meyers: Added: ABI reporting


**libsndfile**

  - Ikey Doherty: Rebuild update to unbork package
  - Ikey Doherty: Nuke unused patch and perform abi report


**libdvdcss**

  - Joshua Strobl: Update to 1.4.0, convert package.
  - Joshua Strobl: Add ABI reports for libdvdcss 1.3.0


**lightdm-gtk-greeter**

  - Ikey Doherty: Update branding for Budgie defaults in upcoming release


**libnss**

  - Ikey Doherty: Update to 3.27.1


**fontconfig**

  - Ikey Doherty: Actually enable our configuration now
  - Ikey Doherty: Update to 2.12.1 and rework the patches
  - Ikey Doherty: Add an initial abireport


**gdk-pixbuf**

  - Joshua Strobl: Rebuild against libtiff


**python3**

  - Ikey Doherty: Fix splitting for pyconfig header


**xorg-driver-input-libinput**

  - Ikey Doherty: Rebuild against old X
  - Ikey Doherty: Update to 0.23.0
  - Joshua Strobl: Move libinput.conf to change its priority.
  - Joshua Strobl: Update to 0.22.0
  - Joshua Strobl: Add ABI report for 0.19.0.


**openvpn**

  - Bryan T. Meyers: Updated to 2.4.0


**solus-sc**

  - Ikey Doherty: Update to v15
  - Ikey Doherty: Fix big derp
  - Ikey Doherty: Sync with git to fix the update notifications not appearing 2nd time round


**baselayout**

  - Ikey Doherty: Update to 1.8.0 - So long, Solus 1.2.1
  - Ikey Doherty: Use quotes in os-release, to fix mate-system-monitor
  - Ikey Doherty: Fix ld.so.conf copy issue
  - Ikey Doherty: Completely deprecate /etc/ld.so.conf file
  - Ikey Doherty: Drop included /etc/ld.so.conf.d files
  - Joshua Strobl: Update bug report URL for os-release


**moka-icon-theme**

  - Joshua Strobl: Sync with git for inclusion of GitKraken and Discord icons.


**libxfont**

  - Ikey Doherty: Update to 1.5.2


**vlc**

  - Joshua Strobl: Rebuild against taglib 1.11.1
  - Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.
  - Peter O'Connor: Rebuild against split qt5
  - Peter O'Connor: Enable smb and sftp for remote media playback
  - Ikey Doherty: Do a large enabling run to fix MKV subtitles, amongst others


**gtk2**

  - Ikey Doherty: Fix emul32 build
  - Ikey Doherty: Fix ibus


**gtk3**

  - Ikey Doherty: Add missing xcursor dependency to fix Firefox corrupt cursor issue


**os-installer**

  - Ikey Doherty: Update to v16


**libdrm**

  - Marius Nestor: Update to 2.4.74
  - Marius Nestor: Update to 2.4.73


**xorg-driver-video-intel**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0
  - Ikey Doherty: Sync with latest git, enable -O3


**gvfs**

  - Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.


**ca-certs**

  - Ikey Doherty: Update to 20161124 snapshot
  - Ikey Doherty: Update to 20161018


**nvidia-340-glx-driver**

  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Update to 340.101
  - Ikey Doherty: Rebuild for 4.8.15 kernel
  - Ikey Doherty: Rebuild for kernel changes
  - Ikey Doherty: Rebuild against 4.8.12
  - Ikey Doherty: Rebuild against 4.8.11
  - Ikey Doherty: Rebuild for 4.8.10 kernel
  - Ikey Doherty: Rebuild against 4.8.9 kernel
  - Ikey Doherty: Rebuild for 4.8.8
  - Ikey Doherty: Rebuild for 4.8.7 kernel
  - Joshua Strobl: Rebuild for 4.8.6 kernel
  - Ikey Doherty: Rebuild for 4.8.5 kernel
  - Ikey Doherty: Rebuild for 4.8.4 kernel
  - Joshua Strobl: Rebuild
  - Ikey Doherty: Rebuild
  - Justin Zobel: Rebuild for 4.8.3


**libmtp**

  - Joshua Strobl: Update to 1.1.12 to add significant device support.


**ghostscript**

  - Bryan T. Meyers: Update to 9.20
  - Joshua Strobl: Change to using a Solus sources tarball.
  - Joshua Strobl: Verifiable rebuild.
  - Joshua Strobl: Change tarball location
  - Joshua Strobl: Rebuild against libtiff.


**hexchat**

  - Ikey Doherty: Update to 2.12.4
  - Justin Zobel: Update to 2.12.3 and nuke patches


**transmission**

  - Joshua Strobl: Change to network.download component and use new tarball location.


**xorg-server**

  - Ikey Doherty: Revert to 1.18.4 due to AMD hybrid issues
  - Ikey Doherty: Sync with 1.19 git
  - Ikey Doherty: Update to 1.19.0
  - Ikey Doherty: Conduct abireport


**python-requests**

  - Joshua Strobl: Update to 2.11.1 for httpie, use python macros. Drop component.xml.


**gnome-control-center**

  - Joshua Strobl: Rebuild against libinput 1.5.1 to test lack of Tap to Click on some devices.
  - Ikey Doherty: Enable the manpage, no reason to disable this


**gnome-online-accounts**

  - Ikey Doherty: Update to 3.20.4 to fix HTTP issues


**findutils**

  - Joshua Strobl: Add replaces for mlocate to ensure there is no conflict during install.
  - Ikey Doherty: Update to 4.6.0 and replace mlocate
  - Justin Zobel: Convert to package.yml


**kernel**

  - Ikey Doherty: Drop broken patch
  - Ikey Doherty: Address multiple CVEs
  - Ikey Doherty: Change to CDN URL as kernel.org is an arsehole
  - Ikey Doherty: Update to 4.8.15 LTS kernel
  - Ikey Doherty: Fix last push
  - Ikey Doherty: Address CVE-2016-8655
  - Ikey Doherty: Update to the 4.8.12 kernel
  - Ikey Doherty: Forcibly disable debuginfo from ever being generated
  - Ikey Doherty: Update to the 4.8.11 kernel
  - Ikey Doherty: Update to 4.8.10
  - Ikey Doherty: Update to the latest LTS kernel version, 4.8.9
  - Ikey Doherty: Update to the 4.8.8 kernel
  - Ikey Doherty: Update to the 4.8.7 kernel
  - Joshua Strobl: Update to 4.8.6
  - Ikey Doherty: Update to 4.8.5 and enable Corsair devices
  - Ikey Doherty: Update to 4.8.4
  - Joshua Strobl: Enabled Huion Graphics Tablets HID devices.
  - Ikey Doherty: Tag the build as a security update prior to merge
  - Justin Zobel: Update to 4.8.3


**gspell**

  - Bryan T. Meyers: Updated to 1.2.1
  - Bryan T. Meyers: Enable vapi generation


**popt**

  - Bryan T. Meyers: Enabled static lib for efivar


**libpciaccess**

  - Ikey Doherty: Rebuild for toolchain
  - Ikey Doherty: Do an abireport


**bluez**

  - Ikey Doherty: Update to 5.43
  - Ikey Doherty: Add abireport


**libinput**

  - Bryan T. Meyers: Update to 1.5.2
  - Joshua Strobl: Update to 1.5.1
  - Joshua Strobl: Add ABI reports for current libinput.


**libwebp**

  - Peter O'Connor: Backport patch to address CVE-2016-9085


**solus-hardware-config**

  - Ikey Doherty: Update to v8
  - Ikey Doherty: Update to v7


**djvulibre**

  - Joshua Strobl: Rebuild against libtiff


**libxau**

  - Ikey Doherty: Rebuild for toolchain


**pisi**

  - Ikey Doherty: Rebuild as pisi moved out of it's component!
  - Ikey Doherty: Deprecate evobuild in favour of solbuild
  - Ikey Doherty: Update to v3.4 for improved files database performance for ypkg
  - Ikey Doherty: Fix stateless issue making SC hang
  - Ikey Doherty: Ensure evobuild creates eopkg directory
  - Ikey Doherty: Complete move to eopkg


**nano**

  - Ikey Doherty: Update to 2.7.1
  - Ikey Doherty: Bump for sc testing
  - Ikey Doherty: Ok *MAYBE* the last one. Nearly got this right. >_>
  - Ikey Doherty: Last bump for update view validation
  - Ikey Doherty: Rebump
  - Ikey Doherty: Test SC update response


**libxi**

  - Ikey Doherty: Update to 1.7.8


**glibc**

  - Ikey Doherty: Move ld.so.conf to a stateless implementation
  - Ikey Doherty: Enhance multilib integration


**poppler**

  - Peter O'Connor: Rebuild against split qt5
  - Ikey Doherty: Update to 0.49.0
  - Ikey Doherty: Include ABI report


**arc-firefox-theme**

  - Joshua Strobl: Update to 50.20161114


**tdb**

  - Bryan T. Meyers: Updated to 1.3.12
  - Ikey Doherty: Add abireport


**nvidia-304-glx-driver**

  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Restore the mtrr disabling patch
  - Ikey Doherty: Update to 304.134
  - Ikey Doherty: Rebuild for 4.8.15 kernel
  - Ikey Doherty: Rebuild for kernel changes
  - Ikey Doherty: Rebuild against 4.8.12 kernel
  - Ikey Doherty: Rebuild against 4.8.11
  - Ikey Doherty: Rebuild for 4.8.10 kernel
  - Ikey Doherty: Rebuild against 4.8.9 kernel
  - Ikey Doherty: Rebuild for 4.8.8
  - Ikey Doherty: Rebuild for 4.8.7
  - Joshua Strobl: Rebuild against 4.8.6 kernel.
  - Ikey Doherty: Rebuild for 4.8.5 kernel
  - Ikey Doherty: Rebuild against the latest kernel
  - Joshua Strobl: Rebuild
  - Ikey Doherty: Rebuild for kernel
  - Justin Zobel: Rebuild for 4.8.3


**gnome-terminal**

  - Ikey Doherty: Default to the dark theme


**gnome-screenshot**

  - Joshua Strobl: Land patch to resolve busy loop.


**systemd**

  - Ikey Doherty: Fix broken systemctl patch causing invalid warnings
  - Ikey Doherty: Fix miscount
  - Ikey Doherty: Fix "scary" warning for encrypted installations


**xorg-driver-video-amdgpu**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0
  - Ikey Doherty: Update to 1.2.0


**bash**

  - Ikey Doherty: Update the default PS1
  - Bryan T. Meyers: Removed component.xml and changed '@' color in default PS1


**openssh**

  - Ikey Doherty: Update to 7.4_p1


**xmodmap**

  - Bryan T. Meyers: That was not the right way to fix that
  - Bryan T. Meyers: Added profile.d entry to run xmodmap on session start


**libass**

  - Bryan T. Meyers: Fixed missing abi_used_libs
  - Bryan T. Meyers: Fixed version number
  - Peter O'Connor: Update to 0.13.4 to address following CVEs:
  - Ikey Doherty: Update to 0.13.1
  - Ikey Doherty: Perform abireport


**mesalib**

  - Ikey Doherty: Re-enable Link Time Optimization
  - Ikey Doherty: Bump past current mesa with revert
  - Ikey Doherty: Revert "Move back to git enable enable virgl"
  - Ikey Doherty: Move back to git enable enable virgl
  - Ikey Doherty: Update to 13.0.2
  - Ikey Doherty: Update to 13.0.1
  - Ikey Doherty: Update to 13.0.0 itself and leave git until new Vulkan support lands
  - Ikey Doherty: Update to 13.1.0-devel
  - Ikey Doherty: Update to 13.0.0_rc1


**libtiff**

  - Ikey Doherty: Update to version 4.0.7, folding in all CVE patches and new IDs:
  - Ikey Doherty: Add abireport


**xkeyboard-config**

  - Ikey Doherty: Update to 2.19, add compatibilty symlink for MATE
  - Joshua Strobl: Convert to yaml.


**libxcb**

  - Ikey Doherty: Rebuild for toolchain


**lsb-release**

  - Ikey Doherty: Update Solus version


**tzdata**

  - Ikey Doherty: Update to 2016h


**libxpm**

  - Ikey Doherty: Update to 3.5.12


**libpcre**

  - Ikey Doherty: Update to 8.39


**dracut**

  - Ikey Doherty: Support a stateless configuration


**expat**

  - Ikey Doherty: Update to 2.2.0
  - Ikey Doherty: Perform abi report


**nvidia-glx-driver**

  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Update to 375.26
  - Ikey Doherty: Rebuild for 4.8.15
  - Ikey Doherty: Rebuild for kernel change
  - Ikey Doherty: Rebuild against 4.8.12 kernel
  - Ikey Doherty: Rebuild against 4.8.11
  - Ikey Doherty: Unbreak nvidia-tls
  - Ikey Doherty: Rebuild for 4.8.10 kernel
  - Ikey Doherty: Update to 375.20
  - Ikey Doherty: Rebuild for 4.8.8
  - Ikey Doherty: Rebuild for 4.8.7 kernel
  - Joshua Strobl: Rebuild against 4.8.6
  - Ikey Doherty: Rebuild for 4.8.5 kernel
  - Ikey Doherty: Rebuild for 4.8.4 kernel
  - Joshua Strobl: Rebuild
  - Ikey Doherty: Rebuild
  - Justin Zobel: Rebuild for 4.8.3


**graphite2**

  - Joshua Strobl: Upgrade to 1.3.9
  - Joshua Strobl: Add ABI reports for 1.3.3


**taglib**

  - Joshua Strobl: Update to 1.11.1
  - Joshua Strobl: Added ABI reports.


**freetype2**

  - Ikey Doherty: Update to freetype 2.7 and rebase the Solus patches
  - Ikey Doherty: Add an ABI report


**ffmpeg**

  - Bryan T. Meyers: Enabled Opus support
  - Bryan T. Meyers: Enabled speex, ABI rebuild


**nautilus**

  - Ikey Doherty: Rebuild
  - Ikey Doherty: Revert "Enable tracker and generate ABI report"
  - Bryan T. Meyers: Enable tracker and generate ABI report


**tar**

  - Ikey Doherty: Update to 1.29, and patch CVE-2016-6321
  - Ikey Doherty: Leave the dark ages


**sudo**

  - Ikey Doherty: Update to 1.8.18_p1


**xorg-driver-video-vmware**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Update to 13.2.1
  - Ikey Doherty: Convert to ypkg and disable full relro


**cups-filters**

  - Bryan T. Meyers: Rebuild for ghostscript
  - Joshua Strobl: Rebuild against libtiff and poppler.


**gedit**

  - Bryan T. Meyers: Rebuild for gspell


**rhythmbox**

  - Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade. Added ABI reports.


**curl**

  - Joshua Strobl: Update to 7.52.1
  - Bryan T. Meyers: Enable nghttp2
  - Ikey Doherty: Update to 7.51.0


**gcc**

  - Ikey Doherty: Update to v6.3.0 and correct bug URL


**libfontenc**

  - Ikey Doherty: Update to 1.1.3


**budgie-desktop-branding**

  - Ikey Doherty: Update to v6


**xorg-driver-video-nouveau**

  - Ikey Doherty: Enable -O3 here
  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Convert to ypkg, update to 1.0.13


**budgie-desktop**

  - Ikey Doherty: Update to v10.2.9
  - Ikey Doherty: Backport fixes from git to fix spinny wheel startup notifications
  - Ikey Doherty: Fix detection for pinyin in keyboard layouts on ibus
  - Ikey Doherty: Sync with git
  - Ikey Doherty: Get the ibus fix in for Tebro
  - Ikey Doherty: Sync with git


**gparted**

  - Bryan T. Meyers: Updated to 0.27.0
  - Bryan T. Meyers: Fix broken source URL and ABI report


**sqlite3**

  - Bryan T. Meyers: Updated to 3.15.2


**xorg-driver-video-vesa**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0


**rhythmbox-alternative-toolbar**

  - Joshua Strobl: Update to 0.17.3, update patch, drop component.xml.


**llvm**

  - Ikey Doherty: Switch to RelWithDebInfo
  - Ikey Doherty: Disable debuginfo generation
  - Ikey Doherty: Rebuild against new GCC 6.3.0 and fix flags


**bash-completion**

  - Ikey Doherty: Update to 2.4, drop pisi file


**desktop-file-utils**

  - Ikey Doherty: Update to 0.23 and cleanup the COMAR handler


**gnome-color-manager**

  - Joshua Strobl: Rebuild against libtiff


**liblcms2**

  - Peter O'Connor: Backport patch to prevent potential overflow
  - Peter O'Connor: Add abireport


**xorg-driver-video-fbdev**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0


**xorg-driver-input-wacom**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Update to 0.34.0


**libx11**

  - Ikey Doherty: Rebuild


**thunderbird**

  - Joshua Strobl: Update to 45.6.0. Resolved CVE-2016-9899.
  - Joshua Strobl: Update langpacks for 45.6.0
  - Joshua Strobl: Update to 45.5.1, use our own tarball since extraction fails with the one Mozilla is providing. Resolves CVE-2016-9079.
  - Joshua Strobl: langpacks: Update for 45.5.1
  - Joshua Strobl: Update to 45.5.0
  - Joshua Strobl: langpacks: Update for 45.5.0
  - Ikey Doherty: Use the system nss + nspr libraries


**arc-gtk-theme**

  - Justin Zobel: Update to 20161119


**xorg-driver-video-radeon**

  - Ikey Doherty: Enable C/CXXFLAGS changes here too
  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Fix broken component
  - Ikey Doherty: Rebuild for X.Org 1.19.0
  - Ikey Doherty: Update to 7.8.0

---

## Full Changelog (MATE)

#### Packages added to this release:

  - brisk-menu
  - jansson
  - libdc1394
  - libebml
  - libmatroska
  - libraw1394
  - libsamplerate
  - libssh2
  - mate-notification-theme-slate
  - nghttp2
  - qt5-base
  - qt5-x11extras
  - sdl1-image


#### Packages removed from this release:

- aalib
- enca
- mate-notification-theme-solus
- mlocate
- qt5


#### Changes in this release:

**libao**

  - Shayne Sweeney: Fix sane defaults conf file for libao


**xorg-driver-input-synaptics**

  - Joshua Strobl: Move 70-synaptics.conf back to 50-synaptics.conf to fix tap-to-click.
  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Update to 1.9.0


**gd**

  - Ikey Doherty: Address CVE-2016-7568
  - Joshua Strobl: Rebuild against libtiff


**libnspr**

  - Ikey Doherty: Update to 4.13
  - Ikey Doherty: Add abireport


**gstreamer-1.0-plugins-good**

  - Joshua Strobl: Rebuild against taglib 1.11.1


**firefox**

  - Ikey Doherty: Fix typo, go back to bed
  - Ikey Doherty: Add missing dbus-glib-1 dependency
  - Ikey Doherty: Update to 50.1.0
  - Ikey Doherty: langpacks: Update for 50.1.0
  - Ikey Doherty: Update to 50.0.2
  - Ikey Doherty: langpacks: Update for new release
  - Ikey Doherty: Update to Firefox 50.0.1
  - Ikey Doherty: langpacks: Update for new release
  - Ikey Doherty: Update to Firefox 50.0
  - Ikey Doherty: Disable forced acceleration due to nouveau being awful
  - Ikey Doherty: langpacks: Prepare for 50.0
  - Ikey Doherty: Update to 49.0.2
  - Ikey Doherty: Bump langpacks


**gpgme**

  - Bryan T. Meyers: Converted to ypkg
  - Bryan T. Meyers: Added: ABI reporting


**libsndfile**

  - Ikey Doherty: Rebuild update to unbork package
  - Ikey Doherty: Nuke unused patch and perform abi report


**libdvdcss**

  - Joshua Strobl: Update to 1.4.0, convert package.
  - Joshua Strobl: Add ABI reports for libdvdcss 1.3.0


**lightdm-gtk-greeter**

  - Ikey Doherty: Update branding for Budgie defaults in upcoming release


**libnss**

  - Ikey Doherty: Update to 3.27.1


**fontconfig**

  - Ikey Doherty: Actually enable our configuration now
  - Ikey Doherty: Update to 2.12.1 and rework the patches
  - Ikey Doherty: Add an initial abireport


**gdk-pixbuf**

  - Joshua Strobl: Rebuild against libtiff


**python3**

  - Ikey Doherty: Fix splitting for pyconfig header


**xorg-driver-input-libinput**

  - Ikey Doherty: Rebuild against old X
  - Ikey Doherty: Update to 0.23.0
  - Joshua Strobl: Move libinput.conf to change its priority.
  - Joshua Strobl: Update to 0.22.0
  - Joshua Strobl: Add ABI report for 0.19.0.


**openvpn**

  - Bryan T. Meyers: Updated to 2.4.0


**solus-sc**

  - Ikey Doherty: Update to v15
  - Ikey Doherty: Fix big derp
  - Ikey Doherty: Sync with git to fix the update notifications not appearing 2nd time round


**lm_sensors**

  - Ikey Doherty: Convert to ypkg, update to 3.4.0
  - Ikey Doherty: Conduct abireport


**baselayout**

  - Ikey Doherty: Update to 1.8.0 - So long, Solus 1.2.1
  - Ikey Doherty: Use quotes in os-release, to fix mate-system-monitor
  - Ikey Doherty: Fix ld.so.conf copy issue
  - Ikey Doherty: Completely deprecate /etc/ld.so.conf file
  - Ikey Doherty: Drop included /etc/ld.so.conf.d files
  - Joshua Strobl: Update bug report URL for os-release


**moka-icon-theme**

  - Joshua Strobl: Sync with git for inclusion of GitKraken and Discord icons.


**libxfont**

  - Ikey Doherty: Update to 1.5.2


**vlc**

  - Joshua Strobl: Rebuild against taglib 1.11.1
  - Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.
  - Peter O'Connor: Rebuild against split qt5
  - Peter O'Connor: Enable smb and sftp for remote media playback
  - Ikey Doherty: Do a large enabling run to fix MKV subtitles, amongst others


**gtk2**

  - Ikey Doherty: Fix emul32 build
  - Ikey Doherty: Fix ibus


**gtk3**

  - Ikey Doherty: Add missing xcursor dependency to fix Firefox corrupt cursor issue


**os-installer**

  - Ikey Doherty: Update to v16


**libdrm**

  - Marius Nestor: Update to 2.4.74
  - Marius Nestor: Update to 2.4.73


**xorg-driver-video-intel**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0
  - Ikey Doherty: Sync with latest git, enable -O3


**ca-certs**

  - Ikey Doherty: Update to 20161124 snapshot
  - Ikey Doherty: Update to 20161018


**nvidia-340-glx-driver**

  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Update to 340.101
  - Ikey Doherty: Rebuild for 4.8.15 kernel
  - Ikey Doherty: Rebuild for kernel changes
  - Ikey Doherty: Rebuild against 4.8.12
  - Ikey Doherty: Rebuild against 4.8.11
  - Ikey Doherty: Rebuild for 4.8.10 kernel
  - Ikey Doherty: Rebuild against 4.8.9 kernel
  - Ikey Doherty: Rebuild for 4.8.8
  - Ikey Doherty: Rebuild for 4.8.7 kernel
  - Joshua Strobl: Rebuild for 4.8.6 kernel
  - Ikey Doherty: Rebuild for 4.8.5 kernel
  - Ikey Doherty: Rebuild for 4.8.4 kernel
  - Joshua Strobl: Rebuild
  - Ikey Doherty: Rebuild
  - Justin Zobel: Rebuild for 4.8.3


**libmtp**

  - Joshua Strobl: Update to 1.1.12 to add significant device support.


**ghostscript**

  - Bryan T. Meyers: Update to 9.20
  - Joshua Strobl: Change to using a Solus sources tarball.
  - Joshua Strobl: Verifiable rebuild.
  - Joshua Strobl: Change tarball location
  - Joshua Strobl: Rebuild against libtiff.


**hexchat**

  - Ikey Doherty: Update to 2.12.4
  - Justin Zobel: Update to 2.12.3 and nuke patches


**transmission**

  - Joshua Strobl: Change to network.download component and use new tarball location.


**xorg-server**

  - Ikey Doherty: Revert to 1.18.4 due to AMD hybrid issues
  - Ikey Doherty: Sync with 1.19 git
  - Ikey Doherty: Update to 1.19.0
  - Ikey Doherty: Conduct abireport


**mate-desktop**

  - Justin Zobel: Update to 1.16.1


**mate-desktop-branding**

  - Ikey Doherty: Update to v10
  - Ikey Doherty: Set the Brisk Menu defaults
  - Ikey Doherty: Update to v9
  - Ikey Doherty: Use 'slate' name now in notification theme
  - Ikey Doherty: Move the default panel to the bottom of the screen
  - Ikey Doherty: Fix early-morning-brain
  - Ikey Doherty: Switch to the Brisk Menu


**python-requests**

  - Joshua Strobl: Update to 2.11.1 for httpie, use python macros. Drop component.xml.


**findutils**

  - Joshua Strobl: Add replaces for mlocate to ensure there is no conflict during install.
  - Ikey Doherty: Update to 4.6.0 and replace mlocate
  - Justin Zobel: Convert to package.yml


**kernel**

  - Ikey Doherty: Drop broken patch
  - Ikey Doherty: Address multiple CVEs
  - Ikey Doherty: Change to CDN URL as kernel.org is an arsehole
  - Ikey Doherty: Update to 4.8.15 LTS kernel
  - Ikey Doherty: Fix last push
  - Ikey Doherty: Address CVE-2016-8655
  - Ikey Doherty: Update to the 4.8.12 kernel
  - Ikey Doherty: Forcibly disable debuginfo from ever being generated
  - Ikey Doherty: Update to the 4.8.11 kernel
  - Ikey Doherty: Update to 4.8.10
  - Ikey Doherty: Update to the latest LTS kernel version, 4.8.9
  - Ikey Doherty: Update to the 4.8.8 kernel
  - Ikey Doherty: Update to the 4.8.7 kernel
  - Joshua Strobl: Update to 4.8.6
  - Ikey Doherty: Update to 4.8.5 and enable Corsair devices
  - Ikey Doherty: Update to 4.8.4
  - Joshua Strobl: Enabled Huion Graphics Tablets HID devices.
  - Ikey Doherty: Tag the build as a security update prior to merge
  - Justin Zobel: Update to 4.8.3


**popt**

  - Bryan T. Meyers: Enabled static lib for efivar


**libpciaccess**

  - Ikey Doherty: Rebuild for toolchain
  - Ikey Doherty: Do an abireport


**mate-themes**

  - Justin Zobel: Update to 3.20.13


**libinput**

  - Bryan T. Meyers: Update to 1.5.2
  - Joshua Strobl: Update to 1.5.1
  - Joshua Strobl: Add ABI reports for current libinput.


**libwebp**

  - Peter O'Connor: Backport patch to address CVE-2016-9085


**solus-hardware-config**

  - Ikey Doherty: Update to v8
  - Ikey Doherty: Update to v7


**djvulibre**

  - Joshua Strobl: Rebuild against libtiff


**libxau**

  - Ikey Doherty: Rebuild for toolchain


**pisi**

  - Ikey Doherty: Rebuild as pisi moved out of it's component!
  - Ikey Doherty: Deprecate evobuild in favour of solbuild
  - Ikey Doherty: Update to v3.4 for improved files database performance for ypkg
  - Ikey Doherty: Fix stateless issue making SC hang
  - Ikey Doherty: Ensure evobuild creates eopkg directory
  - Ikey Doherty: Complete move to eopkg


**nano**

  - Ikey Doherty: Update to 2.7.1
  - Ikey Doherty: Bump for sc testing
  - Ikey Doherty: Ok *MAYBE* the last one. Nearly got this right. >_>
  - Ikey Doherty: Last bump for update view validation
  - Ikey Doherty: Rebump
  - Ikey Doherty: Test SC update response


**libxi**

  - Ikey Doherty: Update to 1.7.8


**glibc**

  - Ikey Doherty: Move ld.so.conf to a stateless implementation
  - Ikey Doherty: Enhance multilib integration


**poppler**

  - Peter O'Connor: Rebuild against split qt5
  - Ikey Doherty: Update to 0.49.0
  - Ikey Doherty: Include ABI report


**arc-firefox-theme**

  - Joshua Strobl: Update to 50.20161114


**caja**

  - Justin Zobel: Update to 1.16.1


**nvidia-304-glx-driver**

  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Restore the mtrr disabling patch
  - Ikey Doherty: Update to 304.134
  - Ikey Doherty: Rebuild for 4.8.15 kernel
  - Ikey Doherty: Rebuild for kernel changes
  - Ikey Doherty: Rebuild against 4.8.12 kernel
  - Ikey Doherty: Rebuild against 4.8.11
  - Ikey Doherty: Rebuild for 4.8.10 kernel
  - Ikey Doherty: Rebuild against 4.8.9 kernel
  - Ikey Doherty: Rebuild for 4.8.8
  - Ikey Doherty: Rebuild for 4.8.7
  - Joshua Strobl: Rebuild against 4.8.6 kernel.
  - Ikey Doherty: Rebuild for 4.8.5 kernel
  - Ikey Doherty: Rebuild against the latest kernel
  - Joshua Strobl: Rebuild
  - Ikey Doherty: Rebuild for kernel
  - Justin Zobel: Rebuild for 4.8.3


**tdb**

  - Bryan T. Meyers: Updated to 1.3.12
  - Ikey Doherty: Add abireport


**systemd**

  - Ikey Doherty: Fix broken systemctl patch causing invalid warnings
  - Ikey Doherty: Fix miscount
  - Ikey Doherty: Fix "scary" warning for encrypted installations


**xorg-driver-video-amdgpu**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0
  - Ikey Doherty: Update to 1.2.0


**bash**

  - Ikey Doherty: Update the default PS1
  - Bryan T. Meyers: Removed component.xml and changed '@' color in default PS1


**libmateweather**

  - Justin Zobel: Update to 1.16.1


**openssh**

  - Ikey Doherty: Update to 7.4_p1


**libass**

  - Bryan T. Meyers: Fixed missing abi_used_libs
  - Bryan T. Meyers: Fixed version number
  - Peter O'Connor: Update to 0.13.4 to address following CVEs:
  - Ikey Doherty: Update to 0.13.1
  - Ikey Doherty: Perform abireport


**mesalib**

  - Ikey Doherty: Re-enable Link Time Optimization
  - Ikey Doherty: Bump past current mesa with revert
  - Ikey Doherty: Revert "Move back to git enable enable virgl"
  - Ikey Doherty: Move back to git enable enable virgl
  - Ikey Doherty: Update to 13.0.2
  - Ikey Doherty: Update to 13.0.1
  - Ikey Doherty: Update to 13.0.0 itself and leave git until new Vulkan support lands
  - Ikey Doherty: Update to 13.1.0-devel
  - Ikey Doherty: Update to 13.0.0_rc1


**libtiff**

  - Ikey Doherty: Update to version 4.0.7, folding in all CVE patches and new IDs:
  - Ikey Doherty: Add abireport


**atril**

  - Joshua Strobl: Rebuild against djvulibre, libtiff, and poppler.


**xkeyboard-config**

  - Ikey Doherty: Update to 2.19, add compatibilty symlink for MATE
  - Joshua Strobl: Convert to yaml.


**libxcb**

  - Ikey Doherty: Rebuild for toolchain


**lsb-release**

  - Ikey Doherty: Update Solus version


**tzdata**

  - Ikey Doherty: Update to 2016h


**libxpm**

  - Ikey Doherty: Update to 3.5.12


**libpcre**

  - Ikey Doherty: Update to 8.39


**dracut**

  - Ikey Doherty: Support a stateless configuration


**expat**

  - Ikey Doherty: Update to 2.2.0
  - Ikey Doherty: Perform abi report


**nvidia-glx-driver**

  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Update to 375.26
  - Ikey Doherty: Rebuild for 4.8.15
  - Ikey Doherty: Rebuild for kernel change
  - Ikey Doherty: Rebuild against 4.8.12 kernel
  - Ikey Doherty: Rebuild against 4.8.11
  - Ikey Doherty: Unbreak nvidia-tls
  - Ikey Doherty: Rebuild for 4.8.10 kernel
  - Ikey Doherty: Update to 375.20
  - Ikey Doherty: Rebuild for 4.8.8
  - Ikey Doherty: Rebuild for 4.8.7 kernel
  - Joshua Strobl: Rebuild against 4.8.6
  - Ikey Doherty: Rebuild for 4.8.5 kernel
  - Ikey Doherty: Rebuild for 4.8.4 kernel
  - Joshua Strobl: Rebuild
  - Ikey Doherty: Rebuild
  - Justin Zobel: Rebuild for 4.8.3


**graphite2**

  - Joshua Strobl: Upgrade to 1.3.9
  - Joshua Strobl: Add ABI reports for 1.3.3


**taglib**

  - Joshua Strobl: Update to 1.11.1
  - Joshua Strobl: Added ABI reports.


**mate-notification-daemon**

  - Ikey Doherty: Sync with git for action-icons support


**freetype2**

  - Ikey Doherty: Update to freetype 2.7 and rebase the Solus patches
  - Ikey Doherty: Add an ABI report


**ffmpeg**

  - Bryan T. Meyers: Enabled Opus support
  - Bryan T. Meyers: Enabled speex, ABI rebuild


**xorg-driver-input-evdev**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Update to 2.10.4


**tar**

  - Ikey Doherty: Update to 1.29, and patch CVE-2016-6321
  - Ikey Doherty: Leave the dark ages


**sudo**

  - Ikey Doherty: Update to 1.8.18_p1


**xorg-driver-video-vmware**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Update to 13.2.1
  - Ikey Doherty: Convert to ypkg and disable full relro


**cups-filters**

  - Bryan T. Meyers: Rebuild for ghostscript
  - Joshua Strobl: Rebuild against libtiff and poppler.


**rhythmbox**

  - Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade. Added ABI reports.


**curl**

  - Joshua Strobl: Update to 7.52.1
  - Bryan T. Meyers: Enable nghttp2
  - Ikey Doherty: Update to 7.51.0


**gcc**

  - Ikey Doherty: Update to v6.3.0 and correct bug URL


**libfontenc**

  - Ikey Doherty: Update to 1.1.3


**xorg-driver-video-nouveau**

  - Ikey Doherty: Enable -O3 here
  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Convert to ypkg, update to 1.0.13


**gparted**

  - Bryan T. Meyers: Updated to 0.27.0
  - Bryan T. Meyers: Fix broken source URL and ABI report


**sqlite3**

  - Bryan T. Meyers: Updated to 3.15.2


**xorg-driver-video-vesa**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0


**gvfs**

  - Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.


**llvm**

  - Ikey Doherty: Switch to RelWithDebInfo
  - Ikey Doherty: Disable debuginfo generation
  - Ikey Doherty: Rebuild against new GCC 6.3.0 and fix flags


**bash-completion**

  - Ikey Doherty: Update to 2.4, drop pisi file


**desktop-file-utils**

  - Ikey Doherty: Update to 0.23 and cleanup the COMAR handler


**liblcms2**

  - Peter O'Connor: Backport patch to prevent potential overflow
  - Peter O'Connor: Add abireport


**xorg-driver-video-fbdev**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Rebuild against X.Org 1.19.0


**xorg-driver-input-wacom**

  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Update to 0.34.0


**libx11**

  - Ikey Doherty: Rebuild


**thunderbird**

  - Joshua Strobl: Update to 45.6.0. Resolved CVE-2016-9899.
  - Joshua Strobl: Update langpacks for 45.6.0
  - Joshua Strobl: Update to 45.5.1, use our own tarball since extraction fails with the one Mozilla is providing. Resolves CVE-2016-9079.
  - Joshua Strobl: langpacks: Update for 45.5.1
  - Joshua Strobl: Update to 45.5.0
  - Joshua Strobl: langpacks: Update for 45.5.0
  - Ikey Doherty: Use the system nss + nspr libraries


**arc-gtk-theme**

  - Justin Zobel: Update to 20161119


**xorg-driver-video-radeon**

  - Ikey Doherty: Enable C/CXXFLAGS changes here too
  - Ikey Doherty: Rebuild against X
  - Ikey Doherty: Fix broken component
  - Ikey Doherty: Rebuild for X.Org 1.19.0
  - Ikey Doherty: Update to 7.8.0