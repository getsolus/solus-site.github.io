---
title: "Solus Releases ISO Snapshot 2017.08.13.0"
author: "joshua"
categories:
- budgie
- news
- releases
date: 2017-08-13T22:02:27+03:00
featuredimage: ""
url: "/2017/08/13/solus-releases-iso-snapshot-20170813-0"
---

We're proud to be announce and be making available today a brand new Solus release, which builds on curated rolling release and ISO snapshot model. This release is the culmination of months of work across all of our editions.

## General

### Default Applications

IMAGE HERE

All of our editions feature:

- Firefox 55.0.1
- LibreOffice 5.4.0.3
- Rhythmbox 3.4.1 with the latest release of the Alternative Toolbar extension
- Thunderbird 52.2.1

Our Budgie and GNOME Editions ship with GNOME MPV 0.12 and our MATE Edition ships with VLC 2.2.6.

### Hardware and Kernel Enablement

This Solus release switches our default kernel to the Linux stable branch, release 4.12.7. This switch enables us to receive numerous improvements to support of the latest AMD, Intel, and NVIDIA hardware, while still making available the LTS branch for existing users.

Furthermore, we've enabled AppArmor `LSM` by default to provide functionality for snapd confining, as well as the introduction of a fully functioning Linux Security Module within our kernel builds.

Mesa has seen an upgrade to 17.1.6 and libtxc_dxtn has been updated to help improve reliability and graphical performance in some games.

Bluetooth controllers are now automatically enabled and our bluez now uses a stateless configuration. Users of wireless Logitech keyboards are able to utilize them during dm-crypt unlock of an LVM / LUKS rootfs as a result of an upgraded dracut 045.

To improve the out-of-the-box support for printing and scanning, we now ship with sane-backends, hplip drivers, and Canon UFRII LT printer drivers. Our hplip has been upgraded to 3.17.7, which improves cups support, recognition of Solus by hp-check, and udev rule location fixes. 

### Multimedia Upgrades

This release delivers ffmpeg 3.3.3, the latest in the 3.3 series, offering improvements such as a native Opus encoder, new multimedia filters, and VAAPI-accelerated MPEG-2 and VP8 encoding. We've also enabled support in ffmpeg for cdio, openal, webp, and other libraries.

### Support for Snaps

IMAGE HERE

This release features out-of-the-box support for [snaps](https://snapcraft.io), universal software packages for Linux. Support for snaps relieves pressure from software vendors to target a specific platform by sharing a unified target across all Linux distributions. For Solus users, it also enables our users to gain access to a wide variety of software that may not meet our package inclusion criteria, such as server software, as well as enable an improved distribution method for Third Party software.

## Budgie

{{< altimg "2017/08/budgie-10/Budgie10_4.jpg" >}}

Solus ships with our brand new release of the Budgie 10.x series, Budgie 10.4, as well as introducing our new branding defaults, such as adopting the stunning Adapta GTK Theme and Papirus Icon Theme, as well as complementing those design changes by adopting the Noto Sans font. We've also moved the primary panel from the top of the display to the bottom and tweaked panel widget spacing to make Budgie feel more spacious.

Whether it was implementing features, fixes, or improving / expanding translations, the Budgie community was integral to this Budgie release. So thank you to everyone that has contributed, whether it was features or fixes, or improving translations.

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

As if Budgie panels couldn't improve more, we've also introduced a Dock mode for panels, which leverage our Icon Tasklist and some positioning magic, enabling you to put a dock on any side of your display!

This Dock mode also uses a custom CSS class, which means theme developers have the ability to implement custom styling.

### Popovers

For Budgie 10.4, we implemented the `Budgie.Popover` widget, enabling us to replace our usage of Gtk.Popover and fix a long-standing issue with inconsistent popover animations, for example Budgie Menu animating across the screen if the user's panel (and the menu applet) was at the bottom.

Furthermore, this Popover widget enables more granular positioning regardless of its origin (top, bottom, left, or right). This granular positioning helped to provide us the opportunity to implement panels for all sides of your display!

### Settings

{{< altimg "2017/08/budgie-10/Budgie_Settings.jpg" >}}

Budgie 10.4 moves Settings out of Raven and into a dedicated application. This new Budgie Settings application enables us to improve the user experience of managing panels, applets, and their respective settings, as well as providing us the opportunity to describe what particular settings may do, with the classic example being "Disable unredirection of windows". To open Budgie Settings, the behavior of the Settings button at the bottom of Raven has been changed to open Budgie Settings instead of GNOME Control Center. You can also pin our Settings application to your panel, like you would any application, and launch it via Budgie Menu.

{{< altimg "2017/08/budgie-10/Budgie_Panel_Applets.jpg" >}}

In the image above, you can see the management of the Top Panel. We have split panel management into two sections, with Applets being the primary section (as we anticipate users primarily making changes to applets) and Settings. Similar to the behavior of prior Budgie releases, you can move applets around using the up or down arrow buttons, or delete them. These buttons are positioned at the top of the list to make them more easily accessible for lower-resolution displays.

To the right of the applet list, you have a dedicated "Add applet" button and settings for the selected applet below.

{{< altimg "2017/08/budgie-10/Budgie_Panel_Settings.jpg" >}}

In the Settings section of a panel, a multitude of options are exposed, such as:

- Position of the panel
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

IMAGE HERE

Solus GNOME Edition has received numerous improvements to its curated, out-of-the-box GNOME experience, as well as featuring our new default GTK and Icon Themes, Adapta and Papirus respectively.

Solus GNOME Edition ships with the latest stable releases of the GNOME stack, such as GNOME Shell 3.24.3, Mutter 3.24.4, and Nautilus 3.24.2, as well as continuing to provide default extensions such as Dash to Dock, Impatience, and TopIcons Plus.

### A Searchable Command Palette

<video src="/vids/Solus_GNOME_Plotinus.mp4" autoplay="autoplay" loop="loop" width="740" height="416" preload></video>

<a href="/imgs/posts/2017/08/Solus_GNOME_Plotinus.jpg">Full-size image</a>

Solus GNOME Edition now ships with [Plotinus](https://github.com/p-e-w/plotinus), the searchable command palette for GTK3 applications, and is enabled out-of-the-box. Plotinus makes searching menu items faster and keyboard-driven use of apps easier than ever. Plotinus can be launched using it's default keybinding, which is `Ctrl+Shift+P` or `Ctrl+Alt+P` depending on your keyboard layout.

### General Fixes and Improvements

#### Calendar and Online Account Improvements

Solus GNOME Edition ships an updated GNOME Online Accounts and Evolution Data Server, resolving issues with Calendar syncing for Google accounts that some users faced.

#### Nautilus

Solus GNOME Edition ships with a patched Nautilus that re-introduces the graphical option for the "Enter Location" option that was removed in Nautilus, enabling users to more easily type a location to navigate to rather than needing to memorize keyboard shortcuts.

#### Other Fixes

Among the above mentioned items, we've also resolved the following issues:

- Grabbing of previous disabled shortcuts for media keys should now be resolved thanks to a gnome-settings-daemon upgrade.
- Users were unable to change their password via Users in GNOME Control Center.
- gvfs was unable to see blocking processes.

## MATE

IMAGE HERE

### General Fixes and Improvements

#### Caya

Caya has been patched to [support whitelisting and trusting symlinked vendor-provided .desktop files](https://dev.solus-project.com/R482:f667c0a3d29851855f8b0a232a1eb0e3958883e1). This enables us to provide default desktop icons for items such as the Installer.