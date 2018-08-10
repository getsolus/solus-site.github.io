---
title: "Summertime Solus | The Roundup #7"
author: "joshua"
categories:
- news
- roundup
date: 2018-08-10T00:27:17+03:00
featuredimage: "2018/08/budgie-sound-control.jpg"
url: "/2018/08/10/summertime-solus" # Example, /2017/01/18/adopting-flatpak-to-reassemble-third-party-applications
---

Welcome to The Roundup #7, your bytes of Solus news. In this roundup, we're talking about new developer tools, work on the upcoming Budgie 10.5 release, and more!
<!--more-->

## Summertime Solus Hackfest

For those that missed our announcements of last week's Hackfest, you can watch it via the video embedded below. Most of this roundup will cover the work that has been done since the last roundup (in the specific sections in this blog) as well as the Hackfest however, so if you don't want to sit through the **10 hours of content**, feel free to just keep reading.

{{<youtube "6d40jbAKEcs">}}

## New Developer Tools

A large aspect of building Solus involves maintaining, improving, and upgrading the underlying software stack. For the scope of this section, we're looking at improved tooling for the following:

1. The maintenance of packages, which is usually seen through rebuilds against modified software (which may introduce ABI changes)
2. The upgrading of packages, which can vary in scale and scope, from "simple" package updates (e.g. Atom, Firefox, Thunderbird) that are likely to not involve ABI changes, to software which is likely to involve ABI changes and thus necessitate rebuilds (see maintenance). This can range from smaller stack upgrades (e.g cups or libinput) to massive stacks (e.g. GNOME, Haskell, and KDE Frameworks 5).

To tackle these two items, there's a couple things we need to be aware of as domain owners (individuals which "own" a set of packages or are responsible for their upkeep, e.g. Haskell and kernel for Bryan, KDE Frameworks 5 + Plasma for Peter, GNOME and nodejs for myself) and as packagers in general:

1. Is there an available update to this piece of software?
2. What is the fallout for upgrading this software, the reverse dependencies of it, etc?

This has traditionally involved following a bunch of RSS feeds, subscribing to mailing lists, and following the relevant social media accounts for keeping track of updates. For stack upgrades, this has varied from just writing a list of reverse dependencies in a text editor to creating spreadsheets with literally hundreds of rows of packages. While that isn't necessarily going away for some aspects of our roles (okay the spreadsheet thing is), Bryan has spend a significant amount of time writing the tooling to simplify both of the items I listed above.

So we've reached the end of this backstory, I won't read you another book. Let's actually talk about what those tools are.

### Cuppa

Last week, during the Hackfest, Bryan proudly pushed the first stable release of Cuppa, his latest work on addressing the issues and burdens of tracking software updates. Cuppa, which stands for Comprehensive Upstream Provider Polling Assistant, has the simple goal of being a completely distro agnostic tool for keeping track of updates across a wide variety of providers. As of the latest stable release, you can track software updates from:

- CPAN (for Perl)
- GitHub
- GNOME (tracking of releases based on `download.gnome.org`)
- Hackage (for Haskell)
- Jetbrains
- Launchpad
- PyPi (for Python)
- RubyGems (for Ruby)

For a first stable release, this is a massive set of initial providers. Here's an example of it being in use across two providers (GitHub and GNOME):

{{<altimg "2018/08/cuppa-example.jpg" >}}

Going forward, he has plans on supporting:

- BitBucket
- FTP
- Git
- GitLab

This vastly simplifies obtaining the latest release as well as the correct source tarball for software, reducing our workload and enabling us to allocate that extra time elsewhere. In the future, we'll be working towards integrating Cuppa into a backend service so we can be automatically notified when a release has happened, perform automatic updates to known "safe" packages (with a human still there to do quality assurance), and more. 

If you want to try Cuppa out, you'll be able to install it from the stable repo in the upcoming sync (it's already in unstable) with `sudo eopkg install cuppa`. If you're not on Solus, you can go to the [Cuppa GitHub](https://github.com/DataDrake/cuppa) and build the latest release.

### eopkg-deps

In addition to the first stable release of Cuppa, Bryan also introduced the first stable release of eopkg-deps, his latest work on dependency tracking with eopkg. This helps address various aspects of our second item previously talked about, which is "what is the fallout for upgrading this software", by:

1. Painting a clearer picture of the reverse dependencies of a package, including the worst case scenario for package rebuilds
2. Enabling a reliable path to a full stack upgrade without missing or skipping packages (which could lead to additional complications in the stack upgrade process or undesired fallout)

To address the first item, we're now able to easily fetch a list of forward (`fwd`) and reverse (`rev`) dependencies of a specific package (what a package requires and what software requires this package, respectively), as shown in the picture below, as well as getting the worst case scenario for rebuilds, which is useful for packages like glibc (*not shown in the picture because it makes me want to cry*).

{{<altimg "2018/08/eopkg-deps-example.jpg" >}}

When used in conjunction with the `abi_used_libs` and `abi_symbols`, we're not only able to determine if a package's reverse dependencies need rebuilds, but **what** those packages actually are.

To address the second item, Bryan implemented a ToDo functionality in eopkg-deps in a manner which ensures we correctly perform further updates or rebuilds in the most optimal path possible.

{{<altimg "2018/08/eopkg-deps-todo.jpg" >}}

In the example above, which is in fact a real representation of how I've used eopkg-deps (including this specific package), you can see that I started a ToDo list, marking `evolution-data-server`for rebuilds. This is a fairly common scenario for EDS, which typically sees itself, the client, and `evolution-ews` requiring rebuilds and upgrades at the same time.

Upon marking EDS for rebuilds, my ToDo list is immediately marked with an unblocked item, EDS itself. You'll notice that **none** of its reverse dependencies are marked, since EDS itself hasn't been built yet.

I proceed to mark it as done and suddenly its reverse dependencies are unblocked.

Now, there's still some quirks to work out with this new tool, like the notable example of `-docs` (a sub-package of EDS) being listed, or introducing **new** packages into the ToDo (such as when new packages get added during the GNOME stack upgrade), but overall it's a strong start!

With this new tool, it reduces the workload for us by enabling us to focus our attention on the immediate reverse dependencies of a package, which are typically the ones most affected, as well as reducing the possibility for fallout as a result of us missing rebuilds of packages.

If you wanna try out eopkg-deps today, you'll be able to install it from the stable repo in the upcoming sync (it's already in unstable) with `sudo eopkg install eopkg-deps`. If you're not on Solus, this isn't going to be much use to you, to be honest.

## Budgie

Budgie has seen a considerable amount of improvements, bug fixes, and general polish in preparation for Budgie 10.5.

### New Sound Widgets

{{<altimg "2018/08/budgie-sound-control-zoomed.jpg" >}}

In our [last roundup](/2018/06/26/software-center-progresses), I briefly talked about the new (then upcoming) overhaul to the sound controls within Raven and I'm happy to say that the Sound Output and Input widgets are now in a more finalized, completed state.

In case you haven't read the previous roundup, the new Sound Output widget enables you to do global as well as per-app volume control and output device changing, while the Sound Input widget enables you to do microphone control and input device changing. Since then, I've introduced the ability to mute / unmute applications and contributor yursan9 has implemented a label for indicating where precisely 100% is on the slider when "Allow raising volume above 100%" is enabled.

No longer do you need to jump into GNOME Control Center or use pavucontrol to manipulate app volumes, you can do it straight from Raven!

### More Configuration

{{<altimg "2018/08/new-budgie-settings.jpg" >}}

Budgie 10.5 is going to introduce a new Raven section in Budgie Desktop Settings. Under this new section, you're able to show and hide individual widgets as well as enable the ability to raise your volume above 100% in Raven.

Additionally, Budgie 10.5 will introduce the ability to enable window focus change to being on mouse enter / leave via the "Windows" section of Budgie Desktop Settings, as opposed to click-to-focus. The "Fonts" section of Budgie Desktop Settings introduces a new Text Scaling option thanks to a contribution by a community member, feddamis.

We're always committed to providing a focused yet personalizable desktop experience with Budgie, putting **more control** in the hands of our users, and we look forward to all of you having the opportunity to start using these new settings.

### Notifications

#### Notification Groups and Dismissal

{{<altimg "2018/08/budgie-notification-groups.jpg" >}}

Speaking of more control, I know a lot of our users have been wanting the ability to dismiss individual notifications for some time now, so during our Summertime Solus hackfest I had two goals in mind. The first goal was to provide the ability to dismiss individual notifications and the second was to actually achieve a feature that wasn't originally slated until **Budgie 11**, notification grouping on an application basis. With the upcoming Budgie 10.5, both of those features are available to our users.

Got a load of Discord notifications that you want to dismiss in one click? You can do that. Want to dismiss that email notification that's been sitting there since this morning, but nothing else? You can do that too. Want to ignore the outside world and pretend nothing ever happened, dismissing everything? Done.

#### Notification Summaries, Not The Odyssey

Thanks to work by community member EbonJaeger, notification text is now properly ellipsized. No longer will you have a notification filling up your entire screen. We've also fixed incorrect ellipsizing of notification titles!

### Caffeine-powered Budgie

{{<altimg "2018/08/budgie-caffeine-applet.jpg" >}}

Anyone that has spent time using Budgie and its ecosystem of applets immediately knows of [yursan9's Budgie Caffeine Applet](https://github.com/yursan9/budgie-caffeine-applet), the simple applet that prevents screen dimming and lock screen triggering. Up until Budgie 10.5, this has been a third-party applet written in Python, available in most repositories which make Budgie available to its users.

Now thanks to the hard work by yursan9 in porting their applet to Vala and providing a high quality patch for inclusion, I'm proud to say that Budgie Caffeine Applet will **now be shipping as an included applet for Budgie 10.5**. No additional packages to install after Budgie, you can immediately have a caffeine-powered Budgie out-of-the-box.

### Other Improvements

There's a wide variety of other improvements and fixes that have landed recently as well, such as:

- You can now middle click on the Bluetooth applet to toggle Bluetooth airplane mode.
- You can now middle click on the Sound applet to mute and unmute global audio.
- We now hide the add workspace button in the Workspace Applet during initialization. Thanks JockeTF for the patch!
- More strings are translatable thanks to patches from m4sk1n!
 - "Autostart Apps" in Budgie Desktop Settings
 - "Pinned", "Close" and "Close all" in the menu shown when right-clicking on an app on the Icon Tasklist
 - "Sorry, no items found" in Budgie Menu

Those new translations will be available to our awesome translators as we get closer to the Budgie 10.5 release.

### What's left?

So what is there left to do in terms of Budgie 10.5? At this moment in time, it's primarily tackling issues with Icon Tasklist as well as continued polish of the new functionality for this release. But we're closer than ever to a brand new Budgie!

## Other Items

In additional to all the above items, Peter has been hard at work on polishing and upgrading the Plasma experience on Solus. KDE Frameworks 5 has seen an upgrade to 5.48.0, KDE applications to 18.04.3, and Plasma to 5.13.4.

Additionally, he's improved the out-of-the-box experience when using 3G and 4G models, so if you own either then we welcome you to **test and file bugs**. Lastly, thanks to work by a community member Psi-Jack, wireless access points should now work out-of-the-box!

---

That's it for this roundup. As always, I want to thank everyone who's continued to make Solus what it is today. Whether you're spreading the word about Solus, contributing translations, bug reports, patches, or supporting the project via [Patreon](https://patreon.com/solus), you help make Solus great!