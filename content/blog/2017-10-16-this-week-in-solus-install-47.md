---
title: "This Week in Solus - Install #47"
author: "joshua"
categories:
- news
- twis
date: 2017-10-16T05:24:54+03:00
featuredimage: "/2017/10/gnome-shell-3_26_1.jpg"
url: "/2017/10/16/this-week-in-solus-install-47"
---

Welcome to This Week in Solus, Install #47. It's been a real extraordinary week for us, rolling out updated GNOME and gstreamer stacks, LLVM and systemd upgrades, improvements to linux-steam-integration, and more! So let's get started.
<!--more-->

### OMG Weekendtoberfest

#### GNOME and gstreamer

With the release of the GNOME 3.26.1 stack last week, Bryan and I planned out our [OMG Weekendtoberfest](https://dev.solus-project.com/T4672), deciding to upgrade both our GNOME stack as well as gstreamer. The idea behind this was to reduce the amount of rebuilds that would need to occur, since most applications would need to be rebuilt as a result of glib2, libsoup, GTK3, etc. upgrades anyways.

{{<altimg "2017/10/spreadsheet-simulator-2017.jpg">}}
*Spreadsheet Simulator 2017*

In total, roughly 400 packages were either upgraded or rebuilt across those two stack upgrades. Part of the GNOME stack upgrade also enabled us the opportunity to patch GNOME Control Center to integrate well into Solus, such as ensuring "Check for update" functionality that is exposed will open up the Solus Software Center. Mutter was patched to resolve an issue  that would cause desktops using it (Budgie Desktop and GNOME Shell in our case) to crash if a maximized window was closed. Furthermore, we're [testing a patch for Mutter](https://dev.solus-project.com/R2123:073872457254a8416dd9000f339f612722629947) to hopefully reduce CPU usage when we're using NVIDIA drivers.

Time was spent on improving the state of Tracker and tracker-miners during the stack upgrade as well. Tracker has been updated to the 2.x series, with the current release being 2.0.1. tracker-miners uses our stateless XDG autostart directory and has been extensively enabled to support a plethora of audio, video, and multimedia formats.

gstreamer was updated to the latest of the 1.12 series, 1.12.3. 1.12.3 is primarily a bug fix release, however going from 1.10.x to 1.12 means a multitude of new features for Solus users, such as:

- A new `msdk` plugin for Intel's Media SDK for hardware-accelerated video encoding and decoding on Intel graphics.
- `matroskamux` has acquired support for muxing G722 audio.
- GStreamer's OpenGL integration library has seen numerous performance improvements.
- A plethora of improvements and new additions to gstreamer APIs.
- The DASH demuxer now correctly parses the MSPR-2.0 ContentProtection nodes and emits Protection events accordingly.

#### Meson, mozjs and systemd

As part of this OMG Weekendtoberfest, we upgraded our Meson and [synced ypkg](https://dev.solus-project.com/R3305:c1b4f208c218c7e8add5fdbd7eb9d49e2868e8c7#162c5f88) with some changes and fixes we had in git, specifically:

- Our Meson actionable macros will now pass `LC_ALL=en_US.utf8`
- Peter provided support for appropriate patterning of KDE developer documentation, such as QCH files used by qt-creator and kdevelop.
- Peter updated our qmake4 actionable macro to now provide an lrelease override, which he came across while fixing x2goclient.

We [upgraded our mozjs](https://dev.solus-project.com/T4686) as well as moved towards completely deprecating previous versions. There is still more work to be done on that front, but we're really happy with the progress that has been made so far.

An unexpected part of this stack upgrade was in fact systemd, which had originally been slated to be upgraded at some later point, indicated on our [Meta Post-Release blues](https://dev.solus-project.com/T4235) task. However as a result of some additional dependencies in the GNOME 3.26 stack, Ikey spent Sunday evening [bringing our systemd up to the latest](https://dev.solus-project.com/R2999:61ecf2d0a5da3cef387efe5063b75938600845b6) (which is 235, at the time of the event and of this publication), as well as ensuring a smooth transition with libgudev now being a separate library.

This systemd upgrade also [ensures our PAM configuration is not modified by systemd-tmpfiles](https://dev.solus-project.com/R2999:ffb2149ca31ae484822750ed3f1d21d47457a24c) and [corrects a unit failure that was referencing nsswitch incorrectly](https://dev.solus-project.com/R2999:a6552f6d4e23fde0eaf2da1829c935958651ce7e).

We look forward to evaluating all the new features and functionality in the newer systemd releases,  such as [Dynamic Users](http://0pointer.net/blog/dynamic-users-with-systemd.html), in the future!

### LLVM Upgrade and Further Polish

You would think that two stack upgrades and systemd would be enough for us, but why stop there? On Monday, Ikey upgraded our LLVM to 5.0.0.

More polish and touches on the GNOME stack and various GNOME or GTK applications were made, such as:

- GNOME Calendar: Reported ownCloud as an account option when in reality the Gnome Online Accounts type is Nextcloud, so that's been patched.
- GNOME Online Accounts had its Todoist support enabled.
- Epiphany was modified so the [Solus blog is the default homepage](https://dev.solus-project.com/R707:5c63226823fd6568ed80466e96a931b46111b3bb), keeping it consistent with what we do with Firefox.
- We've enabled properly exiting Midori, [even when music is playing](https://dev.solus-project.com/R2178:0152427ce249bb30f623030e69bbed565793fbca).

Our GNOME desktop branding was [updated](https://dev.solus-project.com/R957:39e585e35b69fc4989f8fc309225c2b5b47a6de6) to show basic file type information in Nautilus' list view, as well as experimenting with enabling the Create Link (symbolic links) out-of-the-box.

### Improvements to Linux Steam Integration

{{<altimg "2017/10/liblsi-intercept.jpg" >}}

Linux Steam Integration has seen 3 releases this week and features a new "liblsi-intercept", which controls the dynamic linking for Steam binaries, resolving some long-standing issues such as crashes on start, broken fullscreen views, and ensures that the Steam client uses OS-provided libraries. liblsi-intercept also provides a whitelist to allow Steam to continue to load its own private libraries and our intercept behavior is controlled on a process-name basis.

What does this mean? Well it means the Steam client is now using more system libraries, such as SDL, which fixes crashes and fullscreen issues when watching a game trailer in the store.

Our liblsi-intercept also includes a fallback "vendor offendor" mode, ensuring certain vendored libraries are **blacklisted**, which ensures certain games like Black Mesa will work correctly on the open source drivers. This matters for distributions using the new C++ ABI and games shipping the old C++ ABI as a vendored lib.

{{<altimg "2017/10/liblsi-intercept-blackmesa.jpg" >}}

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

Solus users currently have a git-based Linux Steam Integration, that features further improvements to liblsi-intercept. For starters, we ensure use of vendor-provided libGL, libGLES*, libGLU, and libGLEW. We transmute sonames for Feral Interactive games. 

From the words of Ikey:

> During testing with DiRT Rally, it was discovered that Feral Interactive have altered the sonames of their libraries and linked to those, ensuring they never match the system versions. This however will lead to a mixed SDL2 stack for those disabling the Steam runtime, and in turn forces older builds of SDL to be used. To combat this, we intercept soname requests during early linking based on a simple pattern, and if they don't match the expected target name, we'll rewrite the request in place to force the linker to look for the real soname.
> 
> In combination with the existing lsi_blacklist_vendor function, this ensures that a game looking for `libSDL2-2.0.5.so` will correctly load the system's own `libSDL2-2.0.so.0`.

We also blacklist games from replacing security-sensitive libcurl and have taught liblsi-intercept to rewrite dlopen requests for XNA. This means that Mono games such as Stardew Valley, which previous loaded paths locally using `dlopen()`, are now detected and and we attempt to rewrite those to meet system paths, forcing `dlopen()` to resolve to system SDL, openAL, etc.

Lastly, liblsi-intercept now has rewrite rules for SDL2 TTF and we now prevent games, for example HyperLightDrifter, from loading ancient SSL libraries.

### Driverless Printing

{{<altimg "2017/10/driverless-printing.jpg" >}}

Driverless printing is now supported under Solus, meaning if you have a driverless printer (AirPrint, IPP Everywhere, etc.), it'll just show up in the printer list (assuming you've rebooted since upgrading on stable). No need to add or configure it!

---

### Package Highlights

Alongside all the above mentioned improvements and upgrades, a staggering amount of packages have been updated. We certainly won't go over the entire list, but here's a few that might stand out!

**Added**

- [libratbag](https://dev.solus-project.com/source/libratbag/repository/master/)
- [piper](https://dev.solus-project.com/source/piper/repository/master/)

**Updated:**

- [adapta-gtk-theme 3.91.2.241](https://dev.solus-project.com/R338:b950c343b4219094161382b499246d786675b2aa)
- [atom 1.21.1](https://dev.solus-project.com/R394:6d4b96345b85ead746b4c847042dad4a0e34ed46)
- [avahi: Ensure avahi achivates by dbus + socket](https://dev.solus-project.com/R412:6bd7c009ca89fdb93e3517272d22cf94ce6ca7f3)
- [borg: Add fuse support](https://dev.solus-project.com/R445:0c5c6a0e0dc26f0686b7c44e6630d5c91b228e38)
- [budgie-desktop: Revert size animations](https://dev.solus-project.com/R465:886f97f41c131a17ba685f7ae9025ddf80a11eaf)
- [cups-filters: Enable automagic driverless printing configuration on startup](https://dev.solus-project.com/R576:e00a5620ba2074585a7da70287a1a2eaecb9b0ba)
- [gnome-mpv 0.13](https://dev.solus-project.com/R975:f6b9e08d2d3100f72f4b8106b685162c216a5778)
- [gnuchess 6.2.5](https://dev.solus-project.com/R1021:501aeaf40003e767f368eaf97001d9d0d8103dd6)
- [julia: Update to latest git snapshot, make stateless, support LLVM 5.0](https://dev.solus-project.com/R1510:ed99c0e9e2dada47edd3825dd01490067219acd5)
- [keepass 2.37](https://dev.solus-project.com/R1542:57449abf64687577ff0b5baf85ea4487ae772de7)
- [lbry-app 0.17.0](https://dev.solus-project.com/R3654:ccdb1d505dea2d3cbf2d74e493e3cd67834c827e)
- [lollypop 0.9.304](https://dev.solus-project.com/R1978:a944e80b74dee9ecd990c76f73d497a7d3dfa85c)
- [lzop 1.04](https://dev.solus-project.com/R2003:1bcc4fdc6102096e071893798c9a8b66ab79de5f)
- [mgba 0.6.1](https://dev.solus-project.com/R2070:a8e9ae0870205d8dfe182e44a6fd52c6c0a7ae3b)
- [mpd: Enablement run](https://dev.solus-project.com/R2103:b1234a127b75b189655f508926c593555ae47efa)
- [numix-gtk-theme 2.6.7](https://dev.solus-project.com/R2186:d703bdccf26e98bd891ad8d89fdae950b60d89f3)
- [nodejs 8.7.0](https://dev.solus-project.com/R2177:db5d40575e6fb7626fea08a4c8d6ed3d7b216a4c)
- [openjdk-8 8.162](https://dev.solus-project.com/R2242:879f1ece91bef4fdde80d3138949345f708469c1)
- [php 7.1.10](https://dev.solus-project.com/R2424:e8c856f9bed0e6d2db9219374ce94c3d3dd19364)
- [qownnotes 17.10.5](https://dev.solus-project.com/R2730:d7145da58c331508b7ad6b6351e675f86cb72e2e)
- [qupzilla 2.2.0](https://dev.solus-project.com/R2775:1074c11be458f484fdec65a0b720a182a91cd634)
- [rofi 1.4.2](https://dev.solus-project.com/R2821:33be932e826095c01b1ccf7f8932c64e77944154)
- [samba 4.7.0](https://dev.solus-project.com/R2842:37653792fe82deec52ac353daa9513780bce67dc)
- [sc-controller 0.3.16](https://dev.solus-project.com/R2854:a1bf6a1c5fe20295360a4eaa7610a44a9956db67)
- [silver-searcher 2.1.0](https://dev.solus-project.com/R2905:eee861d4cf48f97cd14e8d558ef23b41304f3321)
- [smplayer 17.0.0](https://dev.solus-project.com/R2916:8a594ae36b2ef63193d0ea32d9c0299b41225dc2)
- [smtube 17.5](https://dev.solus-project.com/R2918:ac2e740aabbcd9e83dc06160c246da86186441ea)
- [sqlite3: Enable FTS5](https://dev.solus-project.com/R2955:370f0e60dcbc5db67249eb42384dfafaeeac3748)
- [wire 2.17.2813](https://dev.solus-project.com/R3172:826c6db16588c1e62fd94c043c94e70be821e5c8)
- [yarn 1.2.1](https://dev.solus-project.com/R3298:de4f37c514266d298e49947d2cc14e02a780919a)