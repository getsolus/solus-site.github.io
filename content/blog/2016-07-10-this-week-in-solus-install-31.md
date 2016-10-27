---
author: Joshua Strobl
categories:
- News
- Plans
- TWIS
date: 2016-07-10T19:46:20Z
id: 1512
title: 'This Week in Solus -- Install#31'
url: /2016/07/10/this-week-in-solus-install-31/
--- 
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

{{ altimg "http://cdn.gifstache.com/2013/5/20/2124091543_659776696.gif" }}

What does this mean for you? We're taking it up a notch from just updated apps.

1. We'll be updating to **Pulseaudio 9** to resolve issues regarding sound playback over HDMI, likely making that into Solus 1.2.1.
2. Next week after Solus 1.2.1, we're rolling out **GNOME 3.20**. Thanks to work done by horst3180, Budgie is already compatible with GNOME 3.20, so that will not be a blocker for updating the GNOME stack.
3. So long as you keep your system updated, your Solus 1.x installation will be supported **indefinitely**. Releases are primarily for us to focus on milestones and provide a snapshot for installation.

{{ altimg "http://i.imgur.com/YsbKHg1.gif" }}

#### ypkg Improvements

Ikey has landed a multitude of improvements to ypkg recently, including:

- Support for using git as a source!
- Automatic dependencies when using a git source or for emul32 builds. No more needing to add glibc-32bit-devel, libgcc-32bit, and libstdc++-32bit as builddeps when you have emul32 enabled.
- Enabling + and . (period) within package names.

#### Package Highlights

Speaking of fresh, updated apps, here is a highlight of updates this week:

New:

- [bind-utils 9.10.4](https://git.solus-project.com/packages/bind-utils/commit/?id=b176b476dfe980b874dc3697124b0d5c4311f041)
- [innoextract 1.6](https://git.solus-project.com/packages/innoextract/commit/?id=388aecbd9c8b31c4e48b6bbf8dd85bcbf88e167c)
- [lash 0.5.4](https://git.solus-project.com/packages/lash/commit/?id=bcba16307c250d5237ae9b103ffc5088559f08e2)
- [lutris 0.3.7.5](https://git.solus-project.com/packages/lutris/commit/?id=6cd7a491077bcbb23962b69a70298c75a89f0a56)
- [octave 4.0.2](https://git.solus-project.com/packages/octave/commit/?id=73bf7c568a0b3843eb269b3f229aef3639ca4f24)
- [openblas 0.2.18](https://git.solus-project.com/packages/openblas/commit/?id=0a1db23066e82f20f1f95fa85f1baa35b2d715af)
- [openttd 1.6.1](https://git.solus-project.com/packages/openttd/commit/?id=8870c65bee54cc9f3d2245495ee057331e045a06)
- [rtmidi 2.1.1](https://git.solus-project.com/packages/rtmidi/commit/?id=4e41af504ff2395ce272d7d3c3bf4acc433ce30d)
- [SFML 2.3.2](https://git.solus-project.com/packages/SFML/commit/?id=cfa4cffc7ef8d332323a8d588d9d89fffc3407d1)
- [stk 4.5.1](https://git.solus-project.com/packages/stk/commit/?id=b19bb72f87b0c74bc3fff688cc0d3eb484048de9)
- [unclutter-xfixes 1.1](https://git.solus-project.com/packages/unclutter-xfixes/commit/?id=8dac2a34344ac65f11b0c6e1b7d32872f70dd67a)
- [vcmi 0.98](https://git.solus-project.com/packages/vcmi/commit/?id=7452e4dd8b04d14818870ca9667d75febd91f80c)
- [virglrenderer 0.5.0](https://git.solus-project.com/packages/virglrenderer/commit/?id=11f2a6ad1c4528eb9d5f7acf363743fdd1fb011e)

Updated:

- [darktable 2.0.5](https://git.solus-project.com/packages/darktable/commit/?id=42d0215946e8933e82e156ad11936ca074460635)
- [lollypop 0.9.112](https://git.solus-project.com/packages/lollypop/commit/?id=a443db92101433deda5b12acaa8d7e1095dc2bec)
- [mesalib 12.0.1](https://git.solus-project.com/packages/mesalib/commit/?id=ebf2cffa5cbb040a932c5d0b952d90170e93ce17)
- [mutt 1.6.2](https://git.solus-project.com/packages/mutt/commit/?id=b566aa51f27433d830f6805efe89bcb1044ba496)
- [nginx 1.11.2](https://git.solus-project.com/packages/nginx/commit/?id=4f203407d97ade7e2251abcd22ec5acce464b058)
- [obs-studio 0.15.1](https://git.solus-project.com/packages/obs-studio/commit/?id=592a87f1be4e8132ce94a8d0767e0275aadfbba9)
- [r: Build with openblas](https://git.solus-project.com/packages/r/commit/?id=20eecdf305c8dec2c11856ae3e92786710f8abf2)
- [samba 4.3.11](https://git.solus-project.com/packages/samba/commit/?id=db9f56a719505ffee4feb0dc6f11b369ac8e49b4)
- [screenshot-applet 0.3.4](https://git.solus-project.com/packages/screenshot-applet/commit/?id=a39e9acb9157b3b02027354c6739d8adde95a151)
- [thunderbird 45.2.0](https://git.solus-project.com/packages/thunderbird/commit/?id=0ae4288f6f1fae655a99e615c52737c16c3fbbac)
- [uget 2.0.8](https://git.solus-project.com/packages/uget/commit/?id=14db00fb8b17fb3e7b20144e88803faa1b08dea2)
- [v4l-utils: Enable multilib](https://git.solus-project.com/packages/v4l-utils/commit/?id=cd7d46dc29247840fa06ed13315d4cc28df0ffa6)
- [vscode 1.3.0](https://git.solus-project.com/packages/vscode/commit/?id=60f0dca039235d544d258d0fcf96ee62fe2c3c66)
- [wine: Enable cups, dbus, gnutls, ice, lcms2, ldap, libgphoto2, mpg123, ncurses, openal, opencl, pth (threading), unixodbc, v4l1, xi, xinerama, xi, and xslt.](https://git.solus-project.com/packages/wine/commit/?id=d078d3c91686cce8e1e7f08fef83dac33e5c7e8)
- [youtube-dl 2016.07.09](https://git.solus-project.com/packages/youtube-dl/commit/?id=efd0afff28cae41c767a1e5442882a2a61af3b2b)