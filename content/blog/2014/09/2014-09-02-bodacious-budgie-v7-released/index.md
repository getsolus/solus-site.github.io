---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- budgie
date: "2014-09-02T00:31:27Z"
title: Bodacious Budgie (v7) Released!
url: /2014/09/02/bodacious-budgie-v7-released/
---

Well, its that time again. We're pleased to announce v7 of Budgie Desktop, aka Bodacious Budgie! The name was chosen entirely at random in an even more random <a href="https://plus.google.com/+IkeyDoherty/posts/MdmCnY7dCqs"Google+ post</a>. Long story short we made it more sexy, a bit more stable, whacked in a tray and a notifications applet, as well as a working sound menu.
<!--more-->

This release represents 54 commits, with 53 files changed, 4524 insertions and 157 deletions. We call it v7.

![relimg](/release_images/7notification.png)

### So what's new?

Glad you asked. To put it briefly, we added notifications support (Big thanks to Josh Klar for his help!), added an initial X11 tray (notification area) which will eventually be superseded by appindicator support, fixed a fair few bugs with session and widgets, and Budgie Popovers now use "native" GtkPopover styling, even though they're not. In short, it allows the sexiness of your theme to continue with Budgie.

### Summary of changes
- New notification daemon support (freedesktop)
- X11 tray support (temp until new appindicator comes in)
- Native popover rendering
- Various popover placement/sizing fixes
- Volume control via new settings popover (no mute yet.)
- Hide power applet when no battery is found
- Various multihead tweaks
- Scroll with mouse to change volume
- Integration with GNOME clock settings
- Split libbudgiewidgets as shared library
- Initial shadow support (bottom panel only.)
- Vastly improve session logic (fixes frozen start, multiple instances)
- Do not ship .c files in make dist
- Enable changing of menu icon and label via gsettings key (no ui yet)

### Please note

Budgie is currently known not to start on GDM3.12 on certain distributions. Also remember that the Ubuntu and Fedora repositories are only compiled for GNOME 3.10, not GNOME 3.12, so you may either have unresolvable dependencies (Ubuntu) or undefined behaviour (Fedora)

### Obligatory excess screenshot section

![relimg](/release_images/7sound-menu.png)

![relimg](/7gnome-panel-mode.png)