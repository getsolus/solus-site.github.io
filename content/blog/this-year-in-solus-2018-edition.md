---
title: "This Year in Solus: 2018 Edition"
author: "joshua"
categories:
- infrastructure
- news
- roundup
date: 2018-12-31T18:25:10+02:00
featuredimage: "/2018/12/this-year-in-solus-2018.jpg"
url: "/2018/12/31/this-year-in-solus-2018-edition"
---

2018 has been an amazing year for Solus. It brought us new and improved tooling that will pave the way for development for years to come, and fresh experiences in Budgie. 2018 also brought to the community new faces with fresh ideas, as well as the departure of a veteran in the Solus world.
<!--more-->

In January, we introduced Linux Driver Management, or ldm for short. Linux Driver Management has enabled us to improve the detection of the supported hardware in your system, such as graphics cards and wireless devices, as well as broaden our support later in the year for numerous new variants of proprietary graphics drivers.

Linux Driver Management is designed with the intent to incorporate it into a future release of the Solus Software Center, folding in the functionality of DoFlicky (our driver installation software) to provide users recommended software for various hardware such as:

- NVIDIA graphics cards
- Logitech devices (*prompting installation of Piper for DPI and LED configuration*)
- Printers
- Various Yubikey devices (*prompting installation of software like the Yubikey NEO Manager or Yubikey Personalization GUI*)

January also brought to our Patrons the first sneak peek at Peter O'Connor's (a.k.a sunnyflunk) efforts at providing a first-class KDE+Plasma desktop experience, complementing our current editions (flagship "Solus" with Budgie, Solus GNOME, and Solus MATE).

Efforts expanded in February to improve Solus MATE Edition, as well as rapidly iterate on Plasma. These efforts included various stack upgrades (such as to MATE), as well as usability refinements by Peter in Plasma.

In March, we began early development efforts on a new design for the Software Center. These efforts will provide inspiration for upcoming efforts in 2019, such as:

- A plugin-based architecture that will enable us to more easily integrate various software delivery mechanisms such as Flatpak and Snap. This same architecture will also enable us to swap out the eopkg package manager for our next-generation package management system.
- Improved search with filtering for already installed software.
- A priority-based queue system that would allow stacking up install / remove operations and have them execute in the background.
- A notion of "soft links" between various packages, that will allow us to automatically group related software based on the system configuration or AppStream recommendations. For example, driver providers for the active kernel would be prioritized within the Hardware view, 32-bit libraries are automatically recommended for proprietary graphics drivers, etc.

Concurrent to these development efforts, I began work on various improvements and cleanup to Budgie, such as:

- Deprecating support for versions of GTK below 3.22, shifting a significant part of the codebase to using modern GTK APIs such as changing the usage of `Gdk.X11Display` to `Gdk.X11.Display`.
- Introducing a more global Do-Not-Disturb mode and support for disabling notifications via GNOME Control Center.
- Complete overhaul of the Sound widgets in Raven to support per-app volume control.

In August, Bryan began working extensively on new tools, with the focal points being:

1. Enabling a more rapid iteration of upgrades in Solus by reducing the manual work of tracking upstream projects across multitude providers and surfacing the most likely candidate if a package is in need of an upgrade.
2. Simplifying and improving the reliability of upgrading various software stacks in Solus, e.g Haskell, Perl, Python, Ruby.

Traditionally, the tracking of upstream projects has involved following a bunch of RSS feeds, subscribing to mailing lists, following social media accounts, and more. In some cases, none of the above would ever be provided, so we would be resigned to routinely checking websites or FTP servers manually. Every moment spent tracking upstreams in this manner means one less moment spent performing upgrades or working on other aspects of Solus, so providing an distro-agnostic solution was absolutely crucial to us as we aim for a more rapid iteration of development.

To accomplish the task of reducing manual work of tracking upstreams, Bryan began work on the first stable release of [Cuppa](https://github.com/DataDrake/cuppa) (or Comprehensive Upstream Provider Polling Assistant), which was shipped in [early August](/2018/08/10/summertime-solus) with support for a truly massive set of providers:

- CPAN (for Perl)
- GitHub
- GNOME (tracking of releases based on `download.gnome.org`)
- Hackage (for Haskell)
- Jetbrains
- Launchpad
- PyPi (for Python)
- RubyGems (for Ruby)

Cuppa has already significantly simplified tracking upstreams in Solus and more recent efforts have expanded our coverage as well.

But it is one thing to be able to track an upstream and upgrade software, it is another to improve the reliability of upgrades and the minimize fallout from them. There are multiple aspects of stack upgrades which were in need of simplifying. One aspect is painting a clearer picture of the reverse dependencies of a package and another is enabling a reliable and most optimal path to a full stack upgrade without missing or skipping packages.

To address this, Bryan worked on [eopkg-deps](https://github.com/DataDrake/eopkg-deps) for dependency tracking with eopkg. We are now able to fetch a list of forward and reverse dependencies of a package, as well as be provided a ToDo list of packages which need to be rebuild and in what order.

We immediately put eopkg-deps to the test with an upgrade to KDE Frameworks 5, Mesalib, dbus, evolution-data-server, gstreamer, and more **all in August**.

Bryan worked on improving the resilience of upgrades with eopkg / pisi in August as well, resolving some edge cases that were discovered during the upgrade of a package.

Lastly in August, I worked on more improvements for Budgie 10.5. I have always believed that Budgie should provide a balanced desktop experience for our users, enabling a reasonable level of curation / personalization out-of-the-box while still empowering our users (and downstreams such as Ubuntu Budgie) to open up a world of possibilities with Budgie applets.

One of my first actionable items in August was to expand on its personalization via Budgie Desktop Settings. I introduced a few goodies such as:

- The ability to show / hide individual Raven widgets
- The ability to raise your volume above 100% via Raven's Sound Output widget
- The ability to turn on mouse enter / leave focus for window switching.

Contributor `feddamis` introduced a new Text Scaling option in the Fonts section of Budgie Desktop setting as well.

I also introduced a long-desired feature for Raven, Notification Grouping and the ability to dismiss individual notifications. Notifications also no longer would fill up your screen thanks to a contribution by `EbonJaeger`.

As if our Budgie wasn't hyped up enough, `yursan9` ported his Caffeine applet (prevents screen dimming and lock screen triggering) over to Vala and provided a stellar patch for its inclusion in Budgie "core".

In September, as a result of a multitude of factors such as the expiration of various OVH contracts, lack of access to the solus-project.com domain, and the move of the project founder, Ikey, Bryan and I spent a considerable amount of time migrating the project over to new infrastructure as well as a new domain name. Bryan provisioned hardware graciously provided by the Rochester Institute of Technology and I began work to bring back online various services such as our website, development tracker, and forums.

By the end of September, all services were back online, we shipped an ISO refresh with updated repository URLs, and we were back to performing various stack upgrades.

In October, Peter released a [public Plasma testing ISO](/2018/10/24/shiny-delights) and we performed a multitude of stack upgrades, such as:

- GEGL
- KDE Frameworks 5
- libicu
- libinput
- libssh

Bryan and I sat down in late October to provide a comprehensive update on the state of Solus, development, and our plans for the future of the project via the [In Full Sail](/2018/10/27/in-full-sail) blog post. In this blog post, we delved into detail on our infrastructure migration, communication attempts with various parties, explaining the shared vision for Solus, reducing bus factor, and intent to pursue membership with the Software Freedom Conservancy.

We also laid out our plans in two different blog posts for improving communication, community engagement, and making it easier to contribute to Solus. These were laid out in [Improving Community Engagement](/2018/10/11/improving-community-engagement) and [Shiny Delights | The Roundup #11](/2018/10/24/shiny-delights).

Various projects were consolidated to Phabricator, our Development Tracker, such as our branding packages. Additionally, we established a new GitHub organization to maximize our development capabilities and avoid various issues with lack of access to (and ownership of) certain repositories in the old solus-project organization.

In October, Bryan and I sat down for our [You Don't Know JACK](https://www.youtube.com/watch?v=dIEs0j4reFk) Hackfest. The primary focus of this stream was Bryan's improving of the state of JACK under Solus. For the longest time, `jackd` or the JACK Audio Connection Kit hasn't been properly integrated into Solus. Many audio processing workflows are built entirely around JACK, so this wasn't a small problem for us. The necessary Kernel flags had been enabled and everything should have been in place to make this happen, but it still needed fixing. During this Hackfest, Bryan found a few issues that needed to be resolved:

1. Real-time priority was not being granted to the user by `pam_limits`
2. Solus' PAM configurations had largely gone untouched since they were originally created.

Once those problems had been taken care of, we *finally* had ourselves a `jackd` that was working correctly, out-of-the box.

In early November, we released a blog post detailing available Patreon funds, being [fully transparent](/2018/11/02/update-on-patreon) on current access to various financial assets. Early November also saw the departure of the founder of Solus, Ikey Doherty, [for various family reasons detailed in his Open Letter](https://www.phoronix.com/scan.php?page=news_item&px=Solus-Open-Letter).

Back in full gear with wind behind our sails, November was an incredibly busy month for Solus development with several Hackfests. Starting with [Just GTK Things](https://www.youtube.com/watch?v=a7qMJvRr0qg), I implemented a new application tracking mechanism for Budgie, which was to be used by the IconTasklist to drastically simplify state tracking and pave the way for new improvements that were to be made to the IconTasklist.

Peter released ypkg v29. For those unfamiliar with ypkg, simply put it is our declarative build format and packaging tool, effectively converting our format into a set of instructions for configuring, building, and generating a binary package (eopkg). ypkg v29 introduced a multitude of changes and improvements, such as:

- Added an environment key which exports content to all ypkg build steps
- New python test macros
- No longer installing 32-bit clang as it is deprecated
- Removed setting locale as it is set already via solbuild
- Used flag for AVX2 builds that supports clang and gcc
- Used llvm-objcopy to strip ar archives with clang
- Used SSE2 for 32-bit builds resulting in a significant performance boost in some tests

Bryan unveiled and began his work on a new project, Linux Hardware Qualifier, in the [Cornucopia of Compability](https://www.youtube.com/watch?v=wjuamlW6Zxw) Hackfest. One of the biggest problems we have when it comes to hardware is knowing exactly what our users need us to support. Up until now, we had relied entirely on bug reports and social media messages to let us know when there's something we need to enable in the kernel or if there is some out-of-tree driver that we should be providing. It became perfectly clear that a new piece of software was needed to help us do this automatically, in an efficient and timely manner.

So Bryan set out to accomplish the following goals with [Linux Hardware Qualifier](https://github.com/getsolus/linux-hardware-qualifier):

1. Identify hardware attached to a user's system
2. Identify the Kernel flags necessary to enable that hardware
3. Determine what flags are missing from the Solus Kernel configs

Linux Hardware Qualifier (LHQ) seeks to perform all three of these tasks automatically with the help of the fantastic resources provided by the Linux Kernel Driver DataBase ([LKDDB](https://cateee.net/lkddb/)).

During the Cornucopia of Compatibility Hackfest, Bryan laid the foundation for the codebase. This included finally learning how to to use the [Meson](https://mesonbuild.com/) build system to manage C projects, setting up the initial project architecture, and implementing the parsing for the main `lkddb.list` format.

At the start of this month, Bryan and I had our [I Choose You, Budgie!](https://www.youtube.com/watch?v=MS1t0U5rcNg) Hackfest. In that Hackfest, I worked on the brand new IconTasklist popovers (*which I ended up having to completely rewrite due to disk corruption*). Bryan continued his work on Linux Hardware Qualifier. He had made significant progress in Linux Hardware Qualifier since the last Hackfest, now being able to read in all of the LKDDB listings, so he spent the majority of the stream implementing LKDDB search functionality. By the end of the stream, he was able to search for any USB device in the LKDDB.

On December 7th, I deployed the latest Budgie development build to Solus and rapidly iterated in preparation for our upcoming Budgie 10.5 release. This brought Solus users the latest **stable development build** of Budgie, featuring a huge amount of changes and improvements, such as (but not limited to):

- Caffeine-applet in Budgie core
- Completely new Sound widgets in Raven with per-app volume control, sound output "overdrive" feature, and more.
- Disabled powerstrip in Raven by default. Still can be enabled in Budgie Desktop Settings.
- Expanded Budgie Desktop Settings options.
- New IconTasklist and IconTasklist popovers.
- Notification Grouping and individual dismissable notifications.

I resolved various issues discovered by our users across the unstable and stable repositories, such as fixes for grouping, icon removals, pinning, and more. This happened over the course of 9 subsequent package updates / deployments between the initial release on the 7th and our last hackfest.

On December 15th, Bryan and I had our last Hackfest of this year. In this Hackfest, [Rock, Meet Sysfs](https://www.youtube.com/watch?v=ggBwAUjaZSU), Bryan turned his attention to hardware detection, making use of the `sysfs` virtual file-system to query the Kernel for existing hardware. A significant portion of the stream was spent working out the organization of `sysfs` and culminated in being able to identify all of the ACPI devices attached to Bryan's workstation. In a neat coincidence, this was the first time that LHQ had identified a piece of hardware that was not currently enabled in the Solus kernels.

During this hackfest, I worked on the Help Center document indexer. This indexer will enable me to introduce a new search API and functionality to the Help Center in 2019.

On the 21st of December, I shipped further refinements to Budgie, such as:

- Changing a previously-made design decision for Budgie Menu. We used to show applications multiple times in non-compact mode when headers were turned off. Going forward, in non-compact mode, we will not duplicate items under "All" unless you have Show Headers enabled.
  - Disable menu headers by default now.
- Changed the behavior of the mute button to essentially act as a temporary toggle for the user to mute the volume while still interacting with the volume slider. This could be useful if at launch, the volume of an application is too loud, and the user wishes to quickly mute it, lower the volume, then unmute at a safer volume.
  - Additionally, if the volume is set to 0 on the closing of an application, we define this as being "pre-muted" and allow for the immediate raising of the volume without needing to unmute first.
- Consolidating Translations in preparation for use by Weblate.
- Ensured we perform a lookup of the Icon key/val, if it exists, of an application which has a respective DesktopAppInfo during our on_notification_closed func. This resolves an issue where an application (GNOME Pomodoro) uses the standard file naming convention set forth in the Desktop Entry specification, however does not do the same for their icon.
- Making versioning clearer and more accurate

Bryan worked on improving our upstream tracking coverage for Cuppa by reviewing and updating **over 300 packages** in the span of the last week, bringing our current coverage to **over 75%** of our entire source repository (git repositories containing package.yml files). Additionally:

- We added a new member to the Global Maintainer team, Friedrich von Gellhorn (a.k.a Girtablulu). Friedrich has been responsible for the support of Brother printer drivers, Rust and cargo, and more!
- Friedrich upgraded our Ruby stack to the latest in the 2.6 series.
- Pierre-Yves (a.k.a. kyrios) landed AV1 support in gstreamer and ffmpeg, as well as various MATE desktop updates.

Last night I finished the last remaining items for Budgie 10.5, excluding translations (which I'll cover in our upcoming blog post) and any sneaky goodies I might land before the final release. These changes, now in the Solus unstable repository, include:

- Ensure action labels in IconPopover do not get cut off by calculating the longest label length (with a minimum of 20) based on available actions (if any).
- Ensure power and printer notifications don't get stored in Raven.
  - Power notifications such as automatic suspend and wake-from-suspend should no longer get stored in Raven. To enable this, I needed to [backport](https://dev.getsol.us/R991:00bfd3db0034c2f5972d95b037f912ed1285f7dd) various desktop-entry hint setting in gnome-settings-daemon for the Solus package and add gnome-power-panel as a spam "app" in the gschema.
  - Additionally added printer notifications since those can get quite spammy for network printers (apparently).
- Ensured we set button layout in `org.gnome.desktop.wm.preferences` whenever we set our budgie-wm button layout.
- Implemented a mechanism for hiding Sound widgets when there are no devices, dynamically showing / hiding the Sound Output and Input widgets based on the devices which are plugged in, while still respecting the setting defined in Budgie Desktop Settings
- Made it possible to pin Chrome Apps (and keep them separated from Chrome itself) as well as resolving issues with tracking LibreOffice windows. For a comprehensive explanation on all the engineering behind this, I'd suggest reading [this commit](https://dev.getsol.us/R465:8b7843ecc4ad83d25fe29408a5facfe7b541aaa6).
- DIALOG and SPLASHSCREEN window types are now rightfully ignored.

---

It is no understatement to say this has been a truly amazing year for Solus. Throughout the year, our community has grown alongside the number of contributions to the project itself. Despite a few setbacks, we have gained new team members, bolstered our infrastructure, and made strides in various areas like tooling and our flagship desktop environment. Our focus on Budgie, Software Center, and tooling in 2018 has been pivotal in getting the Solus ship into tip-top shape and preparing us for future adventures in 2019. We look forward to giving you a sneak peek into some of our plans in our upcoming blog post, bringing you on our journey and enabling you to help shape Solus for years to come. There is always more work for us to do and more improvements to be made as we continue to strive for technical excellence.

So thank you for all of your contributions, your kind words, and your support. Most of all, thank you for believing in the **shared vision** of Solus. We couldn't do this without all of you.

Signing off,

The Solus Core Team