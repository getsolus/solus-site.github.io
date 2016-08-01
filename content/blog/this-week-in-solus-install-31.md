---
author: "joshua"
categories:
- news
- plans
- twis
date: 2016-07-10T10:28:35+03:00
internaltype: "post"
title: "This Week in Solus #31"
---

Welcome to the 31st installation of This Week in Solus.

## Operation Go Moar Faster

Solus has always held the philosophy of a “stable core, updated apps”. To achieve the level of stability we desire, we have been utilizing the LTS branch of the Linux kernel, prioritizing stability in our graphics stack, and sticking to a specific GNOME release series for each major release of Solus.

<!--more-->

To be more precise, Solus 1.0 shipped with GNOME 3.18.x and the plan of using GNOME 3.22.x in Solus 2.0.

On the “updated apps” portion of that philosophy, this has meant we have had the liberty of quickly delivering updates of applications outside of the GNOME stack to our users, e.g. Atom, Firefox, LibreOffice, Thunderbird, and so-forth without concern of a shift in the “core” of Solus and issues with stability.

But we are far from conservative even with the “core” of Solus. Before Mesa 12 was even released, we were using Mesa 12 RC4. We have shifted from gcc 4.8 to 5.3.0 in the lifetime of Solus. We ship the latest glibc (2.23). We even have plans on shifting to the latest Pulseaudio. The reality is a conservative operating system just doesn’t do these things. We’ve dealt head-on with a variety of changes to Solus, whether they be renames of the entire operating system (remember EvolveOS?), repo location changes, to shifting users from Solus 1.0 to 1.1 across a Python UCS4 migration. If there is one truth, one thing we have learned over the course of all this it is the following:

We’re really **good** at keeping things **stable** and really **bad** at **not** being a rolling release. So effective immediately, **Solus now follows a rolling release model**.

![Autobots, roll out.](/imgs/autobots-rollout.gif)

What does this mean for you? We’re taking it up a notch from just updated apps.

- We’ll be updating to Pulseaudio 9 to resolve issues regarding sound playback over HDMI, likely making that into Solus 1.2.1.
- Next week after Solus 1.2.1, we’re rolling out GNOME 3.20. Thanks to work done by horst3180, Budgie is already compatible with GNOME 3.20, so that will not be a blocker for updating the GNOME stack.
- So long as you keep your system updated, your Solus 1.x installation will be supported indefinitely. Releases are primarily for us to focus on milestones and provide a snapshot for installation.

![Magic.](/imgs/magic.gif)

## YPKG Improvements

Ikey has landed a multitude of improvements to ypkg recently, including:
- Support for using git as a source!
- Automatic dependencies when using a git source or for emul32 builds. No more needing to add glibc-32bit-devel, libgcc-32bit, and libstdc++-32bit as builddeps when you have emul32 enabled.
- Enabling + and . (period) within package names.
