+++
author = "joshua"
categories = [
"News",
"Plans",
"TWIS"
]
date =  "2016-07-10T19:46:20Z"
title = "This Week in Solus -- Install #31"
url = "/2016/07/10/this-week-in-solus-install-31/"
+++ 
Welcome to the 31st installation of This Week in Solus. 

#### Operation Go Moar Faster

Solus has always held the philosophy of a "stable core, updated apps". To achieve the level of stability we desire, we have been utilizing the LTS branch of the Linux kernel, prioritizing stability in our graphics stack, and sticking to a specific GNOME release 
series for each major release of Solus. To be more precise, Solus 1.0 shipped with GNOME 3.18.x and the plan of using GNOME 3.22.x in Solus 2.0.

On the "updated apps" portion of that philosophy, this has meant we have had the liberty of quickly delivering updates of applications outside of the GNOME stack to our users, e.g. Atom, Firefox, LibreOffice, Thunderbird, and so-forth without concern of a 
shift in the "core" of Solus and issues with stability.

But we are far from conservative even with the "core" of Solus. Before Mesa 12 was even released, we were using Mesa 12 RC4. We have shifted from gcc 4.8 to 5.3.0 in the lifetime of Solus. We ship the latest glibc (2.23). We even have plans on shifting to the 
latest Pulseaudio. The reality is a conservative operating system just doesn't do these things. We've dealt head-on with a variety of changes to Solus, whether they be renames of the entire operating system (**remember EvolveOS?**), repo location changes, 
to shifting users from Solus 1.0 to 1.1 across a Python UCS4 migration. If there is one truth, one thing we have learned over the course of all this it is the following:

We're really **good** at keeping things **stable** and really **bad** at **not** being a rolling release. So effective immediately, **Solus now follows a rolling release model**.

What does this mean for you? We're taking it up a notch from just updated apps.

1. We'll be updating to **Pulseaudio 9** to resolve issues regarding sound playback over HDMI, likely making that into Solus 1.2.1.
2. Next week after Solus 1.2.1, we're rolling out **GNOME 3.20**. Thanks to work done by horst3180, Budgie is already compatible with GNOME 3.20, so that will not be a blocker for updating the GNOME stack.
3. So long as you keep your system updated, your Solus 1.x installation will be supported **indefinitely**. Releases are primarily for us to focus on milestones and provide a snapshot for installation.

{{< altimg "http://i.imgur.com/YsbKHg1.gif" >}}

#### ypkg Improvements

Ikey has landed a multitude of improvements to ypkg recently, including:

- Support for using git as a source!
- Automatic dependencies when using a git source or for emul32 builds. No more needing to add glibc-32bit-devel, libgcc-32bit, and libstdc++-32bit as builddeps when you have emul32 enabled.
- Enabling + and . (period) within package names.

#### Package Highlights

Speaking of fresh, updated apps, here is a highlight of updates this week:

New:

- bind-utils 9.10.4
- innoextract 1.6
- lash 0.5.4
- lutris 0.3.7.5
- octave 4.0.2
- openblas 0.2.18
- openttd 1.6.1
- rtmidi 2.1.1
- SFML 2.3.2
- stk 4.5.1
- unclutter-xfixes 1.1
- vcmi 0.98
- virglrenderer 0.5.0

Updated:

- darktable 2.0.5
- lollypop 0.9.112
- mesalib 12.0.1
- mutt 1.6.2
- nginx 1.11.2
- obs-studio 0.15.1
- r: Build with openblas
- samba 4.3.11
- screenshot-applet 0.3.4
- thunderbird 45.2.0
- uget 2.0.8
- v4l-utils: Enable multilib
- vscode 1.3.0
- wine: Enable cups, dbus, gnutls, ice, lcms2, ldap, libgphoto2, mpg123, ncurses, openal, opencl, pth (threading), unixodbc, v4l1, xi, xinerama, xi, and xslt.
- youtube-dl 2016.07.09