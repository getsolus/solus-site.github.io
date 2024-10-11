---
title: "This Week in Solus - Install #46"
author: "joshua"
categories:
- news
- plans
- twis
date: 2017-08-20T19:48:16+03:00
featuredimage: "/preston-firefox.jpg"
url: "/2017/08/20/this-week-in-solus-install-46"
---

Welcome to the 46th installation of This Week in Solus, or as I'm opting to call this one, "TODO all the things!"

We've been absolutely thrilled with the release (and reception) of Solus 3, but our work on building a better Solus is never finished. We knew this ahead of release and set up a post release tasklist of all the items we want to address in the immediate or long-term future.<!--more-->

But let's be honest, a big TODO list is far less exciting than us actually going over some of these higher priority items, so let's do that.

## Highest Priority Items

### Preston

Our highest priority items are centered around the development pipeline, the first of those items resolves conformance checking of licenses in packages. Ikey's been hard at work on [Preston, a new distro-agnostic tool](https://github.com/solus-project/preston) that will enable us to scan the source of a package (*with exceptions for packages like Steam or the NVIDIA graphics drivers*) and catch instances where we may not have specified all the licenses indicated in the source of a package, or incorrect specification of licenses (*say the source is GPL-2.0 but we specify it as LGPL-2.0, or we didn't specify a SPDX-compliant license*). It's also capable of detecting differences between various BSD clauses, such as `BSD-3-Clause-LBNL` vs `BSD-4-Clause-UC` and reporting an accurate clause version.

Preston will be a part of our package build processes and ensure all packages landing in the Solus repository have all the correct licenses specified. As it is distro-agnostic and doesn't enforce a specific package format, this also means that other vendors can implement and integrate parsers for their formats, such as `.spec` or Snaps.

### ferryd

Once Preston has landed, we will be replacing binman with ferryd, enabling faster indexing and syncing of our repos. We already have functional indexing, delta package creation (in parallel), and generation of the index. As it stands now, the final blocker is the job scheduler.

We discussed this more in-depth in [TWIS #43](/2017/04/24/this-week-in-solus-install-43), so I welcome you to read more about it there.

## High Priority Items

### Third Party

We know Third Party has been a pain point for some time now, both for us and all of our users. Addressing Third Party using our newly added Snap support is a high priority item for us, and we're drawing up plans for a livestreamed "snapfest" event to occur after the landing of ferryd, where we will be either integrating existing snaps or developing new ones for our Third Party items, unblocking a multitude of requested Third Party additions and enabling the upgrade of Third Party items to be more seamless.

### X Stack Upgrade

We'll be seeing if "third time's the charm" holds true with an upgrade of xorg-server to 1.19.x . Previous attempts unfortunately didn't pan out, with us encountering issues with various hardware configurations, such as APU + AMD GPU combinations, but we're hopeful that these issues have been addressed since our last attempt, or other stack improvements may play a part in resolving those issues.

### Samba

To put it in a marketing term, our "story" around Samba support hasn't been ideal. I'll be setting up a Samba server locally and resolving Samba / Nautilus support so people can browse their network shares.

## Other Not-So-High Priority Items

*Because that's how these priority things go, right?*

### systemd upgrade

Upgrading systemd will open the door for unblocking Wayland enabling for GNOME as well as swapping out `goofiboot` for `systemd-boot`, enabling us to lose some technical debt.

### Package and Toolchain Stuff

We'll be working on various package and toolchain items, such as (*but not limited to*):

- Examining the state of various mozjs and spidermonkey providers and determining where upgrades and consolidations are viable.
- Consolidate and remove old library providers, like webkit.
- Evaluate toolchain options and ensure clang works at least as well as GCC.
- Draw up formal sync cycles and automate security advisories.
- Converting the majority of our legacy Solus packages to our `ypkg` build format, centralizing actionable scripts for drivers and providers in `mesalib`, `xorg-server`, `nvidia-*`, etc. into a `kernel-integration` package.

### The next-gen fanciness

There is some Solus technology that we'll be replacing or overhauling, such as:

- Replacing `eopkg` with `sol`.
- First-class hybrid GPU support, with dynamic GPU switching and OS/desktop integration.
- Developing a TLP alternative to improve battery life.
- Providing an OEM installer mode.

---

As you can see just from **some** of the items in our tasklist, our work is far from over. If you're interested in getting involved or supporting the project (if you have already, we really appreciate it), feel free to check our [Getting Involved page](/articles/contributing/getting-involved/en/).