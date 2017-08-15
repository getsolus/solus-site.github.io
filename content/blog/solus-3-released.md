---
title: "Solus 3 Released"
author: "joshua"
categories:
- budgie
- news
- releases
date: 2017-08-15T22:02:27+03:00
featuredimage: "2017/08/Solus-3-Editions.jpg"
url: "/2017/08/15/solus-3-released"
---

On behalf of the Solus team and community, we're extremely proud to announce the immediate availability of Solus 3. This is the third iteration of Solus since our move to become a rolling release operating system. Unlike the previous iterations, however, this is a release and not a snapshot. We've now moved away from the "regular snapshot" model to accommodate the best hybrid approach possible - feature rich releases with explicit goals and technology enabling, along with the benefits of a curated rolling release operating system.

## General

### Default Applications

All of our editions feature:

- Firefox 55.0.1
- LibreOffice 5.4.0.3
- Rhythmbox 3.4.1 with the latest release of the Alternative Toolbar extension
- Thunderbird 52.2.1

Our Budgie and GNOME Editions ship with GNOME MPV 0.12 and our MATE Edition ships with VLC 2.2.6.

### Hardware and Kernel Enablement

This new major version of Solus is now based on the latest stable branch of the Linux kernel, 4.12.7. This switch enables various hardware improvements for the latest AMD, Intel, and NVIDIA hardware. Users of the existing `linux-lts` kernel will continue to receive updates indefinitely, with the next major update to this branch scheduled to land in or around September.

Furthermore, we've enabled AppArmor `LSM` by default to provide functionality for snapd confining, as well as the introduction of a fully functioning Linux Security Module within our kernel builds.

Mesa has seen an upgrade to 17.1.6 and libtxc_dxtn has been updated to help improve reliability and graphical performance in some games.

Bluetooth controllers are now automatically enabled and our bluez now uses a stateless configuration. Users of wireless Logitech keyboards are able to utilize them during dm-crypt unlock of an LVM / LUKS rootfs.

To improve the out-of-the-box support for printing and scanning, we now ship with sane-backends, hplip drivers, and Canon UFRII LT printer drivers. Our hplip has been upgraded to 3.17.7, which improves cups support, recognition of Solus by hp-check, and udev rule location fixes. 

### Multimedia Upgrades

This release delivers ffmpeg 3.3.3, the latest in the 3.3 series, offering improvements such as a native Opus encoder, new multimedia filters, and VAAPI-accelerated MPEG-2 and VP8 encoding. We've also enabled support in ffmpeg for cdio, openal, webp, and other libraries.

### Support for Snaps

{{< altimg "2017/08/snaps.jpg" >}}

This release features out-of-the-box support for [snaps](https://snapcraft.io), universal software packages for Linux. Support for snaps relieves pressure from software vendors to target a specific platform by sharing a unified target across all Linux distributions. For our users, they gain access to a wide variety of software that may not meet our package inclusion criteria, such as server software, as well as enabling an improved distribution method for Third Party software.

Support for Snaps was made possible due to fantastic cross-platform collaboration between Canonical's Snapcraft and Ubuntu teams and Solus, which is the first non-Ubuntu distribution to feature full snap confinement leveraging AppArmor, offering feature parity with the reference Ubuntu implementation.

## Budgie

{{< altimg "2017/08/Budgie.jpg" >}}

Solus ships with our brand new release of the Budgie 10.x series, Budgie 10.4, as well as introducing our new branding defaults, adopting the stunning Adapta GTK Theme and Papirus Icon Theme, as well as complementing those design changes by adopting the Noto Sans font. We've also moved the primary panel from the top of the display to the bottom and tweaked panel widget spacing to make Budgie feel more spacious.

Whether it was implementing features, fixes, or improving / expanding translations, the Budgie community was integral to this Budgie release. So thank you to everyone that has contributed.

### Animations

<video src="/vids/Budgie_Animations.mp4" autoplay="autoplay" loop="loop" width="1000" height="562" preload></video>

Budgie 10.4 now has maximize and unmaximize animations for applications.

### Alt+Tab

{{< altimg "2017/08/budgie-10/AltTab.jpg" >}}

In this release of Budgie, the alt+tab switcher will now prefer the theme icon instead of the X11 icon where possible. Shift+Alt+Tab support has also been implemented, enabling you to go backwards in the Alt+Tab dialog.

### Applets

#### Night Light

{{< altimg "2017/08/budgie-10/NightLight.jpg" >}}

This release introduces a new applet, Night Light, which can help reduce eye strain by reducing your display's blue light by making your screen "warmer". This applet integrates into the Night Light functionality provided in Mutter 3.24.x and provides quick access to toggling Night Light on/off, as well as:

- Changing the schedule between "Sunset to Sunrise" and "Manual" (which is configured in GNOME Control Center)
- Temperature of the display when enabled
- One-click access to launch your Display settings

#### Places

{{< altimg "2017/08/budgie-10/Places.jpg" >}}

The Places Indicator applet also received some love this release, with a new option to always expand the places section when the applet is shown. The whole Places section header is now a clickable button, making toggling the section easier. The Places Applet icon has also been changed to a more apt folder icon, better representing "places" rather than "disks" as previously presented.

#### And More!

- The Calendar widget in Raven will now remove the date selection if you change the month or year.
- The Icon Tasklist applet no longer has a list of "derper" applications for which we'd override the icon. If a `.desktop` file is found, use the icon referenced in it.
- The User Indicator now has updated and refined iconography thanks to Sam Hewitt.

### Budgie Menu

{{< altimg "2017/08/budgie-10/Budgie_Menu.jpg" >}}

Building upon the lessons learned when (*and inspiration from*) implementing the Brisk Menu for MATE, searching has been completely overhauled. We now support the use of categories for searching and provide a predictable, sane search mechanism. Items that previously would not show up as expected, such as searching for "Displays", are now resolved.

For items that would show up in excess, we now de-duplicate search results to only showing unique entries when we're in "search mode" or "super compact" mode (in other words, no headers or sidebar categories).

We now dynamically compute scores for a given entry during search in relation to the search term. Assuming the entry is relevant, we'll display results in a given order and allow terms to match and display higher up in the list depending on how close it is to the term, the contents, how much a string is matched, etc.

### Panels

#### Vertical Panels

{{< altimg "2017/08/budgie-10/LeftAndRightPanels.jpg" >}}

In Budgie 10.4, you can now set vertical panels on the left and right sides of your display. Popovers will correctly indicate (with its "tail") the point of origin, we've done extensive work to ensure all of our animations and applets will display and adjust depending on if they are on (or originating from) a horizontal or vertical panel, and Raven will account for right-side panels and slide out from underneath the panel, as well as anchor to left panels when no horizontal or right panel exists.

#### Transparency

With these new panels, you will now also be able to control the panel transparency (via our new Settings app) with three modes:

- None: The panel is always opaque.
- Dynamic: The panel is opaque when there is a maximized window on the workspace, or Raven is open, otherwise it's transparent.
- Always: The panel is always transparent.

#### Docks

{{< altimg "2017/08/budgie-10/Budgie_Panel_Dockmode.jpg" >}}

As if Budgie panels couldn't improve more, we've also introduced a Dock mode for panels, enabling you to put a dock on any side of your display!

This Dock mode also uses a custom CSS class, which means theme developers have the ability to implement custom styling.

### Popovers

For Budgie 10.4, we implemented the `Budgie.Popover` widget, enabling us to replace our usage of Gtk.Popover and fix a long-standing issue with inconsistent popover animations, for example Budgie Menu animating across the screen if the user's panel (and the menu applet) was at the bottom.

Furthermore, this Popover widget enables more granular positioning regardless of its origin (top, bottom, left, or right). This granular positioning helped to provide us the opportunity to implement panels for all sides of your display!

### Settings

{{< altimg "2017/08/budgie-10/Budgie_Settings.jpg" >}}

Budgie 10.4 moves Settings out of Raven and into a dedicated application. This new Budgie Settings application enables us to improve the user experience of managing panels, applets, and their respective settings, as well as providing us the opportunity to describe what particular settings may do, with the classic example being "Disable unredirection of windows". To open Budgie Settings, the behavior of the Settings button at the bottom of Raven has been changed to open Budgie Settings instead of GNOME Control Center. You can also pin our Settings application to your panel, like you would any application, and launch it via Budgie Menu.

{{< altimg "2017/08/budgie-10/Budgie_Panel_Applets.jpg" >}}

In the image above, you can see the management of the Bottom Panel. We have split panel management into two sections, with Applets being the primary section (as we anticipate users primarily making changes to applets) and Settings. Similar to the behavior of prior Budgie releases, you can move applets around using the up or down arrow buttons, or delete them. These buttons are positioned at the top of the list to make them more easily accessible for lower-resolution displays.

To the right of the applet list, you have a dedicated "Add applet" button and settings for the selected applet below.

{{< altimg "2017/08/budgie-10/Budgie_Panel_Settings.jpg" >}}

In the Settings section of a panel, a multitude of options are exposed, such as:

- Position of the panel
- Size of the panel (height for vertical panels, width for horizontal panels)
- Auto-hide settings (including Intellihide, which is great for Dock mode)
- Transparency settings (as discussed in the Panels -> Transparency section of this blog post)
- Shadow (a decorative drop shadow)
- Stylize region
- Dock mode

{{< altimg "2017/08/budgie-10/Budgie_Settings_Autostart.jpg" >}}

Budgie Settings also enables you to manage  the autostarting of applications, eliminating the need for a secondary tool such as GNOME Tweak Tool.

### Other Fixes and Improvements

In addition to the above mentioned goodies, some other fixes include:

- The Clock applet will now only redraw when the label contents would change. This resolves unnecessary redraws of the applet.
- daemon: Fixed the order of left-side window buttons, ensuring that the window decoration style is consistent between native and CSD window decorations.
- wm: Ensuring we purge old backgrounds from the cache.

## GNOME

{{< altimg "2017/08/GNOME.jpg" >}}

Solus GNOME Edition has received numerous improvements to its curated, out-of-the-box GNOME experience, as well as featuring our new default GTK and Icon Themes, Adapta and Papirus respectively.

Solus GNOME Edition ships with the latest stable releases of the GNOME stack, such as GNOME Shell 3.24.3, Mutter 3.24.4, and Nautilus 3.24.2, as well as continuing to provide default extensions such as Dash to Dock, Impatience, and TopIcons Plus.

### A Searchable Command Palette

<video src="/vids/Solus_GNOME_Plotinus.mp4" autoplay="autoplay" loop="loop" width="1000" height="562" preload></video>

<a href="/imgs/posts/2017/08/Solus_GNOME_Plotinus.jpg">Full-size image</a>

Solus GNOME Edition now ships with [Plotinus](https://github.com/p-e-w/plotinus), the searchable command palette for GTK3 applications, and is enabled out-of-the-box. Plotinus makes searching menu items faster and keyboard-driven use of apps easier than ever. Plotinus can be launched using it's default keybinding, which is `Ctrl+Shift+P` or `Ctrl+Alt+P` depending on your keyboard layout.

### General Fixes and Improvements

#### Calendar and Online Account Improvements

Solus GNOME Edition ships an updated GNOME Online Accounts and Evolution Data Server, resolving issues with Calendar syncing for Google accounts that some users faced.

#### Nautilus

Solus GNOME Edition ships with a patched Nautilus that re-introduces the graphical option for the "Enter Location" option that was removed in Nautilus, enabling users to more easily access the functionality to type a location to navigate.

#### Other Fixes

Among the above mentioned items, we've also resolved the following issues:

- Grabbing of previous disabled shortcuts for media keys should now be resolved thanks to a gnome-settings-daemon upgrade.
- Users were unable to change their password via Users in GNOME Control Center.
- gvfs was unable to see blocking processes.

## MATE

{{< altimg "2017/08/MATE.jpg" >}}

### General Fixes and Improvements

#### Caja

Caja has been patched to [support whitelisting and trusting symlinked vendor-provided .desktop files](https://dev.solus-project.com/R482:f667c0a3d29851855f8b0a232a1eb0e3958883e1). This enables us to provide default desktop icons for items such as the Installer.

## Lastly

A message from Ikey, Solus Project founder

 > I would like to personally thank everyone that has supported, and those who continue to support our projects. With your support, you've enabled me to work full time on Solus. It is a rare privilege indeed to be able to work on that which you love, to make your passion your life's work. Without your support, and without the community that *empowers* Solus, we would never be the project we have become. Here's to a fantastic 2017, and a glorious, open and collaborative future for all of us.

---

## Press

Press can obtain our Press Release PDF and Media Pack via our [Press Center](/press-center).

---

## Changelog of ISO

### Packages added to this release:

 - adapta-gtk-theme
 - apparmor
 - bind-utils
 - binutils-libs
 - budgie-desktop-branding-material
 - canon-ufriilt-common
 - dmidecode
 - font-roboto-ttf
 - giflib
 - gpart
 - groff
 - hplip-drivers
 - hunspell-en
 - imlib2
 - libcaca
 - libdmapsharing
 - libedit
 - libglade
 - libieee1284
 - libquvi
 - libselinux
 - libssh
 - libssh2
 - libunwind
 - linux-current
 - lsof
 - mariadb-libs
 - net-snmp
 - noto-sans-ttf
 - onboard
 - openal-soft
 - papirus-icon-theme
 - qt5-base
 - qtstyleplugins
 - sane-backends
 - sdl2
 - slick-greeter
 - snapd
 - snappy
 - squashfs-tools
 - talloc


### Packages removed from this release:

- arc-firefox-theme
- arc-gtk-theme
- arc-icon-theme
- faba-icon-theme
- faba-icon-theme-mono
- glew
- gnome-tweak-tool
- gtk2-engine-murrine
- lightdm-gtk-greeter
- linux-lts
- moka-icon-theme


### Changes in this release:

**gnome-user-docs**

 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/gnome-user-docs/browse/master/;d78a003)


**libgnome-desktop**

 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/libgnome-desktop/browse/master/;efc292f)


**lz4**

 - [Ikey Doherty: Update to 1.7.5](https://dev.solus-project.com/source/lz4/browse/master/;464b354)
 - [Mitchell Fossen: Update to 1.7.3](https://dev.solus-project.com/source/lz4/browse/master/;a0d0895)


**kbd**

 - [Pierre-Yves: Update kbd to 2.0.4](https://dev.solus-project.com/source/kbd/browse/master/;7b95a9b)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/kbd/browse/master/;0a85ac5)


**evince**

 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/evince/browse/master/;48431f6)
 - [Joshua Strobl: Resolve CVE-2017-1000083](https://dev.solus-project.com/source/evince/browse/master/;cc9c2c9)
 - [Peter O'Connor: Safety rebuild for libgxps](https://dev.solus-project.com/source/evince/browse/master/;a5241b3)


**gd**

 - [Peter O'Connor: Address CVE-2017-7890](https://dev.solus-project.com/source/gd/browse/master/;4f869e4)


**libnspr**

 - [Pierre-Yves: Update libnspr to 4.15](https://dev.solus-project.com/source/libnspr/browse/master/;f8e9c00)


**mesalib**

 - [Ikey Doherty: Update mesa to 17.1.6](https://dev.solus-project.com/source/mesalib/browse/master/;0b390a4)
 - [Ikey Doherty: Restore missing 32-bit libGL deps](https://dev.solus-project.com/source/mesalib/browse/master/;2c7e8aa)
 - [Ikey Doherty: Update mesalib to 17.1.5](https://dev.solus-project.com/source/mesalib/browse/master/;da508fb)
 - [Peter O'Connor: Resolve dependency version of libxxfm-devel](https://dev.solus-project.com/source/mesalib/browse/master/;8d5c4b9)
 - [Ikey Doherty: Restore derpy deps](https://dev.solus-project.com/source/mesalib/browse/master/;11d7562)
 - [Ikey Doherty: Update mesalib to 17.1.4](https://dev.solus-project.com/source/mesalib/browse/master/;ba63813)
 - [Ikey Doherty: Update Mesa to 17.1.1](https://dev.solus-project.com/source/mesalib/browse/master/;7dc909e)
 - [Ikey Doherty: Update to 17.0.5 and align optimisations with xorg-server](https://dev.solus-project.com/source/mesalib/browse/master/;474ed37)
 - [Ikey Doherty: Enable SWR and Gallium Nine (D3D) support](https://dev.solus-project.com/source/mesalib/browse/master/;5d0bc10)


**gpgme**

 - [Peter O'Connor: Enable Qt bindings for gpgme](https://dev.solus-project.com/source/gpgme/browse/master/;66ba293)


**gobject-introspection**

 - [Peter O'Connor: Update to 1.52.1](https://dev.solus-project.com/source/gobject-introspection/browse/master/;e6de9a2)


**libsndfile**

 - [Peter O'Connor: Address CVE-2017-12562](https://dev.solus-project.com/source/libsndfile/browse/master/;3707325)
 - [Peter O'Connor: Address CVE-2017-6892](https://dev.solus-project.com/source/libsndfile/browse/master/;24c971b)
 - [Peter O'Connor: Resolve the following CVEs:](https://dev.solus-project.com/source/libsndfile/browse/master/;33c7774)


**samba**

 - [Pierre-Yves: Update samba to 4.6.6 to address CVE-2017-11103](https://dev.solus-project.com/source/samba/browse/master/;f8b4c15)
 - [Peter O'Connor: Add nopatch for false positive on CVE](https://dev.solus-project.com/source/samba/browse/master/;cbff259)
 - [Peter O'Connor: Use system talloc - resolves T3912](https://dev.solus-project.com/source/samba/browse/master/;be6aa1e)
 - [Ikey Doherty: Update Samba to 4.6.5](https://dev.solus-project.com/source/samba/browse/master/;05134eb)
 - [Ikey Doherty: Update to 4.6.4, the latest Samba version](https://dev.solus-project.com/source/samba/browse/master/;6b95661)


**clr-boot-manager**

 - [Ikey Doherty: Update clr-boot-manager to 1.5.4](https://dev.solus-project.com/source/clr-boot-manager/browse/master/;477611d)
 - [Ikey Doherty: Actually apply the patches to clr-boot-manager (thanks mesiment)](https://dev.solus-project.com/source/clr-boot-manager/browse/master/;d386667)
 - [Ikey Doherty: Sync latest clr-boot-manager patches to help me do some unstable testing](https://dev.solus-project.com/source/clr-boot-manager/browse/master/;4c9d2fc)
 - [Ikey Doherty: Update to 1.5.3 to fix UEFI GC issues](https://dev.solus-project.com/source/clr-boot-manager/browse/master/;9552894)


**libnss**

 - [Ikey Doherty: Update libnss to 3.31](https://dev.solus-project.com/source/libnss/browse/master/;f111c46)
 - [Ikey Doherty: Update to 3.30.2](https://dev.solus-project.com/source/libnss/browse/master/;133b5ad)


**gnome-calendar**

 - [Joshua Strobl: Rebuild against evolution-data-server 3.24.5](https://dev.solus-project.com/source/gnome-calendar/browse/master/;9977a09)
 - [Joshua Strobl: Update to 3.24.3](https://dev.solus-project.com/source/gnome-calendar/browse/master/;dd61192)
 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/gnome-calendar/browse/master/;7fa1174)
 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/gnome-calendar/browse/master/;1fc2ce9)


**fontconfig**

 - [Ikey Doherty: Fix glibc 2.25 build failure](https://dev.solus-project.com/source/fontconfig/browse/master/;ff8e08f)
 - [Ikey Doherty: Move this out of system.base as x11 is no longer welcome there](https://dev.solus-project.com/source/fontconfig/browse/master/;a75c365)


**gdk-pixbuf**

 - [Ikey Doherty: Update gdk-pixbuf to 2.36.8](https://dev.solus-project.com/source/gdk-pixbuf/browse/master/;a4f3482)
 - [Ikey Doherty: Rebuild gdk-pixbuf to ensure SVG module is loadable](https://dev.solus-project.com/source/gdk-pixbuf/browse/master/;36b5547)
 - [Ikey Doherty: Update gdk-pixbuf to 2.36.7](https://dev.solus-project.com/source/gdk-pixbuf/browse/master/;f53e13a)


**python3**

 - [Ikey Doherty: Update Python to 3.5.4](https://dev.solus-project.com/source/python3/browse/master/;45dd12d)


**xorg-driver-input-libinput**

 - [Pierre-Yves: Update xorg-driver-input-libinput to 0.25.1](https://dev.solus-project.com/source/xorg-driver-input-libinput/browse/master/;8eece54)


**openvpn**

 - [Pierre-Yves: Update openvpn to 2.4.3 (to fix multiple CVE's)](https://dev.solus-project.com/source/openvpn/browse/master/;8f57527)
 - [Justin Zobel: Remove no longer needed install path, also fixes CVE-2017-7479 and CVE-2017-7478](https://dev.solus-project.com/source/openvpn/browse/master/;b0575d3)
 - [Justin Zobel: Update to 2.4.2](https://dev.solus-project.com/source/openvpn/browse/master/;f275b68)


**solus-artwork**

 - [Joshua Strobl: Update to v18](https://dev.solus-project.com/source/solus-artwork/browse/master/;549843b)
 - [Ikey Doherty: Update to v17](https://dev.solus-project.com/source/solus-artwork/browse/master/;cc00a75)


**libreoffice**

 - [Peter O'Connor: Add bzip2-devel to build](https://dev.solus-project.com/source/libreoffice/browse/master/;1fc73d2)
 - [Peter O'Connor: Update to 5.4.0.3 - resolves T4179](https://dev.solus-project.com/source/libreoffice/browse/master/;c5bd977)
 - [Peter O'Connor: Update to 5.3.3, add dictionaries to -all subpackage](https://dev.solus-project.com/source/libreoffice/browse/master/;3bb2df0)
 - [Ikey Doherty: Include *all* desktop files (including links) and appdata files](https://dev.solus-project.com/source/libreoffice/browse/master/;9e1a681)
 - [Ikey Doherty: One last attempt at fixing appstream data for libreoffice](https://dev.solus-project.com/source/libreoffice/browse/master/;a3d81f1)
 - [Ikey Doherty: Ensure all subpackages contain their own icons for AppStream](https://dev.solus-project.com/source/libreoffice/browse/master/;217db8e)
 - [Ikey Doherty: Switch back to GTK3](https://dev.solus-project.com/source/libreoffice/browse/master/;c978a76)
 - [Ikey Doherty: Switch to system alloc](https://dev.solus-project.com/source/libreoffice/browse/master/;0cbd287)


**baselayout**

 - [Ikey Doherty: baselayout: Update OS major version to 3](https://dev.solus-project.com/source/baselayout/browse/master/;183eda0)


**youtube-dl**

 - [Justin Berthault: Update to 2017.07.23](https://dev.solus-project.com/source/youtube-dl/browse/master/;8e0cc57)
 - [Peter O'Connor: Update to 2017.06.12](https://dev.solus-project.com/source/youtube-dl/browse/master/;0989038)
 - [Justin Berthault: Update to 2017.05.29](https://dev.solus-project.com/source/youtube-dl/browse/master/;deb3194)
 - [Justin Berthault: Update to 2017.05.23](https://dev.solus-project.com/source/youtube-dl/browse/master/;a44ac67)
 - [Justin Berthault: Update to 2017.05.18.1, fixes T3714](https://dev.solus-project.com/source/youtube-dl/browse/master/;d03e73d)
 - [Justin Berthault: Update to 2017.05.14](https://dev.solus-project.com/source/youtube-dl/browse/master/;86370d4)
 - [Justin Berthault: Update to 2017.05.01](https://dev.solus-project.com/source/youtube-dl/browse/master/;b9c6d3b)
 - [Peter O'Connor: Update to 2017.04.28](https://dev.solus-project.com/source/youtube-dl/browse/master/;3ad2022)
 - [Peter O'Connor: Update to 2017.04.26](https://dev.solus-project.com/source/youtube-dl/browse/master/;ffaebf1)
 - [Peter O'Connor: Update to 2017.04.17](https://dev.solus-project.com/source/youtube-dl/browse/master/;37bd9ed)


**geoclue**

 - [Joshua Strobl: Update to 2.4.7](https://dev.solus-project.com/source/geoclue/browse/master/;c760b60)


**glibmm**

 - [Joshua Strobl: Test rebuild of glibmm for gimagereader: T3696.](https://dev.solus-project.com/source/glibmm/browse/master/;993ad88)
 - [Joshua Strobl: Update to 2.51.7](https://dev.solus-project.com/source/glibmm/browse/master/;e44157c)


**swig**

 - [Ikey Doherty: Update swig to 3.0.12](https://dev.solus-project.com/source/swig/browse/master/;7233693)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/swig/browse/master/;d1a5886)


**bash-completion**

 - [Pierre-Yves: Update bash-completion to 2.7](https://dev.solus-project.com/source/bash-completion/browse/master/;0d5c249)


**gtk3**

 - [Ikey Doherty: Update to GTK3 to 3.22.18 and enable Snapd compat symlink (T4272)](https://dev.solus-project.com/source/gtk3/browse/master/;9147190)
 - [Ikey Doherty: Update GTK to 3.22.16 and fix broken x11 grabs](https://dev.solus-project.com/source/gtk3/browse/master/;ed24108)
 - [Ikey Doherty: Update to 3.22.15 to address GtkListBox regressions upstream](https://dev.solus-project.com/source/gtk3/browse/master/;10e48cf)
 - [Joshua Strobl: Update to 3.22.14 to resolve clipboard issue. Revert listbox patch that'd cause budgie-panel to segfault.](https://dev.solus-project.com/source/gtk3/browse/master/;bfe954e)
 - [Ikey Doherty: Downgrade to 3.22.12 to unbrick Budgie](https://dev.solus-project.com/source/gtk3/browse/master/;c4833c2)
 - [Joshua Strobl: Update to 3.22.13](https://dev.solus-project.com/source/gtk3/browse/master/;a477bf4)


**mpv**

 - [Joshua Strobl: Rebuild mpv against ffmpeg 3.3.2. Resolves T3889.](https://dev.solus-project.com/source/mpv/browse/master/;9bdc4ba)
 - [Ikey Doherty: Rebuild for new Samba](https://dev.solus-project.com/source/mpv/browse/master/;5d86eb4)
 - [Justin Zobel: Update to 0.25.0](https://dev.solus-project.com/source/mpv/browse/master/;f46385f)


**os-installer**

 - [Ikey Doherty: Sync os-installer with git to drop Arc box-shadow on sidebar](https://dev.solus-project.com/source/os-installer/browse/master/;25fdded)
 - [Ikey Doherty: Sync `os-installer` with git](https://dev.solus-project.com/source/os-installer/browse/master/;10498ee)
 - [Ikey Doherty: Sync `os-installer` with git for more derp/vanity fixes](https://dev.solus-project.com/source/os-installer/browse/master/;22655b2)
 - [Ikey Doherty: Sync `os-installer` with git to add branding support for all DEs](https://dev.solus-project.com/source/os-installer/browse/master/;ebe616a)
 - [Ikey Doherty: Sync os-installer with git for Summary page beautification](https://dev.solus-project.com/source/os-installer/browse/master/;997fd4a)
 - [Ikey Doherty: Sync os-installer with git to unbreak it](https://dev.solus-project.com/source/os-installer/browse/master/;0a52b01)
 - [Ikey Doherty: Sync os-installer with git for new UI changes + testing](https://dev.solus-project.com/source/os-installer/browse/master/;80c3137)
 - [Ikey Doherty: Sync with git for Adapta styling fixes](https://dev.solus-project.com/source/os-installer/browse/master/;2f92f00)
 - [Ikey Doherty: Fix issue with disks having "None" type](https://dev.solus-project.com/source/os-installer/browse/master/;ee53379)


**libdrm**

 - [Ikey Doherty: Update libdrm to 2.4.82](https://dev.solus-project.com/source/libdrm/browse/master/;67bfa5d)
 - [Ikey Doherty: Update libdrm to 2.4.81 for new mesa 17.1.1](https://dev.solus-project.com/source/libdrm/browse/master/;bd0c167)


**gnutls**

 - [Pierre-Yves: Update gnutls to 3.5.14](https://dev.solus-project.com/source/gnutls/browse/master/;74ea52b)
 - [Ikey Doherty: Fix 32bit deps](https://dev.solus-project.com/source/gnutls/browse/master/;98e11cc)


**pcre2**

 - [Ikey Doherty: Enable pcre2-16+32 for Qt 5.9 base](https://dev.solus-project.com/source/pcre2/browse/master/;5c27a24)
 - [Peter O'Connor: Resolve CVE-2017-8786](https://dev.solus-project.com/source/pcre2/browse/master/;487b6bc)


**gvfs**

 - [Joshua Strobl: Ensure gvfs can see blocking processes with lsof.](https://dev.solus-project.com/source/gvfs/browse/master/;710f09d)
 - [Ikey Doherty: Rebuild for new Samba](https://dev.solus-project.com/source/gvfs/browse/master/;f93af6f)


**ca-certs**

 - [Ikey Doherty: Update certificates (`ca-certs`) to version 20170803](https://dev.solus-project.com/source/ca-certs/browse/master/;ebc8e6e)
 - [Ikey Doherty: Update to 20170427](https://dev.solus-project.com/source/ca-certs/browse/master/;254f5f8)


**nvidia-340-glx-driver**

 - [Ikey Doherty: Rebuild for new kernel releases](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;869388d)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for new kernels](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;06ee82f)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for linux-current](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;489fe07)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for linux-current](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;f5b0cb4)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for new kernels](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;250b6cf)
 - [Ikey Doherty: Fix nvidia-340 on 4.12](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;3e11f33)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for parallel kernel support](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;c963aed)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.39-35.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;36d06bd)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.38-34.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;dc6799e)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.37-33.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;7c5c559)
 - [Ikey Doherty: Rebuild for 4.9.36-32.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;26a4cf6)
 - [Peter O'Connor: Rebuild for 4.9.32-31.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;74c8726)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.32-30.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;27aad6f)
 - [Ikey Doherty: Rebuild against 4.9.30-29.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;9ee7992)
 - [Ikey Doherty: Rebuild for 4.9.29-28.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;7b1046b)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for LTS kernel (Ref T3674)](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;d69ded7)
 - [Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.27-26.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;d164435)
 - [Ikey Doherty: Rebuild for 4.9.26-25.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;755a4b9)
 - [Ikey Doherty: Rebuild for 4.9.25-24.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;1e5936f)
 - [Ikey Doherty: Rebuild for 4.9.25-23.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;4d21a90)
 - [Ikey Doherty: Rebuild for 4.9.24-22.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;bcb55e1)
 - [Ikey Doherty: Rebuild for kernel](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;5183eaf)
 - [Ikey Doherty: Rebuild for 4.9.23-20.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;9a5d505)
 - [Ikey Doherty: Rebuild for 4.9.23-19.lts](https://dev.solus-project.com/source/nvidia-340-glx-driver/browse/master/;48299e1)


**npth**

 - [Ikey Doherty: Update npth to version 1.5](https://dev.solus-project.com/source/npth/browse/master/;4938757)
 - [Michael Meinertzhagen: Update nPth to 1.4](https://dev.solus-project.com/source/npth/browse/master/;6bfe843)


**ghostscript**

 - [Ikey Doherty: Sync with git (future 9.22) to resolve CVE-2017-7948](https://dev.solus-project.com/source/ghostscript/browse/master/;de83b6d)
 - [Peter O'Connor: Resolve CVE-2017-8291](https://dev.solus-project.com/source/ghostscript/browse/master/;bd04300)


**libcairo**

 - [Pierre-Yves: Update cairo to 1.14.10](https://dev.solus-project.com/source/libcairo/browse/master/;77d06c9)


**xorg-server**

 - [Peter O'Connor: Address CVE-2017-10971 and CVE-2017-10972](https://dev.solus-project.com/source/xorg-server/browse/master/;f126973)
 - [Ikey Doherty: Enable libunwind, xcsecurity for xauth, and fix optimisations](https://dev.solus-project.com/source/xorg-server/browse/master/;636051e)


**breeze-cursor-theme**

 - [Ikey Doherty: Add index.theme defaults to breeze cursor theme](https://dev.solus-project.com/source/breeze-cursor-theme/browse/master/;0d52610)


**unrar**

 - [Justin Berthault: Update to 5.5.5](https://dev.solus-project.com/source/unrar/browse/master/;2bfd64c)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/unrar/browse/master/;efce263)


**gnome-control-center**

 - [Joshua Strobl: Update to 3.24.3](https://dev.solus-project.com/source/gnome-control-center/browse/master/;532d29c)
 - [Joshua Strobl: Correct passwd binary location.](https://dev.solus-project.com/source/gnome-control-center/browse/master/;fa2886a)
 - [Ikey Doherty: Rebuild for Kerberos update](https://dev.solus-project.com/source/gnome-control-center/browse/master/;b27b517)
 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/gnome-control-center/browse/master/;95ea7c0)


**gnome-online-accounts**

 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/gnome-online-accounts/browse/master/;5b6f364)
 - [Joshua Strobl: Update to 3.24.1.](https://dev.solus-project.com/source/gnome-online-accounts/browse/master/;0a857f6)


**expat**

 - [Pierre-Yves: Update expat to 2.2.3](https://dev.solus-project.com/source/expat/browse/master/;eb7251e)
 - [Peter O'Connor: Update to 2.2.1 to resolve the following CVEs:](https://dev.solus-project.com/source/expat/browse/master/;dd7a378)
 - [Ikey Doherty: Mark nopatch](https://dev.solus-project.com/source/expat/browse/master/;95424f7)


**gnome-disk-utility**

 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/gnome-disk-utility/browse/master/;461971a)


**gspell**

 - [Joshua Strobl: Update to 1.4.1](https://dev.solus-project.com/source/gspell/browse/master/;6d5ae1c)


**bluez**

 - [Joshua Strobl: Update to 5.45](https://dev.solus-project.com/source/bluez/browse/master/;4ccd4ef)
 - [Joshua Strobl: Fix install, change to using datadir.](https://dev.solus-project.com/source/bluez/browse/master/;0cbf9b5)
 - [Joshua Strobl: Enable stateless main.conf and set AutoEnable to true by default. AutoEnable=true should enable automatic enabling of all Bluetooth controllers.](https://dev.solus-project.com/source/bluez/browse/master/;e4224fb)


**libinput**

 - [Pierre-Yves: Update libinput to 1.7.3](https://dev.solus-project.com/source/libinput/browse/master/;f6199d1)
 - [Pierre-Yves: Update libinput to 1.7.2](https://dev.solus-project.com/source/libinput/browse/master/;e05ec55)
 - [Peter O'Connor: Update to 1.7.1](https://dev.solus-project.com/source/libinput/browse/master/;fe960a6)


**libxslt**

 - [Ikey Doherty: Address CVE-2017-5029](https://dev.solus-project.com/source/libxslt/browse/master/;cef68a5)


**libgtksourceview**

 - [Joshua Strobl: Update to 3.24.2.](https://dev.solus-project.com/source/libgtksourceview/browse/master/;867a169)
 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/libgtksourceview/browse/master/;ebffcc6)


**libicu**

 - [Peter O'Connor: Resolve the following CVEs:](https://dev.solus-project.com/source/libicu/browse/master/;744973e)


**kmod**

 - [Pierre-Yves: Update kmod to 24](https://dev.solus-project.com/source/kmod/browse/master/;1467ff2)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/kmod/browse/master/;13da6e7)


**pisi**

 - [Ikey Doherty: pisi: Fix the FORTIFY_SOURCE flags](https://dev.solus-project.com/source/pisi/browse/master/;451a71e)
 - [Ikey Doherty: pisi: Fix our compiler flags to be Clang compatible](https://dev.solus-project.com/source/pisi/browse/master/;7a61c08)
 - [Ikey Doherty: Add missing FORTIFY_SOURCE](https://dev.solus-project.com/source/pisi/browse/master/;162fce9)
 - [Ikey Doherty: Enforce default flags](https://dev.solus-project.com/source/pisi/browse/master/;d81b05a)


**nano**

 - [Ikey Doherty: Add new syntax highlighting capabilities to nano](https://dev.solus-project.com/source/nano/browse/master/;39d1f20)
 - [Michael Meinertzhagen: Update to 2.8.6](https://dev.solus-project.com/source/nano/browse/master/;d0e9bdd)
 - [Michael Meinertzhagen: Update to 2.8.5](https://dev.solus-project.com/source/nano/browse/master/;cfcbd7f)
 - [Pierre-Yves: Update nano to 2.8.4](https://dev.solus-project.com/source/nano/browse/master/;0b5a0c7)
 - [Pierre-Yves: Update nano to 2.8.3](https://dev.solus-project.com/source/nano/browse/master/;58965f2)
 - [Ikey Doherty: Rebuild nano to test Software Center changelog improvements](https://dev.solus-project.com/source/nano/browse/master/;157dd7e)
 - [Ikey Doherty: Move into system.devel for debugging](https://dev.solus-project.com/source/nano/browse/master/;c0dd3fc)
 - [Pierre-Yves: Update to 2.8.2](https://dev.solus-project.com/source/nano/browse/master/;4f9126d)


**libgtop**

 - [Peter O'Connor: Update to 2.36.0](https://dev.solus-project.com/source/libgtop/browse/master/;173dd59)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/libgtop/browse/master/;4fba8a9)


**hwdata**

 - [Ikey Doherty: Update hwdata to 0.302](https://dev.solus-project.com/source/hwdata/browse/master/;fc43caf)


**glibc**

 - [Peter O'Connor: Rebuild for GCC 6.4.0](https://dev.solus-project.com/source/glibc/browse/master/;bbfa1c0)
 - [Ikey Doherty: Fix x64 ABI bug with glibc](https://dev.solus-project.com/source/glibc/browse/master/;f957924)
 - [Ikey Doherty: Import Clear Linux stateless patch for `getusershell()`](https://dev.solus-project.com/source/glibc/browse/master/;d9d65bd)
 - [Ikey Doherty: Address CVE-2017-1000366 in glibc](https://dev.solus-project.com/source/glibc/browse/master/;5b1afd4)
 - [Ikey Doherty: Security update for the `glibc` package](https://dev.solus-project.com/source/glibc/browse/master/;a7ab1af)


**gnome-settings-daemon**

 - [Joshua Strobl: Update to 3.24.3](https://dev.solus-project.com/source/gnome-settings-daemon/browse/master/;0e6ddbc)
 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/gnome-settings-daemon/browse/master/;132060d)


**poppler**

 - [Peter O'Connor: Address CVE-2017-7511](https://dev.solus-project.com/source/poppler/browse/master/;054c9a5)
 - [Justin Zobel: Bump to fix revert](https://dev.solus-project.com/source/poppler/browse/master/;ce17fd3)
 - [Justin Zobel: Revert "Update poppler to 0.55.0"](https://dev.solus-project.com/source/poppler/browse/master/;322f757)
 - [Pierre-Yves: Update poppler to 0.55.0](https://dev.solus-project.com/source/poppler/browse/master/;0ccf8eb)


**gnome-mpv**

 - [Joshua Strobl: Add meson.build version patch from upstream.](https://dev.solus-project.com/source/gnome-mpv/browse/master/;e3bf3ab)
 - [Justin Zobel: Update to 0.12](https://dev.solus-project.com/source/gnome-mpv/browse/master/;340d7e0)


**linux-firmware**

 - [Ikey Doherty: Roll linux-firmware on back](https://dev.solus-project.com/source/linux-firmware/browse/master/;921372d)
 - [Ikey Doherty: Rebuild linux-firmware without strip and new ypkg git support](https://dev.solus-project.com/source/linux-firmware/browse/master/;feec0c6)
 - [Ikey Doherty: Update linux-firmware to 20170622](https://dev.solus-project.com/source/linux-firmware/browse/master/;6044498)
 - [Ikey Doherty: Roll back the last update (push for build)](https://dev.solus-project.com/source/linux-firmware/browse/master/;eea317b)
 - [Ikey Doherty: Roll back the last update](https://dev.solus-project.com/source/linux-firmware/browse/master/;0967a5d)
 - [Ikey Doherty: Update linux-firmware to 20170511 snapshot (resolves T3680)](https://dev.solus-project.com/source/linux-firmware/browse/master/;b2f733d)


**modem-manager**

 - [Peter O'Connor: Update to 1.6.4](https://dev.solus-project.com/source/modem-manager/browse/master/;31af235)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/modem-manager/browse/master/;cbb1b0f)


**xdg-utils**

 - [Pierre-Yves: Update xdg-tools to 1.1.2](https://dev.solus-project.com/source/xdg-utils/browse/master/;c8ae87f)


**appstream-data**

 - [Ikey Doherty: Update appstream-data package to version 8](https://dev.solus-project.com/source/appstream-data/browse/master/;cc9b560)
 - [Ikey Doherty: Update to v7 for Qt app support](https://dev.solus-project.com/source/appstream-data/browse/master/;32ab938)
 - [Ikey Doherty: Update to v5 for LibreOffice support](https://dev.solus-project.com/source/appstream-data/browse/master/;ef80718)
 - [Ikey Doherty: Update to v5](https://dev.solus-project.com/source/appstream-data/browse/master/;aa89eb4)
 - [Ikey Doherty: Publish latest build of appstream data to resolve T3613](https://dev.solus-project.com/source/appstream-data/browse/master/;d2cbaa0)
 - [Ikey Doherty: Move to new git URIs per T3606, fix component too](https://dev.solus-project.com/source/appstream-data/browse/master/;fa86b65)


**libwebkit-gtk**

 - [Peter O'Connor: Update to 2.16.6 to address following CVEs:](https://dev.solus-project.com/source/libwebkit-gtk/browse/master/;09e8c8a)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/libwebkit-gtk/browse/master/;b5c6c62)
 - [Peter O'Connor: Update to 2.16.4 to address CVE-2017-2538](https://dev.solus-project.com/source/libwebkit-gtk/browse/master/;bf4b57c)
 - [Joshua Strobl: Update to 2.16.3](https://dev.solus-project.com/source/libwebkit-gtk/browse/master/;2ce244f)
 - [Joshua Strobl: Update to 2.16.2](https://dev.solus-project.com/source/libwebkit-gtk/browse/master/;e80efd2)
 - [Joshua Strobl: Add upstream modification to resolve signing in with Google.](https://dev.solus-project.com/source/libwebkit-gtk/browse/master/;1b7ea45)


**libgxps**

 - [Peter O'Connor: Update to 0.2.5](https://dev.solus-project.com/source/libgxps/browse/master/;6c08f05)


**upower**

 - [Ikey Doherty: Sync with git 0.99.5 to fix world of issues in upower](https://dev.solus-project.com/source/upower/browse/master/;0ae9597)


**gnome-terminal**

 - [Joshua Strobl: Update to 3.24.2. Updated patch.](https://dev.solus-project.com/source/gnome-terminal/browse/master/;c98b2d6)
 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/gnome-terminal/browse/master/;e1cffc3)


**libgdata**

 - [Peter O'Connor: Update to 0.17.8, convert to yml](https://dev.solus-project.com/source/libgdata/browse/master/;d226c01)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/libgdata/browse/master/;bd66255)


**libqmi**

 - [Peter O'Connor: Update to 1.18.0](https://dev.solus-project.com/source/libqmi/browse/master/;c905bfd)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/libqmi/browse/master/;3e2bb8d)


**systemd**

 - [Ikey Doherty: systemd: Add service handler to update hwdb (T3769)](https://dev.solus-project.com/source/systemd/browse/master/;46f511e)
 - [Ikey Doherty: Always create sysusers before tmpfiles](https://dev.solus-project.com/source/systemd/browse/master/;cebb7d4)


**foomatic-db**

 - [Peter O'Connor: Update to 4.0.20170420](https://dev.solus-project.com/source/foomatic-db/browse/master/;dc85b8a)


**gutenprint**

 - [Bryan T. Meyers: Update to 5.2.12](https://dev.solus-project.com/source/gutenprint/browse/master/;ac69d36)


**libgcrypt**

 - [Pierre-Yves: Update libgcrypt to 1.8.0](https://dev.solus-project.com/source/libgcrypt/browse/master/;394f8aa)
 - [Peter O'Connor: Update to 1.7.8 to address CVE-2017-7526](https://dev.solus-project.com/source/libgcrypt/browse/master/;f8a6675)
 - [Ikey Doherty: Update libgcrypt to version 1.7.7](https://dev.solus-project.com/source/libgcrypt/browse/master/;9ee1219)


**bash**

 - [Ikey Doherty: Fix definition for FORTIFY_SOURCE in bash's environment files](https://dev.solus-project.com/source/bash/browse/master/;12f7880)
 - [Ikey Doherty: profile: Fix our default flags to work with Clang](https://dev.solus-project.com/source/bash/browse/master/;cdd554a)
 - [Ikey Doherty: Sync default environment flags](https://dev.solus-project.com/source/bash/browse/master/;a18fb07)


**nvidia-304-glx-driver**

 - [Ikey Doherty: Rebuild nvidia-glx-driver for new kernel releases](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;fe151b8)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for new kernels](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;6fab112)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for linux-current](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;813455f)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for linux-current](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;5d151aa)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for new kernels](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;05f8aab)
 - [Ikey Doherty: Only apply nv-drm.patch on LTS kernel](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;edec8de)
 - [Ikey Doherty: Enable parallel kernel support in nvidia 304](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;db7fbb5)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.39-35.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;335e340)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.38-34.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;669ba6c)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.37-33.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;fa1cd20)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.36-32.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;e04d18d)
 - [Peter O'Connor: Rebuild for 4.9.32-31.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;c6beb8b)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.32-30.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;17e618c)
 - [Ikey Doherty: Rebuild against 4.9.30-29.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;44988b3)
 - [Ikey Doherty: Rebuild for 4.9.29-28.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;d836e34)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for LTS kernel (Ref T3674)](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;fe62f9d)
 - [Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.27-26.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;13df579)
 - [Ikey Doherty: Rebuild for 4.9.26-25.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;189fca3)
 - [Ikey Doherty: Rebuild for 4.9.25-24.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;9c30bde)
 - [Ikey Doherty: Rebuild for 4.9.25-23.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;6ab22e1)
 - [Ikey Doherty: Rebuild for 4.9.24-22.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;5796703)
 - [Ikey Doherty: Rebuild for kernel](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;5c34de4)
 - [Ikey Doherty: Rebuild for 4.9.23-20.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;6a217c3)
 - [Ikey Doherty: Rebuild for 4.9.23-19.lts](https://dev.solus-project.com/source/nvidia-304-glx-driver/browse/master/;5995eed)


**doflicky**

 - [Ikey Doherty: Update DoFlicky to version 6:](https://dev.solus-project.com/source/doflicky/browse/master/;88761a8)
 - [Ikey Doherty: Force doflickey .desktop file to have correct permission](https://dev.solus-project.com/source/doflicky/browse/master/;fa37066)


**openssh**

 - [Peter O'Connor: Fix dependency release for xauth](https://dev.solus-project.com/source/openssh/browse/master/;81d4584)
 - [Peter O'Connor: Provide xauth path for X forwarding](https://dev.solus-project.com/source/openssh/browse/master/;5b7ca83)


**openssl**

 - [Pierre-Yves: Update openssl to 1.0.2l](https://dev.solus-project.com/source/openssl/browse/master/;90d366b)


**libarchive**

 - [Ikey Doherty: Restore bzip2 support in libarchive](https://dev.solus-project.com/source/libarchive/browse/master/;d4b11bb)
 - [Pierre-Yves: Update libarchive to 3.3.2](https://dev.solus-project.com/source/libarchive/browse/master/;1d17571)


**mutagen**

 - [Michael Meinertzhagen: Update to 1.37](https://dev.solus-project.com/source/mutagen/browse/master/;5225e29)


**jansson**

 - [Michael Meinertzhagen: Update to 2.10, patches cleanup](https://dev.solus-project.com/source/jansson/browse/master/;96a056f)


**accountsservice**

 - [Ikey Doherty: Stop using deprecated lightdm config section in AccountsService](https://dev.solus-project.com/source/accountsservice/browse/master/;d864699)
 - [Joshua Strobl: Resolve incorrect location of passwd.](https://dev.solus-project.com/source/accountsservice/browse/master/;d528d8e)
 - [Joshua Strobl: Revert "Update accountsservice to 0.6.45"](https://dev.solus-project.com/source/accountsservice/browse/master/;2708071)
 - [Pierre-Yves: Update accountsservice to 0.6.45](https://dev.solus-project.com/source/accountsservice/browse/master/;78fc0aa)


**libgweather**

 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/libgweather/browse/master/;d124008)


**glib2**

 - [Ikey Doherty: glib2: Support snap desktop files in XDG_DATA_DIRS](https://dev.solus-project.com/source/glib2/browse/master/;cbf766d)
 - [Pierre-Yves: Update glib2 to 2.52.3](https://dev.solus-project.com/source/glib2/browse/master/;539934f)
 - [Pierre-Yves: Temporary patch to resolve T3812](https://dev.solus-project.com/source/glib2/browse/master/;687ea75)
 - [Ikey Doherty: Work around woes with glib multilib builds](https://dev.solus-project.com/source/glib2/browse/master/;de27f35)
 - [Pierre-Yves: Update glib2 to 2.52.2 and convert to package.yml](https://dev.solus-project.com/source/glib2/browse/master/;4f7d466)


**cryptsetup**

 - [Pierre-Yves: Update cryptsetup to 1.7.5](https://dev.solus-project.com/source/cryptsetup/browse/master/;ac11f4a)


**firefox**

 - [Pierre-Yves: Update firefox to 55.0.1](https://dev.solus-project.com/source/firefox/browse/master/;cc8f177)
 - [Ikey Doherty: Update langpacks for 55.0.1](https://dev.solus-project.com/source/firefox/browse/master/;80c677b)
 - [Pierre-Yves: Update firefox to 55.0](https://dev.solus-project.com/source/firefox/browse/master/;abe65f1)
 - [Ikey Doherty: Update langpacks for 55.0](https://dev.solus-project.com/source/firefox/browse/master/;3c31509)
 - [Pierre-Yves: Remove arc-firefox-theme defaults from Firefox](https://dev.solus-project.com/source/firefox/browse/master/;c49dcb8)
 - [Pierre-Yves: Update firefox to 54.0.1](https://dev.solus-project.com/source/firefox/browse/master/;35f6e66)
 - [Joshua Strobl: Update langpacks to 54.0.1](https://dev.solus-project.com/source/firefox/browse/master/;8de8536)
 - [Ikey Doherty: Update Firefox to 54.0](https://dev.solus-project.com/source/firefox/browse/master/;f48f7e7)
 - [Ikey Doherty: Update langpacks for 54.0 release](https://dev.solus-project.com/source/firefox/browse/master/;1771dab)
 - [Pierre-Yves: Update firefox to 53.0.3](https://dev.solus-project.com/source/firefox/browse/master/;89120d4)
 - [Joshua Strobl: Update langpack for Firefox 53.0.3](https://dev.solus-project.com/source/firefox/browse/master/;d3bef1f)
 - [Pierre-Yves: Update to 53.0.2](https://dev.solus-project.com/source/firefox/browse/master/;360d8fc)
 - [Ikey Doherty: Update langpacks for 53.0.2](https://dev.solus-project.com/source/firefox/browse/master/;e23b40e)
 - [Ikey Doherty: Enable e10s out of the box](https://dev.solus-project.com/source/firefox/browse/master/;cd6c724)
 - [Pierre-Yves: Update to 53.0 (hunspell disabled)](https://dev.solus-project.com/source/firefox/browse/master/;fce2363)
 - [Ikey Doherty: Update langpacks for 53.0](https://dev.solus-project.com/source/firefox/browse/master/;2984b6b)


**gnome-themes-standard**

 - [Ikey Doherty: Update to 3.22.3 to fix Adwaita-dark](https://dev.solus-project.com/source/gnome-themes-standard/browse/master/;19de504)


**libtiff**

 - [Pierre-Yves: Update libtiff to 4.0.8](https://dev.solus-project.com/source/libtiff/browse/master/;3ebc3fd)


**lsb-release**

 - [Ikey Doherty: Update Solus major version to 3](https://dev.solus-project.com/source/lsb-release/browse/master/;f13013f)


**libvte**

 - [Joshua Strobl: Update to 0.49.1](https://dev.solus-project.com/source/libvte/browse/master/;96770c7)


**libmbim**

 - [Peter O'Connor: Fix license from new version](https://dev.solus-project.com/source/libmbim/browse/master/;41b7156)
 - [Peter O'Connor: Update to 1.14.0](https://dev.solus-project.com/source/libmbim/browse/master/;32ab35b)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/libmbim/browse/master/;eb2c1c6)


**libplist**

 - [Joshua Strobl: Update to latest stable. Resolve CVE-2017-5950.](https://dev.solus-project.com/source/libplist/browse/master/;e6adf07)


**networkmanager-openvpn**

 - [Philipp Trulson: Update networkmanager-openvpn to 1.2.10](https://dev.solus-project.com/source/networkmanager-openvpn/browse/master/;3773ee1)


**opus**

 - [Joshua Strobl: Update to 1.2.1](https://dev.solus-project.com/source/opus/browse/master/;d02d8f2)
 - [Pierre-Yves: Update opus to 1.2](https://dev.solus-project.com/source/opus/browse/master/;30a4701)
 - [Pierre-Yves: Update opus to 1.1.5](https://dev.solus-project.com/source/opus/browse/master/;c42d1fb)


**libpcre**

 - [Peter O'Connor: Update to 8.41 to address CVEs:](https://dev.solus-project.com/source/libpcre/browse/master/;efa8136)


**dracut**

 - [Pierre-Yves: Update dracut to 045](https://dev.solus-project.com/source/dracut/browse/master/;cd096b4)
 - [Ikey Doherty: Ensure we load hid-logitech-hidpp during boot for wireless Logitech](https://dev.solus-project.com/source/dracut/browse/master/;6d2290e)


**libcroco**

 - [Peter O'Connor: Resolve following CVEs:](https://dev.solus-project.com/source/libcroco/browse/master/;6235d20)
 - [Peter O'Connor: Update to 0.6.12, patch CVE](https://dev.solus-project.com/source/libcroco/browse/master/;5a5013e)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/libcroco/browse/master/;519cbac)


**nvidia-glx-driver**

 - [Ikey Doherty: Rebuild for new kernel releases](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;bfe5e2b)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for new kernels](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;79f9c04)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for linux-current](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;54800c9)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for linux-current](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;25d7f2e)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for recent kernels](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;114e055)
 - [Ikey Doherty: Fix broken multilib dependency on LTS](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;f35e294)
 - [Ikey Doherty: Update `nvidia-glx-driver` to 384.59](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;e602538)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.39-35.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;07b5b18)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.38-34.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;d5b67a0)
 - [Ikey Doherty: Rebuild for 4.9.37-33.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;5f07f5b)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.36-32.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;1a73309)
 - [Peter O'Connor: Rebuild for 4.9.32-31.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;b10d0a8)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.32-30.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;eeb16f1)
 - [Ikey Doherty: Rebuild against 4.9.30-29.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;f52c930)
 - [Ikey Doherty: Update nvidia-glx-driver to 381.22](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;f1c8e87)
 - [Ikey Doherty: Fix runtime dep](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;a575352)
 - [Ikey Doherty: Rebuild for 4.9.29-28.lts and fix ABI versions](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;73e1fd7)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for LTS kernel (Ref T3674)](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;56d0d7c)
 - [Ikey Doherty: Fix minimum kernel dependency](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;0a17cc7)
 - [Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.27-26.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;94869ac)
 - [Ikey Doherty: Update to 375.66](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;ea2786e)
 - [Ikey Doherty: Unbreak the modaliases file](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;516d844)
 - [Ikey Doherty: Rebuild for 4.9.26-25.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;04f7a0e)
 - [Ikey Doherty: Rebuild for 4.9.25-24.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;29795e1)
 - [Ikey Doherty: Rebuild for 4.9.25-23.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;34ba88d)
 - [Ikey Doherty: Rebuild for 4.9.24-22.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;1855777)
 - [Ikey Doherty: Rebuild for kernel](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;602b75b)
 - [Ikey Doherty: Rebuild](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;c695165)
 - [Ikey Doherty: Rebuild for 4.9.23-19.lts](https://dev.solus-project.com/source/nvidia-glx-driver/browse/master/;19c29fd)


**kerberos**

 - [Ikey Doherty: Update package to upstream krb5-1.15.1](https://dev.solus-project.com/source/kerberos/browse/master/;e128c8e)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/kerberos/browse/master/;3723cbd)


**file-roller**

 - [Joshua Strobl: Update to 3.24.1](https://dev.solus-project.com/source/file-roller/browse/master/;70dbd0f)


**mutter**

 - [Joshua Strobl: Update to 3.24.4](https://dev.solus-project.com/source/mutter/browse/master/;628c7a0)
 - [Joshua Strobl: Update to 3.24.3](https://dev.solus-project.com/source/mutter/browse/master/;7da0fc1)
 - [Ikey Doherty: Rebuild mutter so that mutter-devel doesn't depend on itself](https://dev.solus-project.com/source/mutter/browse/master/;274c67e)
 - [Ikey Doherty: Rebuild mutter to restore rundeps for mutter-devel](https://dev.solus-project.com/source/mutter/browse/master/;53fbc0c)
 - [Joshua Strobl: Resolve red and blue value swap during current window screenshots. Resolves T3711.](https://dev.solus-project.com/source/mutter/browse/master/;3655701)
 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/mutter/browse/master/;0e44361)


**graphite2**

 - [Peter O'Connor: Update to 1.3.10](https://dev.solus-project.com/source/graphite2/browse/master/;632e960)


**inxi**

 - [Pierre-Yves: Update inxi to 2.3.23](https://dev.solus-project.com/source/inxi/browse/master/;b0dcc10)
 - [Peter Cornelis: Update to 2.3.19](https://dev.solus-project.com/source/inxi/browse/master/;687831d)
 - [Federico Damián Schonborn: Add missing rundeps](https://dev.solus-project.com/source/inxi/browse/master/;55baa99)


**solus-sc**

 - [Ikey Doherty: Update solus-sc to version 20](https://dev.solus-project.com/source/solus-sc/browse/master/;b6d4cdf)
 - [Ikey Doherty: Fix solus-sc changelog rendering of `)` after markup URIs](https://dev.solus-project.com/source/solus-sc/browse/master/;ffe7788)
 - [Ikey Doherty: Sync `solus-sc` with latest git version](https://dev.solus-project.com/source/solus-sc/browse/master/;793333e)
 - [Ikey Doherty: Fix some solus-sc rendering issues](https://dev.solus-project.com/source/solus-sc/browse/master/;4fb6162)
 - [Ikey Doherty: Update solus-sc to v19](https://dev.solus-project.com/source/solus-sc/browse/master/;c6b4a3f)
 - [Ikey Doherty: Update to version 18](https://dev.solus-project.com/source/solus-sc/browse/master/;526d60f)


**evolution-data-server**

 - [Joshua Strobl: Update to 3.24.5](https://dev.solus-project.com/source/evolution-data-server/browse/master/;9607aca)
 - [Joshua Strobl: Update to 3.24.2](https://dev.solus-project.com/source/evolution-data-server/browse/master/;abbc12e)


**gnome-keyring**

 - [Joshua Strobl: Update to 3.20.1](https://dev.solus-project.com/source/gnome-keyring/browse/master/;27a17aa)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/gnome-keyring/browse/master/;f2f5c61)


**grep**

 - [Joshua Strobl: Update to 3.1](https://dev.solus-project.com/source/grep/browse/master/;a853b23)


**freetype2**

 - [Ikey Doherty: Meagre attempt to break circular dependencies](https://dev.solus-project.com/source/freetype2/browse/master/;d54e1b9)
 - [Pierre-Yves: Update freetype2 to 2.8](https://dev.solus-project.com/source/freetype2/browse/master/;03ac0c7)
 - [Ikey Doherty: Security update for freetype2](https://dev.solus-project.com/source/freetype2/browse/master/;40a9538)
 - [Peter O'Connor: Update to 2.7.1](https://dev.solus-project.com/source/freetype2/browse/master/;85882e4)


**iso-codes**

 - [Pierre-Yves: Update to 3.75](https://dev.solus-project.com/source/iso-codes/browse/master/;198b5b5)


**libtasn1**

 - [Peter O'Connor: Resolve CVE-2017-10790](https://dev.solus-project.com/source/libtasn1/browse/master/;8dc7617)
 - [Peter O'Connor: Update to 4.12 to resolve CVE-2017-6891](https://dev.solus-project.com/source/libtasn1/browse/master/;7294047)


**gnupg**

 - [Pierre-Yves: Update gnupg to 2.1.21](https://dev.solus-project.com/source/gnupg/browse/master/;62c758a)


**ffmpeg**

 - [Pierre-Yves: Update ffmpeg to 3.3.3](https://dev.solus-project.com/source/ffmpeg/browse/master/;263f2b6)
 - [Pierre-Yves: Update ffmpeg to 3.3.2 and enable extra libraries](https://dev.solus-project.com/source/ffmpeg/browse/master/;e3bbe69)
 - [Ikey Doherty: Enable SDL2 to restore the ffplay binary](https://dev.solus-project.com/source/ffmpeg/browse/master/;e557b6a)


**alsa-utils**

 - [Pierre-Yves: Update alsa-utils to 1.1.4](https://dev.solus-project.com/source/alsa-utils/browse/master/;66efa20)


**nautilus**

 - [Pierre-Yves: Update nautilus to 3.24.2](https://dev.solus-project.com/source/nautilus/browse/master/;b5032b1)
 - [Joshua Strobl: Revert lsof rundep as it's actually needed as a rundep of gvfs.](https://dev.solus-project.com/source/nautilus/browse/master/;603c874)
 - [Joshua Strobl: Add lsof as a rundep to resolve empty Volume is busy dialog.](https://dev.solus-project.com/source/nautilus/browse/master/;f9f0fab)
 - [Ikey Doherty: Ensure Nautilus allows trusted symlinked .desktop files to work](https://dev.solus-project.com/source/nautilus/browse/master/;1b46e97)
 - [Joshua Strobl: Update to 3.24.1 via git, since 3.24.x tarballs don't ship with meson build files. Switched to meson from GNU Build System as a result of issues with it properly detecting gtk-doc.](https://dev.solus-project.com/source/nautilus/browse/master/;857367d)


**man-db**

 - [Ikey Doherty: Add missing groff dependency](https://dev.solus-project.com/source/man-db/browse/master/;9d3bd25)


**lightdm**

 - [Ikey Doherty: Add missing at-spi2-atk dependency to lightdm](https://dev.solus-project.com/source/lightdm/browse/master/;ed94a84)


**sudo**

 - [Pierre-Yves: Update sudo to 1.8.20p2](https://dev.solus-project.com/source/sudo/browse/master/;c4845b9)
 - [Pierre-Yves: Update sudo to 1.8.20p1 to address CVE-2017-1000367](https://dev.solus-project.com/source/sudo/browse/master/;da6236e)
 - [Pierre-Yves: Update sudo to 1.8.20](https://dev.solus-project.com/source/sudo/browse/master/;d565bd2)


**cups-filters**

 - [Pierre-Yves: Update cups-filters to 1.16.1](https://dev.solus-project.com/source/cups-filters/browse/master/;a56b881)
 - [Pierre-Yves: Update cups-filters to 1.14.0](https://dev.solus-project.com/source/cups-filters/browse/master/;af8fdee)


**gedit**

 - [Pierre-Yves: Update gedit to 3.22.1](https://dev.solus-project.com/source/gedit/browse/master/;6ef8b43)


**rhythmbox**

 - [Joshua Strobl: Enable DAAP support. Resolves T3796.](https://dev.solus-project.com/source/rhythmbox/browse/master/;fae2a8a)


**linux-tools**

 - [Ikey Doherty: Update linux-tools to follow `linux-lts` new release](https://dev.solus-project.com/source/linux-tools/browse/master/;82f4ecb)
 - [Ikey Doherty: Update `linux-tools` to latest LTS release (4.9.42)](https://dev.solus-project.com/source/linux-tools/browse/master/;82d6cd3)
 - [Ikey Doherty: Update linux-tools to follow latest LTS release (4.9.41)](https://dev.solus-project.com/source/linux-tools/browse/master/;76c5e82)
 - [Ikey Doherty: Update linux-tools to 4.9.40, latest LTS version](https://dev.solus-project.com/source/linux-tools/browse/master/;2bfbb06)
 - [Ikey Doherty: Update linux-tools to 4.9.39 - the latest LTS version](https://dev.solus-project.com/source/linux-tools/browse/master/;730a6f5)
 - [Ikey Doherty: Update linux-tools to 4.9.27, resolves T3679](https://dev.solus-project.com/source/linux-tools/browse/master/;b2a67a4)
 - [Ikey Doherty: Update to 4.9.25 LTS](https://dev.solus-project.com/source/linux-tools/browse/master/;a8c8141)


**curl**

 - [Pierre-Yves: Update curl to 7.55.1](https://dev.solus-project.com/source/curl/browse/master/;b84dae2)
 - [Pierre-Yves: Update curl to 7.55.0 to address multiple CVEs](https://dev.solus-project.com/source/curl/browse/master/;e967fe7)
 - [Peter O'Connor: Update to 7.54.1](https://dev.solus-project.com/source/curl/browse/master/;60adb41)
 - [Joshua Strobl: Post-merge removal of pkgconfig(libssh2).](https://dev.solus-project.com/source/curl/browse/master/;e7bfcdb)
 - [Stefan Ric: Enable sftp support](https://dev.solus-project.com/source/curl/browse/master/;6c30dc9)
 - [Peter O'Connor: Update to 7.54.0](https://dev.solus-project.com/source/curl/browse/master/;68dd7e6)


**gcc**

 - [Peter O'Connor: Revert GCC to 6.4.0](https://dev.solus-project.com/source/gcc/browse/master/;d27b2f9)
 - [Ikey Doherty: Disable /usr/bin/gcov-dump due to jankiness in dbginfo](https://dev.solus-project.com/source/gcc/browse/master/;8c647d9)
 - [Ikey Doherty: Update GCC to v7.1](https://dev.solus-project.com/source/gcc/browse/master/;0f6d664)
 - [Ikey Doherty: Conduct ABI report for current GCC in repo](https://dev.solus-project.com/source/gcc/browse/master/;a8747f3)
 - [Ikey Doherty: Restore sane flags in build](https://dev.solus-project.com/source/gcc/browse/master/;2995af2)


**solus-hardware-config**

 - [Ikey Doherty: Update to v13 and disable coredumps](https://dev.solus-project.com/source/solus-hardware-config/browse/master/;ae82d4b)


**lame**

 - [Ikey Doherty: Security update for `lame`](https://dev.solus-project.com/source/lame/browse/master/;8ed3b38)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/lame/browse/master/;ed7fcd3)


**alsa-lib**

 - [Pierre-Yves: Update alsa-lib to 1.1.4.1](https://dev.solus-project.com/source/alsa-lib/browse/master/;b69bf5f)
 - [Pierre-Yves: Update alsa-lib to 1.1.4](https://dev.solus-project.com/source/alsa-lib/browse/master/;641a363)


**budgie-desktop-branding**

 - [Ikey Doherty: Update budgie-desktop-branding to v17](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;677ba96)
 - [Ikey Doherty: Update `budgie-desktop-branding` to v16](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;121a9c2)
 - [Ikey Doherty: Override default material menu icon for Budgie Desktop branding](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;352d47e)
 - [Ikey Doherty: Update budgie-desktop-branding to v15](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;ef0016d)
 - [Joshua Strobl: Update to v14 to ensure livecd schema overrides Material.](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;06995fb)
 - [Ikey Doherty: Update budgie-desktop-branding(-material) for Slick Greeter](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;f9c7c2a)
 - [Ikey Doherty: Remove hard theme dependencies from main budgie-desktop-branding package](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;31fded7)
 - [Ikey Doherty: Stop pinning installer to tasklist with budgie-desktop-branding](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;bb67e4f)
 - [Ikey Doherty: Update to v12 to fix broken material schemas](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;4c63499)
 - [Ikey Doherty: Update to v11](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;52e2baf)
 - [Ikey Doherty: Fix Qt styling on the Budgie ISO](https://dev.solus-project.com/source/budgie-desktop-branding/browse/master/;8e754d9)


**librsvg**

 - [Joshua Strobl: Update to 2.40.18](https://dev.solus-project.com/source/librsvg/browse/master/;1254fe9)
 - [Joshua Strobl: Update to 2.40.17 to resolve SVG rendering in Nautilus.](https://dev.solus-project.com/source/librsvg/browse/master/;97d686c)
 - [Peter O'Connor: Add abireport](https://dev.solus-project.com/source/librsvg/browse/master/;26f700e)


**budgie-desktop**

 - [Ikey Doherty: Update budgie-desktop to version 10.4 "Irish Summer"](https://dev.solus-project.com/source/budgie-desktop/browse/master/;3908436)
 - [Ikey Doherty: Sync budgie-desktop with git to fix cropping of side panels](https://dev.solus-project.com/source/budgie-desktop/browse/master/;70b12e4)
 - [Ikey Doherty: Sync budgie-desktop with git commit `876555241ddc46fbdfa859ccce1258f80cc4eb69`](https://dev.solus-project.com/source/budgie-desktop/browse/master/;a22855d)
 - [Ikey Doherty: Update `budgie-desktop` to latest git commit](https://dev.solus-project.com/source/budgie-desktop/browse/master/;307c1ef)
 - [Ikey Doherty: Disable maximize animations for Budgie until it's stable](https://dev.solus-project.com/source/budgie-desktop/browse/master/;8ce3554)
 - [Ikey Doherty: Sync budgie-desktop with git for today's repo sync](https://dev.solus-project.com/source/budgie-desktop/browse/master/;8014b42)
 - [Ikey Doherty: Sync budgie-desktop with git](https://dev.solus-project.com/source/budgie-desktop/browse/master/;1614fe5)
 - [Ikey Doherty: Sync Budgie Desktop with git for budgie-desktop-symbolic icon](https://dev.solus-project.com/source/budgie-desktop/browse/master/;f478c52)
 - [Ikey Doherty: Sync Budgie with git once more to fix initialisation of default layout](https://dev.solus-project.com/source/budgie-desktop/browse/master/;f6b6cf3)
 - [Ikey Doherty: Sync Budgie Desktop with git](https://dev.solus-project.com/source/budgie-desktop/browse/master/;1e48637)
 - [Ikey Doherty: Sync Budgie with git for Raven positioning fixes](https://dev.solus-project.com/source/budgie-desktop/browse/master/;8bb6b42)
 - [Ikey Doherty: Sync budgie-desktop with git commit 32907caa7c14bb143c5811d905c425ecd8a915cb](https://dev.solus-project.com/source/budgie-desktop/browse/master/;3a52ae2)
 - [Ikey Doherty: Sync budgie-desktop with commit a074ba53cedf53205e9a9a9cd774466884ac2747](https://dev.solus-project.com/source/budgie-desktop/browse/master/;414b7e3)
 - [Ikey Doherty: Refix Budgie from git](https://dev.solus-project.com/source/budgie-desktop/browse/master/;2172699)
 - [Ikey Doherty: Sync budgie-desktop with git commit b76cec047fedfc0a9a89565c0b8ac2299e8a04be](https://dev.solus-project.com/source/budgie-desktop/browse/master/;2b491b5)
 - [Ikey Doherty: Fix the ordering of CSD titles on Budgie Desktop](https://dev.solus-project.com/source/budgie-desktop/browse/master/;3cf731f)
 - [Ikey Doherty: Sync budgie-desktop with git to purge old wallpapers](https://dev.solus-project.com/source/budgie-desktop/browse/master/;e815c39)
 - [Ikey Doherty: Per T3776 don't unref NULL cards as GvcMixerStream](https://dev.solus-project.com/source/budgie-desktop/browse/master/;d2aaad9)
 - [Ikey Doherty: Fix budgie-desktop crash with certain audio configurations](https://dev.solus-project.com/source/budgie-desktop/browse/master/;ec9c4b5)
 - [Ikey Doherty: Fix notification handling of special characters in Budgie Desktop](https://dev.solus-project.com/source/budgie-desktop/browse/master/;677dd92)


**gparted**

 - [Joshua Strobl: Add gpart as a runtime dependency for rescue data functionality. Resolves T3306.](https://dev.solus-project.com/source/gparted/browse/master/;0bcac75)
 - [Matthias Eliasson: Update to 0.28.1](https://dev.solus-project.com/source/gparted/browse/master/;4b86f00)


**coreutils**

 - [Pierre-Yves: Update coreutils to 8.27, resolves CVE-2017-7476](https://dev.solus-project.com/source/coreutils/browse/master/;a44a21a)


**sqlite3**

 - [Pierre-Yves: Update sqlite3 to 3.19.3](https://dev.solus-project.com/source/sqlite3/browse/master/;4390f73)
 - [Pierre-Yves: Update sqlite3 to 3.19.2](https://dev.solus-project.com/source/sqlite3/browse/master/;956c5f0)
 - [Michael Meinertzhagen: Update to 3.19.0](https://dev.solus-project.com/source/sqlite3/browse/master/;dcf4f59)


**rhythmbox-alternative-toolbar**

 - [Ikey Doherty: Update alternative-toolbar to 0.17.4](https://dev.solus-project.com/source/rhythmbox-alternative-toolbar/browse/master/;d723fc7)


**libsoup**

 - [Peter O'Connor: Update to 2.58.2 to address CVE-2017-2885](https://dev.solus-project.com/source/libsoup/browse/master/;24e20da)
 - [Peter O'Connor: Update to 2.58.0](https://dev.solus-project.com/source/libsoup/browse/master/;4639593)


**llvm**

 - [Ikey Doherty: Update LLVM to 4.0.1](https://dev.solus-project.com/source/llvm/browse/master/;036fef8)
 - [Ikey Doherty: Enable lldb + clang-extra-tools in llvm](https://dev.solus-project.com/source/llvm/browse/master/;820febe)
 - [Rex Morgan: Fixing dependencies for llvm-clang-devel and llvm-clang-32bit-devel](https://dev.solus-project.com/source/llvm/browse/master/;57e73dc)
 - [Ikey Doherty: Fix llvm-config to include missing header for mesa build](https://dev.solus-project.com/source/llvm/browse/master/;cf1e4ef)
 - [Ikey Doherty: Break llvm circular dependency by moving c-index-text into clang](https://dev.solus-project.com/source/llvm/browse/master/;11afed5)
 - [Ikey Doherty: Update llvm to 4.0.0](https://dev.solus-project.com/source/llvm/browse/master/;877590a)
 - [Ikey Doherty: Rebuild against new GCC 7](https://dev.solus-project.com/source/llvm/browse/master/;6a065c3)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/llvm/browse/master/;3c29e22)


**cups-pk-helper**

 - [Pierre-Yves: Update cups-pk-helper to 0.2.6](https://dev.solus-project.com/source/cups-pk-helper/browse/master/;071777c)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/cups-pk-helper/browse/master/;5c29882)


**zimg**

 - [Peter O'Connor: Update to 2.5.1](https://dev.solus-project.com/source/zimg/browse/master/;35054f1)


**kernel-glue**

 - [Ikey Doherty: Address update issues by providing full bash environment for GRUB](https://dev.solus-project.com/source/kernel-glue/browse/master/;f8373d1)


**openldap**

 - [Joshua Strobl: Update to 2.4.45](https://dev.solus-project.com/source/openldap/browse/master/;1ee9167)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/openldap/browse/master/;f78f2eb)


**eog**

 - [Peter O'Connor: Update to 3.24.1](https://dev.solus-project.com/source/eog/browse/master/;180e7ae)


**gnome-screensaver**

 - [Ikey Doherty: Only lock gnome-screensaver on suspend when locking is enabled](https://dev.solus-project.com/source/gnome-screensaver/browse/master/;32697e5)
 - [Ikey Doherty: Sync gnome-screensaver with the budgie-screensaver fork](https://dev.solus-project.com/source/gnome-screensaver/browse/master/;60d22d4)
 - [Peter O'Connor: Update abireport](https://dev.solus-project.com/source/gnome-screensaver/browse/master/;0cd867e)


**libmwaw**

 - [Ikey Doherty: Address CVE-2017-9433 in libmwaw](https://dev.solus-project.com/source/libmwaw/browse/master/;1f43c45)


**libbluray**

 - [Pierre-Yves: Update libbluray to 1.0.1](https://dev.solus-project.com/source/libbluray/browse/master/;bdaae8f)


**libx11**

 - [Thomas Hautier: Update to 1.6.5](https://dev.solus-project.com/source/libx11/browse/master/;6e219b1)


**thunderbird**

 - [Pierre-Yves: Update thunderbird to 52.2.1 to address multiple CVEs](https://dev.solus-project.com/source/thunderbird/browse/master/;d1b332f)
 - [Joshua Strobl: Disable system sqlite to fix search. Resolves T3677.](https://dev.solus-project.com/source/thunderbird/browse/master/;4e4aadb)
 - [Ikey Doherty: Update langpacks to 52.2.1](https://dev.solus-project.com/source/thunderbird/browse/master/;93ccf16)
 - [Joshua Strobl: Update langpacks to 52.2.0](https://dev.solus-project.com/source/thunderbird/browse/master/;528cbeb)
 - [Pierre-Yves: Update thunderbird to 52.1.1,enable back hunspell](https://dev.solus-project.com/source/thunderbird/browse/master/;bd32366)
 - [Joshua Strobl: Update langpacks to 52.1.1](https://dev.solus-project.com/source/thunderbird/browse/master/;6cd3570)
 - [Pierre-Yves: Update to 52.1.0](https://dev.solus-project.com/source/thunderbird/browse/master/;d098af2)
 - [Ikey Doherty: Enable calendar (T3375)](https://dev.solus-project.com/source/thunderbird/browse/master/;c679a9b)


**pulseaudio**

 - [Ikey Doherty: Correct broken symlink to resolve rpath issues for pulse in wine](https://dev.solus-project.com/source/pulseaudio/browse/master/;0b802f9)


**nettle**

 - [Ikey Doherty: I have nfc.](https://dev.solus-project.com/source/nettle/browse/master/;b6ede78)
 - [Ikey Doherty: Unbrick again](https://dev.solus-project.com/source/nettle/browse/master/;34eaa74)
 - [Ikey Doherty: Unbugger 32-bit dependencies](https://dev.solus-project.com/source/nettle/browse/master/;416cb7f)


**xorg-driver-video-nouveau**

 - [Pierre-Yves: Update to 1.0.15](https://dev.solus-project.com/source/xorg-driver-video-nouveau/browse/master/;9264040)


**gnome-session**

 - [Joshua Strobl: Remove sed so we don't bork translations.](https://dev.solus-project.com/source/gnome-session/browse/master/;5271c40)
 - [Joshua Strobl: Attempt at disabling Wayland login capabilities. Spotty hardware support and inability to re-login after logout.](https://dev.solus-project.com/source/gnome-session/browse/master/;8c1e5d0)


**totem-pl-parser**

 - [Peter O'Connor: Enable libquvi support - fixes T3113](https://dev.solus-project.com/source/totem-pl-parser/browse/master/;3c574ac)


**alsa-plugins**

 - [Pierre-Yves: update alsa-plugins to 1.1.4](https://dev.solus-project.com/source/alsa-plugins/browse/master/;65a8d92)


**udisks**

 - [Ikey Doherty: Update to udisks 2.6.5](https://dev.solus-project.com/source/udisks/browse/master/;39f3ac1)


