---
title: "Budgie and Its Army of GNOMES | The Roundup #13"
author: "joshua"
categories:
- budgie
- infrastructure
- news
date: 2019-10-03T16:55:23+03:00
featuredimage: "/budgie-desktop.jpg"
url: "/2019/10/03/budgie-and-its-army-of-gnomes"
---

Welcome to The Roundup #13, your bytes of Solus news. In this roundup, we're talking about our new minor release of the Budgie 10.5 series, Budgie 10.5.1, the latest upgrade of our GNOME Stack, new KDE goodies, and more!

<!--more-->

## Budgie 10.5.1

Budgie 10.5.1 is the first minor release of the Budgie 10.5 series, introducing a multitude of quality-of-life changes, bug fixes, and support for new GNOME Stacks. This Budgie 10.5 series release also brings new and updated translations thanks to our amazing community!

### Bug Fixes

Bug fixes are the cornerstone of Budgie 10.5 series releases, ensuring existing Budgie user experiences are smoother than ever.

Budgie 10.5.1 introduces some bug fixes around Budgie Menu artifacting, notifications, improving window raise performance, and more. Let's break down the big items that were addressed!

- Budgie Menu
  - Menu artificating (such as window borders still showing in some cases) is now fixed.
  - Menu items are now sorted using [locale linguist rules](https://github.com/solus-project/budgie-desktop/issues/1546).
- IconTasklist
  - Fixed instances of window tracking in multi-window scenarios by invalidating our window on close in our AbominationRunningApp and picking another window of the same WM_CLASS.
  - Fixed the ability to move non-favorited running applications / windows in IconTasklist across grouping and non-grouping modes. These are now allowed to intermingle with your favorited applications without concern for a panel crash. We're doing this by more heavily leveraging our AbominationRunningApp to provide more consistent window-specific IDs.
- Raven
  - Notification body alignment is now properly justified.
  - Notifications will now properly wrap using `WORD_CHAR`, so we'll be more aggressive on wrapping on words when possible, but fallback to characters for longer running strings like URLs.
  - Application controls in the Sound applet will now handle Gvc ChannelMap changes. This is useful since some applications do not provide accurate GvcStream volume immediately when creating their stream, such as Firefox when starting a video. We'll now ensure we're updating those values and ensuring applications like Firefox more accurately reflect muted states over Gvc.
- Polkit: We now correctly handle user dismissing authentication dialogs
- WM: We now enforce an instant auto raise of windows when the focus-mode is set to mouse over / mouse focus and 250ms on click, resulting in speedy window raising.

## Quality of Life

Budgie 10.5.1 introduces a few new goodies to make your Budgie experience, as well as those of our Budgie theme authors, even better!

### Budgie Desktop Settings

{{< relimg "budgie-desktop-settings-fonts.jpg" >}}

Budgie 10.5.1 introduces hinting and anti-aliasing settings in our Fonts section of Budgie Desktop Settings, allowing you even more flexibility with how document, interface, monospace, and window title fonts render:

- For [font hinting](https://en.wikipedia.org/wiki/Font_hinting), you can choose between a range of options ranging from no font hinting to full font hinting.
- For antialiasing, you can choose between subpixel antialiasing, standard grayscale, and no antialiasing.

### GNOME Stack Support

Budgie 10.5.1 provides support for several GNOME stack releases, allowing for an ever growing amount of Budgie users to get the latest updates! Budgie supports GNOME 3.30, 3.32, and now 3.34, including recent changes in GNOME Settings Daemon.

Thanks to the folks over at Ubuntu Budgie for their patches, it's greatly appreciated!

### Icon Tasklist

{{< relimg "budgie-desktop-icon-tasklist-hover.jpg" >}}

If you have a single window open for a given IconButton in the Icon Tasklist, we will now update the tooltip when you hover over.

### Workspaces

{{< relimg "budgie-desktop-settings-desktop.jpg" >}}

Budgie 10.5.1 introduces the ability to have persistent workspaces created at the launch of Budgie, with a configurable amount of default workspaces.

Under the Desktop section of Budgie Desktop Settings, you'll find a new option called "Number of virtual desktops", where you can go from just having one workspace up to eight! A perfect opportunity to hide away all those Electron apps you're ashamed to be running!

If you want more workspaces dynamically, you can still use our Workspace Applet to add more as you need them.

### Styling

Budgie 10.5.1 introduces a multitude of new CSS classes to ease Budgie Desktop theme development:

- Icon Popover: Now has the `icon-popover` class
- Night Light Applet: The container for the Night Light applet popover now uses the `night-light-indicator` class
- Raven
  - MPRIS widget now has an  `mpris-widget` class
  - MPRIS widget controls now have a `raven-mpris-controls` class
  - Notifications View now has the  `raven-notifications-view` class
  - Internal to the Notifications View, we now provide the `raven-header` class, as well as dedicated classes for the Do Not Disturb (`do-not-disturb`) and Clear All Notifications (`clear-all-notifications`) buttons
  - Groups of Notifications (per app) now have the `raven-notifications-group` class, with the header being `raven-notifications-group-header` and the individual Notifications having `notification-clone` classes.
  - When no album art is provided for the MPRIS widget, we set the `no-album-art` class

## GNOME 3.34

{{< relimg "gnome-shell.jpg" >}}

We're happy to be bringing the GNOME 3.34 stack to our stable / shannon repo users in this coming Friday sync. This stack upgrade has been rigorously tested by a wide range of users via our unstable repository, all of whom provided valuable feedback and reports over on [our development tracker](https://dev.getsol.us/T8366). This upgrade has also fortunately been smoother compared to previous stack upgrades, with no necessary changes having needed to be made to our branding packages to account for schema changes, and we've been more aggressive with backporting patches for fixes to GNOME Shell and Mutter.

### Smoother Sailing

We do want to take this opportunity to provide some recommendations to you on the best way to upgrade your system and ensure a smoother sailing with this stack upgrade.

As always, we strongly recommend performing a **full upgrade** via the Software Center or eopkg (`sudo eopkg up`). While for most upgrades it's *pretty* important, for this upgrade it is **really** important, as there are schema / settings changes that we need to ensure are applied.

Furthermore, if you are using GNOME Shell, as is standard practice for upgrading to new releases we suggest **disabling any extensions you've installed separately** to those which we officially support and provide out-of-the-box. If you've used GNOME Tweaks to update extensions we've shipped, this is not advised and we'd suggest removing those extensions (dash-to-dock, impatience, topicons plus) from `~/.local/share/gnome-shell/extensions` and reinstalling them from the repo. You can find the command below:

``` bash
sudo eopkg install --reinstall gnome-shell-extension-dash-to-dock gnome-shell-extension-impatience gnome-shell-extension-topicons-plus
```

If you haven't installed separate GNOME Shell extensions or updated ours via the GNOME Extensions website (or alternatively GNOME Tweaks), the above should not apply to you.

### Latest Goodies

GNOME 3.34 introduces a bunch of new features and bug fixes from the GNOME community and we'd like to highlight a few below. For a more comprehensive list, check out [this blog post](https://www.gnome.org/news/2019/09/gnome-3-34-released/).

#### Settings Improvements

{{< relimg "gnome-settings.jpg" >}}

GNOME Control Center / GNOME Settings has seen a redesign of two sections such as the backgrounds panel and picker, as well as moving the Night Mode in the Displays section.

#### Epiphany / GNOME Web

{{< relimg "epiphany.jpg" >}}

For those of you that use Epiphany / GNOME Web, it's seen some improvements in the GNOME 3.34 release. You can now pin tabs, which is handy for frequently accessed and open pages (like the Solus blog), and they're now using the new WebKit content filters API for adblocking!

#### Evolution

If you use Evolution for your mail, calendar, or address book, you'll be happy to see numerous bug fixes in Evolution 3.34.0, such as fixes for:

- Calendar: Force 24-hour format early after start
- Enhance URL end recognition regarding closing bracket
- Notify clients when backend is refreshing its content
- Remove shortcut for "Copy all contacts to…" in Contacts view
- ToDo bar: Multiday events shown incorrectly
- Use GtkPopover for an emoticon tool button
- Use special icon for "Assigned Task" in the menu

## KDE Applications & Plasma Updates

Our KDE and Plasma integrator and maintainer, Friedrich (a.k.a Girtablulu), has upgraded Solus users to the latest KDE Applications 19.08.1 release! This release features a plethora of fixes and improvements, such as:

- Akonadi: Fix short names of favorite folder resulting in improperly shown number of unread messages.
- Ark: Fall back to numerical owner and group if no text representation exists.
- Dolphin
  - Bug fixes in new folders in tabs feature.
  - Fix places text when the URL has a trailing slash.
  - Reset progress bar text when directory loading starts.
  - Fixing bug where split view opens with no URLs.
- Kate
  - Fix stop button of search and replace plugin.
- Kdenlive
  - Fix disabling clip only disable audio part of an AV clip.
  - Fix regression breaking timeline resize.
  - Fix disabling autoscroll.
  - Convert old custom effects to new customAudio/Video naming.
  - Ctrl resize in monitor effects keeps center position.
  - Fix custom effects not recognized as audio.
- Kmail
  - Fix missing "Save Attachments..." from Multiple Emails
- Konsole
  - Fix the fallback code used when restoring session fails.
  - Add scrollbuttons for tabs when tabbar is full.
  - Restore "Show 'new tab' button" option in Konsole Settings.

{{< relimg "plasma-solus-dark-theme.jpg" >}}

With this update you will receive a darker color-scheme for the Solus Dark theme. We welcome your feedback and bug reports [here](https://discuss.getsol.us/d/1608-plasma-solus-color-scheme/29).

## MATE Desktop Updates

Our MATE Applications and Desktop integrator and maintainer, Pierre-Yves (a.k.a kyrios) has upgraded MATE users to the latest updates from the MATE Desktop team. These include numerous fixes and improvements, such as:

- Pluma
  - smart-converter: Fix memory leaks.
- mate-menu
  - The buttons will now have a relief on hover.
  - The viewport is now coloured consistently with the other plugins.
- mate-panel
  - When determining whether the pos is in the applet, use ad->cells to calc.
  - panel-toplevel: fix applets placement on expanded vertical panel
- mate-screensaver
  - Ensure lock on suspend and unlock on resume
- mate-settings-daemon
  - Hide MATE Settings Daemon from Startup Applications capplet.
- mate-session-manager
  - Fix mate-session-properties vertical scaling.
- mate-tweak
  - Add support for setting window manager button layouts with and without the menu.
  - Remove clear shadow. This seems to affect how some shadows are positioned, leading to a clear space between the window and its shadow.
- mate-utils
  - mate-disk-usage-analyzer: Remove blank space before right parenthesis.
- mozo
  - Change DragAction to MOVE
  - Fix item drag & drop creating copies, fix undo, redo and a crash when refreshing.

## Tooling Improvements

### Hackfest

On Saturday, September 28th, Bryan and I held a Solus Hackfest featuring our latest development efforts around the rewrite of ferryd, our repository manager, as well as work on Help Center documentation in preparation for the new Help Center redesign.

If you have 5 hours to spare, feel free to watch [the video](https://www.youtube.com/watch?v=3TUmsbvnKlc) embedded below!

{{<youtube 3TUmsbvnKlc >}}

#### ferryd

This hackfest focused on three main areas of `ferryd`: queries for generating changesets, a new API for the Repo Manager, and file-based configuration for the daemon.

##### SQL Query Design

While most of the repository management features of `ferryd` require relatively simple queries of the database, much more compllicated queries are needed for gathering the data for operations like sync report generation, sync changesets, and cloning. In particular, this hackfest led to the development of the following reusable queries:

- Fetch all of the Package Releases for a given Repo
- Fetch all of the Package Releases shared by two repos
- Fetch all of the Package Releases within one repo, but not another.

This work benefited greatly from the use of the excellent [DB Browser for Sqlite](https://sqlitebrowser.org/) to test queries on real data.

##### Repo Manager API

In previous versions of `ferryd` the Repo Manager provided many operations which were either not frequently used or not used at all. Further, some of these actions were confusingly named and needed to be changed. For the new Repo Manager API we simplified these actions to a few different categories:

- Repo Manager Only Operations
- Single Repo Operations
- Multiple Repo Operations
- Package-Specific Operations

By focusing on organizing the operations this way, it becomes easier to see which functions can be reused and how to better compose those operations to create more complex behaviors.

##### File-based Configuration

At present, all configuration of the `ferryd` daemon is defined by either hard-coded paths, relative directories, or command-line arguments passed when starting it. During the hackfest we focused on developing a simple JSON file format for specifying the most important pieces of configuration and added sane defaults for use in the absence of a configuration file. We will continue to develop this format as further development of the daemon continues.

#### Help Center Documentation

With the upcoming redesign of our Help Center, we want to focus on improving the discoverability of content, breadth of content, and the ease in which we can expand our documentation in various fields such as packaging.

To accomplish this, we are splitting off various common sections of documentation, such as in Packaging, to enable it to be referenced and utilitized in more places, such as a new Beginners Guide. We're then leveraging [Hugo shortcode functionality](https://gohugo.io/templates/shortcode-templates/) to provide an "import" shortcode to easily import these sections during page generation.

Some examples of content we've already split off in our new local v2 of the documentation:

- Build and Runtime Dependencies: Documentation regarding build and runtime dependencies is useful to be referenced and utilitized across multiple Packaging articles. With the current Help Center, this is only utilized in our Packaging Practices documentation, however going forward we would like to have a Beginner's Guide that covers this information as well, so these are going to be a new importable sections!
- Setting Up Arcanist, Common, Packager files, etc: At the moment, setting up arcanist, common, packager files, and other crucial parts of the packaging process (from building to submitting patches) is split across multiple packages (Building Packages and Submitting the Package). Going forward, all of these are importable sections that we can utilize in our Beginners Guide and other Packaging docs.

We look forward to having more routine hackfests and news on the upcoming Help Center and providing you all design previews in the future, so stay tuned!

#### Package.yml Generation Improvements

During this hackfest, we made some minor improvements to `yauto`, the tool used to automatically generate package.yml files based on a source.

1. This tool will now prioritize Meson support and use Meson actionable macros instead of CMake, when a project provides both CMake and Meson support.
2. QMake is now detected and we'll use qmake, make, and make_install macros when we detect a `.pro` file provided by the project.
3. WAF is now detected and we'll use our waf_configure, waf_build, and waf_install macros when we detect a `wscript` file provided by the project.
4. Yarn support for node projects is now detected and we'll add a yarn install during the setup step if we detect a `yarn.lock` file in the project. We'll also automatically turn on networking.

### solbuild

solbuild, our chroot-based package build system, has seen a minor release (1.4.5.2). This release changes our default solbuild image URL away from `https://packages.getsol.us` **in preparation for our move to Fastly for our repository**. Accompanying this is an update to the solbuild images themselves, meaning less updates for you to perform against the solbuild image during first initialization!

## Other Minor Updates

### Software Center

{{< relimg "software-center-teamviewer.jpg" >}}

We've added Teamviewer into the Third Party section of the Software Center and have fully deprecated Android Tools from the Third Party section, as it is now maintained and available via our official repositories!