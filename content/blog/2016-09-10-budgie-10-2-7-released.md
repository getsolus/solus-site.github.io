---
author: joshua
categories:
- Budgie
- News
date: 2016-09-10T14:07:01Z
id: 1657
title: Budgie 10.2.7 Released
url: /2016/09/10/budgie-10-2-7-released/
--- 
We're thrilled to announce the release of Budgie 10.2.7, the last release in our 10.2 series that aims to resolve a multitude of issues as well as land some user experience improvements. 

 #### Budgie Applet Improvements

We've made numerous improvements to Budgie applets for 10.2.7.

 ##### Consistent Actions

Our Budgie panel applets used a mix of left and right click. This is no longer the case, with all actions utilizing left-click, and we've introduced more popovers to enable quick access to settings exposed elsewhere on your system, such as launching power 
settings via the battery / power applet.

 ##### Icon Tasklist

Our Icon Tasklist now enforces a 1:1.1 aspect ratio, which should help alleviate the feeling of items being overly compressed. We have added automatic icon size scaling as well, thus eliminating the need for the "larger icons" setting we have previously, 
which breaks consistency in the panel.

{{< altimg "2016/09/icon-tasklist.png" >}}

 #####Keyboard Layout Indicator

Are you a multi-lingual or use multiple keyboard layouts? We now provide a mouse-driven method for switching between them, alongside our existing Super+Space shortcut.

<video class="aligncenter" src="https://solus-project.com/wp-content/uploads/2016/09/keyboard-layout-vid.mp4" autoplay="autoplay" loop="loop" controls="controls" width="600px" height="400px"></video>

 #####Raven Sidebar Control

We also now provide a dedicated Raven Sidebar Control that enables quick, mouse-driven access to the Applets View of Raven, which complements our existing offering of keyboard-driven access to Raven, such as Super+A for Applet View and Super+N for 
Notifications View.

{{< altimg "2016/09/raven-sidepane-control.png" >}}

 ##### User Indicator

Budgie 10.2.7 introduces our new User Indicator. This indicator gives the user quick access to logout, lock, suspend (**automatically locks the system too**), restart and shutdown their system.

{{< altimg "2016/09/user-indicator.png" >}}

 #### Iconography

Budgie 10.2.7 more broadly tackles issues with inconsistent application iconography. You should now find that a multitude of games and common applications follow your icon theme, such as the ones shown below!

{{< altimg "2016/09/icon-fixes.png" >}}

**Ironically the FreeOrion icon here isn't consistent. But you get the idea.**

 #### On Screen Displays

On Screen Displays (**typically just called OSDs**) have landed in Budgie 10.2.7, for when you change brightness or volume levels, as shown below!

{{< altimg "2016/09/osd.png" >}}

<video class="aligncenter" src="https://solus-project.com/wp-content/uploads/2016/09/ods.mp4" autoplay="autoplay" loop="loop" controls="controls" width="600px" height="400px"></video>

 #### Raven Improvements

 ##### Media Player Access

When playing content via a media player that supports being "raised" (**essentially, bringing it into focus and unminimizing if necessary**), you can now click the album art in the MPRIS applet to raise it. Note this raise functionality isn't broadly 
supported. Grabbing attention is not the same thing as grabbing focus, as such Lollypop, Rhythmbox, etc, only set an urgency hint and start flashing in the panel. Players like VLC don't even support the can_raise hint, but our hopes are that media players 
will more broadly support this functionality in the future and thusly make this feature in Raven's MPRIS applet more useful!

##### Notification Styling

Notifications in Raven now appear with consistent iconography sizing and spacing around the timestamp to improve readability.

#### Window Manager Improvements

Budgie's window manager has continued to receive improvements, such as:

- Enhanced all animations for immediate availability/snappiness.
- Have windows minimize in the direct of its respective icon.
- Only add fallback source when we can't detect anything (i.e. US). This stops the weird situation in which some users are being forced back to the US layout, even when they explicitly have their layout set, due to the current index not being set and rolling into 
the US fallback.
- Update the 'current' input-source when we change with Super+Space. This ensures that clients always know the active keyboard layout within Budgie, and exactly which one out of the available input-sources the WM will be using at any given time. In short, 
this enables a better keyboard indicator.
- We now preserve the current input-source between subsequent launches.

We have also implemented a "Disable unredirect" option in Raven and the window manager. Unredirecting the screen will let full-screen applications (i.e. GL games) render directly to the screen without interference from the compositor. Depending on your 
drivers, this may not always be desired, hence being optional. In some cases, it may help to improve performance of 3D games.

#### Other Fixes and Improvements

All those goodies aside, we've fixed numerous bugs in this release, such as:

- A one-pixel line where the wallpaper would be visible when a program is maximized in multi-monitor setups has been resolved.
- Budgie Menu gained a new option to let you open categories by rolling over them. This option is disabled by default, however one can enable it via the "Roll-over mouse" option in the Budgie Menu applet settings.
- Chrome apps should now be pinnable.
- Fixed a crash in the workspaces applet for GTK 3.20.
- Fixed the dreaded panel-applet-sort issue where sometimes one could see random sorting of the last couple applets on the panel.
- End Session dialogs will now provide context-specific description and actions, such as Cancel and Logout on a Logout dialog.
- Pin to Panel for items in the Icon Tasklist are now translatable.
- Refactored some components into budgie-daemon.
- Run Dialog will now quit after losing focus.