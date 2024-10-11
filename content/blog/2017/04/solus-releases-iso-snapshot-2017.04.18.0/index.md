+++
author = "joshua"
categories = [
"Budgie",
"News",
"Releases"
]
date = "2017-04-18T19:41:53+03:00"
featuredimage = "/Snapshot_Featured_Image.jpg"
title = "Solus Releases ISO Snapshot 2017.04.18.0"
url = "/2017/04/18/solus-releases-iso-snapshot-20170418-0"
+++

We're proud to announce our second ISO snapshot, 2017.04.18.0, across our Budgie and MATE editions, as well as our new GNOME edition!

This snapshot is the culmination of months of work across nearly every aspect of our operating system, ranging from multiple under the hood upgrades and changes to improvements to our desktop experiences.

## Core Improvements

This snapshot features a multitude of new improvements and upgrades to almost every package that ships on any of our ISO snapshots.

### Bulletproof Boot Management

This snapshot is the first to deliver bulletproof boot management out-of-the-box, leveraging [clr-boot-manager](/2017/03/26/clr-boot-manager-now-available-in-solus) to enable  the maintenance and garbage collection of kernels, as well as configuration of the bootloader (across GRUB2 for Legacy Boot and goofiboot for UEFI boot).

Furthermore, clr-boot-manager enables the retention of known-working kernels, so you can always rollback to a prior kernel if a kernel upgrade results in the inability to boot. This gives users even more confidence in upgrading their system, and ensures that their running systems will just keep working as expected.

clr-boot-manager also provides a pathway to supporting **multiple** kernels. By default, we provide the LTS kernel to our users, however we now have the flexibility to provide multiple kernels without "branch jumping" existing users onto a mainline kernel, something we plan on adding in the future.

### GNOME Stack

Our GNOME Stack has been upgraded to the 3.24 series. We have also done further refinements by:

- Adding back the Enter Location menu option for Nautilus
- Enabling EGLDevice for EGLStreams in Mutter, as well as disabling `NET_WM_PING` dialogs, which could break many SDL games or some applications. Such applications are just slower to start, such as Thunderbird, or GL-locked (SDL), and as a result displaying a "not responsive" window unnecessarily would break focus, input, etc. when the application is in fact working.
- Including a patch to resolve items not appearing via gnome-menus
- Updating libgnomekbd to resolve schemas from a prior release.

### Graphics Stack and Kernel Enablement

Many improvements have been made to our graphics stack and enablement of the Linux kernel for this snapshot, as well as shipping the latest Mesa, 17.0.4.

#### Linux Driver Management

This snapshot features [Linux Driver Management](https://github.com/solus-project/linux-driver-management), which is a **modern, open source** solution developed by us to enable NVIDIA Optimus support and paves the way towards supporting dynamic, switchable graphics across all hardware vendors in the future.

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

- New filters
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

{{< relimg "Budgie.jpg" >}}

This snapshot features the brand new Budgie 10.3.1 release. Budgie 10.3 is the last incarnation of the 10.x series, with only minor updates to the 10.3 releases being planned, and opening the door for development of the Qt 5-based Budgie 11.

### Alt+Tab

{{< relimg "Budgie_AltTab.jpg" >}}

Budgie 10.3 features our new Alt+Tab implementation, eliminating previous issues with our alt+tab and enabling a faster, prettier, and more reliable window switching experience. This implementation is thanks to a significant community contribution, done during our first implementation competition that provided a monetary award of 500 EUR, and further improvements done to the user interface of it.

### Customization

{{< relimg "Budgie_ClockApplet.jpg" >}}

Clock Applet received customization options in this release, enabling the ability to show the date, seconds, as well as the option for 24 hour time.

{{< relimg "Budgie_Button_Layout.jpg" >}}

We have also added the ability to choose between left and right window button layouts via Budgie Settings.

### Fixes for GTK 3.22

Budgie 10.3 features numerous fixes for GTK 3.22. For starters, Budgie Menu and other popovers will no longer appear to move from the top to the bottom of your screen when the Budgie panel is located on the bottom. We have also resolved an animation issue from GTK 3.22 where popovers would animate twice.

{{< relimg "Budgie_RunDialog.jpg" >}}

Lastly, the Run Dialog will no longer appear "stumpy" on GTK 3.22.

### MPRIS Artwork

{{< relimg "Budgie_Spotify.jpg" >}}

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

{{< relimg "GNOME.jpg" >}}

We're proud to formally announce the release of our Solus GNOME edition. This edition fulfills our desire to make GNOME a first class experience, instead of a hybrid Budgie / GNOME setup, and introduces a near-stock GNOME experience with sane defaults and some shipped extensions. 

Our GNOME edition ships with GNOME 3.24 and features the GNOME theme provided by Arc, providing a cleaner and more modern look to GNOME. Furthermore, we ship and have enabled several sensible extensions so you can spend less time tweaking and more time just using the system.

- Dash To Dock is installed to enable faster access to your applications. We provide subtle styling changes as well as set defaults such as:
  - Setting the Applications icon on the top of the dock
  - Setting the default click action of running applications to minimize
  - Reducing the hide delay
  - Changing the maximum icon size to better utilize screen real estate.
- Impatience enables faster animations for GNOME Shell. In our edition, you can expect animations to take only half the time!
- TopIcons is shipped by default to merge the locations of application tray icons into a single place, as opposed to it being separated by the "Legacy Tray" and the top tray icons.
- We provide the chrome-gnome-shell package out-of-the-box so installation of extensions via Chrome are painless, and installation via Firefox is simpler, by only requiring the installation of Firefox support provided via the GNOME Extensions website.

## MATE

{{< relimg "MATE.jpg" >}}

Solus MATE edition delivers the latest 1.18 release from the MATE project as well as shipping with a new [Brisk menu](https://github.com/solus-project/brisk-menu).

Brisk Menu 0.3.5 offers:

- Standardized CSS usage and fixes broken assets
- Enables a rollover behavior via gsettings
- Adds a context menu for editing menus

Ongoing support of development of Brisk Menu has been provided by Martin Wimpress and the Ubuntu MATE project and they have our thanks for helping to enable a modern, efficient menu for the MATE Desktop Environment.

Several issues relating to keyboard layouts have now been resolved, ensuring layouts are "sticky" and switch dynamically. The control center is now able to display the system layouts, as well as the MATE 1.18 stack update introducing support for libinput.

---

## Full Changelog (Primary Image)

### Packages added to this release:

  - breeze-cursor-theme
  - clr-boot-manager
  - coinmp
  - dbus-launch
  - fdk-aac
  - fftw
  - glew
  - gnome-autoar
  - gnome-backgrounds
  - gnome-mpv
  - gnome-tweak-tool
  - gnome-user-docs
  - hwdata
  - isl
  - kernel-glue
  - libabw
  - libboost
  - libcdr
  - libcmis
  - libe-book
  - libetonyek
  - libexttextcat
  - libfreehand
  - libixion
  - liblangtag
  - libmspub
  - libmwaw
  - libodfgen
  - liborcus
  - libpagemaker
  - libreoffice-calc
  - libreoffice-common
  - libreoffice-draw
  - libreoffice-impress
  - libreoffice-writer
  - librevenge
  - libunistring
  - libvisio
  - libwpd
  - libwpg
  - libwps
  - libxscrnsaver
  - linux-driver-management
  - linux-lts
  - linux-tools-cpupower
  - mpv-libs
  - mythes
  - nautilus-extension
  - neon
  - npth
  - pcre2
  - stoken
  - uchardet
  - vapoursynth
  - youtube-dl
  - zimg


### Packages removed from this release:

- breeze-snow-cursor-theme
- faac
- gl-driver-switch
- groff
- json-c
- kernel
- kernel-modules
- libdc1394
- libdvbpsi
- libebml
- libidn
- libmatroska
- libmodplug
- libpth
- libraw1394
- libsamplerate
- libssh2
- libupnp
- libwebkit3-gtk
- libxvmc
- qt5-base
- qt5-x11extras
- rfkill
- sdl1
- sdl1-image
- thermald
- tlp
- vlc
- xorg-driver-video-intel


### Changes in this release:

**libao**

  - Ikey Doherty: Rebuild for Pulse
  - Bryan T. Meyers: Rebuild for alsa


**appstream-glib**

  - Ikey Doherty: Update to 0.6.12
  - Pierre-Yves: Update to 0.6.11


**colord**

  - Bryan T. Meyers: Updated to 1.3.4
  - Bryan T. Meyers: Remove component.xml and generate ABI report


**less**

  - Pierre-Yves: Update to 487


**budgie-desktop-branding**

  - Ikey Doherty: Update to v9
  - Ikey Doherty: Update to v8
  - Ikey Doherty: Update to v7
  - Ikey Doherty: Sync with git
  - Ikey Doherty: Stop disabling the icon now
  - Ikey Doherty: Sync with git to disable ibus tray icon
  - Ikey Doherty: Wild idea: Actually depend on Budgie Desktop itself.
  - Ikey Doherty: Sync with git for Nautilus fixes
  - Ikey Doherty: Sync with git for the next snapshot's branding


**totem-pl-parser**

  - Peter O'Connor: Update to 3.10.7
  - Peter O'Connor: Add abireport


**xinit**

  - Peter O'Connor: Update to 1.3.4, convert to yml


**evince**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.1


**gd**

  - Ikey Doherty: Update to 2.2.4 to address numerous CVEs:


**libnspr**

  - Ikey Doherty: Update to 4.14
  - Ikey Doherty: Update to 4.13.1


**gstreamer-1.0-plugins-good**

  - Ikey Doherty: Rebuild for pulse
  - Ikey Doherty: Update to 1.10.4


**x264**

  - Ikey Doherty: Update to 20170411.2245 stable snapshot
  - Ikey Doherty: Conduct ABI report


**x265**

  - Ikey Doherty: Rebuild for new yasm + cflags
  - Joshua Strobl: Update to 2.3


**gdbm**

  - Ikey Doherty: Update to 1.13
  - Ikey Doherty: Conduct ABI report
  - Justin Zobel: Convert to package.yml


**gstreamer-1.0-plugins-base**

  - Ikey Doherty: Update to 1.10.4
  - Bryan T. Meyers: Rebuild for alsa


**gpgme**

  - Michael Meinertzhagen: Update to 1.9.0
  - Peter O'Connor: Update to 1.8.0


**gobject-introspection**

  - Joshua Strobl: Update to 1.52.0
  - Ikey Doherty: Update to 1.50.0


**libsndfile**

  - Ikey Doherty: Update to 1.0.28 to fix buffer overruns in FLAC and ID3 handling code.
  - Bryan T. Meyers: Rebuild for alsa, remove component.xml


**samba**

  - Peter O'Connor: Rebuild for perl 5.24.1
  - Joshua Strobl: Update to 4.3.13, added com_err so samba will no longer build and use its own. Added popt and organized builddeps.
  - Ikey Doherty: Add abireport


**xorg-driver-video-amdgpu**

  - Ikey Doherty: Rebuild against xorg 1.18
  - Ikey Doherty: Update to 1.3.0


**libpwquality**

  - Ikey Doherty: Clean off the furballs
  - Ikey Doherty: Conduct ABI report


**glibmm**

  - Joshua Strobl: Update to 2.51.6
  - Ikey Doherty: Update to 2.50.0


**gstreamer-1.0**

  - Michael Meinertzhagen: Update to 1.10.4


**gnome-calendar**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.3
  - Ikey Doherty: Update to 3.22.2


**gdk-pixbuf**

  - Joshua Strobl: Update to 2.36.6
  - Ikey Doherty: Fix broken ABI files
  - Zach Bacon: Updated gdk-pixbuf to 2.36.4


**xorg-driver-input-libinput**

  - Ikey Doherty: Rebuild against xorg 1.18
  - Ikey Doherty: Update to 0.25.0


**openvpn**

  - Bryan T. Meyers: Added missing systemd file


**solus-artwork**

  - Ikey Doherty: Update to v16, convert to modern ypkg format


**solus-sc**

  - Ikey Doherty: Update to v17
  - Ikey Doherty: Sync with git for minor fixes including notification handling
  - Joshua Strobl: Move to desktop component. Doesn't make much sense to have a shared app across our images be in desktop.budgie.
  - Ikey Doherty: Update to v16


**gmp**

  - Ikey Doherty: Update to 6.1.2
  - Ikey Doherty: Conduct ABI report


**baselayout**

  - Ikey Doherty: Update os-release for 2017.04.18.0
  - Ikey Doherty: Update OS version to 2017.04.17.0
  - Ikey Doherty: Drop the legacy /boot/boot -> . link


**inetutils**

  - Ikey Doherty: Update to 1.9.4, convert to modern ypkg format


**lsb-release**

  - Ikey Doherty: Update OS version to 2017.04.18.0
  - Ikey Doherty: Update version to 2017.04.17.0


**unzip**

  - Ikey Doherty: Restore missing patches


**mpc**

  - Ikey Doherty: Update to 1.0.3
  - Ikey Doherty: Conduct ABI report


**mesalib**

  - Ikey Doherty: Update to 17.0.4
  - Ikey Doherty: Update to v17.0.3
  - Ikey Doherty: Update to 17.0.2
  - Ikey Doherty: Migrate to linux-driver-management
  - Ikey Doherty: Update to 17.0.1
  - Ikey Doherty: Enable virgl, osmesa gallium, disable swr, lto. Please don't cause me pain.
  - Ikey Doherty: Update to 17.0 -  Pedro shall be our testguydude!
  - Ikey Doherty: Update to 13.0.4
  - Ikey Doherty: Add missing build-dependency
  - Ikey Doherty: Update to 13.0.3 and rebuild against LLVM


**geoclue**

  - Peter O'Connor: Update to 2.4.4
  - Peter O'Connor: Add abireport


**python**

  - Michael Meinertzhagen: Update to 2.7.13


**python-dbus**

  - Ikey Doherty: Update to 1.2.4
  - Ikey Doherty: Force into system.base..
  - Ikey Doherty: Rebuild against new Python 2.7
  - Justin Zobel: Rebuild for python 3.5
  - Joshua Strobl: Bumped python(3) dbus to be compatible with build of python-3.4
  - Ikey Doherty: Update to 1.2.0, remove python3-dbus from system.base to resolve bootstrap


**cpio**

  - Ikey Doherty: Update to 2.12, rebase patches, fix with glibc 2.25
  - Justin Zobel: Convert to package.yml


**bash-completion**

  - Pierre-Yves: update to 2.5


**gtk3**

  - Ikey Doherty: Update to 3.22.12
  - Joshua Strobl: Update to 3.22.11
  - Ikey Doherty: Update to 3.20.9
  - Ikey Doherty: Add missing dependencies
  - Zach Bacon: Updated gtk to 3.22.7


**libwacom**

  - Ikey Doherty: Update to 0.24.0
  - Bryan T. Meyers: Updated to 0.23


**xorg-driver-input-wacom**

  - Ikey Doherty: Rebuild against xorg 1.18
  - Ikey Doherty: Update to 0.34.2


**libdrm**

  - Ikey Doherty: Update to 2.4.76


**libnotify**

  - Ikey Doherty: Update to 0.7.7
  - Ikey Doherty: Add abi report


**gnutls**

  - Ikey Doherty: Update to 3.5.11
  - Ikey Doherty: Add missing rundeps
  - Ikey Doherty: Attempt to unbreak linking
  - Peter O'Connor: Update to 3.5.8 to address following CVEs:


**pango**

  - Ikey Doherty: Update to 1.40.5
  - Ikey Doherty: Nuke old shitty packaging
  - Zach Bacon: Updated pango but build issues


**util-linux**

  - Ikey Doherty: Test downgrade to "fix" installer
  - Ikey Doherty: Remove nasty hack now that fakeroot is healthy
  - Ikey Doherty: Fix stupid uid 1000 bug
  - Ikey Doherty: Fix file conflicts with bash-completion package
  - Ikey Doherty: Update to 2.29.1
  - Mitchell Fossen: Update to 2.28
  - Ikey Doherty: Conduct abireport


**alsa-plugins**

  - Ikey Doherty: Rebuild for stack changes
  - Bryan T. Meyers: Updated to 1.1.1


**atkmm**

  - Joshua Strobl: Rebuild against glibmm
  - Ikey Doherty: Update to 2.24.2


**ca-certs**

  - Ikey Doherty: Update to 20170411
  - Ikey Doherty: Update to 20170217 snapshot
  - Ikey Doherty: Update to 20170125


**font-hack-ttf**

  - Joshua Strobl: Update to 2.020


**libmtp**

  - Peter O'Connor: Update to 1.1.13


**ghostscript**

  - Joshua Strobl: Update to 9.21
  - Joshua Strobl: Resolve CVE-2017-7207


**libp11-kit**

  - Ikey Doherty: Refresh packaging


**comar**

  - Ikey Doherty: Patch the polkit config for updating repos
  - Ikey Doherty: Rebuild


**hexchat**

  - Peter O'Connor: Rebuild for perl 5.24.1
  - Patrick Griffis: Misc package improvements


**libcairo**

  - Ikey Doherty: Update to 1.14.8
  - Ikey Doherty: Conduct abi report


**xorg-server**

  - Ikey Doherty: Bump to include revert in repos
  - Ikey Doherty: Revert "Update to 1.19.3 - disable LTO as it's problematic"
  - Ikey Doherty: Update to 1.19.3 - disable LTO as it's problematic
  - Ikey Doherty: Replace gl-driver-switch with linux-driver-management
  - Ikey Doherty: Require dbus-launch at runtime for X11 session activation


**dbus**

  - Ikey Doherty: Update to 1.10.18
  - Matthias Eliasson: Update to 1.10.16
  - Ikey Doherty: Split dbus-launch into separate package for X11 launching
  - Ikey Doherty: Disable X11 launching for now
  - Ikey Doherty: Convert to ypkg, update to latest version
  - Ikey Doherty: Add abireport


**dconf-editor**

  - Peter O'Connor: Update to 3.22.3


**xdpyinfo**

  - Peter O'Connor: Update to 1.3.2, convert to yml


**gnome-control-center**

  - Ikey Doherty: Rebuild for PA
  - Joshua Strobl: Update to 3.24.1
  - Joshua Strobl: Update to 3.24.0
  - Joshua Strobl: Rebuild against samba 4.3.13. Precautionary measure.
  - Joshua Strobl: Rebuild against e2fsprogs
  - Joshua Strobl: Fix rogue 1 in Nettkontoer translation.
  - Joshua Strobl: Backported upstream Norweigen translation fixes.
  - Ikey Doherty: Update to 3.22.1
  - Bryan T. Meyers: Rebuild for NetworkManager


**gnome-system-monitor**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.2


**gnome-online-accounts**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Safety rebuild for libwebkit-gtk
  - Peter O'Connor: Update to 3.22.5
  - Ikey Doherty: Fix symbols and builddeps, etc.
  - Zach Bacon: Updated gnome-online-accounts 3.22.4
  - Peter O'Connor: Rebuild against libwebkit-gtk, rm component.xml


**dejavu-fonts-ttf**

  - Michael Meinertzhagen: Update to 2.37


**espeak-ng**

  - Ikey Doherty: Update to 1.49.1


**libvorbis**

  - Peter O'Connor: Enable PGO


**pangomm**

  - Joshua Strobl: Rebuild against glibmm and cairomm
  - Ikey Doherty: Update to 2.40.1


**orca**

  - Joshua Strobl: Update to 3.24.0


**shared-mime-info**

  - Peter O'Connor: Update to 1.8
  - Ikey Doherty: Update to 1.7
  - Ikey Doherty: Conduct abi report


**gnome-disk-utility**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.1


**gspell**

  - Joshua Strobl: Update to 1.4.0
  - Ikey Doherty: Update to 1.2.2


**vino**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Ikey Doherty: Update to 3.22.0


**iso-codes**

  - Peter O'Connor: Update to 3.74


**popt**

  - Ikey Doherty: Switch to the rpm5 official source


**attr**

  - Ikey Doherty: Update to 2.4.47
  - Ikey Doherty: Conduct ABI report


**libpciaccess**

  - Ikey Doherty: Update to 0.13.5 and use hwdata


**bluez**

  - Ikey Doherty: Update to 5.44
  - Peter O'Connor: Rebuild for libical


**setxkbmap**

  - Peter O'Connor: Update to 1.3.1, convert to yml


**libinput**

  - Bryan T. Meyers: Rebuild for libwacom
  - Ikey Doherty: Update to 1.6.0


**libwebp**

  - Joshua Strobl: Upgrade to libwebp


**libxslt**

  - Joshua Strobl: Resolve CVE-2015-9019. Added ABI files.
  - Ikey Doherty: Delete dead patch


**libgtksourceview**

  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.22.2


**udisks**

  - Ikey Doherty: Back to 2.1.8 with acl
  - Ikey Doherty: Roll back to 2.1.7
  - Ikey Doherty: Temporarily disable ACL support again
  - Ikey Doherty: Update to 2.1.8
  - Ikey Doherty: Add ABI report


**glib-networking**

  - Ikey Doherty: Underp deps
  - Ikey Doherty: Update to 2.50.0


**pulseaudio**

  - Ikey Doherty: Update to v10.0
  - Bryan T. Meyers: Rebuild for ALSA and ABI report


**v4l-utils**

  - Ikey Doherty: Update to 1.12.3
  - Ikey Doherty: Conduct ABI report


**pisi**

  - Ikey Doherty: Sync up flags
  - Ikey Doherty: Sync with git for Clear Linux cflag sync
  - Ikey Doherty: Update to v3.5
  - Ikey Doherty: Enable ccache by default in config for solbuild


**xorg-driver-video-fbdev**

  - Ikey Doherty: Rebuild for xorg 1.19
  - Ikey Doherty: Rebuild against new xorg-server


**iptables**

  - Ikey Doherty: Cleanup package for use with Docker
  - Ikey Doherty: Conduct abireport


**librest**

  - Ikey Doherty: Update to 0.8.0
  - Ikey Doherty: Conduct ABI report


**elfutils**

  - Ikey Doherty: Address the following CVEs:
  - Ikey Doherty: Fix program prefix for flatpak
  - Ikey Doherty: Update to 0.168
  - Ikey Doherty: Add abireport


**libproxy**

  - Peter O'Connor: Update to 0.4.14
  - Peter O'Connor: Add abireport


**inotify-tools**

  - Ikey Doherty: Convert to modern ypkg format
  - Ikey Doherty: Conduct ABI report


**libgpg-error**

  - Ikey Doherty: Update to 1.27
  - Ikey Doherty: Update to 1.26
  - Ikey Doherty: Conduct ABI report


**arc-firefox-theme**

  - Peter O'Connor: Update to 52.20170311 for firefox 52
  - Ikey Doherty: Update to v51.20170123


**linux-firmware**

  - Ikey Doherty: Sync with April 4th git
  - Ikey Doherty: Sync for latest Pascal GP10x firmware
  - Ikey Doherty: Routine sync of firmware to 20170223 snapshot
  - Ikey Doherty: Update to latest git snapshot, convert to ypkg


**libpng**

  - Peter O'Connor: Update to 1.5.28 to address CVE-2016-10087
  - Peter O'Connor: Add abireport


**nvidia-304-glx-driver**

  - Ikey Doherty: Rebuild for 4.9.22-17.lts
  - Ikey Doherty: Rebuild for 4.9.22-16.lts
  - Ikey Doherty: Rebuild for 4.9.22-15.lts
  - Ikey Doherty: Rebuild against kernel
  - Ikey Doherty: Rebuild for 4.9.21-13.lts
  - Ikey Doherty: Rebuild for 4.9.20-12.lts
  - Ikey Doherty: Integrate with clr-boot-manager
  - Ikey Doherty: Port to the linux-lts package
  - Ikey Doherty: Rebuild for 4.9.16
  - Ikey Doherty: Stop calling nvidia-xconfig
  - Ikey Doherty: Port to linux-driver-management
  - Ikey Doherty: Rebuild for 4.9.13
  - Ikey Doherty: Update to 304.135
  - Ikey Doherty: Rebuild for 4.9.12
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for 4.9.7
  - Ikey Doherty: Rebuild for 4.9.6


**libwebkit-gtk**

  - 
  - 


**gnupg**

  - Pierre-Yves: Update to 2.1.20
  - Pierre-Yves: Update to 2.1.19
  - Ikey Doherty: Update to 2.1.18 to unbreak new Duplicity


**gnome-terminal**

  - Joshua Strobl: Update to 3.24.0, as well as new title and transparency patch.
  - Peter O'Connor: Update to 3.22.1


**libcap2**

  - Ikey Doherty: Update to 2.25 for gvfs
  - Ikey Doherty: Conduct ABI report


**gnome-screenshot**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Peter O'Connor: Update to 3.22.0


**sharutils**

  - Ikey Doherty: Update to 4.15.2, convert to modern ypkg format


**coreutils**

  - Ikey Doherty: Update to 8.26, convert to ypkg, enable attr+acl
  - Ikey Doherty: Add abireport


**gnome-bluetooth**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Peter O'Connor: Update to 3.20.1
  - Ikey Doherty: Rebuild for the lulz


**gawk**

  - Joshua Strobl: Bump rel.
  - Joshua Strobl: Update to 4.1.4. Symlink gawk to awk for man pages.
  - Joshua Strobl: Added ABI Used Libs.


**libsigc++**

  - Ikey Doherty: Update to 2.10.0


**libbluray**

  - Ikey Doherty: Update to 1.0.0 and enable bdplus


**lightdm-gtk-greeter**

  - Ikey Doherty: Update branding for ISO


**orc**

  - Ikey Doherty: Update to 0.4.26


**bash**

  - Ikey Doherty: Resync flags
  - Ikey Doherty: Enhance default compiler flags for environment based compilations


**libnss**

  - Ikey Doherty: Update to 3.30.1
  - Joshua Strobl: Update to 3.28.3 for Firefox.
  - Ikey Doherty: Update to 3.28.1


**doflicky**

  - Ikey Doherty: Sync with git to fix signal name issue
  - Joshua Strobl: Move to system.utils since it is a shared app between our images. Doesn't make sense to have it in desktop.budgie.


**pcaudiolib**

  - Ikey Doherty: Rebuild for pulse
  - Bryan T. Meyers: Rebuild for alsa


**libxkbcommon**

  - Ikey Doherty: Update to 0.7.1
  - Ikey Doherty: Add abireport


**seahorse**

  - Ikey Doherty: Rebuild for Nautilus


**openssh**

  - Ikey Doherty: Update to 7.5_p1 (T2955) and enable ssh-copy-id (T2684)


**baobab**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.1


**openssl**

  - Ikey Doherty: Update to 1.0.2k


**foomatic-db-engine**

  - Peter O'Connor: Rebuild for perl 5.24.1


**libarchive**

  - Ikey Doherty: Update to v3.3.1
  - Joshua Strobl: Update to 3.3.0
  - Peter O'Connor: Update to 3.2.2


**mutagen**

  - Federico Damián Schonborn: Update to 1.36


**cairomm**

  - Joshua Strobl: Rebuild
  - Ikey Doherty: Update to 1.12.2


**accountsservice**

  - Ikey Doherty: Drop bad files
  - Zach Bacon: Updated accountservices


**openldap**

  - Joshua Strobl: Fix old usage of sudo from evobuild days.
  - Joshua Strobl: Rebuild against e2fsprogs


**libgweather**

  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.20.4


**libgusb**

  - Ikey Doherty: Update to 0.2.10


**glib2**

  - Joshua Strobl: Update to 2.52.1
  - Ikey Doherty: Update to 2.50.2


**lua**

  - Joshua Strobl: Revert to 5.1.5
  - Joshua Strobl: Upgrade to 5.3.4


**at-spi2-atk**

  - Joshua Strobl: Rebuild and added dbus-1 pkgconfigs.
  - Bryan T. Meyers: Updated to 2.22.0
  - Bryan T. Meyers: Generate ABI Report


**libplist**

  - Joshua Strobl: Resolve the following CVEs: - CVE-2017-6437 - CVE-2017-6438 - CVE-2017-6440
  - Joshua Strobl: Added nopatch for CVE-2017-6439 since this was already patched prior to the HEAD commit we use.
  - Joshua Strobl: Resolve the following CVEs: - CVE-2017-6435 - CVE-2017-6436 - CVE-2017-6439
  - Joshua Strobl: Use a post-CVE fix commit as our new checkout point, since it would be more work to apply a diff set on top of 1.12 up until latest CVE. This update resolves: - CVE-2017-5209 - CVE-2017-5545


**firefox**

  - Ikey Doherty: Rebuild for stack consistency
  - Ikey Doherty: Update to 52.0.2
  - Ikey Doherty: Bump langpaks to 52.0.2
  - Joshua Strobl: Update to 52.0.1
  - Joshua Strobl: Update langpacks for 52.0.1
  - Joshua Strobl: Determine if use of system ICU for Firefox 52 causes crash.
  - Joshua Strobl: Update to 52.0
  - Joshua Strobl: Update langpacks for 52.0
  - Ikey Doherty: Rebuild with new nss/nspr
  - Ikey Doherty: Fix dodgy hash
  - Ikey Doherty: Update to 51.0.1
  - Ikey Doherty: Update langpacks for 51.0.1
  - Ikey Doherty: prefs: Set the homepage to be the Solus blog
  - Peter O'Connor: Revert optimizations as can still crash
  - Ikey Doherty: Disable LTO as it's *still* broken with higher optimisation levels
  - Ikey Doherty: Fix build issue with sed 4.3
  - Ikey Doherty: Enable LTO within Firefox build (canary testing)


**libgnome-menus**

  - Ikey Doherty: Sync Ubuntu patch to fix latent items not appearing in menu
  - Ikey Doherty: Rebuild to fix broken introspection support


**gnome-themes-standard**

  - Ikey Doherty: Update to 3.22.2


**lvm2**

  - Marius Nestor: Update to 2.02.168


**libtiff**

  - Joshua Strobl: Fix up patch names, resolved the following CVEs: - CVE-2016-10092 - CVE-2016-10093 - CVE-2016-10094
  - Ikey Doherty: Sync Fedora security patches for multiple CVEs
  - Joshua Strobl: Rename CVE-2017-5525 to CVE-2017-5225.
  - Ikey Doherty: Address CVE-2017-5525


**harfbuzz**

  - Joshua Strobl: Update to 1.4.5
  - Joshua Strobl: Add freetype2 as a builddep. Build locally.
  - Joshua Strobl: Change pkgconfig to icu-io
  - Joshua Strobl: Rebuild against libicu 58.2. Deprecate component.xml


**xz**

  - Ikey Doherty: Update to 5.2.3 and borrow some Clear Linux improvements


**ntfs-3g**

  - Michael Meinertzhagen: Update to 2017.3.23
  - Peter O'Connor: Address CVE-2017-0358


**xkeyboard-config**

  - Ikey Doherty: Revert symlink hackery


**font-droid-ttf**

  - Joshua Strobl: Add Fallback TTF for characters not covered by Droid Sans and Droid Sans Japanese.
  - Joshua Strobl: Resolve support for some UTF-8 characters, including Japanese support.
  - Joshua Strobl: Eliminate old package format. Use our own self-hosted file.


**libvpx**

  - Ikey Doherty: Update to 1.6.1


**wget**

  - Joshua Strobl: Resolve CVE-2017-6508.
  - Matthias Eliasson: Update to 1.19.1
  - Matthias Eliasson: Update to 1.19


**libjson-glib**

  - Ikey Doherty: Update to v1.2.8
  - Bryan T. Meyers: Updated to 1.2.2
  - Bryan T. Meyers: Generate ABI report


**cups**

  - Ikey Doherty: Update to 2.2.3
  - Ikey Doherty: Add abireport


**xorg-driver-video-qxl**

  - Ikey Doherty: Rebuild for xorg 1.18
  - Ikey Doherty: Sync with git for full 1.19 support


**libvte**

  - Joshua Strobl: Update to 0.48.2
  - Joshua Strobl: Update to 0.48.1, update patch.
  - Ikey Doherty: Update to 0.46.1


**font-symbola-ttf**

  - Joshua Strobl: Only install hinted Symbola ttf.
  - Joshua Strobl: Update to 9.0, drop component.xml


**openconnect**

  - Joshua Strobl: Eliminate whitespace.
  - Tristan: Add rsa token support
  - Bryan T. Meyers: Updated to 7.08
  - Bryan T. Meyers: Rebuild for ABI report and component field


**zenity**

  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.22.0


**wayland**

  - Zach Bacon: Updated wayland incase new gtk needs it


**python3-gobject**

  - Joshua Strobl: Update to 3.24.1
  - Ikey Doherty: Update to 3.20.0


**networkmanager-openvpn**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Peter O'Connor: Update to 1.2.8
  - Ikey Doherty: Add missing users
  - Bryan T. Meyers: Updated to 1.2.6


**perl**

  - Peter O'Connor: Update perl to 5.24.1
  - Ikey Doherty: Enable threading for webkit build


**tzdata**

  - Ikey Doherty: Update to 2017b


**opus**

  - Joshua Strobl: Update to 1.1.4
  - Joshua Strobl: Add ABI reports.


**libva**

  - Ikey Doherty: Update to 1.8.1
  - Auston Stewart: Adding abireport info
  - Auston Stewart: Updating to upstream libva 1.7.3 and eliminating legacy component.xml


**libpeas**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Ikey Doherty: Update to 1.20.0
  - Ikey Doherty: Conduct ABI report


**speech-dispatcher**

  - Ikey Doherty: Update to 0.8.6
  - Bryan T. Meyers: Rebuild for alsa


**libexempi**

  - Ikey Doherty: Update to 2.4.0
  - Ikey Doherty: Add abireport


**libpcre**

  - Peter O'Connor: Resolve CVE-2017-7186
  - Ikey Doherty: Update to 8.40


**dracut**

  - Ikey Doherty: I don't even.
  - Ikey Doherty: Convert to ypkg, drop all the COMAR jankiness


**libvdpau**

  - Ikey Doherty: Rebuild using new stack + ypkg


**procps-ng**

  - Ikey Doherty: Disable modern top in accordance with T3117
  - Ikey Doherty: Convert to ypkg and update to 3.3.12
  - Ikey Doherty: Conduct ABI report


**libxklavier**

  - Ikey Doherty: Update to 5.4, enable xkbfile + xi to unbreak MATE


**nvidia-glx-driver**

  - Ikey Doherty: Rebuild for 4.9.22-17.lts
  - Ikey Doherty: Rebuild for 4.9.22-16.lts
  - Ikey Doherty: Rebuild for 4.9.22-15.lts
  - Ikey Doherty: Rebuild against new kernel
  - Ikey Doherty: Rebuild for 4.9.21-13.lts
  - Ikey Doherty: Rebuild for 4.9.20-12.lts
  - Ikey Doherty: Integrate with clr-boot-manager
  - Ikey Doherty: Port to the linux-lts package
  - Ikey Doherty: Rebuild for 4.9.16 kernel
  - Ikey Doherty: Stop calling nvidia-xconfig
  - Ikey Doherty: Port to linux-driver-management
  - Ikey Doherty: Rebuild for 4.9.13
  - Ikey Doherty: Update to 375.39
  - Ikey Doherty: Rebuild for 4.9.12 kernel
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for 4.9.7
  - Ikey Doherty: Rebuild for 4.9.6 kernel


**kerberos**

  - Joshua Strobl: Rebuild against e2fsprogs


**file-roller**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.3
  - Ikey Doherty: Rebuild for Nautilus
  - Peter O'Connor: Update to 3.22.2


**mutter**

  - Ikey Doherty: Disable disastrous NET_WM_PING dialogs, enable EGLDevice for EGL Streams
  - Ikey Doherty: Update to 3.24.1
  - Joshua Strobl: Update to 3.24.0
  - Matthias Eliasson: Update to 3.22.3
  - Ikey Doherty: Fix symbols and enable Wacom
  - Zach Bacon: Updated mutter to 3.22.2


**ibus**

  - Ikey Doherty: Ensure the system keyboard layout is respected
  - Joshua Strobl: Rebuild against gtk3 3.22.11


**libevdev**

  - Ikey Doherty: Update to 1.5.6
  - Ikey Doherty: Conduct ABI report


**libusb**

  - Ikey Doherty: Update to 1.0.21
  - Ikey Doherty: Add ABI report


**xkbcomp**

  - Peter O'Connor: Update to 1.3.1, convert to yml


**gstreamer-1.0-plugins-ugly**

  - Ikey Doherty: Update to 1.10.4


**eog**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.20.5


**libksba**

  - Ikey Doherty: Update to 1.3.5 and convert to ypkg
  - Ikey Doherty: Conduct ABI report


**evolution-data-server**

  - Joshua Strobl: Update to 3.24.1
  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Safety rebuild for libwebkit-gtk
  - Peter O'Connor: Update to 3.22.6
  - Joshua Strobl: Rebuild against libicu 58.2
  - Matthias Eliasson: Update to 3.22.5
  - Peter O'Connor: Update to 3.22.4
  - Peter O'Connor: Add abireport


**grilo**

  - Joshua Strobl: Update to 0.3.3
  - Peter O'Connor: Update to 0.3.2
  - Peter O'Connor: Add abireport


**grep**

  - Joshua Strobl: Update to 3.0
  - Matthias Eliasson: Update to 2.28


**nvidia-340-glx-driver**

  - Ikey Doherty: Rebuild for 4.9.22-17.lts
  - Ikey Doherty: Rebuild for 4.9.22-16.lts
  - Ikey Doherty: Rebuild for 4.9.22-15.lts
  - Ikey Doherty: Rebuild against kernel
  - Ikey Doherty: Rebuild for 4.9.21-13.lts
  - Ikey Doherty: Rebuild for 4.9.20-12.lts
  - Ikey Doherty: Integrate with clr-boot-manager
  - Ikey Doherty: Port to linux-lts package
  - Ikey Doherty: Rebuild for 4.9.16
  - Ikey Doherty: Bump for LDM migration
  - Ikey Doherty: Port to linux-driver-management
  - Ikey Doherty: Rebuild for 4.9.13
  - Ikey Doherty: Update to 340.102
  - Ikey Doherty: Rebuild for 4.9.12
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for 4.9.7 kernel
  - Ikey Doherty: Rebuild for 4.9.6 kernel


**zlib**

  - Peter O'Connor: Remove speed optimizations
  - Peter O'Connor: Update to 1.2.11 to address following CVEs:
  - Peter O'Connor: Add abireport


**libtasn1**

  - Peter O'Connor: Update to 4.10
  - Peter O'Connor: Add abireport


**network-manager-applet**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Bryan T. Meyers: Updated to 1.4.2
  - Bryan T. Meyers: Removed component.xml, gen ABI report, fix deps


**networkmanager-openconnect**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Bryan T. Meyers: Update to 1.2.4


**sed**

  - Matthias Eliasson: Update to 4.4
  - Joshua Strobl: Update to 4.3, convert to package.yml.


**upower**

  - Ikey Doherty: Update with new ypkg, restore manpages


**ffmpeg**

  - Ikey Doherty: Rebuild for Pulseaudio
  - Pierre-Yves: Update to 3.2.4
  - Joshua Strobl: Rebuild against x265 2.3
  - Peter O'Connor: Update to 2.8.11
  - Bryan T. Meyers: Rebuild for alsa
  - Auston Stewart: Add VAAPI support


**python-gobject**

  - Ikey Doherty: Update to 3.24.1
  - Ikey Doherty: Update to 3.22.0


**libcanberra**

  - Ikey Doherty: Rebuild for pulse
  - Joshua Strobl: Rebuild against gtk3 upgrade.
  - Bryan T. Meyers: Rebuild for alsa


**gstreamer-1.0-libav**

  - Ikey Doherty: Update to 1.10.4
  - Ikey Doherty: Conduct ABI report


**alsa-utils**

  - Bryan T. Meyers: Updated to 1.1.3


**inxi**

  - Michael Meinertzhagen: Update to 2.3.7


**nautilus**

  - Joshua Strobl: Reintroduce Enter Location option that was removed by upstream.
  - Joshua Strobl: Update to 3.24.0 and drop patches that are no longer needed.
  - Ikey Doherty: Backport the "safe desktop files" patch from git
  - Ikey Doherty: Drop Tracker out of Nautilus - complete CPU whore
  - Ikey Doherty: Bump to get Nautilus 3.22 back in the game
  - Ikey Doherty: Revert "Roll back to 3.20.4 due to segfaults with desktop icons"
  - Ikey Doherty: Roll back to 3.20.4 due to segfaults with desktop icons
  - Ikey Doherty: Underp the derpy defaults
  - Ikey Doherty: Rebuild against new Tracker
  - Ikey Doherty: Update to 3.22.2 and split packaging to permit Tracker integration


**libassuan**

  - Peter O'Connor: Update to 2.4.3
  - Peter O'Connor: Add abireport


**gmime**

  - Peter O'Connor: Update to 2.6.23
  - Peter O'Connor: Add abireport


**sudo**

  - Ikey Doherty: Update to 1.8.19_p2, convert to ypkg


**xorg-driver-video-vmware**

  - Ikey Doherty: Rebuild for xorg 1.18
  - Ikey Doherty: Rebuild for xorg-server update


**cups-filters**

  - Matthias Eliasson: Update to 1.13.4


**gedit**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Ikey Doherty: Update to 3.22.0


**clutter-gtk**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Ikey Doherty: Bump and fix symbols
  - Zach Bacon: point release update of clutter-gtk


**libgcrypt**

  - Ikey Doherty: Rebuild against gpg-error
  - Ikey Doherty: Update to 1.7.6
  - Ikey Doherty: Add abireport


**systemd**

  - Ikey Doherty: Fix race condition for PAM and systemd user sessions
  - Ikey Doherty: Disable automount of the ESP


**clutter**

  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Ikey Doherty: Rebuild for consistency


**file**

  - Matthias Eliasson: Update to 5.30


**xauth**

  - Peter O'Connor: Update to 1.0.10, convert to yml


**gsettings-desktop-schemas**

  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.22.0


**wavpack**

  - Peter O'Connor: Update to 5.1.0 to address following CVEs:


**libtelepathy-glib**

  - Joshua Strobl: Rebuild and add dbus-glib-1 as builddep.


**libtool**

  - Ikey Doherty: Update to 2.4.6
  - Ikey Doherty: Conduct ABI report


**curl**

  - Peter O'Connor: Address CVE-2017-7407 and add check
  - Ikey Doherty: Update to 7.53.1
  - Matthias Eliasson: Update to 7.53.0 and fix CVE-2017-2629


**dbus-glib**

  - Ikey Doherty: Update to 0.108 and rebuild against new d-bus
  - Ikey Doherty: Add abireport


**acl**

  - Ikey Doherty: Update to 2.2.52
  - Ikey Doherty: Conduct abireport


**gcc**

  - Ikey Doherty: Force default flags to a small, specific preset
  - Ikey Doherty: Ensure requested optimization level is respected
  - Ikey Doherty: Enable ISL for Graphite Loop optimisations
  - Ikey Doherty: Enable proper LTO plugin and gold support
  - Peter O'Connor: Enable profiledbootstrap


**solus-hardware-config**

  - Ikey Doherty: Update to v12
  - Ikey Doherty: Update to v11 to allow supporting cpufreq/intel_pstate
  - Ikey Doherty: Update to v10 and enable on-demand-cpupower.service
  - Ikey Doherty: Update to v9
  - Ikey Doherty: Remove hard dependency on xorg-driver-input-libinput


**usbutils**

  - Ikey Doherty: Update to 008 and integrate with hwdata


**libgtkmm-3**

  - Joshua Strobl: Rebuild against updated harfbuzz
  - Peter O'Connor: Update to 3.22.0
  - Peter O'Connor: Add abireport


**libflac**

  - Joshua Strobl: Remove component.xml
  - Michael Meinertzhagen: Update to 1.3.2
  - Joshua Strobl: Added ABI reports for 1.3.1


**alsa-lib**

  - Bryan T. Meyers: Updated to 1.1.3
  - Bryan T. Meyers: Generated ABI report


**xorg-driver-video-radeon**

  - Ikey Doherty: Rebuild for xorg 1.18
  - Ikey Doherty: Update to 7.9.0


**libgnome-desktop**

  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.22.2
  - Ikey Doherty: Add ABI report


**xorg-driver-video-nouveau**

  - Ikey Doherty: Rebuild for xorg 1.18
  - Ikey Doherty: Update to 1.0.14+1 with Pascal support
  - Ikey Doherty: Sync with git for Maxwell fixes


**budgie-desktop**

  - Ikey Doherty: Update to 10.3.1
  - Ikey Doherty: Update to 10.3
  - Ikey Doherty: Resync with git for more fixes/stability
  - Ikey Doherty: Sync with git to fix broken pkgconfig includes
  - Ikey Doherty: Sync with git for moar tray/tab fixes
  - Ikey Doherty: Sync with git. But not with stable. Josh. Hint here.
  - Ikey Doherty: Sync with git for more fixes
  - Ikey Doherty: Sync with git to fix buggy alt+tab
  - Ikey Doherty: Sync with git to fix popovers for bottom panels
  - Ikey Doherty: Sync with git for alt+tab for Patron ISO test
  - Ikey Doherty: Rebuild for PA
  - Ikey Doherty: Sync with git for menu restoration + dbus name fixes
  - Ikey Doherty: Sync with git for ungtk of wm
  - Ikey Doherty: Sync with git for GNOME 3.24 fixes
  - Joshua Strobl: Temporarily change mutter pkgconfig via sed, added xtst to builddeps.
  - Ikey Doherty: Fix animations
  - Ikey Doherty: Rebuild for new mutter..


**gparted**

  - Matthias Eliasson: Update to 0.28.0


**network-manager**

  - Joshua Strobl: Safety rebuild.
  - Bryan T. Meyers: Updated to 1.4.4
  - Bryan T. Meyers: Removed component.xml and generated ABI report


**gcr**

  - Joshua Strobl: Rebuild against gtk3 3.22.11


**libsecret**

  - Ikey Doherty: Update to 0.18.5
  - Ikey Doherty: Add abireport


**twolame**

  - Peter O'Connor: Rebuild with optimizations


**which**

  - Ikey Doherty: Update to 2.21, convert to modern ypkg format


**libatk**

  - Joshua Strobl: Revert to 2.22.0
  - Joshua Strobl: Update to 2.24.0
  - Ikey Doherty: Update to 2.22.0


**sqlite3**

  - Ikey Doherty: Update to 3.18.0
  - Bryan T. Meyers: Update to 3.17.0
  - Peter O'Connor: Update to 3.16.2


**xorg-driver-video-vesa**

  - Ikey Doherty: Rebuild for xorg 1.18
  - Ikey Doherty: Rebuild for new xorg


**gvfs**

  - Ikey Doherty: Rebuild against new libbluray
  - Joshua Strobl: Update to 1.32.0
  - Joshua Strobl: Rebuild against samba 4.3.13. Sort builddeps.
  - Ikey Doherty: Update to 1.30.3, enable libarchive


**libsoup**

  - Ikey Doherty: Update to 2.56.0
  - Ikey Doherty: Add abireport


**libicu**

  - Joshua Strobl: Update to 58.2.
  - Ikey Doherty: Create abireport


**gstreamer-1.0-plugins-bad**

  - Ikey Doherty: Switch dodgy libfaac for fdk-aac
  - Ikey Doherty: Update to 1.10.4
  - Joshua Strobl: Rebuild against x265 2.3
  - Joshua Strobl: Rebuild against gtk3 3.22.11
  - Joshua Strobl: Rebuild against libwebp 0.6.0


**llvm**

  - Ikey Doherty: Build with GCC again
  - Ikey Doherty: Fix broken pink icons on amdgpu
  - Ikey Doherty: Rebuild clang with clang
  - Ikey Doherty: Update to 3.9.1
  - Ikey Doherty: Drop flags from environment
  - Ikey Doherty: Attempt unbreak of compiler (performance)


**iproute2**

  - Ikey Doherty: Convert to a fully stateless package
  - Mitchell Fossen: Update to 4.9.0


**pinentry**

  - Joshua Strobl: Revert back to using gtk2 instead of GNOME3 pinentry. Otherwise pinentry will fail to show if the user is using Budgie with GDM.
  - Ikey Doherty: Convert to ypkg, update to 1.0.0, use "GNOME3" (ugh) UI


**gnome-calculator**

  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.3
  - Peter O'Connor: Update to 3.22.2


**adwaita-icon-theme**

  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.22.0


**polkit**

  - Ikey Doherty: Revert broken active checks with systemd
  - Ikey Doherty: Update to 0.113
  - Ikey Doherty: Conduct ABI report


**fuse**

  - Bryan T. Meyers: Removed component.xml and added missing newline to fuse.conf


**libogg**

  - Peter O'Connor: Enable PGO


**gnome-settings-daemon**

  - Ikey Doherty: Rebuild for PA
  - Joshua Strobl: Update to 3.24.1
  - Joshua Strobl: Update to 3.24.0
  - Ikey Doherty: Update to 3.22.1 and enable ALSA, dropping PackageKit for now
  - Bryan T. Meyers: Removed component.cml and rebuilt for NetworkManager


**libffi**

  - Ikey Doherty: Update to 3.2.1
  - Ikey Doherty: Conduct abi report


**mpfr**

  - Ikey Doherty: Update to 3.1.5
  - Ikey Doherty: Conduct ABI report


**libwnck**

  - Joshua Strobl: Rebuild against gtk3 3.22.11 and added ABI files.


**mobile-broadband-provider-info**

  - Peter O'Connor: Update to 20170310


**gnome-color-manager**

  - Joshua Strobl: Update to 3.24.0
  - Zach Bacon: updated gnome-color-manager


**liblcms2**

  - Bryan T. Meyers: Cleanup and rebuild


**nano**

  - Pierre-Yves: Update to 2.8.1
  - Ikey Doherty: Suicide build test
  - Matthias Eliasson: Update to 2.7.5
  - Ikey Doherty: Canary build for toolchain validation
  - Michael Meinertzhagen: Update to 2.7.3
  - Joshua Strobl: Infrastructure migration test.


**yelp**

  - Peter O'Connor: Safety rebuild for libwebkit-gtk
  - Ikey Doherty: Update to 3.22.0
  - Peter O'Connor: Rebuild against libwebkit-gtk


**os-installer**

  - Ikey Doherty: Resync gdm config
  - Ikey Doherty: Include original pristine gdm config
  - Ikey Doherty: Sync with git for GNOME branding fixes
  - Ikey Doherty: Sync with git and use %apply_patches now
  - Ikey Doherty: Resync with git
  - Ikey Doherty: Sync with git again
  - Ikey Doherty: Sync with git
  - Ikey Doherty: Sync with git again
  - Ikey Doherty: Sync with git again
  - Ikey Doherty: Sync with git
  - Ikey Doherty: Sync with git to remove GRUB_BACKGROUND handling support
  - Ikey Doherty: Initial test release of the CBM port


**libgnomekbd**

  - Ikey Doherty: Update to 3.22.0.1 to fix missing schemas
  - Joshua Strobl: Update to 3.22.0


**thunderbird**

  - Pierre-Yves: Update to 52.0.1
  - Ikey Doherty: Update langpacks for 52.0.1 update
  - Joshua Strobl: Update to 52.0
  - Joshua Strobl: Update langpacks to 52.0
  - Joshua Strobl: Disable use of system ICU to resolve crash on search.
  - Joshua Strobl: Update to 45.8.0
  - Joshua Strobl: Update langpacks to 45.8.0
  - Ikey Doherty: Update to 45.7.0
  - Ikey Doherty: Update langpacks for 45.7.0


**alsa-firmware**

  - Bryan T. Meyers: Converted and updated to 1.0.29


**e2fsprogs**

  - Matthias Eliasson: Update to 1.43.4


**libical**

  - Peter O'Connor: Update to 2.0.0
  - Peter O'Connor: Add abireport


**nettle**

  - Ikey Doherty: Update to 3.3
  - Ikey Doherty: Conduct ABI Report


**arc-gtk-theme**

  - Ikey Doherty: Update to 20170302 for GTK 3.22.9 fixes (ty Horst!)
  - Ikey Doherty: Enable GNOME 3.22


**gnome-session**

  - Joshua Strobl: Update to 3.24.1
  - Joshua Strobl: Update to 3.24.0
  - Peter O'Connor: Update to 3.22.3
  - Ikey Doherty: Fix symbols
  - Zach Bacon: Updated gnome-session to 3.22.2


**pciutils**

  - Ikey Doherty: Update to 3.5.4 and port to hwdata package, in line with Fedora
  - Ikey Doherty: Conduct ABI report


**gzip**

  - Ikey Doherty: Update to 1.8


**at-spi2**

  - Joshua Strobl: Revert back to 2.22.0
  - Joshua Strobl: Update to 2.24.0
  - Ikey Doherty: Update to 2.22.0


**glibc**

  - Ikey Doherty: Update to v2.25


**bzip2**

  - Peter O'Connor: Unroll loops

