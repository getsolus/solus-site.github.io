---
title: "Solus 3 ISO Refresh Available"
author: "joshua"
categories:
- news
- releases
date: 2018-09-20T08:20:39+03:00
featuredimage: "/2018/09/solus-refresh-editions.jpg"
url: "/2018/09/20/solus-3-iso-refresh-available"
---

We're proud to announce the availability of Solus 3.9999, our ISO refresh of Solus 3. This refresh enables support for a variety of hardware released since Solus 3, introduces an updated set of default applications and theming, as well as enables users to immediately take advantage of new Solus infrastructure.

## General

### Default Applications and Theming

All of our editions feature:

- Firefox 62
- LibreOffice 6.1.1.2
- Rhythmbox 3.4.2
- Thunderbird 60

Our Budgie and GNOME Editions ship with GNOME MPV 0.14 and our MATE Edition ships with VLC 3.0.3.

Solus ships with theming which enables a consistent look and feel across the entire system, regardless of which edition you choose. All editions feature [Adapta GTK Theme](https://github.com/adapta-project/adapta-gtk-theme/) for application and [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) for icons.

### Hardware and Kernel Enablement

This ISO refresh of Solus ships with Linux kernel 4.18.5, enabling us to provide out-of-the-box support for the latest CPUs from AMD and Intel. This refresh also ships with configuration changes to enable a more complete utilization of high core count CPUs like AMD Threadripper 2.

### Infrastructure Support

As [previously announced](/2018/09/08/supercharging-solus-infrastructure), we have been making changes to our infrastructure, repositories, and more. To ensure users are able to immediately take advantage of our new infrastructure, this refresh changes our default repository URLs so no modification or further updates are necessary.

As such, we have also updated various system packages, such as our `baselayout`, to point to more relevant support documentation.

## Defaults

### GNOME

Our ISO refresh of Solus GNOME Edition introduces some changes to our default branding, such as:

- GNOME
 - Removable Drive applet / extension is now enabled by default. This should make it much easier to perform unmounts without having to open Nautilus, the default file manager
- Nautilus
 - Default to single clicks for opening files and folders. We are confident that this change will prove to be more efficient for users, especially those which typically interact with their system via a touchpad. This is always changeable via Nautilus' Behavior section of its Preferences.
 - Enabled show-image-thumbnails for all devices, so that will include network shares (Samba).
 - Set recursive-search to local-only so it's not trying to search across every possible device you have and causing it to choke on lower-end systems

Additionally, Solus GNOME Edition now ships with GNOME Photos out of the box, enabling easier photo management and editing!

### MATE

Our ISO refresh of Solus MATE Edition introduces some changes to our default branding, such as:

- panel
 - Add a separator after the clock, improving readability.