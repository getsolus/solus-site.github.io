---
author: "joshua"
categories:
- news
- plans
- twis
date: 2017-01-03T20:41:46+02:00
featuredimage: "2017/01/new-year.jpg"
title: "This Year in Solus (2016 Edition)"
url: "/2017/01/03/this-year-in-solus-2016-edition"
---

2016 was an incredible year for Solus. We went from having our first release in December of 2015, to completely switching to a rolling release model. We had multiple Solus releases, multiple Budgie releases, several rewrites of different 
components of Solus, ranging from the Installer to the Software Center. We introduced our native Steam runtime and improved both our state of statelessness as well as optimizations.

When I first started talking about Solus at the beginning of 2016, I used the analogy that what we were building was the engine for our vehicle, one to deliver us to our goals for Solus. While we’re still building that engine, we’re in a drastically 
better shape than we were in 2016, and we’re more confident, and bolder, than ever.

I feel it's understating things to say we've been busy. While on occasion it felt there was quiet moments, looking at the big picture shows that we were anything but quiet. So This Year in Solus is going to be broken up into 4 quarters, where:

- Q1 is January - March.
- Q2 is April - June.
- Q3 is July - September.
- Q4 is October - December.

Let's get started!

## 2016

### Q1 - We started the fire.

{{< altimg "2017/01/walking-away-from-explosion.gif" >}}

In the first quarter of the year, we were mainly working to resolve issues from the release of 1.0, which happened on December 27th, 2015 (I know, I know, this is 2016 we're talking about). On the Budgie front, we fixed issues like Firefox 
not appearing in the panel, resolving sizes of x11 tray icons, Mumble notifications, and replaced Gnome Polkit with our own Budgie Polkit.

We enabled crypto optimizations to the kernel and began our work towards printer support.

Ref: [This Week in Solus - Install #16](/2016/01/03/this-week-in-solus-install-16/)

This was also a time where we quickly discovered the limitations and restrictions brought about by utilizing the GNOME Stack. We worked towards switching away from GDM to LightDM because of the massive overhead for 
single-user systems, announced our intent to eventually switch away from Gnome Control Center as well as our intent to switch away from Vala.

User documentation improved, [our Patreon launched](https://patreon.com/solus), and we moved the repository over to a beefier server with more disk space.

Refs: [This Week in Solus - Install #17](/2016/01/10/this-week-in-solus-install-17/) and [This Week in Solus - Install #18](/2016/01/17/this-week-in-solus-install-18/).

**And that was just January…**

For February, we kicked it off by landing HP printing support, which was one of the items for Solus 1.1. We transitioned to Python 3.5 and released an update assistant to help transition users from Solus 1.0 installs to 1.1, because of our transition 
from UCS2 to UCS4 in Python 2, which was needed for printing support.

Ref: [This Week in Solus - Install #20](/2016/02/08/this-week-in-solus-install-20/)

We started our Sundays with Solus sessions, which admittedly haven’t occurred as much as I’d like, largely my fault. We released Budgie 10.2.4, which resolved some locking functionality after our deprecation of GDM and it saw the introduction of our 
cute Budgie logo, which we still have today.

On the installation front, USB 3.0 and UEFI booting was resolved, as was timezone configuration, expanding the range of detection of ESPs, enforcing stricter hostname validation, fstab issues being fixed, and continued to update our 
stack to the latest Xorg, Mesa, Intel and nouveau.

Ref: [This Week in Solus - Install #22](/2016/02/29/this-week-in-solus-install-22/)

We ended Q1 with [Solus 1.1](/2016/03/02/solus-1-1-shannon-released/), which shipped with some pretty fundamental changes to the graphics stack, synced Intel for improved performance, extended hardware for Broadwell 
and Skylake, and introduced preliminary support for the OpenGL 4.1 specification.

{{< altimg "2016/03/Raven_General.jpg" >}}

[Budgie 10.2.5 was released](/2016/03/27/budgie-10-2-5-released/), which introduced functionality that addressed most user’s needs for GNOME Tweak Tool, those being the ability to enable and disable desktop icons, as well as setting 
fonts for various aspects of your system. Bluetooth support landed into Budgie, our listings of devices in the Sound widget for Raven was improved, and we started to provide a freetype2 subpixel for subpixel font rendering. Functionality was 
introduced to allow the disabling of region theming, Budgie became stateless, and the built-in theme was ported to GTK 3.20.

### Q2 - New Budgie, New Installer, and Games!

{{< altimg "2016/08/all-the-games.jpg" >}}

For Q2, we started it off with improvements to our packaging, with the elimination of component.xml and adding multilib support (separating out the build environments for 32-bit and our normal 64-bit builds).

Our system.base shrunk significantly by moving a large set of packages to system.utils, we began shipping locales in Firefox and Thunderbird, we began automatic creation of dbginfo packages via ypkg, and there was big gains in xz decompression 
and libxml2 parsing.

Ref:  [This Week in Solus - Install #25](/2016/04/03/this-week-in-solus-install-25/) and [This Week in Solus - Install #26](/2016/04/12/this-week-in-solus-install-26/)

At the start of May, we [began to search for new branding](/2016/05/09/this-week-in-solus-install-28/) that was more representative of the project, as well as beginning the work for the new Software Center.

Towards the end of May, we had our first Hackfest, aptly named Hackfest 1.2. During this time we fixed a large set of bugs and landed our native Steam runtime, which really says it all.

{{< youtube "wA5GilQ6Hm0">}}

{{< youtube "_6VJ50ST82E">}}

Ref: [This Week in Solus - Install #29](/2016/05/24/this-week-in-solus-install-29/)

{{< altimg "2016/06/Budgie1.2.png" >}}

In June, [we released Solus 1.2](/2016/06/20/solus-1-2-shannon-released/). This release featured Budgie improvements, such as:

- Application icon fixes for bits like Atom and Telegram
- Fixing untranslatable strings
- Resolving some rendering issues with Raven widgets and notifications.
- And the ability to click the desktop while Raven is open to have it be dismissed.

There was huge improvements for JPEG library decoding and as a result of our native Steam runtime, we also began providing one of the most performant gaming experiences available on Linux. This release also featured our new Software Center, 
which we still have to this day, albeit with a lot of improvements, as well as a new installer with our new “disk strategy” system to make installation a breeze. This also enabled support for a dedicated `/home` partition.

### Q3 - Just Keep Rolling

{{< altimg "2017/01/autobots-rollout.gif" >}}

We started off our Q3 in July by continuing to emphasize that nothing is sacred in Solus, including our package manager. [We announced the intent to replace eopkg with sol.](/2016/07/05/this-week-in-solus-install-30/)

But more important, this month is when we admitted to ourselves that we'd be [best served being a rolling release](/2016/07/24/replacement-of-release-schedule/). We were always bad at being a traditional release, updating large components of 
our stack where other operating systems would have been more hesitant, some primary examples being the adoption and shipping of Mesa 12 before it was even released as "stable", doing upgrades of our GCC and glibc, and updating our 
Pulseaudio to Pulseaudio 9 and GNOME Stack to 3.20.

At the end of July, we also made the big switch from Bugzilla to Phabricator, which has served us well so far! Phabricator offers a better permission system, the concept of “projects” with can be anything from groups like Triage Team to tags like Package Requests, 
and frankly a better user experience.

Ref: [This Week in Solus - Install #32](/2016/07/17/this-week-in-solus-install-32/) and [This Week in Solus - Install #33](/2016/08/07/this-week-in-solus-install-33/)

{{< altimg "2016/08/Screenshot-from-2016-08-04-23-03-03.png" >}}

In August, we introduced a natively compiled Golang, which also meant landing a native Docker that is OCI (Open Container Initiative) compliant. We released Firefox 48, delivered a native compiled Rust with our own LLVM, and 
Bryan (a.k.a DataDrake) and I did some community events, where he worked on packaging games for 17 HOURS across two sessions, I worked on the Solus Hugo-based site, and there was a short community gaming event where 
we had some fun in a relaxed environment, playing some Xonotic, and took a break from all the hard work of Solus.

{{< youtube "wQdePkSgKcA" >}}

{{< youtube "Yud2twcbtVU" >}}

{{< youtube "0fmTnyTSGjs" >}}

{{< youtube "SOD8rJUK0gk" >}}

{{< youtube "EvGOCQdQZkQ" >}}

At the end of August, Peter a.k.a Sunnyflunk did the massive packaging of KDE Frameworks 5, Krita, and Kdenlive. I3 landed in the repo and was properly integrated with sane defaults.

Ref: [This Week in Solus - Install #34](/2016/08/31/this-week-in-solus-install-34/)

{{< altimg "2016/09/Screenshot-from-2016-09-03-21-27-18.png" >}}

In September, we announced the big addition (or you could say, edition :P) to the Solus family, Solus MATE. We kicked off our Solus Mystery Hackfest with this big announcement and from a single session we went from no MATE packages 
to a bootable ISO with the MATE experience. Ikey developed a MATE notification theme that complimented our design defaults and introduced some default branding.

{{< youtube "Yrh-mUN-jWI" >}}

{{< youtube "F3VtlAGUlBs" >}}

Additionally, i3 received improvements in the way of volume changing fixes, i3status config improvements, and changed up workspacing colors.

Bryan landed a large set of developer tooling from JetBrains, such as CLion, IDEA, PHPStorm, RubyMine, and more.

Ref: [This Week in Solus - Install #35](/2016/09/05/this-week-in-solus-install-35/)

Not but a couple days later, we released [Solus 1.2.0.5](/2016/09/07/solus-1-2-0-5-released/), which was a minor update to Solus 1.2 that featured some installation fixes for NVIDIA Maxwell cards 
and Intel Skylake processors, the new stack upgrades, and Budgie fixes. 

{{< altimg "2016/09/osd.png" >}}

On September 10th, [we released Budgie 10.2.7](/2016/09/10/budgie-10-2-7-released/). This release featured lots of improvements to Budgie panel widgets.

- Our panel widgets introduced consistent left-click actions, rather than mixing left and right click.
- We introduced more popovers to expose quick access to settings, such as power settings.
- Our Icon Tasklist improved by enforcing a 1:1.1 aspect ratio, which helped to alleviate the feeling of icons being compressed. It also resulted in automatic icon scaling.
- Keyboard Layout Indicator landed, enabling a mouse-driven method for switching between layouts.
- We added a dedicated Raven Sidebar Control for enabling mouse-driven access to the Applets view of Raven.
- The User Indicator was introduced to enable quick access to logout, lock, suspend, restart, and shutdown.
- On Screen Displays landed for when changing brightness or volume levels.
- And lots of fixes.

At the end of September, we landed MATE 1.16 into Solus unstable, which improved GTK3 support. Our packaging series was also redone to reflect ypkg 2.0.

Ref: [This Week in Solus - Install #36](/2016/09/26/this-week-in-solus-install-36/)

### Q4 - We Found a MATE

{{< altimg "2016/10/Solus-MATE-Edition.png" >}}
*MATE, obviously.*

In October, [we released Solus 1.2.1](/2016/10/19/solus-1-2-1-shannon-released/), which was a monumental release, and it was also the last of our traditional releases, as we shifted 
towards the ISO snapshot model.

- Solus 1.2.1 was the first place to experience Budgie 10.2.8, which introduced IBUS support, a Places widget by Stefan a.k.a cybre, On Screen Display design improvements, a mouse-driven Volume Applet, and lots of fixes.
- Solus 1.2.1 also saw the debut of our Solus MATE edition. Our MATE edition features integration with Solus, such as hardware driver integration in the MATE Control Center. We also shipped our distro-agnostic notification theme to 
provide a clean, modern design familiar to existing users.
- Solus 1.2.1 also saw LVM and encryption support in the installer, both of which being incredibly simple to use via our Installer.

Our Software Center received some significant improvements as well. We introduced an update checker that notifies you on available updates. We also offered granular controls for it and respecting metered connections. 
On the Third Party front, we added Android Studio, GitKraken, Beta and Unstable channels of Chrome, JetBrain IDEs, Plex, Slack, and Teamspeak 3.

Under the hood, we enabled N generation (type 4) device support for our B43 driver. Our NVIDIA GLX driver was upgraded to the 370 series, and introduced preliminary support for the OpenGL 4.5 specification on Broadcom 
devices and newer, via the mesalib i965 driver. We also moved to voluntary-preempt and shipped Kernel 4.8.1 with CONFIG_HARDENED_USERCOPY enabled and RADV support.

At the end of October, Bryan and I had ourselves another hackfest.

{{< youtube "peXzufAT_Lc" >}}

{{< youtube "oMzkCEt64sk" >}}

{{< youtube "DEFQQ6cHT68" >}}

At the beginning of November, we announced our plan on the moving of Budgie to a modular architecture for Budgie 11.  We also launched our new Hugo-based site and I laid out our plans for improved infrastructure and web-based resources.

Ref: [This Week in Solus - Install #38](/2016/11/01/this-week-in-solus-install-38/)

{{< altimg "2016/11/laptop-solus-sticker.jpg" >}}

On November 15th, we were proud to [announce our partnership with Unixstickers](/2016/11/15/solus-announces-partnership-with-unixstickers/), which provide some really superb Solus stickers for all of our gadgets.

For the month of December, we started off by laying out our plans for the upcoming ISO snapshot, releasing a new version of the Linux Steam Integration Tool, and dropped evobuild for solbuild.

We followed up the release of Budgie 10.2.9, the last release of Budgie (*granted, I think I've said that before*) prior to our focus on Budgie 11.

- Icon tasklist fixes for the persisting spinny wheel that’d occur for 30 seconds after launching an application
- Keyboard layout widget for the zh_CN locale.
- Places widget featured MTP mounts being fixed, root directory bookmark detection, and duplicate checking of directories with accented characters.
- We introduced a confirmation popover when deleting a panel via Raven.
- We dropped our funky dconf call for resetting with a simple --reset command.
- Our Run Dialog received improvements.
- A large set of languages began to be supported, such as Arabic and Chinese, both in traditional and taiwan forms of it.

We [introduced then proceeded to release the first version of Brisk Menu](/2016/12/30/solus-announces-first-release-of-brisk-menu/) (which we also had the pleasure of announcing collaboration and support of the Ubuntu MATE Project) then 
rounded off the year with a pleasant GameFest!

{{< youtube "QfG4Qg8x7Tg" >}}

---

## 2017

{{< altimg "2017/01/20170101-featured.jpg" >}}

We kicked off the New Year on a high note with the release of our **first** ISO snapshot, [Solus 2017.01.01.0](/2017/01/01/solus-releases-iso-snapshot-20170101-0).

This snapshot featured some out-of-the-box experience for shipped applications, such as improved MTP support, performance improvements for eopkg, and so forth. We also delivered upgrade NVIDIA proprietary drivers, an updated Firefox and 
Thunderbird, as well as improvements to both our Installer and Software Center.

The primary edition featured the latest Budgie and our MATE edition featured Brisk Menu.

Moving forward, we're looking at the first two quarters of 2017.

### Q1

For Q1 of 2017, we'll be first focusing on the development of our switchable graphics solution, [Linux Driver Management](https://github.com/solus-project/linux-driver-management). Initially, the focus will be on Optimus support, since that has been 
the biggest pain point for our users, then we'll evaluate expanding that, or leaving it to a later date to focus on other items for Q1.

After LDM work has been complete, we'll be focusing on Budgie 11 development. From a code and architecture standpoint, we'll see a rewrite to C as well as a move to a modular architecture, where both the Budgie Panel and Raven will be standalone. 
From a design perspective, we'll see significant improvements, **some** of which are listed below:

- A multitude of Raven improvements:
 - Moving to Widgets and Notifications only, moving settings out of Raven.
 - The ability to resize Raven.
 - Implementation of a Raven API to enable the development of Raven Widgets, such as RSS and Weather.
 - Moving to "Drawer" mode, which means overlapping panels. This'll enable a particular Panel improvement listed below.
 - "Quiet Mode" (Do Not Disturb)
- A multitude of Panel improvements:
 - Multi-monitor support.
 - Drag reordering of widgets and the ability to "lock" the panel.
 - Permitting panels to be on **any** edge.
 - Intellihide (autohide) ability.
- A richer UX with improved animations.
- Richer, actionable Notifications, which will be grouped by application.
- We'll be completely replacing Gnome Control Center with our own Settings application.

Throughout Q1, we'll also be working on improving our developer tooling, with a new ypkg-tools and the release of Solhub. Solhub will expose a repo search functionality, likely a cgit replacement, as well as enable some backend "administrative" features 
for us on the Core Team. We'll be deprecating the Wiki for our own Help Center and git-enabled documentation as well as continuing to improve our web infrastructure.

### Q2

As of this moment, our items for Q2 are primarily dropping eopkg for sol and rewriting our Software Center to C.

---

## Summary

{{< altimg "2017/01/rocket-launch.gif" >}}

The Solus' machine is warmed up and firing on all cylinders. We're go for launch. 2016 was a crazy year, 2017 will be an insane one . We welcome you to [get involved](https://wiki.solus-project.com/Getting_Involved), to help build the engine, 
launch this machine. If you want to help back the project via a donation or becoming a Patron, we welcome you to visit our [Support](/support) page.