---
authors:
- image: https://avatars.githubusercontent.com/u/156574?v=4
  link: https://github.com/JoshStrobl
  name: Joshua Strobl
categories:
- news
- roundup
date: "2018-08-18T19:24:56+03:00"
featuredimage: /linux-4_17_17.jpg
title: 'You All Get A Stack Upgrade | The Roundup #8'
url: /2018/08/18/you-all-get-a-stack-upgrade
---

Welcome to The Roundup #8, your bytes of Solus news. In this roundup, we're talking about the multitude of stack upgrades that have been performed in the last week, as well as upcoming upgrades.
<!--more-->

## You All Get A Stack Upgrade

Since last week's The Roundup, we've performed a multitude of stack upgrades and made preparations for upcoming ones.

### KDE Frameworks 5

KDE Frameworks 5 has been updated to 5.49.0. A variety of improvements and fixes include:

- Breeze Icons: Add drive-optical icon
- KTextEditor
  - Proper fix for the raw string indenting auto-quoting
  - Fix indenter to cope with new syntax file in syntaxhighlighting framework
  - Show "Search wrapped" message in center of view for better visibility
- KTextWidgets
  - KFindDialog: give the lineedit focus when showing a reused dialog
- Plasma Framework
  - If an applet is invalid, it has immediately UiReadyConstraint
  - Fix fading node when one textured is atlassed
- Syntax Highlighting
  - CoffeeScript: fix templates in embedded JavaScript code & add escapes
  - CoffeeScript & JavaScript: fix member objects. Add `.ts` extension in JS
  - Use in-class member initialization where possible
  - Add Definition::::formats()
  - Add QVector<Definition> Definition::includedDefinitions() const
  - Add Theme::TextStyle Format::textStyle() const;
  - Python: fix escapes in quoted-comments

For the full announcement where the above mentioned items have been sourced, click [here](https://www.kde.org/announcements/kde-frameworks-5.49.0.php).

### Mesa

Mesa was updated early in the week to 18.1.5 and subsequently to 18.1.6. Both releases are bug fix releases on the 18.1 series and features changes such as:

- egl: Fix missing clamping in eglSetDamageRegionKHR
- egl: Fix leak of X11 pixmaps backing pbuffers in DRI3.
- i965: Sweep NIR after linking phase to free held memory
- r600: enable tess_input_info for TES
- radv: Disable disabled color buffers in rbplus opts.
- radv: emit a dummy ZPASS_DONE to prevent GPU hangs on GFX9
- radv: fix a memleak for merged shaders on GFX9
- radv: Fix number of samples used for binning.
- radv: make sure to wait for CP DMA when needed
- radv: Select correct entries for binning.

### dbus

dbus has been updated from the 1.10 legacy to the 1.12 stable series. By and large, this is an "under-the-hood" change that most users will neither notice nor be affected by, however it does introduce a variety of new APIs and configuration options that developers may find useful.

### gstreamer

gstreamer has been updated to 1.14.2, which is a bug fix release on top of the 1.14 series. A variety of fixes include:

- gstplayer: Fix duration-changed CRITICAL warning if duration did not actually change
- gst-editing-services: group: Fix handling clips that are added to a layer
- vaapi: fix issues with native EGL display
- vaapi: h264 encoder negotiation fixes
- webrtc: Fix transportsendbin to fix spurious shut-down failures in webrtcbin if DTLS negotiation hasn't completed yet.
- webrtc: Don't deadlock on blocked pads on shutdown

For the full changelog where the above mentioned items have been sourced, click [here](https://gstreamer.freedesktop.org/releases/1.14/#1.14.2).

## Upcoming Upgrades

### GCC

Peter will be performing a rebootstrap of our toolchain around GCC 8.2.0 this coming week.

### KDE Applications

Peter has already upgrade our KDE Applications to 18.08.0 in unstable, so you can look forward to getting that in next week's sync. Here's a summary of some of the improvements to look forward to:

- Dolphin
  - Create New menu items are no longer available when viewing the track
  - The context menu now includes more useful options, allowing you to sort and change the view mode directly.
  - The Settings dialog has been modernized to follow design guidelines and be more intuitive.
  - Various memory leak fixes
- Konsole
  - The "Find" widget will now appear on the top of the window without disrupting your workflow.
- Gwenview
  - Gwenview's statusbar now features an image counter and displays the total number of images.
  - It is now possible to sort by rating and in descending order. Sorting by date now separates directories and archives and was fixed in some situations.
  - Support for drag-and-drop has been improved to allow dragging files and folders to the View mode to display them, as well as dragging viewed items to external applications.
  - Enabled zooming by scrolling or clicking as well as panning also when the Crop or Red Eye Reduction tools are active.
  - Gwenview now zooms to the cursor's current position for Zoom In/Out, Fill and 100% zoom operations when using the mouse and keyboard shortcuts.
- KMail
  - Improvements in the travel data extraction engine. It now supports UIC 918.3 and SNCF train ticket barcodes and Wikidata-powered train station location lookup.
  - Support for multi-traveler itineraries was added
  - Now has integration with the KDE Itinerary app.
- Spectacle
  - In Rectangular Region mode, there is now a magnifier to help you draw a pixel-perfect selection rectangle.

We encourage you to read the [full announcement](https://www.kde.org/announcements/announce-applications-18.08.0.php) where the above mentioned items have been sourced, there is many more improvements!

### Linux Kernel

Bryan has upgraded our `linux-current` kernel in unstable to 4.17.17 as well as introducing [the following improvements](https://dev.solus-project.com/T6786):

- `CONFIG_NR_CPUS` has now been set to 64 for AMD Threadripper 32C/64T parts
- We've disabled `CONFIG_COMPAT_VDSO` to improve 32bit performance (benefits us for our emul32 enabled libs). This was largely in place to work around a bug in glibc and is no longer necessary.
- `CONFIG_USELIB` has been turned off.

### PostgreSQL 10

We'll be performing an upgrade to PostgreSQL 10 this coming week. If you have any databases using PostgreSQL, **be sure to dump them prior to upgrading during next week's sync**, and re-import them after the upgrade. We suggest reading the [Backup / Dump and Restore documentation](https://www.postgresql.org/docs/9.6/static/backup-dump.html) for PostgresSQL 9.6.

## Godot Reminder

Early this week we [announced](/2018/08/13/upcoming-upgrade-of-godot) our upcoming upgrade to Godot 3. As of yesterday's sync to stable, Godot users should now have Godot 3 available to them. If you use Godot and didn't see our PSA, we highly recommend reading it.

If you experience any issues with Godot 3, we suggest checking our dedicated [task](https://dev.solus-project.com/T6778).