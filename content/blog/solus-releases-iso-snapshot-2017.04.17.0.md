+++
author = "joshua"
categories = [
"Budgie",
"News",
"Releases"
]
date = "2017-04-16T19:41:53+03:00"
featuredimage = "/2017/04/Snapshot_Featured_Image.jpg"
title = "Solus Releases ISO Snapshot 2017.04.17.0"
url = "/2017/04/17/solus-releases-iso-snapshot-20170417-0"
+++

We're proud to announce our second ISO snapshot, 2017.04.17.0, across our Budgie and MATE editions, as well as our new GNOME edition!

This snapshot is the culmination of months of work across nearly every aspect of our operating system, ranging from multiple under the hood upgrades and changes to improvements to our desktop experiences.

## Core Improvements

This snapshot features a multitude of new improvements and upgrades to almost every package that ships on any of our ISO snapshots.

### Bulletproof Boot Management

This snapshot is the first to deliver bulletproof boot management out-of-the-box, leveraging [clr-boot-manager](/2017/03/26/clr-boot-manager-now-available-in-solus) to enable  the maintenance and garbage collection of kernels, as well as configuration of the bootloader (across GRUB2 for Legacy Boot and goofiboot for UEFI boot).

Furthermore, clr-boot-manager enables the retention of known-working kernels, so you can always rollback to a prior kernel if a kernel upgrade results in the inability to boot. This gives users even more confidence in upgrading their system, and ensures that their running systems will just keep working as expected.

clr-boot-manager also provides a pathway to supporting **multiple** kernels. By default, we provide the LTS kernel to our users, however we now have the flexibility to provide multiple kernels without "branch jumping" existing users onto a mainline kernel, something we plan on adding in the future.

### Graphics Stack and Kernel Enablement

Multiple improvements have been made to our graphics stack and enablement of the Linux kernel for this snapshot.

#### Linux Driver Management

This snapshot features [Linux Driver Management](https://github.com/solus-project/linux-driver-management), which is a **modern, open source** solution developed by us to enable NVIDIA Optimus support and paves the way towards supporting dynamic, switchable graphics across all hardware vendors in the future.

Click [here]() to learn more about using Linux Driver Management.

#### Kernel Enablement

This snapshot features Linux kernel 4.9.22, the latest of the longterm branch at the time of release. Alongside the wide variety of improvements brought by using the latest kernel, we have enabled a substantial set of hardware / devices, such as:

- NVME Enablement and Improvements
  - Backporting support for Macbook Pro 2016 SSD (NVME, really)
  - NVME SCSI emulation to resolve some minor NVME bugs
  - We now use NVME patches, backported from 4.11, provided by [linux-nvme](https://github.com/damige/linux-nvme)
- Webcam Enablement
  - GSCPA ZC3XX class webcams (Creative, etc.)
  - GSPCA STV06XX class webcams (Logitech QuickCam, etc.)
- Other
  - Baytrail sound card support (SoC)
  - Dell All In one WMI (hotkeys, etc)
  - Enabling `/proc/config.gz`
  - Enabling Macbook gmux for Macbook backlight support.
  - Mayflash (ACRUX) game controller support (gamecube, etc)
  - Ricoh NAND and SDX/MMC
  - Samsung Q10 platform support

With the latest changes to solus-hardware-config and our linux-lts package, we'll now dynamically select the appropriate power saving CPU frequency governor after the system is booted. During boot we default to the performance setting, to ensure a rapid startup, however we'll now switch to the appropriate scaling setting to conserve battery life (`powersave` for `intel_pstate` and `ondemand` for `cpufreq`).

### Multimedia Upgrades

This snapshot delivers upgraded multimedia libraries and a new Pulseaudio. We are now shipping with ffmpeg 3.2.4, including patches to VLC for ffmpeg 3 support. ffmpeg 3 features a large set of improvements, such as:

- A native AAC encoder
- New filters
- VAAPI-accelerated H.264
- VP9 hardware acceleration
- Support for SDL2

Our gstreamer-1.0 packages have been updated to 1.10.4, which is the latest in their 1.10 stable series. 

Pulseaudio has been upgrade to 10.0, enabling improvements to Bluetooth A2DP and HSP profiles and hotplugging support for USB sound cards.

## Default Applications

### All Editions

All of our editions feature:

- Firefox 52.0.2
- Rhythmbox 3.4.1
- Thunderbird 52.0.1

We also now ship with a default office suite across all editions, LibreOffice 5.3.2.2!

### Default Video Player

Our Budgie and GNOME editions ship with GNOME MPV as the new default video player. GNOME MPV was chosen to be our new default for these two editions as it:

- Fits into the general aesthetic of both Budgie and GNOME
- In our opinion provides a simpler experience for watching video content

Our MATE edition will maintain the use of VLC, preserving a more traditional user experience.

## Budgie

{{< altimg "/2017/04/Budgie.jpg" >}}

This snapshot features the new Budgie 10.3 release. Budgie 10.3 is the last major release of our 10.x series, bringing the development of our GTK and Vala implementation of Budgie to a close, and opening the door for development of Budgie 11, which will be based on Qt 5.

### Alt+Tab

{{< altimg "/2017/04/Budgie_AltTab.jpg" >}}

Budgie 10.3 features our new Alt+Tab implementation, eliminating previous issues with our alt+tab and enabling a faster, prettier, and more reliable window switching experience. This implementation is thanks to a significant community contribution, done during our first implementation competition that provided a monetary award of 500 EUR, and further improvements done to the user interface of it.

### Customization

{{< altimg "/2017/04/Budgie_ClockApplet.jpg" >}}

Clock Applet received customization options in this release, enabling the ability to show the date, seconds, as well as the option for 24 hour time.

{{< altimg "/2017/04/Budgie_Button_Layout.jpg" >}}

We have also added the ability to choose between left and right window button layouts via Budgie Settings.

### Fixes for GTK 3.22

Budgie 10.3 features numerous fixes for GTK 3.22. For starters, Budgie Menu and other popovers will no longer appear to move from the top to the bottom of your screen when the Budgie panel is located on the bottom. We have also resolved an animation issue from GTK 3.22 where popovers would animate twice.

{{< altimg "/2017/04/Budgie_RunDialog.jpg" >}}

Lastly, the Run Dialog will no longer appear "stumpy" on GTK 3.22.

### MPRIS Artwork

{{< altimg "/2017/04/Budgie_Spotify.jpg" >}}

In Budgie 10.3, we now support the downloading of artwork for our MprisClient and adding code to prevent such artwork from being loaded twice. This can be noticed the most when playing content via Spotify!

### Other Fixes and Improvements

On the Budgie applets front, we have:

- Resolved the inability to pin GNOME Twitch via the Icon Tasklist
- Resolved incorrect vertical alignment of the Clock Applet
- Now ensure tray icons are evenly spaced, as a result of syncing our natray with upstream gnome-panel.
- Improvements have been made to the Places applet
  - Support for encrypted volumes and remote (S/FTP, SMB) shares.
  - Clicking on S/FTP bookmarks now open them in the default file manager.

For Raven, we fixed the notification spam that'd occur during start up notifying the user they're connected to the network. No more red notification bell on startup!

For `budgie-wm`, a crash has been fixed that would occur when the current locale was deleted.

## GNOME

{{< altimg "/2017/04/GNOME.jpg" >}}

We're proud to formally announce the release of our Solus GNOME edition. This edition fulfills our desire to make GNOME a first class experience, instead of a hybrid Budgie / GNOME setup, and introduces a near-vanilla GNOME experience with sane defaults and some shipped extensions. 

Our GNOME edition ships with the GNOME theme provided by Arc, providing a cleaner and more modern look to GNOME. Furthermore, we ship and have enabled several sensible extensions so you can spend less time tweaking and more time just using the system.

- Dash To Dock is installed to enable faster access to your applications. We provide subtle styling changes as well as set defaults such as setting the Applications icon on the top of the dock, setting the default click action of running applications to minimize, reducing the hide delay, and lastly changing the maximum icon size to better utilize screen real estate.
- Impatience enables faster animations for GNOME Shell. In our edition, you can expect animations to take only half the time!
- TopIcons is shipped by default to merge the locations of application tray icons into a single place, as opposed to it being separated by the "Legacy Tray" and the top tray icons.

## MATE

{{< altimg "/2017/04/MATE.jpg" >}}

Solus MATE edition delivers the latest 1.18 release from the MATE project as well as shipping with a new [Brisk menu](https://github.com/solus-project/brisk-menu).

Brisk Menu 0.3.5 offers:

- Standardized CSS usage and fixes broken assets
- Enables a rollover behavior via gsettings
- Adds a context menu for editing menus

Ongoing support of development of Brisk Menu has been provided by Martin Wimpress and the Ubuntu MATE project and they have our thanks for helping to enable a modern, efficient menu for the MATE Desktop Environment.

Several issues relating to keyboard layouts have now been resolved, ensuring layouts are "sticky" and switch dynamically. The control center is now able to display the system layouts, as well as the MATE 1.18 stack update introducing support for libinput.

---

## Full Changelog (Primary Image)

