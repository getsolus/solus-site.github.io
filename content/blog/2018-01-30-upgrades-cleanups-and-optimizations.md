---
title: "Upgrades, Cleanups, and Optimizations | The Roundup #2"
author: "joshua"
categories:
- news
- roundup
date: 2018-01-30T00:30:19+02:00
featuredimage: "2018/01/conversions.png"
url: "/2018/01/30/upgrades-cleanups-and-optimizations"
---

Welcome to The Roundup #2, your bytes of Solus news. In this roundup, we're talking stack upgrades, repo cleanup efforts, LDM updates, Plasma Early Access ISO, and planned boot optimizations!

## Stack and Package Upgrades

The Solus Core and Community Maintainers Teams have been hard at work upgrading a multitude of packages across various stacks in the last week.

For starters, we upgraded opencv, the computer vision and machine learning library used for multimedia applications like digikam and nomacs, to 3.4.0. OpenCV 3.4.0 has a load of optimizations for its forward pass DNN module as well as caching improvements.

While users won't necessarily see the OpenCV improvements (*get it, because computer vision*), something they're more likely to notice if they're a fan of applications like Noise, Midori, and Vocal are the improvements and fixes to Granite 0.5 that landed in the Solus repos. We think elementary OS's [blog post](https://medium.com/elementaryos/granite-0-5-is-here-dafc4436ac09) summarizes it far better than we can, so go check it out!

We upgraded libsodium, which is a cryptography library utilized in a multitude of messaging and editing software available on Solus, such as toxcore + qTox and et.

This libsodium upgrade unblocked our upgrade for protobuf, specifically the C++ implementation library of Google's Protocol Buffers, which is language and platform neutral mechanism for serializing structured data. Protobuf is leveraged by applications like the Bitcoin Qt wallet client, Mumble, Ricochet, Mixxx, and more. For example, Mumble uses it for distinguishing different kinds of packets that are sent through a connection, and Ricochet serializes data with it.

GEGL, the image process framework used in GIMP, also saw an upgrade to 0.3.28. Here are some snippets from GEGL's [release notes](https://git.gnome.org/browse/gegl/plain/docs/NEWS.txt?h=GEGL_0_3_28):

>  *Many significant optimizations as well as a correctness improvement, mipmap scaling and rendering is now done correctly in linear space, thus GIMP will not only produce the right results but also avoid gamma errors in thumbnails and viewport.*
>
> *Mipmap tuning and performance improvements to gaussian blur added dedicated code paths for nearest sampler in transform ops.*

While all these stack upgrades went on, we also landed some updates like:

- Upgrading GCC to 7.3.0
- Fixing Caja not showing up under Budgie and GNOME's menu
- The inclusion of new GTK themes like [Ant](https://github.com/EliverLara/Ant), [Ant Nebula](https://github.com/EliverLara/Ant-Nebula), and [Ant Dracula](https://github.com/EliverLara/Ant-Dracula).
- Upgrades to a multitude of python packages like python-astroid and python-jupyter_client.
- Profile Guided Optimizations to PHP
- Profile Guided Optimizations to Python

## Repo Cleanup Efforts

### Back In My Day (Backstory)

In the early days of Evolve OS, building packages was done through handwriting XML files called `pspec.xml` and the configure, build, and install instructions via Python in `actions.py`. This made building packages tedious, repetitive, and had a fairly high barrier to entry. Packaging on Evolve OS (and naturally Solus) forever changed when Ikey introduced ypkg, our modern declarative, structured format on top of YAML, that not only combined package metadata (like name, version, summary, description, patterns, etc.) but **also** the instructions for configuring, building, and installing it. ypkg has also enabled us to enforce a level of consistency as a result of defaults for package splitting and macros for shorthand methods to perform various build operations for GNU Autotools, Haskell, Meson, Perl, Python, etc. If you'd like to see more about Package.yml, check [here](https://solus-project.com/articles/packaging/package.yml/en/).

However, there has been a small subset of packages that we've only recently been capable of converting over to our modern build format. With tooling like `qol-assist` and `usysconf` in November and December respectively, we no longer need to rely on legacy systems like COMAR for various post-install triggers and this enables us to centralize them. Additionally in November we added support for prefix-less package names with `^` name specifier (we'll get into this in a sec). All of this new tooling and improvements has opened the door to us being able to convert our kernels, NVIDIA drivers, gdm, and more to our ypkg format.

### But You Said There's Effort?

So Peter a.k.a Sunnyflunk created the [Solus 'Spring' Repo Cleanup task](https://dev.solus-project.com/T5629) to start the steps of finally converting all packages to ypkg (*excluding some that are relied on by eopkg*), cleaning up git repositories by disabling those which do not have a corresponding repo package, enforcing a consistent naming policy for repositories, and making the repositories easier to be scripted against (like for ABI rebuilds).

To say the cleanup effort has been successful would be an understatement. Over 200 repositories have either been renamed for consistency (like `AccountsService` to `accountsservice`) or removed (for example, `libwnck-1` or `spidermonkey`).

Furthermore, thanks to the prefix-less package name support in ypkg, we're now able to have more flexibility in how we split packages, instead of being limited to splitting for suffix names like `-devel` or `-utils` (`nfs-utils` as an example). This means packages like `vala` can be converted and split up into packages like `libvala` or `valadoc`. Here's a shortened example below:

``` yaml
name        : vala
component   :
    - programming
    - ^libvala: programming.library
    - ^vala-docs: programming.docs
    - ^valadoc: programming.tools
    - ...more
patterns    :
    - ^libvala:
        - /usr/lib64/libvala-*.so.*
    - ^libvala-devel:
        - /usr/include
        - /usr/lib64/libvala-*.so
        - ...more
    - ^valadoc:
        - /usr/bin/valadoc*
        - /usr/lib64/valadoc
        - ...more
```

Thanks to the concerted effort between Peter, Kyrios, and myself, we've manage to whittle down the legacy packages down to a couple dozen (*at least with my local clone of the repo*), with a considerable amount of those being related to eopkg, having existing patches for review, or being convertible this week.

## LDM Updates

In case you missed the big news, Linux Driver Management 1.0 was [released last week](/2018/01/26/linux-driver-management-1-0-released). Since then, Ikey has done two updates to it, bringing it up to 1.0.2. It's also [landed](https://bugzilla.redhat.com/show_bug.cgi?id=1539366) in the Fedora 27 testing repository to enable users to test and leverage.

**In 1.0.1:**

- A double unref with Pythonic bindings (`GPtrArray` + gir unreffing) was fixed
- An odd visual offset in the status CLI subcommand was fixed

**In 1.0.2:**

- Fixed building on distros without kmod
- Allow building on more distros by downgrading `check` requirement
- Added example for `dnf` integration
- Ensured stable device	sorting	in `LdmManager`
- Allowed distros to disable GLX management with `-Dwith-glx-configuration=false`
- Bumped the soname for release (ABI compatible)

## Plasma Early Access ISO

Peter has just released an Early Access ISO of the Solus Plasma Edition to our [Patrons](https://patreon.com/solus). This early access ISO indicates there are some aspects of the experience that are not finalized, may be subject to change, and potentially in need of more extensive testing. This ISO will give Patron members the opportunity to provide feedback over the coming weeks and based on that feedback, enable Peter to make further refinements to settings, default applications, and more.

If you're already a Patron, I welcome you to read the full post made available to you. If you're not a Patron already, we welcome you to become one today!

## Planned Boot Optimizations

Have you ever looked at your boot time and thought *"I sure wish I could make this faster!"* ? We have too. This week Ikey will be reworking our core systems to facilitate a faster boot for all users, evaluating the early boot services and unblocking critical services to ensure speedy boot and login. He'll be profiling the system boot and speeding up the early sysinit to fix slow units such as apparmor, as well as attempting to speed up the start of X.Org, display managers, and other relevant services that make use of exec helpers.

We'll be covering more broadly the optimizations that have occurred during The Roundup #3 late this week.