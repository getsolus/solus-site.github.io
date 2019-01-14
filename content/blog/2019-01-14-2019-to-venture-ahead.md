---
title: "2019: To Venture Ahead"
author: "joshua"
categories:
- budgie
- infrastructure
- news
- plans
date: 2019-01-14T11:56:14+02:00
featuredimage: "/2019/01/to-venture-ahead.jpg"
url: "/2019/01/14/2019-to-venture-ahead"
---

Solus is a project which does not shy away from continuously improving and rethinking entire aspects of our architecture and experiences on our quest for technical excellence, whether that is introducing new tooling and experiences or changing existing ones. 2019 is going to be a transformative year for Solus.
<!--more-->

To make it easier to discover what we're going to be working throughout the year and the time-frames for when development of those items will occur, we are going to be breaking up these sections into quarters, and within each quarter the projects themselves.

As with all things Solus, our roadmap is subject to change over time and may not be the full breadth of our plans. We'll be keeping our new [Roadmap](/solus/roadmap) page up-to-date throughout development and you can always follow along with development by reading our blog and checking various development resources (our Development Tracker, GitHub, etc.).

## Q1 (January - March)

### Budgie

Budgie 10.5 is effectively complete aside from translation updates. To enable us to translate a wide variety of Solus projects going into the future, as well as address the immediate issue of Budgie translations and unblock the release of Budgie 10.5, we announced last year that we would be deploying Weblate on our infrastructure. I'm happy to announce that our Weblate instance is now available for use.

If you wish to translate Budgie into your language, click [here](https://translate.getsol.us)! Thank you in advance for your contributions and pardon any early hiccups. Weblate is pretty new to us and we're still working out its usage, resolving some performance issues, and finishing up the GitHub OAuth support. I'll be working with Bryan on addressing load times when we upgrade the server as well.

I'm hoping that Budgie 10.5 will be ready for release in the next few weeks, which also means **Solus 4 will also be released**, finally moving us away from the Solus 3.x release and subsequent ISO refresh and opening the door to our previously announced change in our [In Full Sail](/2018/10/27/in-full-sail) blog post to how we release new versions of Solus.

February will be spent on enabling GNOME 3.30 support in a manner which should maintain compatibility with the GNOME 3.28 stack (such as libmutter-2). With such upgrade, we'll also be tagging a Budgie 10.5.1 release and release Solus 4.1 alongside it.

Depending on the release schedule and changes for GNOME 3.32, we may see a Budgie 10.5.2 release in March as well.

To be perfectly clear, it should not be expected that any major new releases of Budgie 10 series will occur beyond 10.5. I know it has been said a few times before but you'll understand why in the Q2 section. That doesn't mean new goodies shouldn't be expected to land in the minor patch releases for Budgie 10.5 series though.

### Cuppa

[Comprehensive Upstream Provider Polling Assistant](https://github.com/DataDrake/cuppa) (or Cuppa, for short) enables us to easily track and report the current state of our package repository and individual packages within it, across a wide variety of sources such as (but not limited to):

- CPAN
- GitHub
- GNOME
- Hackage
- KDE
- PyPi

For January, the goal is to get a new release tagged. This release will introduce a wide variety of improvements that have happened since the last release, such as initial GNU source and Sourceforge support as well as improved development release filtering. We look forward to having a blog post out for it when it is ready!

### Linux Hardware Qualifier

Linux Hardware Qualifier, our tool for checking hardware compatibility supported by the kernel and enabled in its config, should see a beta or stable release in January. It is seen continuous improvements and is nearing feature completion for an initial release. Just in our [last hackfest](https://www.youtube.com/watch?v=qqnAUfyjVjU) alone, Bryan implemented USB sysfs support, so we can now check for support for various USB devices.

### Web Infrastructure

As mentioned in our Budgie section, our [Weblate](https://translate.getsol.us) instance is now available for use, which will enable translations of Budgie and in the future other projects such as the Software Center.

Our web infrastructure is always evolving to meeting the needs of us and our users. During our [last hackfest](https://www.youtube.com/watch?v=qqnAUfyjVjU), I implemented the new API endpoints for Closest Mirror, Location, and Search. Effectively, this re-introduced the search in the Help Center as well as the "Closest" mirror download functionality on the Download page.

In February, I will be working on deploying [Flarum](https://flarum.org/) to effectively replace our forums and the Google+ Community (which has an accelerated "sunsetting" of April). This was touched on in our [Improving Community Engagement](/2018/10/11/improving-community-engagement) blog post. In conjunction with this, I'll be working on the OAuth tie-in with Phabricator, so all Solus users engaging on Flarum will be known to also have an account on our Development Tracker, which should make it easier for them to file issues!

In March, I will be deploying a redesigned Help Center with updated and restructured documentation.

### YPKG

ypkg, our declarative build format and packaging tool, will see official development starting in February. It is not understating it to say that ypkg 3 will be the most significant change to our tooling since its inception, and will help shape Solus development for years to come. ypkg 3 will see:

- A massive consolidation and enforced consistency in our package tooling, folding in a lot of currently used functionality such as package bumping and package.yml generation.
- The introduction of much desired functionality for `package.yml` formatting and linting, so we can do things like:
 - Check licensing against SPDX and provide a warning if it is non-compliant
 - Check for valid package names, release numbers, and version numbers
 - Check for mandatory and empty keys
- The introduction of a new ypkg specification

In February, Bryan's primary focus will be the porting of common and the variety of tools we use into a single binary, as well as the parsing / generation of package.yml.

In March, his focus will be on the ypkg 3 build process and incorporating eopkg-deps and ypkg-update-checker like functionality.

## Q2 (April - June)

### Budgie

Budgie 11 development will officially (re-?)start in April. This development will occur internally on our Development Tracker until it is in a more ready state, in which case it will be available under our [GetSolus](https://github.com/getsolus) GitHub organization. This will enable us to iterate on Budgie 11 at a pace which won't compromise our other higher priority and more time sensitive development efforts, as well as allow us to evolve and experiment with various Budgie 11 components.

April will be focused on starting the development of these components, starting with `budgie-daemon` and `budgie-desktop-shell`.

For Budgie Daemon, the early development efforts will center around initial settings, power, and notification state handling. Effectively it will be feature parity with current Budgie Daemon and introduce a Budgie 10 compatibility layer for supported features.

For Budgie Desktop Shell, the early development efforts will center around the various classes and foundation for supporting Budgie Panel, Budgie Menu and Raven.

May and June development efforts are still in a "TBD" stage at this point and are expected to be until various Budgie 11 components are built out. I'll be writing up a dedicated blog post soon on my ambitions for Budgie 11 and beyond.

### Software Center

The Software Center will see development efforts start in late April and will be developed in parallel with Bryan's work on Sol, our future package manager. This Software Center will be:

1. Completely rewritten in C and GTK3 (with proper desktop handling to **not** use a Headerbar on Plasma)
2. Introduce support for Flatpak and Snaps via our planned plugin architecture
3. Introduce a new user experience (which you may be familiar with from the work last year done on the Python-based "XNG" Software Center)

The current aim is for Software Center is to be released in early June but like all things, it shall be released when it is ready.

### Sol

In April, Bryan will begin developing our next generation package manager, sol. The first development item for sol 1.0 will be the release of `sold` (sol daemon) as a Go JSON-RPC service that will call out to eopkg. This will be done until the rest of sol's functionality is completed, for the purposes of enabling the Software Center to perform native package transactions.

sol daemon will also have a Third Party backend to facilitate installation of Third Party repo items using ypkg, which would not otherwise be supported by Flatpak or Snaps (such as Google Chrome).

In May and June, Bryan will be working on introducing feature parity (and feature improvements) v.s. eopkg, such as (but not limited to):

- Package Management
- Repository Management
- Search

sol development is expected to continue into Q3, where we'll then turn to sol 1.5.

### Web Infrastructure

In April I will begin work on replacing the blog with a new Activity Hub, which will consolidate all relevant Solus activity from the team (blogs, social media posts, development tracker activity) in a single place.

In May, I'll be working on various tooling for social media cross-posting, which will be able to be leveraged by the Team to post across:

- Activity Hub
- Facebook
- Flarum
- Mastodon
- Reddit
- Twitter

In June, Activity Hub and its respective components should be complete and ready for deployment.

### YPKG

In April, we will be releasing the first stable release of ypkg 3.

## Q3 (July - September)

### Budgie 11

My primary focus in Q3 will be Budgie 11 development. I am aiming for public alpha builds (on top of a Solus ISO) to happen around August and formal development to transition to GitHub at that time as well.

### Sol

Development efforts for sol will continue in Q3, with the planned release of sol 1.5. Some items that will be introduced in 1.5 are:

- A new binary index format
- A new metadata + files format
- Enforced index signing

### usysconf

usysconf, our system configuration interface that formally replaced the legacy COMAR system in Solus, will see a rewrite sometime in Q3. This rewrite will move usysconf to being almost entirely configuration based and eliminating the need to learn and write C just for new usysconf handlers.

## Q4 (October - December)

### Budgie 11

My primary focus in Q4 will be Budgie 11 development. I am aiming for public beta builds (on top of a Solus ISO) to happen around October.

### Sol

Development efforts for sol will continue in Q4, with the planned release of sol 2.0. Some items that will be introduced in 2.0 are:

- The conversion of sol daemon to C
- Improved deltas
- Improved index and package repair functionality

---

As you can see, we have a lot in store for 2019. Alongside the above mentioned items and timeframes, I also want to mention other efforts of ours which will see attention throughout 2019, though at no specific or committed time:

- Installer
 - The Installer will see some love in 2019, whether that's in the form of improvements to the current implementation or the re-write of the Installer entirely. Some notable improvements we're looking for is OEM installer mode and better UEFI handling.
- Linux Steam Integration
 - We'll be working to hopefully update LSI with better support for newer gaming titles, improving LSI libintercept, and releasing an updated Snap.
- ferryd: Our binary repository manager
 - While we are quite happy with ferryd, there is some improvements we'd like to make to it such as improving delta generation and various behaviors around obsoleting and trimming packages.