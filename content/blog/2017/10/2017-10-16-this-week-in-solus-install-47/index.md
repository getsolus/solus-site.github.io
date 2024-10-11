---
title: "This Week in Solus - Install #47"
author: "joshua"
categories:
- news
- twis
date: 2017-10-16T05:24:54+03:00
featuredimage: "/gnome-shell-3_26_1.jpg"
url: "/2017/10/16/this-week-in-solus-install-47"
---

Welcome to This Week in Solus, Install #47. It's been a real extraordinary week for us, rolling out updated GNOME and gstreamer stacks, LLVM and systemd upgrades, improvements to linux-steam-integration, and more! So let's get started.
<!--more-->

### OMG Weekendtoberfest

#### GNOME and gstreamer

With the release of the GNOME 3.26.1 stack last week, Bryan and I planned out our OMG Weekendtoberfest, deciding to upgrade both our GNOME stack as well as gstreamer. The idea behind this was to reduce the amount of rebuilds that would need to occur, since most applications would need to be rebuilt as a result of glib2, libsoup, GTK3, etc. upgrades anyways.

{{< relimg "spreadsheet-simulator-2017.jpg">}}
*Spreadsheet Simulator 2017*

In total, roughly 400 packages were either upgraded or rebuilt across those two stack upgrades. Part of the GNOME stack upgrade also enabled us the opportunity to patch GNOME Control Center to integrate well into Solus, such as ensuring "Check for update" functionality that is exposed will open up the Solus Software Center. Mutter was patched to resolve an issue  that would cause desktops using it (Budgie Desktop and GNOME Shell in our case) to crash if a maximized window was closed. Furthermore, we're testing a patch for Mutter to hopefully reduce CPU usage when we're using NVIDIA drivers.

Time was spent on improving the state of Tracker and tracker-miners during the stack upgrade as well. Tracker has been updated to the 2.x series, with the current release being 2.0.1. tracker-miners uses our stateless XDG autostart directory and has been extensively enabled to support a plethora of audio, video, and multimedia formats.

gstreamer was updated to the latest of the 1.12 series, 1.12.3. 1.12.3 is primarily a bug fix release, however going from 1.10.x to 1.12 means a multitude of new features for Solus users, such as:

- A new `msdk` plugin for Intel's Media SDK for hardware-accelerated video encoding and decoding on Intel graphics.
- `matroskamux` has acquired support for muxing G722 audio.
- GStreamer's OpenGL integration library has seen numerous performance improvements.
- A plethora of improvements and new additions to gstreamer APIs.
- The DASH demuxer now correctly parses the MSPR-2.0 ContentProtection nodes and emits Protection events accordingly.

#### Meson, mozjs and systemd

As part of this OMG Weekendtoberfest, we upgraded our Meson and synced ypkg with some changes and fixes we had in git, specifically:

- Our Meson actionable macros will now pass `LC_ALL=en_US.utf8`
- Peter provided support for appropriate patterning of KDE developer documentation, such as QCH files used by qt-creator and kdevelop.
- Peter updated our qmake4 actionable macro to now provide an lrelease override, which he came across while fixing x2goclient.

We upgraded our mozjs as well as moved towards completely deprecating previous versions. There is still more work to be done on that front, but we're really happy with the progress that has been made so far.

An unexpected part of this stack upgrade was in fact systemd, which had originally been slated to be upgraded at some later point, indicated on our Meta Post-Release blues task. However as a result of some additional dependencies in the GNOME 3.26 stack, Ikey spent Sunday evening bringing our systemd up to the latest (which is 235, at the time of the event and of this publication), as well as ensuring a smooth transition with libgudev now being a separate library.

This systemd upgrade also ensures our PAM configuration is not modified by systemd-tmpfiles and corrects a unit failure that was referencing nsswitch incorrectly.

We look forward to evaluating all the new features and functionality in the newer systemd releases,  such as [Dynamic Users](http://0pointer.net/blog/dynamic-users-with-systemd.html), in the future!

### LLVM Upgrade and Further Polish

You would think that two stack upgrades and systemd would be enough for us, but why stop there? On Monday, Ikey upgraded our LLVM to 5.0.0.

More polish and touches on the GNOME stack and various GNOME or GTK applications were made, such as:

- GNOME Calendar: Reported ownCloud as an account option when in reality the Gnome Online Accounts type is Nextcloud, so that's been patched.
- GNOME Online Accounts had its Todoist support enabled.
- Epiphany was modified so the Solus blog is the default homepage, keeping it consistent with what we do with Firefox.
- We've enabled properly exiting Noise, even when music is playing.

Our GNOME desktop branding was updated to show basic file type information in Nautilus' list view, as well as experimenting with enabling the Create Link (symbolic links) out-of-the-box.

### Improvements to Linux Steam Integration

{{< relimg "liblsi-intercept.jpg" >}}

Linux Steam Integration has seen 3 releases this week and features a new "liblsi-intercept", which controls the dynamic linking for Steam binaries, resolving some long-standing issues such as crashes on start, broken fullscreen views, and ensures that the Steam client uses OS-provided libraries. liblsi-intercept also provides a whitelist to allow Steam to continue to load its own private libraries and our intercept behavior is controlled on a process-name basis.

What does this mean? Well it means the Steam client is now using more system libraries, such as SDL, which fixes crashes as well as fullscreen issues when watching a game trailer in the store.

Our liblsi-intercept also includes a fallback "vendor offendor" mode, ensuring certain vendored libraries are **blacklisted**, which ensures many games, including Black Mesa, will work correctly on the open source drivers. This matters for distributions using the new C++ ABI and games shipping the old C++ ABI as a vendored lib.

{{< relimg "liblsi-intercept-blackmesa.jpg" >}}

It resolves the typical issue seen in Steam on open source drivers:

``` bash
libGL error: unable to load driver: i965_dri.so
libGL error: driver pointer missing
libGL error: failed to load driver: i965
libGL error: unable to load driver: i965_dri.so
libGL error: driver pointer missing
libGL error: failed to load driver: i965
libGL error: unable to load driver: swrast_dri.so
libGL error: failed to load driver: swrast
```

Solus users currently have a git-based Linux Steam Integration, that features further improvements to liblsi-intercept. For starters, we ensure use of vendor-provided libGL, libGLES*, libGLU, and libGLEW. During testing with DiRT Rally, it was discovered that it had shipped with altered sonames of its libraries and linked to those, ensuring they never match the system versions. This however will lead to a mixed SDL2 stack for those disabling the Steam runtime, and in turn forces older builds of SDL to be used. To combat this, we intercept soname requests during early linking based on a simple pattern, and if they don't match the expected target name, we'll rewrite the request in place to force the linker to look for the real soname. In combination with the existing lsi_blacklist_vendor function, this ensures that a game looking for `libSDL2-2.0.5.so` will correctly load the system's own `libSDL2-2.0.so.0`.

We have taught liblsi-intercept to rewrite dlopen requests for XNA. This means that Mono games such as Stardew Valley, which previous loaded paths locally using `dlopen()`, are now detected and and we attempt to rewrite those to meet system paths, forcing `dlopen()` to resolve to system SDL, openAL, etc.

Lastly, liblsi-intercept now has rewrite rules for ABI-stable SDL2 components (SDL2_TTF, etc) and we'll also now blacklist any attempts at loading vendored security-critical libraries, such as OpenSSL or curl.

### Driverless Printing

{{< relimg "driverless-printing.jpg" >}}

Driverless printing is now supported under Solus, meaning if you have a driverless printer (AirPrint, IPP Everywhere, etc.), it'll just show up in the printer list (assuming you've rebooted since upgrading on stable). No need to add or configure it!

---

### Package Highlights

Alongside all the above mentioned improvements and upgrades, a staggering amount of packages have been updated. We certainly won't go over the entire list, but here's a few that might stand out!

**Added**

- libratbag
- piper

**Updated:**

- adapta-gtk-theme 3.91.2.241
- atom 1.21.1
- avahi: Ensure avahi achivates by dbus + socket
- borg: Add fuse support
- budgie-desktop: Revert size animations
- cups-filters: Enable automagic driverless printing configuration on startup
- gnome-mpv 0.13
- gnuchess 6.2.5
- julia: Update to latest git snapshot, make stateless, support LLVM 5.0
- keepass 2.37
- lbry-app 0.17.0
- lollypop 0.9.304
- lzop 1.04
- mgba 0.6.1
- mpd: Enablement run
- numix-gtk-theme 2.6.7
- nodejs 8.7.0
- openjdk-8 8.162
- php 7.1.10
- qownnotes 17.10.5
- qupzilla 2.2.0
- rofi 1.4.2
- samba 4.7.0
- sc-controller 0.3.16
- silver-searcher 2.1.0
- smplayer 17.0.0
- smtube 17.5
- sqlite3: Enable FTS5
- wire 2.17.2813
- yarn 1.2.1