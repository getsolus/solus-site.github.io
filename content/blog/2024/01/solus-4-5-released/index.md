---
title: "Solus 4.5 Released"
author: "david"
categories:
  - news
  - releases
date: 2024-01-08
featuredimage: "/solus-4.5-featured.jpg"
url: "/2024/01/08/solus-4-5-released"
---

The Solus team is proud to announce the release of Solus 4.5 _Resilience_. This release brings updated applications and kernels, refreshed software stacks, a new installer, and a new ISO edition featuring the XFCE desktop environment.

<!--more-->

## General

### Installer

With Solus 4.5 comes a new installation experience using the [Calamares installer](https://calamares.io). This enables easier installation using filesystems like BTRFS, specifying your own partition layout right in the installer, and it's a major step in migrating away from Python 2, which the old `os-installer` was written in. A ton of work has gone into the new installation experience, and we are glad to finally release it to everyone!

### Default applications

All our editions feature:

- Firefox 121.0
- LibreOffice 7.6.4.1
- Thunderbird 115.6.0

For audio and video multimedia playback, we offer software out-of-the-box that caters specifically to our desired experience for each edition.

- Budgie and GNOME editions ship with Rhythmbox for audio playback, with the latest release of the Alternate Toolbar extension to provide a more modern user experience.
- Budgie and GNOME ship with Celluloid for video playback.
- XFCE ships with Parole for multimedia playback.
- Plasma ships with Elisa for audio playback and Haruna for video playback.

### Pipewire by default

Pipewire is now the media framework for Solus, replacing PulseAudio and JACK. Users should notice no difference in the UI. You may notice improvements, such as better and more reliable Bluetooth audio. For a demonstration of pipewire's out-of-the-box capabilities, see [this forum post](https://discuss.getsol.us/d/9596-showcase-noise-reduction-with-pipewire-and-easyeffects) about noise reduction for microphone inputs.

### ROCm support for AMD hardware

We now package [ROCm](https://www.amd.com/en/products/software/rocm.html) 5.5 for users with supported AMD hardware. This provides GPU acceleration for applications like Blender, and enables hardware accelerated machine learning with support for PyTorch, llama.cpp, stable diffusion, and many other AI software and tools. We have done additional work to extend the compatibility of ROCm to as much hardware as possible, including some not officially supported by AMD. ROCm 6.0 is coming Soon™ which will further improve the performance of GPU-accelerated workflows.

### Hardware and kernel enablement

This release of Solus ships with Linux kernel 6.6.9. For those needing an LTS kernel we provide 5.15.145.

The 6.6.9 kernel brings wider hardware support and some interesting configuration changes. Some highlights:

- Our kernel config now enables all Bluetooth drivers, sound codecs, and sound drivers
- `schedutil` is now the default CPU governor
- Kernel modules are no longer compressed during initramfs creation, reducing boot times
- We have modified our kernel to use the [BORE scheduler](https://github.com/firelzrd/bore-scheduler) by default. This is a modification of the default CFS scheduler optimized for interactive desktops. Under heavy CPU load the system will try to prioritize processes that it thinks are interactive, maintaining a responsive feel.

Mesa has been upgraded to 23.3.2. This introduces various improvements:

- Device-select and overlay vulkan layers are now enabled
- Added gallium zink driver
- Added gallium VAAPI driver
- Added IO support for built-in opengl overlay
- Added Vulkan support for Intel 7th/8th gen GPUs (which really aren't performant enough to make use of it but some hardware acceleration is better than nothing)
- Added ray-tracing support for Intel XE GPUs
- Added experimental Virtio Vulkan driver

## Budgie

{{< altimg "Budgie.jpg" "/release-images/4.5/" >}}

Solus ships with [Budgie 10.8.2](https://blog.buddiesofbudgie.org/budgie-10-8-2-released/), the latest release of the Budgie Desktop. Since the release of Solus 4.4, our friends over at _Buddies of Budgie_ have been steadily improving the user experience of Budgie and laying the groundwork for Wayland support.

### Dark style preference support

The "Dark Theme" toggle in Budgie Settings now also sets the dark theme preference for applications. Some applications may override this with a specific color scheme; for example a photo editor may prefer a dark canvas. Even so, this standardized, vendor-neutral setting should help to create a more consistent experience for our users.

### Budgie trash applet

The _Budgie Trash Applet_, developed by Buddies of Budgie and Solus team member Evan Maddock, is now part of the default applets available on all Budgie installations. With this applet, users can efficiently empty their trashcan and browse contents for possible restoration.

### Quality-of-life improvements

- System tray icons can optionally scale with panel size.
- Notification system improvements, including slightly decreased memory usage.
- System tray improvements around inconsistent `StatusNotifierItem` implementations.
- Keyword support is now supported in fuzzy searching in Budgie Menu and Run Dialog: search terms like "browser" or "editor" should return better results.
- The privilege escalation dialog will now show the action description and action ID when graphical privilege escalation is requested.
- The battery indicator in the Status applet now enables users to chose power profile modes on supported systems.

Upstream release notes can be found [here](https://blog.buddiesofbudgie.org).

## GNOME

{{< altimg "GNOME.jpg" "/release-images/4.5/" >}}

Solus 4.5 GNOME Edition ships with GNOME 45.2

### Defaults configuration changes

- The [Speedinator](https://github.com/tehsquidge/speedinator) extension replaces Impatience to speed up animations in Gnome Shell.
- The default GTK theme is now set to `adw-gtk3-dark` to provide a uniform look for GTK3 and GTK4 applications based on `libadwaita`.
- New windows are centered by default.
- Timeout for the "Application not responding" prompt is increased to 10s.

### Bug Fixes, cleanup & quality-of-life improvements

- GNOME's file chooser now has a grid view, closing a long-standing feature request. You can now pick files based on thumbnails.
- Mouse and touchpad settings are now demonstrated visually.
- New accessibility settings have been added: sound over-amplification, enable accessibility features using the keyboard, permanent scrollbar visibility
- GNOME Settings now includes a Security menu showing the status of SecureBoot

Upstream release notes can be found [here](https://release.gnome.org/)

## Plasma

{{< altimg "Plasma.jpg" "/release-images/4.5/" >}}

Solus 4.5 Plasma Edition ships with the latest Plasma Desktop, KDE Frameworks, KDE Gear, and, the KDE branch for QT, which largely brings bugfixes and translation updates

- [Plasma 5.27.10](https://kde.org/announcements/plasma/5/5.27.10/)
- [KDE Gear](https://kde.org/announcements/gear/23.08.4/)
- [QT 5.15.11](https://code.qt.io/cgit/qt/qtreleasenotes.git/about/qt/5.15.11/release-note.md)
- [sddm 0.20.0](https://github.com/sddm/sddm/blob/v0.20.0/ChangeLog)

Plenty of work has also been done for the future of the Plasma edition. We are slowly introducing Plasma 6 support, in anticipation of the first stable release from the KDE developers, expected later this year.

### Defaults configuration changes

- Past Solus team member Girtabulu [gave us](https://github.com/getsolus/plasma-desktop-branding/pull/2) lots of little fixes to our custom theme.
- Default to double click to open.
- New folders opened by external applications in Dolphin now open in a new tab.

## XFCE

{{< altimg "XFCE.jpg" "/release-images/4.5/" >}}

In the [Solus 4.4 release post](/2023/07/08/solus-4-4-released) we announced our intention to deprecate the MATE Edition in favor of a new XFCE edition. The XFCE edition aims to fill the same niche as the MATE edition: users who prefer a more lightweight desktop experience.

As this is the first release if the XFCE edition, there may be some rough edges, even with all the time taken to make the experience smooth. We are calling the 4.5 release of XFCE a _beta_ release.

The new XFCE edition includes:

- XFCE version 4.18
- Mousepad 0.6.1
- Parole 4.18.0
- Ristretto 0.13.1
- Thunar 4.18.6
- Whiskermenu 2.8.0

Our XFCE edition features a traditional desktop layout with a bottom panel and Whiskermenu as the application menu. It is using the Qogir GTK theme with the Papirus icon theme for a sleek and modern look. Blueman comes installed for all of your Bluetooth needs. This edition has taken a lot of work, and we are excited to share it with you all!

## Future of MATE installations

We are still working on a seamless transition path for existing users of the MATE desktop. In broad terms, we will provide a way for users to transition their MATE installations to Budgie or XFCE. MATE will continue to be supported for existing users until we are confident in our transition plan.

## Download

Go to our [Download](/download) page and select direct download or torrent. Happy installing!

## Thank you

Big thanks to everyone backing us on OpenCollective. You have funded direct compensation of developer work, covered our modest infrastructure costs, and provided valuable ISO testing prior to the wide public release. If you are not a backer and that sounds like something you would like to be a part of, consider supporting us on [Open Collective](https://opencollective.com/getsolus).

We have updated the perks backers get for supporting us. We're now providing access to more ISOs over time, as well as snapshots of all desktop environments (not just Budgie). You can read more about it on [our forums](https://discuss.getsol.us/d/10086-updated-perks-for-open-collective-backers).

Thanks also to all of you who have helped build the Solus community; we love all your contributions! We encourage anyone who want to join the wider Solus community to check out the dedicated [Getting Involved page](https://help.getsol.us/docs/user/contributing/getting-involved) on our Help Center site.

## Future

2023 was certainly a busy year for Solus; we're excited to see what 2024 brings.

Behind the scenes, we made many improvements in 2023 to our tooling and infrastructure. While end users don't see most of this directly, it means we are able to maintain and update Solus more efficiently. What end users _will_ see is overall improvement in packages being kept up to date. Packagers and developers will notice many quality of life improvements, which enable our plans to migrate to Serpent tooling in 5.0. One of our future blog posts will summarize these changes.

In the meantime, here's a brief overview of the work we plan to tackle in early 2024. We are working to provide Discover in Plasma and Software Center in GNOME for software management with integrated flatpak support. We will be paying down technical debt by fixing bugs, updating system components, and completing the migration off of `python2`. You can follow our progress on the 4.6 milestone [on GitHub](https://github.com/orgs/getsolus/projects/7/views/9). We also plan to explore how to start migrating to Serpent tooling in preparation for 5.0.

Keep an eye on this space to see how things progress, and what other things we are working on in 2024.
