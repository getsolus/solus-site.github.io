---
title: "Software Center Progresses | The Roundup #6"
author: "joshua"
categories:
- news
- roundup
date: 2018-06-26T19:41:10+03:00
featuredimage: "/software-center-featured.jpg"
url: "/2018/06/26/software-center-progresses"
---

Welcome to The Roundup #6, your bytes of Solus news. In this roundup, we're talking about the progress being made on the Software Center as well as a peek at upcoming improvements to Budgie.
<!--more-->

## Software Center Progresses

The upcoming redesign of the Software Center has seen some significant progress in the last few days. During installation and removal of software, we're now utilizing our new sidepane to provide a list of what will be installed or removed. Previously, we would prompt the user in a separate window with a list of packages and a button to accept the changes, now it's all integrated into one place!

In the screenshot below, you can see an example of this new sidepane being utilized for install during the installation of GDM. You'll also notice that, as a result of GDM and LightDM conflicting, we present that information to the user by indicating that LightDM (and the stylish login greeter for it, sleek-greeter) will be removed. Furthermore, this would remove the LDM integration for LightDM.

{{< relimg "software-center-gdm.jpg" >}}

We're now defaulting the Software Center to our eopkg `autoremove` behavior, which will automatically remove any dependencies of the software that are not used by any other packages on the system. You can see this in the screenshot below when removing Builder, we're also removing packages such as `gnome-code-assistance` which isn't being used by anything else on the system.

{{< relimg "software-center-removal.jpg" >}}

Some fixes have been made to better support HiDPI, we're now ensuring we use cairo surfaces which respect the device scaling factor.

Last but not least, we've been working hard on deprecating our DoFlicky hardware driver tool for an integrated solution in our Software Center. We've done this by creating a LDM (Linux Driver Management) plugin, which will communicate to all available LDM Providers for a device (*such as the NVIDIA GeForce GTX 960 in the screenshot below*) and asks all the plugins (such as our eopkg plugin) if they have something with that name. This enables an agnostic solution that developers can utilize to implement their own plugins and LDM providers for their respective operating systems and package managers (*such as Apt, DNF, etc.*).

{{< relimg "software-center-gpu.jpg" >}}

This support isn't limited to just GPU drivers though! Thanks for Linux Driver Management, we can extend this to:

- Audio devices
- Peripheral devices such as the keyboard, mice, U2F keys, etc.
- Printers

This means we could prompt for installation of the Brother MFCJ220 driver when you plug that printer in, Piper when you plug in a Logitech G403, Yubikey CLI and GUI tools when you plug in a Yubikey 4, and more.

Note: The driver integration in Software Center is very much a work-in-progress and we look forward to showing it off more in the next Roundup!

At this point, many major features have now been completed in the Software Center, including:

- Full search with filters for already installed software
- Notifications when each job completes, telling you what was installed/removed/etc
- Full priority queue system to allow stacking up install/remove operations which will continue to execute in the background.
- Category based navigation system
- Cross-plugin APIs
- "Job plan" system to convert every user-initiated install/remove operation into a complete and calculated transaction

Additionally the Software Center now understands the notion of "soft links" between various items which allows us to automatically group related software based on the system configuration or AppStream recommendations. As a result, driver providers for the active kernel are prioritized within the Hardware view, 32-bit libraries are automatically recommended for proprietary graphics drivers, and soon we'll be able to link to software enhancing the currently viewed software in some way, such as plugins and extensions. Finally, all of the new plugin work and LDM integration has allowed us to ensure proper namespacing between different providers and links, which would in future allow any plugin (for any OS) to provide drivers and suggestions in the Software Center, ensuring it is 100% agnostic.

## Budgie

Budgie has been getting some improvements and cleanup in preparation for Budgie 10.5, which will be released alongside Solus 4.

For Budgie 10.5, we're deprecating support for versions of GTK below 3.22 and brought our Vala support up to 0.40.0. As a result, a significant part of the codebase is now using modern GTK APIs and interfaces, such as changing the usage of `Gdk.X11Display` to `Gdk.X11.Display`.

Our upcoming Do Not Disturb support received improvements. We now track the Do Not Disturb state in RavenIFace, so this can be utilized by Raven itself but the Notifications / Raven Applet as well. The iconography has been tweaked for Do Not Disturb to be consistent with the Notifications applet as well.

Various aspects of interacting with notifications have been improved for the upcoming release of Budgie:

- Clear Notifications support in Raven has been refined. We now only show the clear notifications button when there are actual notifications to be cleared and you'll be able to use `Super+C` to clear them.
- Notifications will no longer be dismissed if you're hovering over them.
- We now support disabling notifications via GNOME Control Center. This is done by checking by `/org/gnome/desktop/notifications/application/APPNAME` to see if notifications are explicitly disabled for a specific application, like Liferea. If so, we won't show the notification.

The Sound widget in Raven is also seeing a complete overhaul. Sound Output and Input are being split into two separate widgets. The Sound Output widget will feature the ability to do per-app volume control and Input will now let you control your mic volume without having to open up GNOME Control Center, as seen in the screenshot below. Once complete, you'll also be able to launch your default audio or video player directly from the Sound Output widget if no applications are playing audio.

{{< relimg "budgie-sound-widgets.jpg" >}}

The new Sound Output widget is also responsive to changes to the `allow-volume-above-100-percent` setting. While still a work-in-progress, the plan is to provide a toggle for this value in a new Raven section of Budgie Desktop Setting, so you can opt to go up to 150% volume. This new section will also have the ability hide the Calendar and Sound Input widgets entirely.

Lastly, the MPRIS widget will dynamically assign a class name to itself for each application (such as Spotify) so theme creators will be able to do custom styling for different players. As an example, you could set green for Spotify, red for lollypop, etc.
