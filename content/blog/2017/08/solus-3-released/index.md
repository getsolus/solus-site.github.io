---
title: "Solus 3 Released"
author: "joshua"
categories:
- budgie
- news
- releases
date: 2017-08-15T22:02:27+03:00
featuredimage: "/Solus-3-Editions.jpg"
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

{{< relimg "snaps.jpg" >}}

This release features out-of-the-box support for [snaps](https://snapcraft.io), universal software packages for Linux. Support for snaps relieves pressure from software vendors to target a specific platform by sharing a unified target across all Linux distributions. For our users, they gain access to a wide variety of software that may not meet our package inclusion criteria, such as server software, as well as enabling an improved distribution method for Third Party software.

Support for Snaps was made possible due to fantastic cross-platform collaboration between Canonical's Snapcraft and Ubuntu teams and Solus, which is the first non-Ubuntu distribution to feature full snap confinement leveraging AppArmor, offering feature parity with the reference Ubuntu implementation.

## Budgie

{{< relimg "Budgie.jpg" >}}

Solus ships with our brand new release of the Budgie 10.x series, Budgie 10.4, as well as introducing our new branding defaults, adopting the stunning Adapta GTK Theme and Papirus Icon Theme, as well as complementing those design changes by adopting the Noto Sans font. We've also moved the primary panel from the top of the display to the bottom and tweaked panel widget spacing to make Budgie feel more spacious.

Whether it was implementing features, fixes, or improving / expanding translations, the Budgie community was integral to this Budgie release. So thank you to everyone that has contributed.

### Animations

<video src="/vids/Budgie_Animations.mp4" autoplay="autoplay" loop="loop" width="1000" height="562" preload></video>

Budgie 10.4 now has maximize and unmaximize animations for applications.

### Alt+Tab

{{< relimg "budgie-10/AltTab.jpg" >}}

In this release of Budgie, the alt+tab switcher will now prefer the theme icon instead of the X11 icon where possible. Shift+Alt+Tab support has also been implemented, enabling you to go backwards in the Alt+Tab dialog.

### Applets

#### Night Light

{{< relimg "budgie-10/NightLight.jpg" >}}

This release introduces a new applet, Night Light, which can help reduce eye strain by reducing your display's blue light by making your screen "warmer". This applet integrates into the Night Light functionality provided in Mutter 3.24.x and provides quick access to toggling Night Light on/off, as well as:

- Changing the schedule between "Sunset to Sunrise" and "Manual" (which is configured in GNOME Control Center)
- Temperature of the display when enabled
- One-click access to launch your Display settings

#### Places

{{< relimg "budgie-10/Places.jpg" >}}

The Places Indicator applet also received some love this release, with a new option to always expand the places section when the applet is shown. The whole Places section header is now a clickable button, making toggling the section easier. The Places Applet icon has also been changed to a more apt folder icon, better representing "places" rather than "disks" as previously presented.

#### And More!

- The Calendar widget in Raven will now remove the date selection if you change the month or year.
- The Icon Tasklist applet no longer has a list of "derper" applications for which we'd override the icon. If a `.desktop` file is found, use the icon referenced in it.
- The User Indicator now has updated and refined iconography thanks to Sam Hewitt.

### Budgie Menu

{{< relimg "budgie-10/Budgie_Menu.jpg" >}}

Building upon the lessons learned when (*and inspiration from*) implementing the Brisk Menu for MATE, searching has been completely overhauled. We now support the use of categories for searching and provide a predictable, sane search mechanism. Items that previously would not show up as expected, such as searching for "Displays", are now resolved.

For items that would show up in excess, we now de-duplicate search results to only showing unique entries when we're in "search mode" or "super compact" mode (in other words, no headers or sidebar categories).

We now dynamically compute scores for a given entry during search in relation to the search term. Assuming the entry is relevant, we'll display results in a given order and allow terms to match and display higher up in the list depending on how close it is to the term, the contents, how much a string is matched, etc.

### Panels

#### Vertical Panels

{{< relimg "budgie-10/LeftAndRightPanels.jpg" >}}

In Budgie 10.4, you can now set vertical panels on the left and right sides of your display. Popovers will correctly indicate (with its "tail") the point of origin, we've done extensive work to ensure all of our animations and applets will display and adjust depending on if they are on (or originating from) a horizontal or vertical panel, and Raven will account for right-side panels and slide out from underneath the panel, as well as anchor to left panels when no horizontal or right panel exists.

#### Transparency

With these new panels, you will now also be able to control the panel transparency (via our new Settings app) with three modes:

- None: The panel is always opaque.
- Dynamic: The panel is opaque when there is a maximized window on the workspace, or Raven is open, otherwise it's transparent.
- Always: The panel is always transparent.

#### Docks

{{< relimg "budgie-10/Budgie_Panel_Dockmode.jpg" >}}

As if Budgie panels couldn't improve more, we've also introduced a Dock mode for panels, enabling you to put a dock on any side of your display!

This Dock mode also uses a custom CSS class, which means theme developers have the ability to implement custom styling.

### Popovers

For Budgie 10.4, we implemented the `Budgie.Popover` widget, enabling us to replace our usage of Gtk.Popover and fix a long-standing issue with inconsistent popover animations, for example Budgie Menu animating across the screen if the user's panel (and the menu applet) was at the bottom.

Furthermore, this Popover widget enables more granular positioning regardless of its origin (top, bottom, left, or right). This granular positioning helped to provide us the opportunity to implement panels for all sides of your display!

### Settings

{{< relimg "budgie-10/Budgie_Settings.jpg" >}}

Budgie 10.4 moves Settings out of Raven and into a dedicated application. This new Budgie Settings application enables us to improve the user experience of managing panels, applets, and their respective settings, as well as providing us the opportunity to describe what particular settings may do, with the classic example being "Disable unredirection of windows". To open Budgie Settings, the behavior of the Settings button at the bottom of Raven has been changed to open Budgie Settings instead of GNOME Control Center. You can also pin our Settings application to your panel, like you would any application, and launch it via Budgie Menu.

{{< relimg "budgie-10/Budgie_Panel_Applets.jpg" >}}

In the image above, you can see the management of the Bottom Panel. We have split panel management into two sections, with Applets being the primary section (as we anticipate users primarily making changes to applets) and Settings. Similar to the behavior of prior Budgie releases, you can move applets around using the up or down arrow buttons, or delete them. These buttons are positioned at the top of the list to make them more easily accessible for lower-resolution displays.

To the right of the applet list, you have a dedicated "Add applet" button and settings for the selected applet below.

{{< relimg "budgie-10/Budgie_Panel_Settings.jpg" >}}

In the Settings section of a panel, a multitude of options are exposed, such as:

- Position of the panel
- Size of the panel (height for vertical panels, width for horizontal panels)
- Auto-hide settings (including Intellihide, which is great for Dock mode)
- Transparency settings (as discussed in the Panels -> Transparency section of this blog post)
- Shadow (a decorative drop shadow)
- Stylize region
- Dock mode

{{< relimg "budgie-10/Budgie_Settings_Autostart.jpg" >}}

Budgie Settings also enables you to manage  the autostarting of applications, eliminating the need for a secondary tool such as GNOME Tweak Tool.

### Other Fixes and Improvements

In addition to the above mentioned goodies, some other fixes include:

- The Clock applet will now only redraw when the label contents would change. This resolves unnecessary redraws of the applet.
- daemon: Fixed the order of left-side window buttons, ensuring that the window decoration style is consistent between native and CSD window decorations.
- wm: Ensuring we purge old backgrounds from the cache.

## GNOME

{{< relimg "GNOME.jpg" >}}

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

{{< relimg "MATE.jpg" >}}

### General Fixes and Improvements

#### Caja

Caja has been patched to support whitelisting and trusting symlinked vendor-provided .desktop files. This enables us to provide default desktop icons for items such as the Installer.

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

  - Joshua Strobl: Update to 3.24.2


**libgnome-desktop**

  - Joshua Strobl: Update to 3.24.1


**lz4**

  - Ikey Doherty: Update to 1.7.5
  - Mitchell Fossen: Update to 1.7.3


**kbd**

  - Pierre-Yves: Update kbd to 2.0.4
  - Peter O'Connor: Update abireport


**evince**

  - Joshua Strobl: Update to 3.24.1
  - Joshua Strobl: Resolve CVE-2017-1000083
  - Peter O'Connor: Safety rebuild for libgxps


**gd**

  - Peter O'Connor: Address CVE-2017-7890


**libnspr**

  - Pierre-Yves: Update libnspr to 4.15


**mesalib**

  - Ikey Doherty: Update mesa to 17.1.6
  - Ikey Doherty: Restore missing 32-bit libGL deps
  - Ikey Doherty: Update mesalib to 17.1.5
  - Peter O'Connor: Resolve dependency version of libxxfm-devel
  - Ikey Doherty: Restore derpy deps
  - Ikey Doherty: Update mesalib to 17.1.4
  - Ikey Doherty: Update Mesa to 17.1.1
  - Ikey Doherty: Update to 17.0.5 and align optimisations with xorg-server
  - Ikey Doherty: Enable SWR and Gallium Nine (D3D) support


**gpgme**

  - Peter O'Connor: Enable Qt bindings for gpgme


**gobject-introspection**

  - Peter O'Connor: Update to 1.52.1


**libsndfile**

  - Peter O'Connor: Address CVE-2017-12562
  - Peter O'Connor: Address CVE-2017-6892
  - Peter O'Connor: Resolve the following CVEs:


**samba**

  - Pierre-Yves: Update samba to 4.6.6 to address CVE-2017-11103
  - Peter O'Connor: Add nopatch for false positive on CVE
  - Peter O'Connor: Use system talloc - resolves T3912
  - Ikey Doherty: Update Samba to 4.6.5
  - Ikey Doherty: Update to 4.6.4, the latest Samba version


**clr-boot-manager**

  - Ikey Doherty: Update clr-boot-manager to 1.5.4
  - Ikey Doherty: Actually apply the patches to clr-boot-manager (thanks mesiment)
  - Ikey Doherty: Sync latest clr-boot-manager patches to help me do some unstable testing
  - Ikey Doherty: Update to 1.5.3 to fix UEFI GC issues


**libnss**

  - Ikey Doherty: Update libnss to 3.31
  - Ikey Doherty: Update to 3.30.2


**gnome-calendar**

  - Joshua Strobl: Rebuild against evolution-data-server 3.24.5
  - Joshua Strobl: Update to 3.24.3
  - Joshua Strobl: Update to 3.24.2
  - Joshua Strobl: Update to 3.24.1


**fontconfig**

  - Ikey Doherty: Fix glibc 2.25 build failure
  - Ikey Doherty: Move this out of system.base as x11 is no longer welcome there


**gdk-pixbuf**

  - Ikey Doherty: Update gdk-pixbuf to 2.36.8
  - Ikey Doherty: Rebuild gdk-pixbuf to ensure SVG module is loadable
  - Ikey Doherty: Update gdk-pixbuf to 2.36.7


**python3**

  - Ikey Doherty: Update Python to 3.5.4


**xorg-driver-input-libinput**

  - Pierre-Yves: Update xorg-driver-input-libinput to 0.25.1


**openvpn**

  - Pierre-Yves: Update openvpn to 2.4.3 (to fix multiple CVE's)
  - Justin Zobel: Remove no longer needed install path, also fixes CVE-2017-7479 and CVE-2017-7478
  - Justin Zobel: Update to 2.4.2


**solus-artwork**

  - Joshua Strobl: Update to v18
  - Ikey Doherty: Update to v17


**libreoffice**

  - Peter O'Connor: Add bzip2-devel to build
  - Peter O'Connor: Update to 5.4.0.3 - resolves T4179
  - Peter O'Connor: Update to 5.3.3, add dictionaries to -all subpackage
  - Ikey Doherty: Include *all* desktop files (including links) and appdata files
  - Ikey Doherty: One last attempt at fixing appstream data for libreoffice
  - Ikey Doherty: Ensure all subpackages contain their own icons for AppStream
  - Ikey Doherty: Switch back to GTK3
  - Ikey Doherty: Switch to system alloc


**baselayout**

  - Ikey Doherty: baselayout: Update OS major version to 3


**youtube-dl**

  - Justin Berthault: Update to 2017.07.23
  - Peter O'Connor: Update to 2017.06.12
  - Justin Berthault: Update to 2017.05.29
  - Justin Berthault: Update to 2017.05.23
  - Justin Berthault: Update to 2017.05.18.1, fixes T3714
  - Justin Berthault: Update to 2017.05.14
  - Justin Berthault: Update to 2017.05.01
  - Peter O'Connor: Update to 2017.04.28
  - Peter O'Connor: Update to 2017.04.26
  - Peter O'Connor: Update to 2017.04.17


**geoclue**

  - Joshua Strobl: Update to 2.4.7


**glibmm**

  - Joshua Strobl: Test rebuild of glibmm for gimagereader: T3696.
  - Joshua Strobl: Update to 2.51.7


**swig**

  - Ikey Doherty: Update swig to 3.0.12
  - Peter O'Connor: Update abireport


**bash-completion**

  - Pierre-Yves: Update bash-completion to 2.7


**gtk3**

  - Ikey Doherty: Update to GTK3 to 3.22.18 and enable Snapd compat symlink (T4272)
  - Ikey Doherty: Update GTK to 3.22.16 and fix broken x11 grabs
  - Ikey Doherty: Update to 3.22.15 to address GtkListBox regressions upstream
  - Joshua Strobl: Update to 3.22.14 to resolve clipboard issue. Revert listbox patch that'd cause budgie-panel to segfault.
  - Ikey Doherty: Downgrade to 3.22.12 to unbrick Budgie
  - Joshua Strobl: Update to 3.22.13


**mpv**

  - Joshua Strobl: Rebuild mpv against ffmpeg 3.3.2. Resolves T3889.
  - Ikey Doherty: Rebuild for new Samba
  - Justin Zobel: Update to 0.25.0


**os-installer**

  - Ikey Doherty: Sync os-installer with git to drop Arc box-shadow on sidebar
  - Ikey Doherty: Sync `os-installer` with git
  - Ikey Doherty: Sync `os-installer` with git for more derp/vanity fixes
  - Ikey Doherty: Sync `os-installer` with git to add branding support for all DEs
  - Ikey Doherty: Sync os-installer with git for Summary page beautification
  - Ikey Doherty: Sync os-installer with git to unbreak it
  - Ikey Doherty: Sync os-installer with git for new UI changes + testing
  - Ikey Doherty: Sync with git for Adapta styling fixes
  - Ikey Doherty: Fix issue with disks having "None" type


**libdrm**

  - Ikey Doherty: Update libdrm to 2.4.82
  - Ikey Doherty: Update libdrm to 2.4.81 for new mesa 17.1.1


**gnutls**

  - Pierre-Yves: Update gnutls to 3.5.14
  - Ikey Doherty: Fix 32bit deps


**pcre2**

  - Ikey Doherty: Enable pcre2-16+32 for Qt 5.9 base
  - Peter O'Connor: Resolve CVE-2017-8786


**gvfs**

  - Joshua Strobl: Ensure gvfs can see blocking processes with lsof.
  - Ikey Doherty: Rebuild for new Samba


**ca-certs**

  - Ikey Doherty: Update certificates (`ca-certs`) to version 20170803
  - Ikey Doherty: Update to 20170427


**nvidia-340-glx-driver**

  - Ikey Doherty: Rebuild for new kernel releases
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for new kernels
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for linux-current
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for linux-current
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for new kernels
  - Ikey Doherty: Fix nvidia-340 on 4.12
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for parallel kernel support
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.39-35.lts
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.38-34.lts
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.37-33.lts
  - Ikey Doherty: Rebuild for 4.9.36-32.lts
  - Peter O'Connor: Rebuild for 4.9.32-31.lts
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.32-30.lts
  - Ikey Doherty: Rebuild against 4.9.30-29.lts
  - Ikey Doherty: Rebuild for 4.9.29-28.lts
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for LTS kernel (Ref T3674)
  - Ikey Doherty: Rebuild nvidia-340-glx-driver for 4.9.27-26.lts
  - Ikey Doherty: Rebuild for 4.9.26-25.lts
  - Ikey Doherty: Rebuild for 4.9.25-24.lts
  - Ikey Doherty: Rebuild for 4.9.25-23.lts
  - Ikey Doherty: Rebuild for 4.9.24-22.lts
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for 4.9.23-20.lts
  - Ikey Doherty: Rebuild for 4.9.23-19.lts


**npth**

  - Ikey Doherty: Update npth to version 1.5
  - Michael Meinertzhagen: Update nPth to 1.4


**ghostscript**

  - Ikey Doherty: Sync with git (future 9.22) to resolve CVE-2017-7948
  - Peter O'Connor: Resolve CVE-2017-8291


**libcairo**

  - Pierre-Yves: Update cairo to 1.14.10


**xorg-server**

  - Peter O'Connor: Address CVE-2017-10971 and CVE-2017-10972
  - Ikey Doherty: Enable libunwind, xcsecurity for xauth, and fix optimisations


**breeze-cursor-theme**

  - Ikey Doherty: Add index.theme defaults to breeze cursor theme


**unrar**

  - Justin Berthault: Update to 5.5.5
  - Peter O'Connor: Update abireport


**gnome-control-center**

  - Joshua Strobl: Update to 3.24.3
  - Joshua Strobl: Correct passwd binary location.
  - Ikey Doherty: Rebuild for Kerberos update
  - Joshua Strobl: Update to 3.24.2


**gnome-online-accounts**

  - Joshua Strobl: Update to 3.24.2
  - Joshua Strobl: Update to 3.24.1.


**expat**

  - Pierre-Yves: Update expat to 2.2.3
  - Peter O'Connor: Update to 2.2.1 to resolve the following CVEs:
  - Ikey Doherty: Mark nopatch


**gnome-disk-utility**

  - Joshua Strobl: Update to 3.24.1


**gspell**

  - Joshua Strobl: Update to 1.4.1


**bluez**

  - Joshua Strobl: Update to 5.45
  - Joshua Strobl: Fix install, change to using datadir.
  - Joshua Strobl: Enable stateless main.conf and set AutoEnable to true by default. AutoEnable=true should enable automatic enabling of all Bluetooth controllers.


**libinput**

  - Pierre-Yves: Update libinput to 1.7.3
  - Pierre-Yves: Update libinput to 1.7.2
  - Peter O'Connor: Update to 1.7.1


**libxslt**

  - Ikey Doherty: Address CVE-2017-5029


**libgtksourceview**

  - Joshua Strobl: Update to 3.24.2.
  - Joshua Strobl: Update to 3.24.1


**libicu**

  - Peter O'Connor: Resolve the following CVEs:


**kmod**

  - Pierre-Yves: Update kmod to 24
  - Peter O'Connor: Update abireport


**pisi**

  - Ikey Doherty: pisi: Fix the FORTIFY_SOURCE flags
  - Ikey Doherty: pisi: Fix our compiler flags to be Clang compatible
  - Ikey Doherty: Add missing FORTIFY_SOURCE
  - Ikey Doherty: Enforce default flags


**nano**

  - Ikey Doherty: Add new syntax highlighting capabilities to nano
  - Michael Meinertzhagen: Update to 2.8.6
  - Michael Meinertzhagen: Update to 2.8.5
  - Pierre-Yves: Update nano to 2.8.4
  - Pierre-Yves: Update nano to 2.8.3
  - Ikey Doherty: Rebuild nano to test Software Center changelog improvements
  - Ikey Doherty: Move into system.devel for debugging
  - Pierre-Yves: Update to 2.8.2


**libgtop**

  - Peter O'Connor: Update to 2.36.0
  - Peter O'Connor: Add abireport


**hwdata**

  - Ikey Doherty: Update hwdata to 0.302


**glibc**

  - Peter O'Connor: Rebuild for GCC 6.4.0
  - Ikey Doherty: Fix x64 ABI bug with glibc
  - Ikey Doherty: Import Clear Linux stateless patch for `getusershell()`
  - Ikey Doherty: Address CVE-2017-1000366 in glibc
  - Ikey Doherty: Security update for the `glibc` package


**gnome-settings-daemon**

  - Joshua Strobl: Update to 3.24.3
  - Joshua Strobl: Update to 3.24.2


**poppler**

  - Peter O'Connor: Address CVE-2017-7511
  - Justin Zobel: Bump to fix revert
  - Justin Zobel: Revert "Update poppler to 0.55.0"
  - Pierre-Yves: Update poppler to 0.55.0


**gnome-mpv**

  - Joshua Strobl: Add meson.build version patch from upstream.
  - Justin Zobel: Update to 0.12


**linux-firmware**

  - Ikey Doherty: Roll linux-firmware on back
  - Ikey Doherty: Rebuild linux-firmware without strip and new ypkg git support
  - Ikey Doherty: Update linux-firmware to 20170622
  - Ikey Doherty: Roll back the last update (push for build)
  - Ikey Doherty: Roll back the last update
  - Ikey Doherty: Update linux-firmware to 20170511 snapshot (resolves T3680)


**modem-manager**

  - Peter O'Connor: Update to 1.6.4
  - Peter O'Connor: Add abireport


**xdg-utils**

  - Pierre-Yves: Update xdg-tools to 1.1.2


**appstream-data**

  - Ikey Doherty: Update appstream-data package to version 8
  - Ikey Doherty: Update to v7 for Qt app support
  - Ikey Doherty: Update to v5 for LibreOffice support
  - Ikey Doherty: Update to v5
  - Ikey Doherty: Publish latest build of appstream data to resolve T3613
  - Ikey Doherty: Move to new git URIs per T3606, fix component too


**libwebkit-gtk**

  - Peter O'Connor: Update to 2.16.6 to address following CVEs:
  - Peter O'Connor: Update abireport
  - Peter O'Connor: Update to 2.16.4 to address CVE-2017-2538
  - Joshua Strobl: Update to 2.16.3
  - Joshua Strobl: Update to 2.16.2
  - Joshua Strobl: Add upstream modification to resolve signing in with Google.


**libgxps**

  - Peter O'Connor: Update to 0.2.5


**upower**

  - Ikey Doherty: Sync with git 0.99.5 to fix world of issues in upower


**gnome-terminal**

  - Joshua Strobl: Update to 3.24.2. Updated patch.
  - Joshua Strobl: Update to 3.24.1


**libgdata**

  - Peter O'Connor: Update to 0.17.8, convert to yml
  - Peter O'Connor: Add abireport


**libqmi**

  - Peter O'Connor: Update to 1.18.0
  - Peter O'Connor: Add abireport


**systemd**

  - Ikey Doherty: systemd: Add service handler to update hwdb (T3769)
  - Ikey Doherty: Always create sysusers before tmpfiles


**foomatic-db**

  - Peter O'Connor: Update to 4.0.20170420


**gutenprint**

  - Bryan T. Meyers: Update to 5.2.12


**libgcrypt**

  - Pierre-Yves: Update libgcrypt to 1.8.0
  - Peter O'Connor: Update to 1.7.8 to address CVE-2017-7526
  - Ikey Doherty: Update libgcrypt to version 1.7.7


**bash**

  - Ikey Doherty: Fix definition for FORTIFY_SOURCE in bash's environment files
  - Ikey Doherty: profile: Fix our default flags to work with Clang
  - Ikey Doherty: Sync default environment flags


**nvidia-304-glx-driver**

  - Ikey Doherty: Rebuild nvidia-glx-driver for new kernel releases
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for new kernels
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for linux-current
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for linux-current
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for new kernels
  - Ikey Doherty: Only apply nv-drm.patch on LTS kernel
  - Ikey Doherty: Enable parallel kernel support in nvidia 304
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.39-35.lts
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.38-34.lts
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.37-33.lts
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.36-32.lts
  - Peter O'Connor: Rebuild for 4.9.32-31.lts
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.32-30.lts
  - Ikey Doherty: Rebuild against 4.9.30-29.lts
  - Ikey Doherty: Rebuild for 4.9.29-28.lts
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for LTS kernel (Ref T3674)
  - Ikey Doherty: Rebuild nvidia-304-glx-driver for 4.9.27-26.lts
  - Ikey Doherty: Rebuild for 4.9.26-25.lts
  - Ikey Doherty: Rebuild for 4.9.25-24.lts
  - Ikey Doherty: Rebuild for 4.9.25-23.lts
  - Ikey Doherty: Rebuild for 4.9.24-22.lts
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild for 4.9.23-20.lts
  - Ikey Doherty: Rebuild for 4.9.23-19.lts


**doflicky**

  - Ikey Doherty: Update DoFlicky to version 6:
  - Ikey Doherty: Force doflickey .desktop file to have correct permission


**openssh**

  - Peter O'Connor: Fix dependency release for xauth
  - Peter O'Connor: Provide xauth path for X forwarding


**openssl**

  - Pierre-Yves: Update openssl to 1.0.2l


**libarchive**

  - Ikey Doherty: Restore bzip2 support in libarchive
  - Pierre-Yves: Update libarchive to 3.3.2


**mutagen**

  - Michael Meinertzhagen: Update to 1.37


**jansson**

  - Michael Meinertzhagen: Update to 2.10, patches cleanup


**accountsservice**

  - Ikey Doherty: Stop using deprecated lightdm config section in AccountsService
  - Joshua Strobl: Resolve incorrect location of passwd.
  - Joshua Strobl: Revert "Update accountsservice to 0.6.45"
  - Pierre-Yves: Update accountsservice to 0.6.45


**libgweather**

  - Joshua Strobl: Update to 3.24.1


**glib2**

  - Ikey Doherty: glib2: Support snap desktop files in XDG_DATA_DIRS
  - Pierre-Yves: Update glib2 to 2.52.3
  - Pierre-Yves: Temporary patch to resolve T3812
  - Ikey Doherty: Work around woes with glib multilib builds
  - Pierre-Yves: Update glib2 to 2.52.2 and convert to package.yml


**cryptsetup**

  - Pierre-Yves: Update cryptsetup to 1.7.5


**firefox**

  - Pierre-Yves: Update firefox to 55.0.1
  - Ikey Doherty: Update langpacks for 55.0.1
  - Pierre-Yves: Update firefox to 55.0
  - Ikey Doherty: Update langpacks for 55.0
  - Pierre-Yves: Remove arc-firefox-theme defaults from Firefox
  - Pierre-Yves: Update firefox to 54.0.1
  - Joshua Strobl: Update langpacks to 54.0.1
  - Ikey Doherty: Update Firefox to 54.0
  - Ikey Doherty: Update langpacks for 54.0 release
  - Pierre-Yves: Update firefox to 53.0.3
  - Joshua Strobl: Update langpack for Firefox 53.0.3
  - Pierre-Yves: Update to 53.0.2
  - Ikey Doherty: Update langpacks for 53.0.2
  - Ikey Doherty: Enable e10s out of the box
  - Pierre-Yves: Update to 53.0 (hunspell disabled)
  - Ikey Doherty: Update langpacks for 53.0


**gnome-themes-standard**

  - Ikey Doherty: Update to 3.22.3 to fix Adwaita-dark


**libtiff**

  - Pierre-Yves: Update libtiff to 4.0.8


**lsb-release**

  - Ikey Doherty: Update Solus major version to 3


**libvte**

  - Joshua Strobl: Update to 0.49.1


**libmbim**

  - Peter O'Connor: Fix license from new version
  - Peter O'Connor: Update to 1.14.0
  - Peter O'Connor: Add abireport


**libplist**

  - Joshua Strobl: Update to latest stable. Resolve CVE-2017-5950.


**networkmanager-openvpn**

  - Philipp Trulson: Update networkmanager-openvpn to 1.2.10


**opus**

  - Joshua Strobl: Update to 1.2.1
  - Pierre-Yves: Update opus to 1.2
  - Pierre-Yves: Update opus to 1.1.5


**libpcre**

  - Peter O'Connor: Update to 8.41 to address CVEs:


**dracut**

  - Pierre-Yves: Update dracut to 045
  - Ikey Doherty: Ensure we load hid-logitech-hidpp during boot for wireless Logitech


**libcroco**

  - Peter O'Connor: Resolve following CVEs:
  - Peter O'Connor: Update to 0.6.12, patch CVE
  - Peter O'Connor: Add abireport


**nvidia-glx-driver**

  - Ikey Doherty: Rebuild for new kernel releases
  - Ikey Doherty: Rebuild nvidia-glx-driver for new kernels
  - Ikey Doherty: Rebuild nvidia-glx-driver for linux-current
  - Ikey Doherty: Rebuild nvidia-glx-driver for linux-current
  - Ikey Doherty: Rebuild nvidia-glx-driver for recent kernels
  - Ikey Doherty: Fix broken multilib dependency on LTS
  - Ikey Doherty: Update `nvidia-glx-driver` to 384.59
  - Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.39-35.lts
  - Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.38-34.lts
  - Ikey Doherty: Rebuild for 4.9.37-33.lts
  - Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.36-32.lts
  - Peter O'Connor: Rebuild for 4.9.32-31.lts
  - Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.32-30.lts
  - Ikey Doherty: Rebuild against 4.9.30-29.lts
  - Ikey Doherty: Update nvidia-glx-driver to 381.22
  - Ikey Doherty: Fix runtime dep
  - Ikey Doherty: Rebuild for 4.9.29-28.lts and fix ABI versions
  - Ikey Doherty: Rebuild nvidia-glx-driver for LTS kernel (Ref T3674)
  - Ikey Doherty: Fix minimum kernel dependency
  - Ikey Doherty: Rebuild nvidia-glx-driver for 4.9.27-26.lts
  - Ikey Doherty: Update to 375.66
  - Ikey Doherty: Unbreak the modaliases file
  - Ikey Doherty: Rebuild for 4.9.26-25.lts
  - Ikey Doherty: Rebuild for 4.9.25-24.lts
  - Ikey Doherty: Rebuild for 4.9.25-23.lts
  - Ikey Doherty: Rebuild for 4.9.24-22.lts
  - Ikey Doherty: Rebuild for kernel
  - Ikey Doherty: Rebuild
  - Ikey Doherty: Rebuild for 4.9.23-19.lts


**kerberos**

  - Ikey Doherty: Update package to upstream krb5-1.15.1
  - Peter O'Connor: Update abireport


**file-roller**

  - Joshua Strobl: Update to 3.24.1


**mutter**

  - Joshua Strobl: Update to 3.24.4
  - Joshua Strobl: Update to 3.24.3
  - Ikey Doherty: Rebuild mutter so that mutter-devel doesn't depend on itself
  - Ikey Doherty: Rebuild mutter to restore rundeps for mutter-devel
  - Joshua Strobl: Resolve red and blue value swap during current window screenshots. Resolves T3711.
  - Joshua Strobl: Update to 3.24.2


**graphite2**

  - Peter O'Connor: Update to 1.3.10


**inxi**

  - Pierre-Yves: Update inxi to 2.3.23
  - Peter Cornelis: Update to 2.3.19
  - Federico Damián Schonborn: Add missing rundeps


**solus-sc**

  - Ikey Doherty: Update solus-sc to version 20
  - Ikey Doherty: Fix solus-sc changelog rendering of `)` after markup URIs
  - Ikey Doherty: Sync `solus-sc` with latest git version
  - Ikey Doherty: Fix some solus-sc rendering issues
  - Ikey Doherty: Update solus-sc to v19
  - Ikey Doherty: Update to version 18


**evolution-data-server**

  - Joshua Strobl: Update to 3.24.5
  - Joshua Strobl: Update to 3.24.2


**gnome-keyring**

  - Joshua Strobl: Update to 3.20.1
  - Peter O'Connor: Update abireport


**grep**

  - Joshua Strobl: Update to 3.1


**freetype2**

  - Ikey Doherty: Meagre attempt to break circular dependencies
  - Pierre-Yves: Update freetype2 to 2.8
  - Ikey Doherty: Security update for freetype2
  - Peter O'Connor: Update to 2.7.1


**iso-codes**

  - Pierre-Yves: Update to 3.75


**libtasn1**

  - Peter O'Connor: Resolve CVE-2017-10790
  - Peter O'Connor: Update to 4.12 to resolve CVE-2017-6891


**gnupg**

  - Pierre-Yves: Update gnupg to 2.1.21


**ffmpeg**

  - Pierre-Yves: Update ffmpeg to 3.3.3
  - Pierre-Yves: Update ffmpeg to 3.3.2 and enable extra libraries
  - Ikey Doherty: Enable SDL2 to restore the ffplay binary


**alsa-utils**

  - Pierre-Yves: Update alsa-utils to 1.1.4


**nautilus**

  - Pierre-Yves: Update nautilus to 3.24.2
  - Joshua Strobl: Revert lsof rundep as it's actually needed as a rundep of gvfs.
  - Joshua Strobl: Add lsof as a rundep to resolve empty Volume is busy dialog.
  - Ikey Doherty: Ensure Nautilus allows trusted symlinked .desktop files to work
  - Joshua Strobl: Update to 3.24.1 via git, since 3.24.x tarballs don't ship with meson build files. Switched to meson from GNU Build System as a result of issues with it properly detecting gtk-doc.


**man-db**

  - Ikey Doherty: Add missing groff dependency


**lightdm**

  - Ikey Doherty: Add missing at-spi2-atk dependency to lightdm


**sudo**

  - Pierre-Yves: Update sudo to 1.8.20p2
  - Pierre-Yves: Update sudo to 1.8.20p1 to address CVE-2017-1000367
  - Pierre-Yves: Update sudo to 1.8.20


**cups-filters**

  - Pierre-Yves: Update cups-filters to 1.16.1
  - Pierre-Yves: Update cups-filters to 1.14.0


**gedit**

  - Pierre-Yves: Update gedit to 3.22.1


**rhythmbox**

  - Joshua Strobl: Enable DAAP support. Resolves T3796.


**linux-tools**

  - Ikey Doherty: Update linux-tools to follow `linux-lts` new release
  - Ikey Doherty: Update `linux-tools` to latest LTS release (4.9.42)
  - Ikey Doherty: Update linux-tools to follow latest LTS release (4.9.41)
  - Ikey Doherty: Update linux-tools to 4.9.40, latest LTS version
  - Ikey Doherty: Update linux-tools to 4.9.39 - the latest LTS version
  - Ikey Doherty: Update linux-tools to 4.9.27, resolves T3679
  - Ikey Doherty: Update to 4.9.25 LTS


**curl**

  - Pierre-Yves: Update curl to 7.55.1
  - Pierre-Yves: Update curl to 7.55.0 to address multiple CVEs
  - Peter O'Connor: Update to 7.54.1
  - Joshua Strobl: Post-merge removal of pkgconfig(libssh2).
  - Stefan Ric: Enable sftp support
  - Peter O'Connor: Update to 7.54.0


**gcc**

  - Peter O'Connor: Revert GCC to 6.4.0
  - Ikey Doherty: Disable /usr/bin/gcov-dump due to jankiness in dbginfo
  - Ikey Doherty: Update GCC to v7.1
  - Ikey Doherty: Conduct ABI report for current GCC in repo
  - Ikey Doherty: Restore sane flags in build


**solus-hardware-config**

  - Ikey Doherty: Update to v13 and disable coredumps


**lame**

  - Ikey Doherty: Security update for `lame`
  - Peter O'Connor: Update abireport


**alsa-lib**

  - Pierre-Yves: Update alsa-lib to 1.1.4.1
  - Pierre-Yves: Update alsa-lib to 1.1.4


**budgie-desktop-branding**

  - Ikey Doherty: Update budgie-desktop-branding to v17
  - Ikey Doherty: Update `budgie-desktop-branding` to v16
  - Ikey Doherty: Override default material menu icon for Budgie Desktop branding
  - Ikey Doherty: Update budgie-desktop-branding to v15
  - Joshua Strobl: Update to v14 to ensure livecd schema overrides Material.
  - Ikey Doherty: Update budgie-desktop-branding(-material) for Slick Greeter
  - Ikey Doherty: Remove hard theme dependencies from main budgie-desktop-branding package
  - Ikey Doherty: Stop pinning installer to tasklist with budgie-desktop-branding
  - Ikey Doherty: Update to v12 to fix broken material schemas
  - Ikey Doherty: Update to v11
  - Ikey Doherty: Fix Qt styling on the Budgie ISO


**librsvg**

  - Joshua Strobl: Update to 2.40.18
  - Joshua Strobl: Update to 2.40.17 to resolve SVG rendering in Nautilus.
  - Peter O'Connor: Add abireport


**budgie-desktop**

  - Ikey Doherty: Update budgie-desktop to version 10.4 "Irish Summer"
  - Ikey Doherty: Sync budgie-desktop with git to fix cropping of side panels
  - Ikey Doherty: Sync budgie-desktop with git commit `876555241ddc46fbdfa859ccce1258f80cc4eb69`
  - Ikey Doherty: Update `budgie-desktop` to latest git commit
  - Ikey Doherty: Disable maximize animations for Budgie until it's stable
  - Ikey Doherty: Sync budgie-desktop with git for today's repo sync
  - Ikey Doherty: Sync budgie-desktop with git
  - Ikey Doherty: Sync Budgie Desktop with git for budgie-desktop-symbolic icon
  - Ikey Doherty: Sync Budgie with git once more to fix initialisation of default layout
  - Ikey Doherty: Sync Budgie Desktop with git
  - Ikey Doherty: Sync Budgie with git for Raven positioning fixes
  - Ikey Doherty: Sync budgie-desktop with git commit 32907caa7c14bb143c5811d905c425ecd8a915cb
  - Ikey Doherty: Sync budgie-desktop with commit a074ba53cedf53205e9a9a9cd774466884ac2747
  - Ikey Doherty: Refix Budgie from git
  - Ikey Doherty: Sync budgie-desktop with git commit b76cec047fedfc0a9a89565c0b8ac2299e8a04be
  - Ikey Doherty: Fix the ordering of CSD titles on Budgie Desktop
  - Ikey Doherty: Sync budgie-desktop with git to purge old wallpapers
  - Ikey Doherty: Per T3776 don't unref NULL cards as GvcMixerStream
  - Ikey Doherty: Fix budgie-desktop crash with certain audio configurations
  - Ikey Doherty: Fix notification handling of special characters in Budgie Desktop


**gparted**

  - Joshua Strobl: Add gpart as a runtime dependency for rescue data functionality. Resolves T3306.
  - Matthias Eliasson: Update to 0.28.1


**coreutils**

  - Pierre-Yves: Update coreutils to 8.27, resolves CVE-2017-7476


**sqlite3**

  - Pierre-Yves: Update sqlite3 to 3.19.3
  - Pierre-Yves: Update sqlite3 to 3.19.2
  - Michael Meinertzhagen: Update to 3.19.0


**rhythmbox-alternative-toolbar**

  - Ikey Doherty: Update alternative-toolbar to 0.17.4


**libsoup**

  - Peter O'Connor: Update to 2.58.2 to address CVE-2017-2885
  - Peter O'Connor: Update to 2.58.0


**llvm**

  - Ikey Doherty: Update LLVM to 4.0.1
  - Ikey Doherty: Enable lldb + clang-extra-tools in llvm
  - Rex Morgan: Fixing dependencies for llvm-clang-devel and llvm-clang-32bit-devel
  - Ikey Doherty: Fix llvm-config to include missing header for mesa build
  - Ikey Doherty: Break llvm circular dependency by moving c-index-text into clang
  - Ikey Doherty: Update llvm to 4.0.0
  - Ikey Doherty: Rebuild against new GCC 7
  - Peter O'Connor: Update abireport


**cups-pk-helper**

  - Pierre-Yves: Update cups-pk-helper to 0.2.6
  - Peter O'Connor: Update abireport


**zimg**

  - Peter O'Connor: Update to 2.5.1


**kernel-glue**

  - Ikey Doherty: Address update issues by providing full bash environment for GRUB


**openldap**

  - Joshua Strobl: Update to 2.4.45
  - Peter O'Connor: Update abireport


**eog**

  - Peter O'Connor: Update to 3.24.1


**gnome-screensaver**

  - Ikey Doherty: Only lock gnome-screensaver on suspend when locking is enabled
  - Ikey Doherty: Sync gnome-screensaver with the budgie-screensaver fork
  - Peter O'Connor: Update abireport


**libmwaw**

  - Ikey Doherty: Address CVE-2017-9433 in libmwaw


**libbluray**

  - Pierre-Yves: Update libbluray to 1.0.1


**libx11**

  - Thomas Hautier: Update to 1.6.5


**thunderbird**

  - Pierre-Yves: Update thunderbird to 52.2.1 to address multiple CVEs
  - Joshua Strobl: Disable system sqlite to fix search. Resolves T3677.
  - Ikey Doherty: Update langpacks to 52.2.1
  - Joshua Strobl: Update langpacks to 52.2.0
  - Pierre-Yves: Update thunderbird to 52.1.1,enable back hunspell
  - Joshua Strobl: Update langpacks to 52.1.1
  - Pierre-Yves: Update to 52.1.0
  - Ikey Doherty: Enable calendar (T3375)


**pulseaudio**

  - Ikey Doherty: Correct broken symlink to resolve rpath issues for pulse in wine


**nettle**

  - Ikey Doherty: I have nfc.
  - Ikey Doherty: Unbrick again
  - Ikey Doherty: Unbugger 32-bit dependencies


**xorg-driver-video-nouveau**

  - Pierre-Yves: Update to 1.0.15


**gnome-session**

  - Joshua Strobl: Remove sed so we don't bork translations.
  - Joshua Strobl: Attempt at disabling Wayland login capabilities. Spotty hardware support and inability to re-login after logout.


**totem-pl-parser**

  - Peter O'Connor: Enable libquvi support - fixes T3113


**alsa-plugins**

  - Pierre-Yves: update alsa-plugins to 1.1.4


**udisks**

  - Ikey Doherty: Update to udisks 2.6.5


