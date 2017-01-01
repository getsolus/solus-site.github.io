---
author: "joshua"
categories:
- news
- releases
date: 2017-01-01T21:47:26+02:00
featuredimage: "2017/01/20170101-featured.jpg"
title: "Solus Releases ISO Snapshot 2017.01.01.0"
url: "2017/01/01/solus-releases-iso-snapshot-2017.01.01.0"
---

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

- `nvidia-glx-driver` - 370.28
- `nvidia-340-glx-driver` (340.xx series) - 340.101
- `nvidia-304-glx-driver` (304.xx series) - 304.134

### Installer

Due to a subtle bug in the Installer, swap partitions were ignored when using custom mount points. This issue has since been resolved.

## Software Center

This release of Solus ships with the latest version of our Software Center, v15, which features numerous improvements and bug fixes.

### Expanded Categories

{{< altimg "2017/01/solus-sc-v15-new-categories.jpg" >}}

We have expanded our list of dedicated software categories to include:

- Office:
 - Note-taking applications.
 - E-book and PDF viewing applications.
- Programming:
 - Haskell libraries
 - General programming libraries.

### Third Party

{{< altimg "2017/01/solus-sc-v15-third-party.jpg" >}}

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

{{< altimg "2017/01/solus-sc-v15-software-view.jpg" >}}

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

{{< altimg "2017/01/20170101-Budgie.jpg" >}}

Solus 2017.01.01.0 ships with the latest of our Budgie releases, 10.2.9. This release features a large set of bug fixes and improvements before our 
focus on Budgie 11 development, such as:

- In the Icon Tasklist, an issue with the spinning wheel that would persist for 30 seconds during the launching of an application has been resolved.
- Resolved an issue in the Keyboard Layout widget where we didn't manage to retrieve a language name from libgnome-desktop for the zh_CN locale. This resulted in rendering an odd label 
for the libpinyin IBUS engine, i.e. "(null) (libpinyin)". Now, when we fail to get a language based on the language code, we fall back to locale detection.
- Arabic is now a supported language.
- Chinese is now a supported language, both in Chinese (Traditional) as well as Chinese (Taiwan).
- Multiple languages have received translation improvements.

{{< altimg "2017/01/budgie-replace-small.jpg" >}}

Prior to Budgie 10.2.9, it was easy to accidentally remove a panel. Now, we show a confirmation popover when clicking the removal button, to ensure accidentally panel removal doesn't occur.

**For more information, consult our [Budgie 10.2.9 release blog](/2016/12/16/budgie-10-2-9-released).**

## MATE

{{< altimg "2017/01/20170101-MATE.jpg" >}}

Solus 2017.01.01.0 MATE Edition is a continuation of the goal we established with Solus 1.2.1, to deliver a Solus edition that has more traditional desktop experience and optimized for older hardware. 

This release ships with the MATE 1.16 series and is the first operating system to ship with [the Brisk Menu](/2016/12/30/solus-announces-first-release-of-brisk-menu), our distribution agnostic 
implementation of a clean, efficient, and modern menu for the MATE Desktop. Brisk Menu enables quick access to installed applications, the Control Center, Software Center, as well as session controls 
for logging out, locking your system, etc.

{{< altimg "2017/01/20170101-MATE-Brisk-Open-Closeup.jpg" >}}

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

 - [Shayne Sweeney: Fix sane defaults conf file for libao](https://git.solus-project.com/packages/libao/commit/?id=fac484c)


**evince**

 - [Joshua Strobl: Move to office.viewers](https://git.solus-project.com/packages/evince/commit/?id=ea7a2b7)
 - [Joshua Strobl: Rebuild against libtiff and poppler](https://git.solus-project.com/packages/evince/commit/?id=5f52350)
 - [Bryan T. Meyers: Enabled PS (spectre) and XPS (gxps)](https://git.solus-project.com/packages/evince/commit/?id=fdfd88f)


**gd**

 - [Ikey Doherty: Address CVE-2016-7568](https://git.solus-project.com/packages/gd/commit/?id=68f5f00)
 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/gd/commit/?id=db14ca1)


**libnspr**

 - [Ikey Doherty: Update to 4.13](https://git.solus-project.com/packages/libnspr/commit/?id=a17a69b)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/libnspr/commit/?id=0acb6ea)


**gstreamer-1.0-plugins-good**

 - [Joshua Strobl: Rebuild against taglib 1.11.1](https://git.solus-project.com/packages/gstreamer-1.0-plugins-good/commit/?id=6634e9f)


**firefox**

 - [Ikey Doherty: Fix typo, go back to bed](https://git.solus-project.com/packages/firefox/commit/?id=0d62c1d)
 - [Ikey Doherty: Add missing dbus-glib-1 dependency](https://git.solus-project.com/packages/firefox/commit/?id=d96f00e)
 - [Ikey Doherty: Update to 50.1.0](https://git.solus-project.com/packages/firefox/commit/?id=d6eae0b)
 - [Ikey Doherty: langpacks: Update for 50.1.0](https://git.solus-project.com/packages/firefox/commit/?id=751b075)
 - [Ikey Doherty: Update to 50.0.2](https://git.solus-project.com/packages/firefox/commit/?id=4a6b0f7)
 - [Ikey Doherty: langpacks: Update for new release](https://git.solus-project.com/packages/firefox/commit/?id=8e919ba)
 - [Ikey Doherty: Update to Firefox 50.0.1](https://git.solus-project.com/packages/firefox/commit/?id=4b2c04e)
 - [Ikey Doherty: langpacks: Update for new release](https://git.solus-project.com/packages/firefox/commit/?id=cc8385c)
 - [Ikey Doherty: Update to Firefox 50.0](https://git.solus-project.com/packages/firefox/commit/?id=7720ac2)
 - [Ikey Doherty: Disable forced acceleration due to nouveau being awful](https://git.solus-project.com/packages/firefox/commit/?id=15175e2)
 - [Ikey Doherty: langpacks: Prepare for 50.0](https://git.solus-project.com/packages/firefox/commit/?id=c14cd71)
 - [Ikey Doherty: Update to 49.0.2](https://git.solus-project.com/packages/firefox/commit/?id=62475ff)
 - [Ikey Doherty: Bump langpacks](https://git.solus-project.com/packages/firefox/commit/?id=f9684b0)


**gpgme**

 - [Bryan T. Meyers: Converted to ypkg](https://git.solus-project.com/packages/gpgme/commit/?id=b9e2d8a)
 - [Bryan T. Meyers: Added: ABI reporting](https://git.solus-project.com/packages/gpgme/commit/?id=645d931)


**libsndfile**

 - [Ikey Doherty: Rebuild update to unbork package](https://git.solus-project.com/packages/libsndfile/commit/?id=4e96d7e)
 - [Ikey Doherty: Nuke unused patch and perform abi report](https://git.solus-project.com/packages/libsndfile/commit/?id=dde6e1d)


**libdvdcss**

 - [Joshua Strobl: Update to 1.4.0, convert package.](https://git.solus-project.com/packages/libdvdcss/commit/?id=7b06390)
 - [Joshua Strobl: Add ABI reports for libdvdcss 1.3.0](https://git.solus-project.com/packages/libdvdcss/commit/?id=592da81)


**lightdm-gtk-greeter**

 - [Ikey Doherty: Update branding for Budgie defaults in upcoming release](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=b91c990)


**libnss**

 - [Ikey Doherty: Update to 3.27.1](https://git.solus-project.com/packages/libnss/commit/?id=c9b634e)


**fontconfig**

 - [Ikey Doherty: Actually enable our configuration now](https://git.solus-project.com/packages/fontconfig/commit/?id=131a552)
 - [Ikey Doherty: Update to 2.12.1 and rework the patches](https://git.solus-project.com/packages/fontconfig/commit/?id=f8b4c6f)
 - [Ikey Doherty: Add an initial abireport](https://git.solus-project.com/packages/fontconfig/commit/?id=8917c4f)


**gdk-pixbuf**

 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=b456014)


**python3**

 - [Ikey Doherty: Fix splitting for pyconfig header](https://git.solus-project.com/packages/python3/commit/?id=dfaa93e)


**xorg-driver-input-libinput**

 - [Ikey Doherty: Rebuild against old X](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=a8e1621)
 - [Ikey Doherty: Update to 0.23.0](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=1390036)
 - [Joshua Strobl: Move libinput.conf to change its priority.](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=0e4e6aa)
 - [Joshua Strobl: Update to 0.22.0](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=501edd5)
 - [Joshua Strobl: Add ABI report for 0.19.0.](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=897fa8e)


**openvpn**

 - [Bryan T. Meyers: Updated to 2.4.0](https://git.solus-project.com/packages/openvpn/commit/?id=0e8a19e)


**solus-sc**

 - [Ikey Doherty: Update to v15](https://git.solus-project.com/packages/solus-sc/commit/?id=557ada2)
 - [Ikey Doherty: Fix big derp](https://git.solus-project.com/packages/solus-sc/commit/?id=745b7cd)
 - [Ikey Doherty: Sync with git to fix the update notifications not appearing 2nd time round](https://git.solus-project.com/packages/solus-sc/commit/?id=8ee2921)


**baselayout**

 - [Ikey Doherty: Update to 1.8.0 - So long, Solus 1.2.1](https://git.solus-project.com/packages/baselayout/commit/?id=8313b87)
 - [Ikey Doherty: Use quotes in os-release, to fix mate-system-monitor](https://git.solus-project.com/packages/baselayout/commit/?id=a9c6f41)
 - [Ikey Doherty: Fix ld.so.conf copy issue](https://git.solus-project.com/packages/baselayout/commit/?id=1f56f1f)
 - [Ikey Doherty: Completely deprecate /etc/ld.so.conf file](https://git.solus-project.com/packages/baselayout/commit/?id=561510c)
 - [Ikey Doherty: Drop included /etc/ld.so.conf.d files](https://git.solus-project.com/packages/baselayout/commit/?id=4cf70c2)
 - [Joshua Strobl: Update bug report URL for os-release](https://git.solus-project.com/packages/baselayout/commit/?id=6c61bf2)


**moka-icon-theme**

 - [Joshua Strobl: Sync with git for inclusion of GitKraken and Discord icons.](https://git.solus-project.com/packages/moka-icon-theme/commit/?id=0c7c235)


**libxfont**

 - [Ikey Doherty: Update to 1.5.2](https://git.solus-project.com/packages/libxfont/commit/?id=9b898aa)


**vlc**

 - [Joshua Strobl: Rebuild against taglib 1.11.1](https://git.solus-project.com/packages/vlc/commit/?id=7616420)
 - [Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.](https://git.solus-project.com/packages/vlc/commit/?id=4f6c37b)
 - [Peter O'Connor: Rebuild against split qt5](https://git.solus-project.com/packages/vlc/commit/?id=0fcb1a4)
 - [Peter O'Connor: Enable smb and sftp for remote media playback](https://git.solus-project.com/packages/vlc/commit/?id=0b48245)
 - [Ikey Doherty: Do a large enabling run to fix MKV subtitles, amongst others](https://git.solus-project.com/packages/vlc/commit/?id=9d1e440)


**gtk2**

 - [Ikey Doherty: Fix emul32 build](https://git.solus-project.com/packages/gtk2/commit/?id=8bf0e88)
 - [Ikey Doherty: Fix ibus](https://git.solus-project.com/packages/gtk2/commit/?id=2e5ab36)


**gtk3**

 - [Ikey Doherty: Add missing xcursor dependency to fix Firefox corrupt cursor issue](https://git.solus-project.com/packages/gtk3/commit/?id=6637af8)


**os-installer**

 - [Ikey Doherty: Update to v16](https://git.solus-project.com/packages/os-installer/commit/?id=3866f9e)


**libdrm**

 - [Marius Nestor: Update to 2.4.74](https://git.solus-project.com/packages/libdrm/commit/?id=1ad592c)
 - [Marius Nestor: Update to 2.4.73](https://git.solus-project.com/packages/libdrm/commit/?id=ea42ffc)


**xorg-driver-video-intel**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=1affee1)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=83eefda)
 - [Ikey Doherty: Sync with latest git, enable -O3](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=cff9160)


**gvfs**

 - [Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.](https://git.solus-project.com/packages/gvfs/commit/?id=12d09de)


**ca-certs**

 - [Ikey Doherty: Update to 20161124 snapshot](https://git.solus-project.com/packages/ca-certs/commit/?id=ffeab9c)
 - [Ikey Doherty: Update to 20161018](https://git.solus-project.com/packages/ca-certs/commit/?id=0d01d24)


**nvidia-340-glx-driver**

 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=18b1b23)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=29e75a0)
 - [Ikey Doherty: Update to 340.101](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=1eeb598)
 - [Ikey Doherty: Rebuild for 4.8.15 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=856e72e)
 - [Ikey Doherty: Rebuild for kernel changes](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=78ecb9d)
 - [Ikey Doherty: Rebuild against 4.8.12](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=3eeb05c)
 - [Ikey Doherty: Rebuild against 4.8.11](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a8f0d3e)
 - [Ikey Doherty: Rebuild for 4.8.10 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=045b404)
 - [Ikey Doherty: Rebuild against 4.8.9 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=41da775)
 - [Ikey Doherty: Rebuild for 4.8.8](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=cdae5eb)
 - [Ikey Doherty: Rebuild for 4.8.7 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c2aa480)
 - [Joshua Strobl: Rebuild for 4.8.6 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=971113f)
 - [Ikey Doherty: Rebuild for 4.8.5 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=74aa0e3)
 - [Ikey Doherty: Rebuild for 4.8.4 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=561ac06)
 - [Joshua Strobl: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c6618dd)
 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=aa67035)
 - [Justin Zobel: Rebuild for 4.8.3](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=ce89e2a)


**libmtp**

 - [Joshua Strobl: Update to 1.1.12 to add significant device support.](https://git.solus-project.com/packages/libmtp/commit/?id=9ba4a17)


**ghostscript**

 - [Bryan T. Meyers: Update to 9.20](https://git.solus-project.com/packages/ghostscript/commit/?id=0b9de6b)
 - [Joshua Strobl: Change to using a Solus sources tarball.](https://git.solus-project.com/packages/ghostscript/commit/?id=798d07b)
 - [Joshua Strobl: Verifiable rebuild.](https://git.solus-project.com/packages/ghostscript/commit/?id=6ff86e7)
 - [Joshua Strobl: Change tarball location](https://git.solus-project.com/packages/ghostscript/commit/?id=e1bcc62)
 - [Joshua Strobl: Rebuild against libtiff.](https://git.solus-project.com/packages/ghostscript/commit/?id=c93a9b0)


**hexchat**

 - [Ikey Doherty: Update to 2.12.4](https://git.solus-project.com/packages/hexchat/commit/?id=472774c)
 - [Justin Zobel: Update to 2.12.3 and nuke patches](https://git.solus-project.com/packages/hexchat/commit/?id=69ebfd0)


**transmission**

 - [Joshua Strobl: Change to network.download component and use new tarball location.](https://git.solus-project.com/packages/transmission/commit/?id=32cbc3b)


**xorg-server**

 - [Ikey Doherty: Revert to 1.18.4 due to AMD hybrid issues](https://git.solus-project.com/packages/xorg-server/commit/?id=223d700)
 - [Ikey Doherty: Sync with 1.19 git](https://git.solus-project.com/packages/xorg-server/commit/?id=2a2e76d)
 - [Ikey Doherty: Update to 1.19.0](https://git.solus-project.com/packages/xorg-server/commit/?id=889b5d3)
 - [Ikey Doherty: Conduct abireport](https://git.solus-project.com/packages/xorg-server/commit/?id=64269d4)


**python-requests**

 - [Joshua Strobl: Update to 2.11.1 for httpie, use python macros. Drop component.xml.](https://git.solus-project.com/packages/python-requests/commit/?id=2df332a)


**gnome-control-center**

 - [Joshua Strobl: Rebuild against libinput 1.5.1 to test lack of Tap to Click on some devices.](https://git.solus-project.com/packages/gnome-control-center/commit/?id=44b5eca)
 - [Ikey Doherty: Enable the manpage, no reason to disable this](https://git.solus-project.com/packages/gnome-control-center/commit/?id=a860e4d)


**gnome-online-accounts**

 - [Ikey Doherty: Update to 3.20.4 to fix HTTP issues](https://git.solus-project.com/packages/gnome-online-accounts/commit/?id=297526a)


**findutils**

 - [Joshua Strobl: Add replaces for mlocate to ensure there is no conflict during install.](https://git.solus-project.com/packages/findutils/commit/?id=125ecaf)
 - [Ikey Doherty: Update to 4.6.0 and replace mlocate](https://git.solus-project.com/packages/findutils/commit/?id=7d400e6)
 - [Justin Zobel: Convert to package.yml](https://git.solus-project.com/packages/findutils/commit/?id=1402a9f)


**kernel**

 - [Ikey Doherty: Drop broken patch](https://git.solus-project.com/packages/kernel/commit/?id=1878955)
 - [Ikey Doherty: Address multiple CVEs](https://git.solus-project.com/packages/kernel/commit/?id=dc024a1)
 - [Ikey Doherty: Change to CDN URL as kernel.org is an arsehole](https://git.solus-project.com/packages/kernel/commit/?id=d499355)
 - [Ikey Doherty: Update to 4.8.15 LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=ea68191)
 - [Ikey Doherty: Fix last push](https://git.solus-project.com/packages/kernel/commit/?id=3accd1d)
 - [Ikey Doherty: Address CVE-2016-8655](https://git.solus-project.com/packages/kernel/commit/?id=6508011)
 - [Ikey Doherty: Update to the 4.8.12 kernel](https://git.solus-project.com/packages/kernel/commit/?id=428267d)
 - [Ikey Doherty: Forcibly disable debuginfo from ever being generated](https://git.solus-project.com/packages/kernel/commit/?id=8685938)
 - [Ikey Doherty: Update to the 4.8.11 kernel](https://git.solus-project.com/packages/kernel/commit/?id=b6f5269)
 - [Ikey Doherty: Update to 4.8.10](https://git.solus-project.com/packages/kernel/commit/?id=8d4f9ae)
 - [Ikey Doherty: Update to the latest LTS kernel version, 4.8.9](https://git.solus-project.com/packages/kernel/commit/?id=7b93931)
 - [Ikey Doherty: Update to the 4.8.8 kernel](https://git.solus-project.com/packages/kernel/commit/?id=9a52cae)
 - [Ikey Doherty: Update to the 4.8.7 kernel](https://git.solus-project.com/packages/kernel/commit/?id=d4ed6f6)
 - [Joshua Strobl: Update to 4.8.6](https://git.solus-project.com/packages/kernel/commit/?id=60f5558)
 - [Ikey Doherty: Update to 4.8.5 and enable Corsair devices](https://git.solus-project.com/packages/kernel/commit/?id=581dab1)
 - [Ikey Doherty: Update to 4.8.4](https://git.solus-project.com/packages/kernel/commit/?id=794b1e1)
 - [Joshua Strobl: Enabled Huion Graphics Tablets HID devices.](https://git.solus-project.com/packages/kernel/commit/?id=40fe3b6)
 - [Ikey Doherty: Tag the build as a security update prior to merge](https://git.solus-project.com/packages/kernel/commit/?id=3003c83)
 - [Justin Zobel: Update to 4.8.3](https://git.solus-project.com/packages/kernel/commit/?id=67b4734)


**gspell**

 - [Bryan T. Meyers: Updated to 1.2.1](https://git.solus-project.com/packages/gspell/commit/?id=f82e69a)
 - [Bryan T. Meyers: Enable vapi generation](https://git.solus-project.com/packages/gspell/commit/?id=46d3f5c)


**popt**

 - [Bryan T. Meyers: Enabled static lib for efivar](https://git.solus-project.com/packages/popt/commit/?id=1ca31c2)


**libpciaccess**

 - [Ikey Doherty: Rebuild for toolchain](https://git.solus-project.com/packages/libpciaccess/commit/?id=9b938da)
 - [Ikey Doherty: Do an abireport](https://git.solus-project.com/packages/libpciaccess/commit/?id=cd17cdf)


**bluez**

 - [Ikey Doherty: Update to 5.43](https://git.solus-project.com/packages/bluez/commit/?id=ee7f660)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/bluez/commit/?id=c9cb026)


**libinput**

 - [Bryan T. Meyers: Update to 1.5.2](https://git.solus-project.com/packages/libinput/commit/?id=63fbb7d)
 - [Joshua Strobl: Update to 1.5.1](https://git.solus-project.com/packages/libinput/commit/?id=fcd96ed)
 - [Joshua Strobl: Add ABI reports for current libinput.](https://git.solus-project.com/packages/libinput/commit/?id=2f676e3)


**libwebp**

 - [Peter O'Connor: Backport patch to address CVE-2016-9085](https://git.solus-project.com/packages/libwebp/commit/?id=8cf3e5e)


**solus-hardware-config**

 - [Ikey Doherty: Update to v8](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=f0a5ded)
 - [Ikey Doherty: Update to v7](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=74a1e86)


**djvulibre**

 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/djvulibre/commit/?id=94c1ce5)


**libxau**

 - [Ikey Doherty: Rebuild for toolchain](https://git.solus-project.com/packages/libxau/commit/?id=f51bdb4)


**pisi**

 - [Ikey Doherty: Rebuild as pisi moved out of it's component!](https://git.solus-project.com/packages/pisi/commit/?id=c909b1f)
 - [Ikey Doherty: Deprecate evobuild in favour of solbuild](https://git.solus-project.com/packages/pisi/commit/?id=48d30f0)
 - [Ikey Doherty: Update to v3.4 for improved files database performance for ypkg](https://git.solus-project.com/packages/pisi/commit/?id=b1e52a0)
 - [Ikey Doherty: Fix stateless issue making SC hang](https://git.solus-project.com/packages/pisi/commit/?id=4315191)
 - [Ikey Doherty: Ensure evobuild creates eopkg directory](https://git.solus-project.com/packages/pisi/commit/?id=f6b61c5)
 - [Ikey Doherty: Complete move to eopkg](https://git.solus-project.com/packages/pisi/commit/?id=8a72716)


**nano**

 - [Ikey Doherty: Update to 2.7.1](https://git.solus-project.com/packages/nano/commit/?id=9892632)
 - [Ikey Doherty: Bump for sc testing](https://git.solus-project.com/packages/nano/commit/?id=b350012)
 - [Ikey Doherty: Ok *MAYBE* the last one. Nearly got this right. >_>](https://git.solus-project.com/packages/nano/commit/?id=f206783)
 - [Ikey Doherty: Last bump for update view validation](https://git.solus-project.com/packages/nano/commit/?id=05d6e13)
 - [Ikey Doherty: Rebump](https://git.solus-project.com/packages/nano/commit/?id=7ec64cc)
 - [Ikey Doherty: Test SC update response](https://git.solus-project.com/packages/nano/commit/?id=51da526)


**libxi**

 - [Ikey Doherty: Update to 1.7.8](https://git.solus-project.com/packages/libxi/commit/?id=a1ad05b)


**glibc**

 - [Ikey Doherty: Move ld.so.conf to a stateless implementation](https://git.solus-project.com/packages/glibc/commit/?id=025dfd4)
 - [Ikey Doherty: Enhance multilib integration](https://git.solus-project.com/packages/glibc/commit/?id=ce3eeb3)


**poppler**

 - [Peter O'Connor: Rebuild against split qt5](https://git.solus-project.com/packages/poppler/commit/?id=664098e)
 - [Ikey Doherty: Update to 0.49.0](https://git.solus-project.com/packages/poppler/commit/?id=8da7dfe)
 - [Ikey Doherty: Include ABI report](https://git.solus-project.com/packages/poppler/commit/?id=ec4f3be)


**arc-firefox-theme**

 - [Joshua Strobl: Update to 50.20161114](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=f5ddd30)


**tdb**

 - [Bryan T. Meyers: Updated to 1.3.12](https://git.solus-project.com/packages/tdb/commit/?id=62c8cf4)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/tdb/commit/?id=d6f9d52)


**nvidia-304-glx-driver**

 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=b069336)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=98b6a74)
 - [Ikey Doherty: Restore the mtrr disabling patch](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=357d3c9)
 - [Ikey Doherty: Update to 304.134](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=636e2e4)
 - [Ikey Doherty: Rebuild for 4.8.15 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=f33232c)
 - [Ikey Doherty: Rebuild for kernel changes](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=9160560)
 - [Ikey Doherty: Rebuild against 4.8.12 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=a4dd7b1)
 - [Ikey Doherty: Rebuild against 4.8.11](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=676b687)
 - [Ikey Doherty: Rebuild for 4.8.10 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=4012e8e)
 - [Ikey Doherty: Rebuild against 4.8.9 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=60d882d)
 - [Ikey Doherty: Rebuild for 4.8.8](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=6adc9ac)
 - [Ikey Doherty: Rebuild for 4.8.7](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=5bc3daa)
 - [Joshua Strobl: Rebuild against 4.8.6 kernel.](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=3cad45e)
 - [Ikey Doherty: Rebuild for 4.8.5 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=e18e2a8)
 - [Ikey Doherty: Rebuild against the latest kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=a46a1c7)
 - [Joshua Strobl: Rebuild](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=086d92f)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=7a65edb)
 - [Justin Zobel: Rebuild for 4.8.3](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=947d149)


**gnome-terminal**

 - [Ikey Doherty: Default to the dark theme](https://git.solus-project.com/packages/gnome-terminal/commit/?id=763b082)


**gnome-screenshot**

 - [Joshua Strobl: Land patch to resolve busy loop.](https://git.solus-project.com/packages/gnome-screenshot/commit/?id=554bca6)


**systemd**

 - [Ikey Doherty: Fix broken systemctl patch causing invalid warnings](https://git.solus-project.com/packages/systemd/commit/?id=c8fcace)
 - [Ikey Doherty: Fix miscount](https://git.solus-project.com/packages/systemd/commit/?id=a802fe0)
 - [Ikey Doherty: Fix "scary" warning for encrypted installations](https://git.solus-project.com/packages/systemd/commit/?id=5288421)


**xorg-driver-video-amdgpu**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=6bca4c0)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=030a953)
 - [Ikey Doherty: Update to 1.2.0](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=b67a3de)


**bash**

 - [Ikey Doherty: Update the default PS1](https://git.solus-project.com/packages/bash/commit/?id=2aa5907)
 - [Bryan T. Meyers: Removed component.xml and changed '@' color in default PS1](https://git.solus-project.com/packages/bash/commit/?id=0d08070)


**openssh**

 - [Ikey Doherty: Update to 7.4_p1](https://git.solus-project.com/packages/openssh/commit/?id=44160ae)


**xmodmap**

 - [Bryan T. Meyers: That was not the right way to fix that](https://git.solus-project.com/packages/xmodmap/commit/?id=59e7bd0)
 - [Bryan T. Meyers: Added profile.d entry to run xmodmap on session start](https://git.solus-project.com/packages/xmodmap/commit/?id=aae6ba5)


**libass**

 - [Bryan T. Meyers: Fixed missing abi_used_libs](https://git.solus-project.com/packages/libass/commit/?id=2430396)
 - [Bryan T. Meyers: Fixed version number](https://git.solus-project.com/packages/libass/commit/?id=1f00b68)
 - [Peter O'Connor: Update to 0.13.4 to address following CVEs:](https://git.solus-project.com/packages/libass/commit/?id=141d0cd)
 - [Ikey Doherty: Update to 0.13.1](https://git.solus-project.com/packages/libass/commit/?id=a3e2f9e)
 - [Ikey Doherty: Perform abireport](https://git.solus-project.com/packages/libass/commit/?id=a663645)


**mesalib**

 - [Ikey Doherty: Re-enable Link Time Optimization](https://git.solus-project.com/packages/mesalib/commit/?id=70fb25d)
 - [Ikey Doherty: Bump past current mesa with revert](https://git.solus-project.com/packages/mesalib/commit/?id=1c49962)
 - [Ikey Doherty: Revert "Move back to git enable enable virgl"](https://git.solus-project.com/packages/mesalib/commit/?id=45a4592)
 - [Ikey Doherty: Move back to git enable enable virgl](https://git.solus-project.com/packages/mesalib/commit/?id=c5613b0)
 - [Ikey Doherty: Update to 13.0.2](https://git.solus-project.com/packages/mesalib/commit/?id=032084a)
 - [Ikey Doherty: Update to 13.0.1](https://git.solus-project.com/packages/mesalib/commit/?id=c97e960)
 - [Ikey Doherty: Update to 13.0.0 itself and leave git until new Vulkan support lands](https://git.solus-project.com/packages/mesalib/commit/?id=e3bda51)
 - [Ikey Doherty: Update to 13.1.0-devel](https://git.solus-project.com/packages/mesalib/commit/?id=4a25b20)
 - [Ikey Doherty: Update to 13.0.0_rc1](https://git.solus-project.com/packages/mesalib/commit/?id=17c380e)


**libtiff**

 - [Ikey Doherty: Update to version 4.0.7, folding in all CVE patches and new IDs:](https://git.solus-project.com/packages/libtiff/commit/?id=fde3520)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/libtiff/commit/?id=3965b6e)


**xkeyboard-config**

 - [Ikey Doherty: Update to 2.19, add compatibilty symlink for MATE](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=5ae9ea6)
 - [Joshua Strobl: Convert to yaml.](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=15e102e)


**libxcb**

 - [Ikey Doherty: Rebuild for toolchain](https://git.solus-project.com/packages/libxcb/commit/?id=e2f3ca4)


**lsb-release**

 - [Ikey Doherty: Update Solus version](https://git.solus-project.com/packages/lsb-release/commit/?id=d91b8f9)


**tzdata**

 - [Ikey Doherty: Update to 2016h](https://git.solus-project.com/packages/tzdata/commit/?id=b7d63d8)


**libxpm**

 - [Ikey Doherty: Update to 3.5.12](https://git.solus-project.com/packages/libxpm/commit/?id=376ddc4)


**libpcre**

 - [Ikey Doherty: Update to 8.39](https://git.solus-project.com/packages/libpcre/commit/?id=d4f9f9e)


**dracut**

 - [Ikey Doherty: Support a stateless configuration](https://git.solus-project.com/packages/dracut/commit/?id=3ef1668)


**expat**

 - [Ikey Doherty: Update to 2.2.0](https://git.solus-project.com/packages/expat/commit/?id=e55a9af)
 - [Ikey Doherty: Perform abi report](https://git.solus-project.com/packages/expat/commit/?id=262b9a7)


**nvidia-glx-driver**

 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2d9c5d5)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a4a58a7)
 - [Ikey Doherty: Update to 375.26](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c5eede5)
 - [Ikey Doherty: Rebuild for 4.8.15](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=dae97d0)
 - [Ikey Doherty: Rebuild for kernel change](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a1bb808)
 - [Ikey Doherty: Rebuild against 4.8.12 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=be89008)
 - [Ikey Doherty: Rebuild against 4.8.11](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a55b06d)
 - [Ikey Doherty: Unbreak nvidia-tls](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2f5c8f6)
 - [Ikey Doherty: Rebuild for 4.8.10 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d6d5e7e)
 - [Ikey Doherty: Update to 375.20](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=02c0292)
 - [Ikey Doherty: Rebuild for 4.8.8](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=8a54cb1)
 - [Ikey Doherty: Rebuild for 4.8.7 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d4cd672)
 - [Joshua Strobl: Rebuild against 4.8.6](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=21d3c5b)
 - [Ikey Doherty: Rebuild for 4.8.5 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c8375ec)
 - [Ikey Doherty: Rebuild for 4.8.4 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=86ab189)
 - [Joshua Strobl: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=076095a)
 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=4f21dcc)
 - [Justin Zobel: Rebuild for 4.8.3](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=1f344a5)


**graphite2**

 - [Joshua Strobl: Upgrade to 1.3.9](https://git.solus-project.com/packages/graphite2/commit/?id=9a60731)
 - [Joshua Strobl: Add ABI reports for 1.3.3](https://git.solus-project.com/packages/graphite2/commit/?id=ba433bb)


**taglib**

 - [Joshua Strobl: Update to 1.11.1](https://git.solus-project.com/packages/taglib/commit/?id=6ea0613)
 - [Joshua Strobl: Added ABI reports.](https://git.solus-project.com/packages/taglib/commit/?id=bb49de2)


**freetype2**

 - [Ikey Doherty: Update to freetype 2.7 and rebase the Solus patches](https://git.solus-project.com/packages/freetype2/commit/?id=9c50f19)
 - [Ikey Doherty: Add an ABI report](https://git.solus-project.com/packages/freetype2/commit/?id=0245863)


**ffmpeg**

 - [Bryan T. Meyers: Enabled Opus support](https://git.solus-project.com/packages/ffmpeg/commit/?id=2841941)
 - [Bryan T. Meyers: Enabled speex, ABI rebuild](https://git.solus-project.com/packages/ffmpeg/commit/?id=fb8250c)


**nautilus**

 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nautilus/commit/?id=4f65422)
 - [Ikey Doherty: Revert "Enable tracker and generate ABI report"](https://git.solus-project.com/packages/nautilus/commit/?id=3e342d7)
 - [Bryan T. Meyers: Enable tracker and generate ABI report](https://git.solus-project.com/packages/nautilus/commit/?id=c094e90)


**tar**

 - [Ikey Doherty: Update to 1.29, and patch CVE-2016-6321](https://git.solus-project.com/packages/tar/commit/?id=1a8e4cc)
 - [Ikey Doherty: Leave the dark ages](https://git.solus-project.com/packages/tar/commit/?id=4fad6ae)


**sudo**

 - [Ikey Doherty: Update to 1.8.18_p1](https://git.solus-project.com/packages/sudo/commit/?id=379bed8)


**xorg-driver-video-vmware**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=1485f0c)
 - [Ikey Doherty: Update to 13.2.1](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=354894b)
 - [Ikey Doherty: Convert to ypkg and disable full relro](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=deb2a51)


**cups-filters**

 - [Bryan T. Meyers: Rebuild for ghostscript](https://git.solus-project.com/packages/cups-filters/commit/?id=c2bfbc6)
 - [Joshua Strobl: Rebuild against libtiff and poppler.](https://git.solus-project.com/packages/cups-filters/commit/?id=45557dc)


**gedit**

 - [Bryan T. Meyers: Rebuild for gspell](https://git.solus-project.com/packages/gedit/commit/?id=c3a7fdf)


**rhythmbox**

 - [Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade. Added ABI reports.](https://git.solus-project.com/packages/rhythmbox/commit/?id=7076c57)


**curl**

 - [Joshua Strobl: Update to 7.52.1](https://git.solus-project.com/packages/curl/commit/?id=3b42b62)
 - [Bryan T. Meyers: Enable nghttp2](https://git.solus-project.com/packages/curl/commit/?id=0d46779)
 - [Ikey Doherty: Update to 7.51.0](https://git.solus-project.com/packages/curl/commit/?id=fb09080)


**gcc**

 - [Ikey Doherty: Update to v6.3.0 and correct bug URL](https://git.solus-project.com/packages/gcc/commit/?id=1978cde)


**libfontenc**

 - [Ikey Doherty: Update to 1.1.3](https://git.solus-project.com/packages/libfontenc/commit/?id=3621f62)


**budgie-desktop-branding**

 - [Ikey Doherty: Update to v6](https://git.solus-project.com/packages/budgie-desktop-branding/commit/?id=2f54883)


**xorg-driver-video-nouveau**

 - [Ikey Doherty: Enable -O3 here](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=c4be43b)
 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=6ca9eee)
 - [Ikey Doherty: Convert to ypkg, update to 1.0.13](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=c75a54f)


**budgie-desktop**

 - [Ikey Doherty: Update to v10.2.9](https://git.solus-project.com/packages/budgie-desktop/commit/?id=3e27b21)
 - [Ikey Doherty: Backport fixes from git to fix spinny wheel startup notifications](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e2b1b96)
 - [Ikey Doherty: Fix detection for pinyin in keyboard layouts on ibus](https://git.solus-project.com/packages/budgie-desktop/commit/?id=f879968)
 - [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/budgie-desktop/commit/?id=4a6945e)
 - [Ikey Doherty: Get the ibus fix in for Tebro](https://git.solus-project.com/packages/budgie-desktop/commit/?id=36c6602)
 - [Ikey Doherty: Sync with git](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e4496ae)


**gparted**

 - [Bryan T. Meyers: Updated to 0.27.0](https://git.solus-project.com/packages/gparted/commit/?id=be01550)
 - [Bryan T. Meyers: Fix broken source URL and ABI report](https://git.solus-project.com/packages/gparted/commit/?id=9342771)


**sqlite3**

 - [Bryan T. Meyers: Updated to 3.15.2](https://git.solus-project.com/packages/sqlite3/commit/?id=3fe5744)


**xorg-driver-video-vesa**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=d5b8900)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=85b8fca)


**rhythmbox-alternative-toolbar**

 - [Joshua Strobl: Update to 0.17.3, update patch, drop component.xml.](https://git.solus-project.com/packages/rhythmbox-alternative-toolbar/commit/?id=3378841)


**llvm**

 - [Ikey Doherty: Switch to RelWithDebInfo](https://git.solus-project.com/packages/llvm/commit/?id=6a80f92)
 - [Ikey Doherty: Disable debuginfo generation](https://git.solus-project.com/packages/llvm/commit/?id=d792ddd)
 - [Ikey Doherty: Rebuild against new GCC 6.3.0 and fix flags](https://git.solus-project.com/packages/llvm/commit/?id=61626ef)


**bash-completion**

 - [Ikey Doherty: Update to 2.4, drop pisi file](https://git.solus-project.com/packages/bash-completion/commit/?id=a8ee673)


**desktop-file-utils**

 - [Ikey Doherty: Update to 0.23 and cleanup the COMAR handler](https://git.solus-project.com/packages/desktop-file-utils/commit/?id=80f94a9)


**gnome-color-manager**

 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/gnome-color-manager/commit/?id=2841206)


**liblcms2**

 - [Peter O'Connor: Backport patch to prevent potential overflow](https://git.solus-project.com/packages/liblcms2/commit/?id=5b2ea05)
 - [Peter O'Connor: Add abireport](https://git.solus-project.com/packages/liblcms2/commit/?id=fa0f3c1)


**xorg-driver-video-fbdev**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=ebd862b)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=0106167)


**xorg-driver-input-wacom**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-input-wacom/commit/?id=c5ac9d9)
 - [Ikey Doherty: Update to 0.34.0](https://git.solus-project.com/packages/xorg-driver-input-wacom/commit/?id=114bc95)


**libx11**

 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libx11/commit/?id=da01436)


**thunderbird**

 - [Joshua Strobl: Update to 45.6.0. Resolved CVE-2016-9899.](https://git.solus-project.com/packages/thunderbird/commit/?id=2d97950)
 - [Joshua Strobl: Update langpacks for 45.6.0](https://git.solus-project.com/packages/thunderbird/commit/?id=7aad809)
 - [Joshua Strobl: Update to 45.5.1, use our own tarball since extraction fails with the one Mozilla is providing. Resolves CVE-2016-9079.](https://git.solus-project.com/packages/thunderbird/commit/?id=faf6a3d)
 - [Joshua Strobl: langpacks: Update for 45.5.1](https://git.solus-project.com/packages/thunderbird/commit/?id=db64e7d)
 - [Joshua Strobl: Update to 45.5.0](https://git.solus-project.com/packages/thunderbird/commit/?id=c61b494)
 - [Joshua Strobl: langpacks: Update for 45.5.0](https://git.solus-project.com/packages/thunderbird/commit/?id=656de16)
 - [Ikey Doherty: Use the system nss + nspr libraries](https://git.solus-project.com/packages/thunderbird/commit/?id=2038ff1)


**arc-gtk-theme**

 - [Justin Zobel: Update to 20161119](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=c4ace68)


**xorg-driver-video-radeon**

 - [Ikey Doherty: Enable C/CXXFLAGS changes here too](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=cfaabe5)
 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=7ffb04e)
 - [Ikey Doherty: Fix broken component](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=768cba7)
 - [Ikey Doherty: Rebuild for X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=1912d13)
 - [Ikey Doherty: Update to 7.8.0](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=cbcb700)

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

 - [Shayne Sweeney: Fix sane defaults conf file for libao](https://git.solus-project.com/packages/libao/commit/?id=fac484c)


**xorg-driver-input-synaptics**

 - [Joshua Strobl: Move 70-synaptics.conf back to 50-synaptics.conf to fix tap-to-click.](https://git.solus-project.com/packages/xorg-driver-input-synaptics/commit/?id=e961931)
 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-input-synaptics/commit/?id=8aa4ad8)
 - [Ikey Doherty: Update to 1.9.0](https://git.solus-project.com/packages/xorg-driver-input-synaptics/commit/?id=1d32b48)


**gd**

 - [Ikey Doherty: Address CVE-2016-7568](https://git.solus-project.com/packages/gd/commit/?id=68f5f00)
 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/gd/commit/?id=db14ca1)


**libnspr**

 - [Ikey Doherty: Update to 4.13](https://git.solus-project.com/packages/libnspr/commit/?id=a17a69b)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/libnspr/commit/?id=0acb6ea)


**gstreamer-1.0-plugins-good**

 - [Joshua Strobl: Rebuild against taglib 1.11.1](https://git.solus-project.com/packages/gstreamer-1.0-plugins-good/commit/?id=6634e9f)


**firefox**

 - [Ikey Doherty: Fix typo, go back to bed](https://git.solus-project.com/packages/firefox/commit/?id=0d62c1d)
 - [Ikey Doherty: Add missing dbus-glib-1 dependency](https://git.solus-project.com/packages/firefox/commit/?id=d96f00e)
 - [Ikey Doherty: Update to 50.1.0](https://git.solus-project.com/packages/firefox/commit/?id=d6eae0b)
 - [Ikey Doherty: langpacks: Update for 50.1.0](https://git.solus-project.com/packages/firefox/commit/?id=751b075)
 - [Ikey Doherty: Update to 50.0.2](https://git.solus-project.com/packages/firefox/commit/?id=4a6b0f7)
 - [Ikey Doherty: langpacks: Update for new release](https://git.solus-project.com/packages/firefox/commit/?id=8e919ba)
 - [Ikey Doherty: Update to Firefox 50.0.1](https://git.solus-project.com/packages/firefox/commit/?id=4b2c04e)
 - [Ikey Doherty: langpacks: Update for new release](https://git.solus-project.com/packages/firefox/commit/?id=cc8385c)
 - [Ikey Doherty: Update to Firefox 50.0](https://git.solus-project.com/packages/firefox/commit/?id=7720ac2)
 - [Ikey Doherty: Disable forced acceleration due to nouveau being awful](https://git.solus-project.com/packages/firefox/commit/?id=15175e2)
 - [Ikey Doherty: langpacks: Prepare for 50.0](https://git.solus-project.com/packages/firefox/commit/?id=c14cd71)
 - [Ikey Doherty: Update to 49.0.2](https://git.solus-project.com/packages/firefox/commit/?id=62475ff)
 - [Ikey Doherty: Bump langpacks](https://git.solus-project.com/packages/firefox/commit/?id=f9684b0)


**gpgme**

 - [Bryan T. Meyers: Converted to ypkg](https://git.solus-project.com/packages/gpgme/commit/?id=b9e2d8a)
 - [Bryan T. Meyers: Added: ABI reporting](https://git.solus-project.com/packages/gpgme/commit/?id=645d931)


**libsndfile**

 - [Ikey Doherty: Rebuild update to unbork package](https://git.solus-project.com/packages/libsndfile/commit/?id=4e96d7e)
 - [Ikey Doherty: Nuke unused patch and perform abi report](https://git.solus-project.com/packages/libsndfile/commit/?id=dde6e1d)


**libdvdcss**

 - [Joshua Strobl: Update to 1.4.0, convert package.](https://git.solus-project.com/packages/libdvdcss/commit/?id=7b06390)
 - [Joshua Strobl: Add ABI reports for libdvdcss 1.3.0](https://git.solus-project.com/packages/libdvdcss/commit/?id=592da81)


**lightdm-gtk-greeter**

 - [Ikey Doherty: Update branding for Budgie defaults in upcoming release](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=b91c990)


**libnss**

 - [Ikey Doherty: Update to 3.27.1](https://git.solus-project.com/packages/libnss/commit/?id=c9b634e)


**fontconfig**

 - [Ikey Doherty: Actually enable our configuration now](https://git.solus-project.com/packages/fontconfig/commit/?id=131a552)
 - [Ikey Doherty: Update to 2.12.1 and rework the patches](https://git.solus-project.com/packages/fontconfig/commit/?id=f8b4c6f)
 - [Ikey Doherty: Add an initial abireport](https://git.solus-project.com/packages/fontconfig/commit/?id=8917c4f)


**gdk-pixbuf**

 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=b456014)


**python3**

 - [Ikey Doherty: Fix splitting for pyconfig header](https://git.solus-project.com/packages/python3/commit/?id=dfaa93e)


**xorg-driver-input-libinput**

 - [Ikey Doherty: Rebuild against old X](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=a8e1621)
 - [Ikey Doherty: Update to 0.23.0](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=1390036)
 - [Joshua Strobl: Move libinput.conf to change its priority.](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=0e4e6aa)
 - [Joshua Strobl: Update to 0.22.0](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=501edd5)
 - [Joshua Strobl: Add ABI report for 0.19.0.](https://git.solus-project.com/packages/xorg-driver-input-libinput/commit/?id=897fa8e)


**openvpn**

 - [Bryan T. Meyers: Updated to 2.4.0](https://git.solus-project.com/packages/openvpn/commit/?id=0e8a19e)


**solus-sc**

 - [Ikey Doherty: Update to v15](https://git.solus-project.com/packages/solus-sc/commit/?id=557ada2)
 - [Ikey Doherty: Fix big derp](https://git.solus-project.com/packages/solus-sc/commit/?id=745b7cd)
 - [Ikey Doherty: Sync with git to fix the update notifications not appearing 2nd time round](https://git.solus-project.com/packages/solus-sc/commit/?id=8ee2921)


**lm_sensors**

 - [Ikey Doherty: Convert to ypkg, update to 3.4.0](https://git.solus-project.com/packages/lm_sensors/commit/?id=b26e531)
 - [Ikey Doherty: Conduct abireport](https://git.solus-project.com/packages/lm_sensors/commit/?id=8170dd0)


**baselayout**

 - [Ikey Doherty: Update to 1.8.0 - So long, Solus 1.2.1](https://git.solus-project.com/packages/baselayout/commit/?id=8313b87)
 - [Ikey Doherty: Use quotes in os-release, to fix mate-system-monitor](https://git.solus-project.com/packages/baselayout/commit/?id=a9c6f41)
 - [Ikey Doherty: Fix ld.so.conf copy issue](https://git.solus-project.com/packages/baselayout/commit/?id=1f56f1f)
 - [Ikey Doherty: Completely deprecate /etc/ld.so.conf file](https://git.solus-project.com/packages/baselayout/commit/?id=561510c)
 - [Ikey Doherty: Drop included /etc/ld.so.conf.d files](https://git.solus-project.com/packages/baselayout/commit/?id=4cf70c2)
 - [Joshua Strobl: Update bug report URL for os-release](https://git.solus-project.com/packages/baselayout/commit/?id=6c61bf2)


**moka-icon-theme**

 - [Joshua Strobl: Sync with git for inclusion of GitKraken and Discord icons.](https://git.solus-project.com/packages/moka-icon-theme/commit/?id=0c7c235)


**libxfont**

 - [Ikey Doherty: Update to 1.5.2](https://git.solus-project.com/packages/libxfont/commit/?id=9b898aa)


**vlc**

 - [Joshua Strobl: Rebuild against taglib 1.11.1](https://git.solus-project.com/packages/vlc/commit/?id=7616420)
 - [Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.](https://git.solus-project.com/packages/vlc/commit/?id=4f6c37b)
 - [Peter O'Connor: Rebuild against split qt5](https://git.solus-project.com/packages/vlc/commit/?id=0fcb1a4)
 - [Peter O'Connor: Enable smb and sftp for remote media playback](https://git.solus-project.com/packages/vlc/commit/?id=0b48245)
 - [Ikey Doherty: Do a large enabling run to fix MKV subtitles, amongst others](https://git.solus-project.com/packages/vlc/commit/?id=9d1e440)


**gtk2**

 - [Ikey Doherty: Fix emul32 build](https://git.solus-project.com/packages/gtk2/commit/?id=8bf0e88)
 - [Ikey Doherty: Fix ibus](https://git.solus-project.com/packages/gtk2/commit/?id=2e5ab36)


**gtk3**

 - [Ikey Doherty: Add missing xcursor dependency to fix Firefox corrupt cursor issue](https://git.solus-project.com/packages/gtk3/commit/?id=6637af8)


**os-installer**

 - [Ikey Doherty: Update to v16](https://git.solus-project.com/packages/os-installer/commit/?id=3866f9e)


**libdrm**

 - [Marius Nestor: Update to 2.4.74](https://git.solus-project.com/packages/libdrm/commit/?id=1ad592c)
 - [Marius Nestor: Update to 2.4.73](https://git.solus-project.com/packages/libdrm/commit/?id=ea42ffc)


**xorg-driver-video-intel**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=1affee1)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=83eefda)
 - [Ikey Doherty: Sync with latest git, enable -O3](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=cff9160)


**ca-certs**

 - [Ikey Doherty: Update to 20161124 snapshot](https://git.solus-project.com/packages/ca-certs/commit/?id=ffeab9c)
 - [Ikey Doherty: Update to 20161018](https://git.solus-project.com/packages/ca-certs/commit/?id=0d01d24)


**nvidia-340-glx-driver**

 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=18b1b23)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=29e75a0)
 - [Ikey Doherty: Update to 340.101](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=1eeb598)
 - [Ikey Doherty: Rebuild for 4.8.15 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=856e72e)
 - [Ikey Doherty: Rebuild for kernel changes](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=78ecb9d)
 - [Ikey Doherty: Rebuild against 4.8.12](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=3eeb05c)
 - [Ikey Doherty: Rebuild against 4.8.11](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=a8f0d3e)
 - [Ikey Doherty: Rebuild for 4.8.10 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=045b404)
 - [Ikey Doherty: Rebuild against 4.8.9 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=41da775)
 - [Ikey Doherty: Rebuild for 4.8.8](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=cdae5eb)
 - [Ikey Doherty: Rebuild for 4.8.7 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c2aa480)
 - [Joshua Strobl: Rebuild for 4.8.6 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=971113f)
 - [Ikey Doherty: Rebuild for 4.8.5 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=74aa0e3)
 - [Ikey Doherty: Rebuild for 4.8.4 kernel](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=561ac06)
 - [Joshua Strobl: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=c6618dd)
 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=aa67035)
 - [Justin Zobel: Rebuild for 4.8.3](https://git.solus-project.com/packages/nvidia-340-glx-driver/commit/?id=ce89e2a)


**libmtp**

 - [Joshua Strobl: Update to 1.1.12 to add significant device support.](https://git.solus-project.com/packages/libmtp/commit/?id=9ba4a17)


**ghostscript**

 - [Bryan T. Meyers: Update to 9.20](https://git.solus-project.com/packages/ghostscript/commit/?id=0b9de6b)
 - [Joshua Strobl: Change to using a Solus sources tarball.](https://git.solus-project.com/packages/ghostscript/commit/?id=798d07b)
 - [Joshua Strobl: Verifiable rebuild.](https://git.solus-project.com/packages/ghostscript/commit/?id=6ff86e7)
 - [Joshua Strobl: Change tarball location](https://git.solus-project.com/packages/ghostscript/commit/?id=e1bcc62)
 - [Joshua Strobl: Rebuild against libtiff.](https://git.solus-project.com/packages/ghostscript/commit/?id=c93a9b0)


**hexchat**

 - [Ikey Doherty: Update to 2.12.4](https://git.solus-project.com/packages/hexchat/commit/?id=472774c)
 - [Justin Zobel: Update to 2.12.3 and nuke patches](https://git.solus-project.com/packages/hexchat/commit/?id=69ebfd0)


**transmission**

 - [Joshua Strobl: Change to network.download component and use new tarball location.](https://git.solus-project.com/packages/transmission/commit/?id=32cbc3b)


**xorg-server**

 - [Ikey Doherty: Revert to 1.18.4 due to AMD hybrid issues](https://git.solus-project.com/packages/xorg-server/commit/?id=223d700)
 - [Ikey Doherty: Sync with 1.19 git](https://git.solus-project.com/packages/xorg-server/commit/?id=2a2e76d)
 - [Ikey Doherty: Update to 1.19.0](https://git.solus-project.com/packages/xorg-server/commit/?id=889b5d3)
 - [Ikey Doherty: Conduct abireport](https://git.solus-project.com/packages/xorg-server/commit/?id=64269d4)


**mate-desktop**

 - [Justin Zobel: Update to 1.16.1](https://git.solus-project.com/packages/mate-desktop/commit/?id=14e34db)


**mate-desktop-branding**

 - [Ikey Doherty: Update to v10](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=98d4e41)
 - [Ikey Doherty: Set the Brisk Menu defaults](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=680fd60)
 - [Ikey Doherty: Update to v9](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=74c6428)
 - [Ikey Doherty: Use 'slate' name now in notification theme](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=ae6f281)
 - [Ikey Doherty: Move the default panel to the bottom of the screen](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=b3aca3e)
 - [Ikey Doherty: Fix early-morning-brain](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=f853c15)
 - [Ikey Doherty: Switch to the Brisk Menu](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=22d4cdf)


**python-requests**

 - [Joshua Strobl: Update to 2.11.1 for httpie, use python macros. Drop component.xml.](https://git.solus-project.com/packages/python-requests/commit/?id=2df332a)


**findutils**

 - [Joshua Strobl: Add replaces for mlocate to ensure there is no conflict during install.](https://git.solus-project.com/packages/findutils/commit/?id=125ecaf)
 - [Ikey Doherty: Update to 4.6.0 and replace mlocate](https://git.solus-project.com/packages/findutils/commit/?id=7d400e6)
 - [Justin Zobel: Convert to package.yml](https://git.solus-project.com/packages/findutils/commit/?id=1402a9f)


**kernel**

 - [Ikey Doherty: Drop broken patch](https://git.solus-project.com/packages/kernel/commit/?id=1878955)
 - [Ikey Doherty: Address multiple CVEs](https://git.solus-project.com/packages/kernel/commit/?id=dc024a1)
 - [Ikey Doherty: Change to CDN URL as kernel.org is an arsehole](https://git.solus-project.com/packages/kernel/commit/?id=d499355)
 - [Ikey Doherty: Update to 4.8.15 LTS kernel](https://git.solus-project.com/packages/kernel/commit/?id=ea68191)
 - [Ikey Doherty: Fix last push](https://git.solus-project.com/packages/kernel/commit/?id=3accd1d)
 - [Ikey Doherty: Address CVE-2016-8655](https://git.solus-project.com/packages/kernel/commit/?id=6508011)
 - [Ikey Doherty: Update to the 4.8.12 kernel](https://git.solus-project.com/packages/kernel/commit/?id=428267d)
 - [Ikey Doherty: Forcibly disable debuginfo from ever being generated](https://git.solus-project.com/packages/kernel/commit/?id=8685938)
 - [Ikey Doherty: Update to the 4.8.11 kernel](https://git.solus-project.com/packages/kernel/commit/?id=b6f5269)
 - [Ikey Doherty: Update to 4.8.10](https://git.solus-project.com/packages/kernel/commit/?id=8d4f9ae)
 - [Ikey Doherty: Update to the latest LTS kernel version, 4.8.9](https://git.solus-project.com/packages/kernel/commit/?id=7b93931)
 - [Ikey Doherty: Update to the 4.8.8 kernel](https://git.solus-project.com/packages/kernel/commit/?id=9a52cae)
 - [Ikey Doherty: Update to the 4.8.7 kernel](https://git.solus-project.com/packages/kernel/commit/?id=d4ed6f6)
 - [Joshua Strobl: Update to 4.8.6](https://git.solus-project.com/packages/kernel/commit/?id=60f5558)
 - [Ikey Doherty: Update to 4.8.5 and enable Corsair devices](https://git.solus-project.com/packages/kernel/commit/?id=581dab1)
 - [Ikey Doherty: Update to 4.8.4](https://git.solus-project.com/packages/kernel/commit/?id=794b1e1)
 - [Joshua Strobl: Enabled Huion Graphics Tablets HID devices.](https://git.solus-project.com/packages/kernel/commit/?id=40fe3b6)
 - [Ikey Doherty: Tag the build as a security update prior to merge](https://git.solus-project.com/packages/kernel/commit/?id=3003c83)
 - [Justin Zobel: Update to 4.8.3](https://git.solus-project.com/packages/kernel/commit/?id=67b4734)


**popt**

 - [Bryan T. Meyers: Enabled static lib for efivar](https://git.solus-project.com/packages/popt/commit/?id=1ca31c2)


**libpciaccess**

 - [Ikey Doherty: Rebuild for toolchain](https://git.solus-project.com/packages/libpciaccess/commit/?id=9b938da)
 - [Ikey Doherty: Do an abireport](https://git.solus-project.com/packages/libpciaccess/commit/?id=cd17cdf)


**mate-themes**

 - [Justin Zobel: Update to 3.20.13](https://git.solus-project.com/packages/mate-themes/commit/?id=df113b9)


**libinput**

 - [Bryan T. Meyers: Update to 1.5.2](https://git.solus-project.com/packages/libinput/commit/?id=63fbb7d)
 - [Joshua Strobl: Update to 1.5.1](https://git.solus-project.com/packages/libinput/commit/?id=fcd96ed)
 - [Joshua Strobl: Add ABI reports for current libinput.](https://git.solus-project.com/packages/libinput/commit/?id=2f676e3)


**libwebp**

 - [Peter O'Connor: Backport patch to address CVE-2016-9085](https://git.solus-project.com/packages/libwebp/commit/?id=8cf3e5e)


**solus-hardware-config**

 - [Ikey Doherty: Update to v8](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=f0a5ded)
 - [Ikey Doherty: Update to v7](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=74a1e86)


**djvulibre**

 - [Joshua Strobl: Rebuild against libtiff](https://git.solus-project.com/packages/djvulibre/commit/?id=94c1ce5)


**libxau**

 - [Ikey Doherty: Rebuild for toolchain](https://git.solus-project.com/packages/libxau/commit/?id=f51bdb4)


**pisi**

 - [Ikey Doherty: Rebuild as pisi moved out of it's component!](https://git.solus-project.com/packages/pisi/commit/?id=c909b1f)
 - [Ikey Doherty: Deprecate evobuild in favour of solbuild](https://git.solus-project.com/packages/pisi/commit/?id=48d30f0)
 - [Ikey Doherty: Update to v3.4 for improved files database performance for ypkg](https://git.solus-project.com/packages/pisi/commit/?id=b1e52a0)
 - [Ikey Doherty: Fix stateless issue making SC hang](https://git.solus-project.com/packages/pisi/commit/?id=4315191)
 - [Ikey Doherty: Ensure evobuild creates eopkg directory](https://git.solus-project.com/packages/pisi/commit/?id=f6b61c5)
 - [Ikey Doherty: Complete move to eopkg](https://git.solus-project.com/packages/pisi/commit/?id=8a72716)


**nano**

 - [Ikey Doherty: Update to 2.7.1](https://git.solus-project.com/packages/nano/commit/?id=9892632)
 - [Ikey Doherty: Bump for sc testing](https://git.solus-project.com/packages/nano/commit/?id=b350012)
 - [Ikey Doherty: Ok *MAYBE* the last one. Nearly got this right. >_>](https://git.solus-project.com/packages/nano/commit/?id=f206783)
 - [Ikey Doherty: Last bump for update view validation](https://git.solus-project.com/packages/nano/commit/?id=05d6e13)
 - [Ikey Doherty: Rebump](https://git.solus-project.com/packages/nano/commit/?id=7ec64cc)
 - [Ikey Doherty: Test SC update response](https://git.solus-project.com/packages/nano/commit/?id=51da526)


**libxi**

 - [Ikey Doherty: Update to 1.7.8](https://git.solus-project.com/packages/libxi/commit/?id=a1ad05b)


**glibc**

 - [Ikey Doherty: Move ld.so.conf to a stateless implementation](https://git.solus-project.com/packages/glibc/commit/?id=025dfd4)
 - [Ikey Doherty: Enhance multilib integration](https://git.solus-project.com/packages/glibc/commit/?id=ce3eeb3)


**poppler**

 - [Peter O'Connor: Rebuild against split qt5](https://git.solus-project.com/packages/poppler/commit/?id=664098e)
 - [Ikey Doherty: Update to 0.49.0](https://git.solus-project.com/packages/poppler/commit/?id=8da7dfe)
 - [Ikey Doherty: Include ABI report](https://git.solus-project.com/packages/poppler/commit/?id=ec4f3be)


**arc-firefox-theme**

 - [Joshua Strobl: Update to 50.20161114](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=f5ddd30)


**caja**

 - [Justin Zobel: Update to 1.16.1](https://git.solus-project.com/packages/caja/commit/?id=300795e)


**nvidia-304-glx-driver**

 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=b069336)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=98b6a74)
 - [Ikey Doherty: Restore the mtrr disabling patch](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=357d3c9)
 - [Ikey Doherty: Update to 304.134](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=636e2e4)
 - [Ikey Doherty: Rebuild for 4.8.15 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=f33232c)
 - [Ikey Doherty: Rebuild for kernel changes](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=9160560)
 - [Ikey Doherty: Rebuild against 4.8.12 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=a4dd7b1)
 - [Ikey Doherty: Rebuild against 4.8.11](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=676b687)
 - [Ikey Doherty: Rebuild for 4.8.10 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=4012e8e)
 - [Ikey Doherty: Rebuild against 4.8.9 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=60d882d)
 - [Ikey Doherty: Rebuild for 4.8.8](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=6adc9ac)
 - [Ikey Doherty: Rebuild for 4.8.7](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=5bc3daa)
 - [Joshua Strobl: Rebuild against 4.8.6 kernel.](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=3cad45e)
 - [Ikey Doherty: Rebuild for 4.8.5 kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=e18e2a8)
 - [Ikey Doherty: Rebuild against the latest kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=a46a1c7)
 - [Joshua Strobl: Rebuild](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=086d92f)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=7a65edb)
 - [Justin Zobel: Rebuild for 4.8.3](https://git.solus-project.com/packages/nvidia-304-glx-driver/commit/?id=947d149)


**tdb**

 - [Bryan T. Meyers: Updated to 1.3.12](https://git.solus-project.com/packages/tdb/commit/?id=62c8cf4)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/tdb/commit/?id=d6f9d52)


**systemd**

 - [Ikey Doherty: Fix broken systemctl patch causing invalid warnings](https://git.solus-project.com/packages/systemd/commit/?id=c8fcace)
 - [Ikey Doherty: Fix miscount](https://git.solus-project.com/packages/systemd/commit/?id=a802fe0)
 - [Ikey Doherty: Fix "scary" warning for encrypted installations](https://git.solus-project.com/packages/systemd/commit/?id=5288421)


**xorg-driver-video-amdgpu**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=6bca4c0)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=030a953)
 - [Ikey Doherty: Update to 1.2.0](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=b67a3de)


**bash**

 - [Ikey Doherty: Update the default PS1](https://git.solus-project.com/packages/bash/commit/?id=2aa5907)
 - [Bryan T. Meyers: Removed component.xml and changed '@' color in default PS1](https://git.solus-project.com/packages/bash/commit/?id=0d08070)


**libmateweather**

 - [Justin Zobel: Update to 1.16.1](https://git.solus-project.com/packages/libmateweather/commit/?id=a55a16e)


**openssh**

 - [Ikey Doherty: Update to 7.4_p1](https://git.solus-project.com/packages/openssh/commit/?id=44160ae)


**libass**

 - [Bryan T. Meyers: Fixed missing abi_used_libs](https://git.solus-project.com/packages/libass/commit/?id=2430396)
 - [Bryan T. Meyers: Fixed version number](https://git.solus-project.com/packages/libass/commit/?id=1f00b68)
 - [Peter O'Connor: Update to 0.13.4 to address following CVEs:](https://git.solus-project.com/packages/libass/commit/?id=141d0cd)
 - [Ikey Doherty: Update to 0.13.1](https://git.solus-project.com/packages/libass/commit/?id=a3e2f9e)
 - [Ikey Doherty: Perform abireport](https://git.solus-project.com/packages/libass/commit/?id=a663645)


**mesalib**

 - [Ikey Doherty: Re-enable Link Time Optimization](https://git.solus-project.com/packages/mesalib/commit/?id=70fb25d)
 - [Ikey Doherty: Bump past current mesa with revert](https://git.solus-project.com/packages/mesalib/commit/?id=1c49962)
 - [Ikey Doherty: Revert "Move back to git enable enable virgl"](https://git.solus-project.com/packages/mesalib/commit/?id=45a4592)
 - [Ikey Doherty: Move back to git enable enable virgl](https://git.solus-project.com/packages/mesalib/commit/?id=c5613b0)
 - [Ikey Doherty: Update to 13.0.2](https://git.solus-project.com/packages/mesalib/commit/?id=032084a)
 - [Ikey Doherty: Update to 13.0.1](https://git.solus-project.com/packages/mesalib/commit/?id=c97e960)
 - [Ikey Doherty: Update to 13.0.0 itself and leave git until new Vulkan support lands](https://git.solus-project.com/packages/mesalib/commit/?id=e3bda51)
 - [Ikey Doherty: Update to 13.1.0-devel](https://git.solus-project.com/packages/mesalib/commit/?id=4a25b20)
 - [Ikey Doherty: Update to 13.0.0_rc1](https://git.solus-project.com/packages/mesalib/commit/?id=17c380e)


**libtiff**

 - [Ikey Doherty: Update to version 4.0.7, folding in all CVE patches and new IDs:](https://git.solus-project.com/packages/libtiff/commit/?id=fde3520)
 - [Ikey Doherty: Add abireport](https://git.solus-project.com/packages/libtiff/commit/?id=3965b6e)


**atril**

 - [Joshua Strobl: Rebuild against djvulibre, libtiff, and poppler.](https://git.solus-project.com/packages/atril/commit/?id=8390d22)


**xkeyboard-config**

 - [Ikey Doherty: Update to 2.19, add compatibilty symlink for MATE](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=5ae9ea6)
 - [Joshua Strobl: Convert to yaml.](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=15e102e)


**libxcb**

 - [Ikey Doherty: Rebuild for toolchain](https://git.solus-project.com/packages/libxcb/commit/?id=e2f3ca4)


**lsb-release**

 - [Ikey Doherty: Update Solus version](https://git.solus-project.com/packages/lsb-release/commit/?id=d91b8f9)


**tzdata**

 - [Ikey Doherty: Update to 2016h](https://git.solus-project.com/packages/tzdata/commit/?id=b7d63d8)


**libxpm**

 - [Ikey Doherty: Update to 3.5.12](https://git.solus-project.com/packages/libxpm/commit/?id=376ddc4)


**libpcre**

 - [Ikey Doherty: Update to 8.39](https://git.solus-project.com/packages/libpcre/commit/?id=d4f9f9e)


**dracut**

 - [Ikey Doherty: Support a stateless configuration](https://git.solus-project.com/packages/dracut/commit/?id=3ef1668)


**expat**

 - [Ikey Doherty: Update to 2.2.0](https://git.solus-project.com/packages/expat/commit/?id=e55a9af)
 - [Ikey Doherty: Perform abi report](https://git.solus-project.com/packages/expat/commit/?id=262b9a7)


**nvidia-glx-driver**

 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2d9c5d5)
 - [Ikey Doherty: Rebuild for kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a4a58a7)
 - [Ikey Doherty: Update to 375.26](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c5eede5)
 - [Ikey Doherty: Rebuild for 4.8.15](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=dae97d0)
 - [Ikey Doherty: Rebuild for kernel change](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a1bb808)
 - [Ikey Doherty: Rebuild against 4.8.12 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=be89008)
 - [Ikey Doherty: Rebuild against 4.8.11](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=a55b06d)
 - [Ikey Doherty: Unbreak nvidia-tls](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=2f5c8f6)
 - [Ikey Doherty: Rebuild for 4.8.10 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d6d5e7e)
 - [Ikey Doherty: Update to 375.20](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=02c0292)
 - [Ikey Doherty: Rebuild for 4.8.8](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=8a54cb1)
 - [Ikey Doherty: Rebuild for 4.8.7 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=d4cd672)
 - [Joshua Strobl: Rebuild against 4.8.6](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=21d3c5b)
 - [Ikey Doherty: Rebuild for 4.8.5 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=c8375ec)
 - [Ikey Doherty: Rebuild for 4.8.4 kernel](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=86ab189)
 - [Joshua Strobl: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=076095a)
 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=4f21dcc)
 - [Justin Zobel: Rebuild for 4.8.3](https://git.solus-project.com/packages/nvidia-glx-driver/commit/?id=1f344a5)


**graphite2**

 - [Joshua Strobl: Upgrade to 1.3.9](https://git.solus-project.com/packages/graphite2/commit/?id=9a60731)
 - [Joshua Strobl: Add ABI reports for 1.3.3](https://git.solus-project.com/packages/graphite2/commit/?id=ba433bb)


**taglib**

 - [Joshua Strobl: Update to 1.11.1](https://git.solus-project.com/packages/taglib/commit/?id=6ea0613)
 - [Joshua Strobl: Added ABI reports.](https://git.solus-project.com/packages/taglib/commit/?id=bb49de2)


**mate-notification-daemon**

 - [Ikey Doherty: Sync with git for action-icons support](https://git.solus-project.com/packages/mate-notification-daemon/commit/?id=0b4f676)


**freetype2**

 - [Ikey Doherty: Update to freetype 2.7 and rebase the Solus patches](https://git.solus-project.com/packages/freetype2/commit/?id=9c50f19)
 - [Ikey Doherty: Add an ABI report](https://git.solus-project.com/packages/freetype2/commit/?id=0245863)


**ffmpeg**

 - [Bryan T. Meyers: Enabled Opus support](https://git.solus-project.com/packages/ffmpeg/commit/?id=2841941)
 - [Bryan T. Meyers: Enabled speex, ABI rebuild](https://git.solus-project.com/packages/ffmpeg/commit/?id=fb8250c)


**xorg-driver-input-evdev**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-input-evdev/commit/?id=f3a16ac)
 - [Ikey Doherty: Update to 2.10.4](https://git.solus-project.com/packages/xorg-driver-input-evdev/commit/?id=74dfb40)


**tar**

 - [Ikey Doherty: Update to 1.29, and patch CVE-2016-6321](https://git.solus-project.com/packages/tar/commit/?id=1a8e4cc)
 - [Ikey Doherty: Leave the dark ages](https://git.solus-project.com/packages/tar/commit/?id=4fad6ae)


**sudo**

 - [Ikey Doherty: Update to 1.8.18_p1](https://git.solus-project.com/packages/sudo/commit/?id=379bed8)


**xorg-driver-video-vmware**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=1485f0c)
 - [Ikey Doherty: Update to 13.2.1](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=354894b)
 - [Ikey Doherty: Convert to ypkg and disable full relro](https://git.solus-project.com/packages/xorg-driver-video-vmware/commit/?id=deb2a51)


**cups-filters**

 - [Bryan T. Meyers: Rebuild for ghostscript](https://git.solus-project.com/packages/cups-filters/commit/?id=c2bfbc6)
 - [Joshua Strobl: Rebuild against libtiff and poppler.](https://git.solus-project.com/packages/cups-filters/commit/?id=45557dc)


**rhythmbox**

 - [Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade. Added ABI reports.](https://git.solus-project.com/packages/rhythmbox/commit/?id=7076c57)


**curl**

 - [Joshua Strobl: Update to 7.52.1](https://git.solus-project.com/packages/curl/commit/?id=3b42b62)
 - [Bryan T. Meyers: Enable nghttp2](https://git.solus-project.com/packages/curl/commit/?id=0d46779)
 - [Ikey Doherty: Update to 7.51.0](https://git.solus-project.com/packages/curl/commit/?id=fb09080)


**gcc**

 - [Ikey Doherty: Update to v6.3.0 and correct bug URL](https://git.solus-project.com/packages/gcc/commit/?id=1978cde)


**libfontenc**

 - [Ikey Doherty: Update to 1.1.3](https://git.solus-project.com/packages/libfontenc/commit/?id=3621f62)


**xorg-driver-video-nouveau**

 - [Ikey Doherty: Enable -O3 here](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=c4be43b)
 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=6ca9eee)
 - [Ikey Doherty: Convert to ypkg, update to 1.0.13](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=c75a54f)


**gparted**

 - [Bryan T. Meyers: Updated to 0.27.0](https://git.solus-project.com/packages/gparted/commit/?id=be01550)
 - [Bryan T. Meyers: Fix broken source URL and ABI report](https://git.solus-project.com/packages/gparted/commit/?id=9342771)


**sqlite3**

 - [Bryan T. Meyers: Updated to 3.15.2](https://git.solus-project.com/packages/sqlite3/commit/?id=3fe5744)


**xorg-driver-video-vesa**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=d5b8900)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-vesa/commit/?id=85b8fca)


**gvfs**

 - [Joshua Strobl: Rebuild against libmtp 1.1.12 upgrade.](https://git.solus-project.com/packages/gvfs/commit/?id=12d09de)


**llvm**

 - [Ikey Doherty: Switch to RelWithDebInfo](https://git.solus-project.com/packages/llvm/commit/?id=6a80f92)
 - [Ikey Doherty: Disable debuginfo generation](https://git.solus-project.com/packages/llvm/commit/?id=d792ddd)
 - [Ikey Doherty: Rebuild against new GCC 6.3.0 and fix flags](https://git.solus-project.com/packages/llvm/commit/?id=61626ef)


**bash-completion**

 - [Ikey Doherty: Update to 2.4, drop pisi file](https://git.solus-project.com/packages/bash-completion/commit/?id=a8ee673)


**desktop-file-utils**

 - [Ikey Doherty: Update to 0.23 and cleanup the COMAR handler](https://git.solus-project.com/packages/desktop-file-utils/commit/?id=80f94a9)


**liblcms2**

 - [Peter O'Connor: Backport patch to prevent potential overflow](https://git.solus-project.com/packages/liblcms2/commit/?id=5b2ea05)
 - [Peter O'Connor: Add abireport](https://git.solus-project.com/packages/liblcms2/commit/?id=fa0f3c1)


**xorg-driver-video-fbdev**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=ebd862b)
 - [Ikey Doherty: Rebuild against X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-fbdev/commit/?id=0106167)


**xorg-driver-input-wacom**

 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-input-wacom/commit/?id=c5ac9d9)
 - [Ikey Doherty: Update to 0.34.0](https://git.solus-project.com/packages/xorg-driver-input-wacom/commit/?id=114bc95)


**libx11**

 - [Ikey Doherty: Rebuild](https://git.solus-project.com/packages/libx11/commit/?id=da01436)


**thunderbird**

 - [Joshua Strobl: Update to 45.6.0. Resolved CVE-2016-9899.](https://git.solus-project.com/packages/thunderbird/commit/?id=2d97950)
 - [Joshua Strobl: Update langpacks for 45.6.0](https://git.solus-project.com/packages/thunderbird/commit/?id=7aad809)
 - [Joshua Strobl: Update to 45.5.1, use our own tarball since extraction fails with the one Mozilla is providing. Resolves CVE-2016-9079.](https://git.solus-project.com/packages/thunderbird/commit/?id=faf6a3d)
 - [Joshua Strobl: langpacks: Update for 45.5.1](https://git.solus-project.com/packages/thunderbird/commit/?id=db64e7d)
 - [Joshua Strobl: Update to 45.5.0](https://git.solus-project.com/packages/thunderbird/commit/?id=c61b494)
 - [Joshua Strobl: langpacks: Update for 45.5.0](https://git.solus-project.com/packages/thunderbird/commit/?id=656de16)
 - [Ikey Doherty: Use the system nss + nspr libraries](https://git.solus-project.com/packages/thunderbird/commit/?id=2038ff1)


**arc-gtk-theme**

 - [Justin Zobel: Update to 20161119](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=c4ace68)


**xorg-driver-video-radeon**

 - [Ikey Doherty: Enable C/CXXFLAGS changes here too](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=cfaabe5)
 - [Ikey Doherty: Rebuild against X](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=7ffb04e)
 - [Ikey Doherty: Fix broken component](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=768cba7)
 - [Ikey Doherty: Rebuild for X.Org 1.19.0](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=1912d13)
 - [Ikey Doherty: Update to 7.8.0](https://git.solus-project.com/packages/xorg-driver-video-radeon/commit/?id=cbcb700)