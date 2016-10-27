---
author: joshua
categories:
- Budgie
- News
- Releases
date: 2016-10-19T05:08:18Z
id: 1731
title: Solus 1.2.1 Shannon Released
url: /2016/10/19/solus-1-2-1-shannon-released/
--- 

The Solus project is proud to announce the availability of Solus 1.2.1, delivered in the form of our main edition, which provides an unrivaled Budgie experience, as well as a new and welcomed addition to the Solus family, **Solus 1.2.1 MATE edition**. While 
Solus 1.2.1 is the first release to have a new addition, it is also the **last of our traditional releases** as we [shift towards the ISO snapshot model](https://solus-project.com/2016/07/24/replacement-of-release-schedule/), which better reflects 
our agility and iteration speed.

#### Budgie

{{< altimg "2016/10/Solus-Budgie.png" >}}

Solus 1.2.1 is the **first place to experience** the latest Budgie 10.2.8, which introduces a multitude of new features and fixes! Budgie 10.2.8 ships on our primary ISO, alongside a fresh set of artwork graciously provided by 
[Twisted Pixels Photography](http://www.twistedpixelsphotography.com/).

##### IBUS Support

{{< altimg "2016/10/IBUS.png" >}}

Budgie 10.2.8 delivers IBUS (Intelligent Input Bus) support to enable multi-lingual input, most commonly leveraged by Asian input method editors. This will enable Budgie to be accessible to a broader set of our user base across a broader set of languages.

##### Places Indicator Applet

{{< altimg "2016/10/Panel-Indicator-Applet-1.png" >}}

Budgie 10.2.8 introduces a new Budgie applet for use via the Budgie panel, called the Places Indicator Applet. The Places Indicator Applet not only enables quick access to a User's Documents, Downloads, Music, etc. but the ability to open, mount, and 
unmount removable media and network shares.

##### OSD Design Improvements

{{< altimg "2016/10/OSD-Display-Comparison-1.png" >}}

The design of our On-Screen Displays for Brightness and Sound have received improvements to design, making them more spacious and increasing the size of the iconography.

##### Volume Applet Improvements

{{< altimg "2016/10/Volume-Applet.png" >}}

We have introduced a volume popover for the volume applet. While this may initially appear redundant, it is important to remember that Budgie is interacted in several different ways. While mouse users can scroll on the applet to adjust the volume, this 
isn't always easy, nor is it always intuitive or discoverable, when using a touchpad.

Another issue that arose post-10.2.7 was the "indicator-like" volume applet had no function. Therefore to increase consistency and usability, we provide a popover widget when left clicking the volume icon, with an adjustment scale and buttons similar to 
those found in media players, to make it very simple to control the system volume on the current stream.

##### Bug Fixes / Other Improvements

Alongside all the goodies above, a plethora of bug fixes and other improvements have been made, such as:

-   Applets
 -  Icon Tasklist icons are now longer squishing on login.
 -  Icon Tasklist now implements Exec-based mapping as the final fallback. This specifically fixes an instance where GIMP wasn't pinnable as the window class is "gimp-2.8".
 -  Keyboard Layout applet no longer steals input button focus.
 -  Status applet has been ported to upower 0.99 API. Prior to this fix, the remove signal would always result in a segfault, as we were trying to treat a string as a gobject.
 -  User Indicator now has a Hibernate option.
 -  We now ensure our appsystem is reloaded to immediately make available the pinning of a newly installed application.
-   Daemon 
 -  Addressed shadow on EndSessionDialog in composite race-condition.
 -  Ensure we always hide the User Indicator window and focus on the daemon window.
 -  Fix issues with OSD placement. Basically, the window allocation inexplicablly changes between shows of the window, resulting in a larger offset the second time around, moving the whole OSD one full unit east.
-   Data 
 -  We now provide fallback icons for pane-{hide,show}-symbolic icons created by horst3180, which are used in the Raven Sidebar Control. These are used in absence of the named icons within the theme itself, such as when using Adwaita.
-   Iconography 
 -  We now import and utilize iconography contributed by Sam Hewitt, such as: Clock Applet, Icon Tasklist Applet, Lock Keys applet, Notifications Applet, and more.
-   Panel 
 -  Always restore focus to windows after closing popovers. We now store / restore the focused window in the window manager around expansion changes in the panel.
 -  We now chain methods to fix GtkBox allocation spamming journald every half second (ticked by clock update and other applets requiring a refresh). This affects GTK 3.20 onwards.
 -  You can now re-order pinned apps by dragging them around! Woohoo!
-   Plugin 
 -  All applets now extend GtkEventBox and not GtkBin. 
-   As seen in issue [#574](https://github.com/solus-project/budgie-desktop/issues/574), we have various problems with certain applet types due to extending from the primitive GtkBin. In this particular instance we have no child GdkWindow, 
which is why the drawing system becomes bizarely bugged and results in rendering in random locations.All applets should have at least one top level GdkWindow that is not part of the GtkWindow's GdkWindow, to ensure separate context. As a part of this 
change, all third-party applets should be rebuilt against the new Budgie due to the ABI break introduced here.
-   Raven 
 -  Ensure all cursor themes are loaded. Previously, we made an assumption that icons and cursors were somehow mutually exclusive. The idea of the index.theme parsing was simply to test that it was a valid icon theme. However, we then only tested for the 
 cursors directory if it definitely wasn't an icon theme. That meant that themes shipping both cursors and icons in one directory would never show the cursor themes.
 -  Added support for legacy theme directories, such as ~/.icons, ~/.themes, and ~/.fonts
 -  Fixed broken markup parsing by importing our mate parser.
 -  Fixed HeaderWidget & HeaderExpander expanded property mismatch.
-   Run Dialog 
 -  Respect OnlyShowIn and other control factors.
 -  We now use the same search algorithm as Budgie Menu
-   Theme 
 -  Background-image is now set to none for the built-in theme in order to override any themes that may use a background image for the panel styling.
 -  Our theme has received fixes for GTK 3.22.
-   Window Manager 
 -  Fix negated logic in screen unredirect.

#### MATE

{{< altimg "2016/10/Solus-MATE-Edition.png" >}}

We're really happy to be introducing MATE into the Solus family, providing a stellar out-of-the-box and a dedicated "Solus 1.2.1 MATE" ISO. MATE receives the **same treatment** under Solus as our primary Budgie experience, such as proper integration, 
statelessness and sane defaults. Our MATE edition delivers a unique yet familiar traditional experience and even ships with **exclusive artwork** provided by [Marius Nestor](http://mariusnestor.ro).

##### So why did we choose MATE?

First off, the [MATE Project](http://mate-desktop.com/) is another forward-thinking endeavor with a fantastic community-based upstream. In MATE 1.16, which ships on our Mate edition, we're able to leverage the work they've done to provide a 
GTK3-based experience.

Secondly, providing MATE enables our more advanced users to create an environment with more granularity. MATE is also a great choice for those with resource-constrained hardware, as specific aspects of MATE, such as its window manager marco, are lighter 
than Mutter.

##### Integration Into Solus

{{< altimg "2016/10/MATE-Control-Center-DoFlicky.png" >}}

Integration into Solus is key when we're delivering software and MATE is no exception. Out-of-the-box, the MATE Control Center properly integrates with our hardware tool, DoFlicky, as well as our Software Center.

{{ altimg "2016/10/MATE-Notification-Theme.png" >}}

Our MATE experience ships with a custom, distro-agnostic notification theme, aptly named [mate-notification-theme-solus](https://github.com/solus-project/mate-notification-theme-solus/), that is designed to be clean, modern, familiar to our 
existing users; identical to the Arc-styled Budgie Desktop notifications.

#### Statelessness

One of the ongoing development goals of Solus is to achieve a completely stateless system, as per the [Clear Linux project](https://clearlinux.org/features/stateless). The idea is to ensure a complete and clean separation between the operating 
system, data, and configuration.

To enable this, we're ensuring our packages will all have "sane defaults", and operate in the absence of user configuration. As an example of this, we've recently altered our lightdm package to ship all of its configuration in vendor directories, allowing it, and 
the greeter, to operate without any files in /etc/, using our sane defaults. Thus, the user is free to make minor alterations without fear of breaking the upstream configuration. As an added benefit, this complete separation makes updates much more fluid, 
because there is no conflicting configuration files to deal with, merge with or mend.

A side effect of a fully stateless system, is that the user can simply purge all of their own administrative configuration changes to perform a factory reset. Not all packages are stateless yet in Solus, but it's an ongoing goal that we're committed to delivering to 
ensure problem free upgrades and maintainence of Solus systems.

#### Installer

##### Encryption and LVM

{{< altimg "2016/10/Installer-LVM-and-Encryption.png" >}}

Logical Volume Manager (LVM) and encryption via LUKS are now a mere couple clicks away in the new Installer. This is a great addition for businesses that enforce an encryption policy, the privacy conscious, or simply those that don't want their large 
collections of I Can Haz Cheezeburger cat photos to be at risk in the event of theft. After enabling encryption, you will be prompted to provide your passphrase during boot and prior to the login screen, to perform decryption.

##### Other Improvements

Aside from landing encryption and LVM support, we've landed a multitude of other improvements, such as:

-   We explicitly set icon name of the mainwindow for the MATE Desktop
-   We now provide a "Restart Now" button at the end of the installation process.
-   We now record the resume= parameter for more consistent resuming from suspend and hibernation.

#### Software Center

{{< altimg "2016/10/Solus-SC-Home.png" >}}

The Software Center saw numerous improvements for the Solus 1.2.1. For starters, upon launching the Software Center, you will now automatically receive the latest index of the repository.

{{< altimg "2016/10/Solus-SC-Updates-Notification.png" >}}

The Software Center has also received an updates checker that notifies you on available updates. The Solus Update Checker runs in the background and will check for updates to your system. We offer granular control over if / when the update checker runs. Alongside the ability to disable the checker, we also provide the following options:

-   Enable / disable checking for updates over a metered connection
-   The update frequency (every hour, day, or weekly)
-   The type of updates you wish to be notified about (all, security updates only, or security & core updates).

{{< altimg "2016/10/Solus-SC-Settings.png" >}}

{{< altimg "2016/10/Solus-SC-Third-Party.png" >}}

You can now install a wider variety of software from our Third Party repository via the Software Center, namely:

-   Android Studio
-   GitKraken
-   Google Chrome Beta and Unstable
-   JetBrains IDEs, such as IDEA, PyCharm, RubyMine, etc.
-   Plex
-   Slack
-   Teamspeak 3

#### Under The Hood

Under the hood, Solus ships with the latest stable kernel, 4.8.2. We have also put effort into hardware enablement between 1.2.0.5 and 1.2.1, such as:

-   CONFIG_B43_PHY_N is enabled. This option enables N generation (type 4) devices to work with our B43 driver.
-   NVIDIA GLX Driver has been updated to 370.28, meaning better compatibility with GPUs such as the NVIDIA GeForce GTX 970 as well as the Pascal microarchitecture.
-   The mesalib i965 driver in Solus now advertises preliminary support for the OpenGL 4.5 specification, on Broadwell devices and newer.
-  RADV, the open source Radeon Vulkan driver, is now supported in Solus, as well as swr driver (AVX2).
-   We enabled CONFIG_HARDENED_USERCOPY which prevents a lot of heap overflow exploits (so a further level of protection against 0-day exploits in the future until patches come forward).
-   We enabled [virtio-vsock](http://qemu-project.org/Features/VirtioVsock) which enables native sockets over a hypervisor, which will be useful for software such as spice in the future.
-   We have support for the Microsoft Surface Pro 3’s touchscreen.
-   We have support for the “Intel Virtual Button”, which is a required driver for some newer hardware, notably the power button on the new Dell XPS 13.
-   We moved to voluntary-preempt.

*Edit: This post was edited on October 21st, to acknowledge that this is preliminary support for a specification, and that the drivers, and Solus, have not undergone official testing required to be OpenGL 4.5 compatible.*

---

#### Download

We welcome you to download Solus 1.2.1 via our [dedicated Download page](https://solus-project.com/download/) and give it a shot! 