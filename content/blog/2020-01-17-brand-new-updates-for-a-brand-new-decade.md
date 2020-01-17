---
title: "New Updates For A New Decade | The Roundup #14"
author: "joshua"
categories:
- packages
- news
- roundup
date: 2020-01-17T13:04:27+02:00
featuredimage: "2020/01/hmm.jpg"
url: "/2020/01/17/new-updates-for-a-new-decade"
---

Welcome to The Roundup #14, your bytes of Solus news. In this roundup, we're talking about some brand new updates to really kick off 2020!

<!--more-->

## Base System Updates

### systemd

If you've followed our community forums for announcements at all, you may have noticed that earlier this week we [deployed systemd 244](https://discuss.getsol.us/d/3446-unstable-repo-users-testing-desired-for-systemd-244/) to our Solus unstable repo users for testing. systemd, which is responsible for the start-up and orchestration of most software services  under Solus, always been one of those crucial components of our operating system that we've taken great care of managing, updating, or even holding back if deemed necessary. Up until now, we've held back systemd for an upgrade to OpenSSL. While it is obviously not impossible to upgrade our OpenSSL, we've done it in the past and plan to do it again in the coming weeks, the upgrade path is more complex than your average package.

The reason for this is pretty simple and it comes down to a bit of a catch-22: Updating OpenSSL involves also keeping the existing versioned libraries around at the same time, in the same package, and in the same upgrade. This ensures no libraries are removed that contain the necessary ABIs that software such as Python are built against. This has to be done to ensure our current package manager (eopkg) continues to function, so we can perform the necessary package transactions to get any subsequent packages to build in the first place.

Basically, updating OpenSSL involves shipping the old and new versions until rebuilds are performed, otherwise we break the package manager. Break the package manager, break package building and obviously users systems. Not fun and a royal pain to get it right. We always strive to provide as flawless an upgrade path as possible, so even having users install some separate package to get certain aspects of their system working, or modifying a file, is absolutely a no-go.

One of the major features in newer systemd releases (new comparatively speaking to what we previously used) that can utilize OpenSSL is DNS-over-TLS, which securely wraps DNS queries over TCP which would otherwise be vulnerable to spoofing or eavesdropping. systemd additionally supported [GnuTLS](https://www.gnutls.org/) however we actually had too new of a GnuTLS version to take advantage of the DNS-over-TLS implementation leveraging GnuTLS. In v244, that issue was fixed, but given shifting priorities and the holidays, it was only until recently I was able to re-assess it.

So now, I've moved our systemd to no longer require OpenSSL, but instead use GnuTLS, unblocking the deployment of the newest systemd. This upgrade introduces some much desired features / changes, such as:

- Newer features for EFI-based systems (so we can eventually drop clr-boot-manager)
- Newer features in the DHCPv4 and DHCPv6 servers
- Improved security on 64-bit systems to reduce PID collisions
- Newer features in systemd-resolved for DNS-over-TLS
- Cloudflare DNS is now used as a fallback secondary to Google
- Bunch of new features for sockets, units, and timers

Thanks to the incredible testing performed by some of our community members, we've also been able to ensure this is one of the smoothest systemd upgrades we've had to date, and a wider spectrum of the software available to Solus users has been tested. This testing highlighted some edge cases that needed to be addressed, primarily around software that leverage cgroups (a kernel feature typically used by containerization and virtualization software), and we've worked to ensure that those pieces of software continue to function after upgrading your system **without any user intervention** such as manually adding kernel parameters ([unlike some other operating systems](https://fedoraproject.org/wiki/Changes/CGroupsV2#Upgrade.2Fcompatibility_impact)).

Software that would have been impacted includes (but is not limited to): Docker, podman and snapd. This impact is the result of systemd defaulting to cgroups v2 as their "default hierarchy", which means **breaking** a bunch of software that does not yet support cgroups v2, as we've detailed [here](https://dev.getsol.us/T8609). This change is quoted below from their release notes:

> systemd now defaults to the "unified" cgroup hierarchy setup during build-time, i.e. -Ddefault-hierarchy=unified is now the build-time
default. Previously, -Ddefault-hierarchy=hybrid was the default. This change reflects the fact that cgroupsv2 support has matured substantially in both systemd and in the kernel, and is clearly the way forward. Downstream production distributions might want to continue to use -Ddefault-hierarchy=hybrid (or even =legacy) for their builds as unfortunately the popular container managers have not caught up with the kernel API changes.

While we understand systemd's view that the maturity in their own project and the kernel is adequate and we're excited to support cgroups v2 in the future as well, we simple cannot ignore the magnitude of the negative impact this change would have on software which we use and love.

So in summary, we are going to be sticking with cgroups v1 for the time being and holding back snapd to pre-2.42 (which is prior to cgroups v1 support being removed). We're happy to see snapd already have support for cgroups v2, however at the moment there are some other software such as runc and containerd, leveraged by Docker and podman, which still need to gain support for cgroups v2 before the move to cgroups v2 can occur. We're monitoring the respective project's issues closely and have our own task linked above for tracking our own progress.

This all comes back to our intent with package upgrades on making them as smooth as possible for our users. However, systemd is one of those components of the software stack that is always going to be slightly more of a risk to upgrade, and while we already have mechanisms in place to attempt to re-exec systemd (effectively restarting systemd's daemon), given the significance of this upgrade there are some notes, warnings, and advised processes we want to bring to your attention, so **please read** the information provided below:

1. If you are upgrading via the Software Center, it cannot be stressed enough the importance to **select all updates**. While systemd is considered a system base package and will be selected automatically, there are other components involved that you should update as well, which might otherwise fall under "optional" updates. A future update to the Software Center will change the Updates view to eliminate these options to ensure a more complete upgrade experience, but for now just be sure to choose everything.
2. If you are upgrading via `eopkg` (our package manager) and see usysconf (our system configuration tool) fail on specific tasks like "Reloading systemd configuration" and "Re-executing systemd", please note that this is **completely normal** for this upgrade cycle and can be safely ignored. If you are unsure if you've done a full upgrade, you can just run `sudo eopkg up` and `sudo usysconf run -f` again.
3. Prior to step 4, run `sudo sync`. This will flush all data from memory into disk and ensures everything is written to disk, which should prevent the process in step 4 from being problematic. If you've always waited for some time before performing a full shutdown, that *may* also be an appropriate solution.
4. Attempt to logout using the respective graphical menu options available in Budgie's User Indicator applet, GNOME Shell, Brisk Menu, or Plasma's application launcher (depending on the desktop environment you use). It is possible this may not be successful and it is okay to progress to step #5 if it fails.
5. **Please perform a full shutdown using the power button on your laptop or desktop (as in, press and hold it until it shuts down)**. Otherwise, you will be prompted by polkit for authentication on the "reboot.target" and it will fail with access denied. It happens with these sorts of major updates and is normal, you should not see it on any future attempts after the forced shutdown.

If possible, we also recommend that you have a USB with any Solus edition written to it in the event your system upgrade is not complete and the team or community needs to work with you on getting your system back into tip-top shape. If you have any issues, be sure to visit our [Forum](https://discuss.getsol.us/) or [IRC channels](http://localhost:1313/articles/contributing/getting-involved/en/#irc) for assistance.

We understand that the steps above are not usual for a Solus upgrade and apologize if any of it is an inconvenience.

### ESync Support

For all my fellow gamers out there that have had to do the dance of raising your file limits for Esync support to play your favorite games, you'll be happy to know that alongside the introduced support in systemd for the raised file limits, we've also [raised our default limits in PAM](https://dev.getsol.us/R2286:21c2f3b0996c434705cb71e4576a5d77c2b018b9) to [Lutris' suggested value](https://github.com/lutris/lutris/wiki/How-to:-Esync) so you can spend less time configuring your system and more time playing games!

## GNOME Updates

With the holidays well over and the team back into the full swing of things, I've gone through our GNOME Stack and performed a miriad of updates to bring our GNOME packages up to the latest releases, such as:

- [Epiphany 3.34.3.1](https://dev.getsol.us/R707:935df2c9641dcb07be1032e8d060a23af3891f89), which re-enables on-demand hardware acceleration, fixes localization issues, and search provider crashes when there are no bookmarks.
- [GNOME Shell 3.34.3](https://dev.getsol.us/R993:59d4cd82b95c2eb61a3b97b7eb1757295e5132a8), which introduces some much desired fixes like: the ability to create application folders when no folders existed previously, fixes for some windows getting such on screen if closed while animating, and weather forecast fixes.
- [Mutter 3.34.3](https://dev.getsol.us/R2123:1080cc41cd8a775009c7673bdef91f577fccbc09), which has a few minor fixes compared to what we already has from numerous patches from git.
- [Rhythmbox 3.4.4](https://dev.getsol.us/R2813:35479c4b0ba101c7eb43b1209f71012be887d34d), which has a new Listenbrainz plugin and will use HTTPS for external requests where possible

## KDE Applications and Frameworks Update

KDE Applications and Frameworks have also seen updates this week, with KDE Applications being updated to [19.12.1](https://kde.org/announcements/changelog-releases.php?version=19.12.1) and Frameworks up to [5.66.0](https://kde.org/announcements/kde-frameworks-5.66.0.php). This update has numerous fixes, some highlights below:

- breeze-icons
  - Change XHTML icon to be a purple HTML icon
  - Add 32px preferences-system
- dolphin: Improve scroll wheel speed by basing it on label height, not icon height
- kdenlive
  - Ensure we don't insert thousand separator in number conversion, and only send integer coordinates on keyframe import
  - Use project name as default render name
  - Fix duplicate track compositing on project opening and broken opacity with background
  - Fix timeline clip duration not updated after clip reload
  - Fix timeline preview not disabled on render
  - Fix missing clips erased from timeline on opening project
  - Adjust rendering threads for faster rendering
- kio
  - Adding support for mounting KIOFuse URLs for applications that don't use KIO
  - Ftp ioslave: fix 4 character time interpreted as year
  - KFilePlaceEditDialog: fix crash when editing the Trash place
- konsole
  - Revert removal to allow Bookmark tabs as Folders to work
- ktexteditor
  - Avoid unwanted horizontal scrolling
- okular
  - Fix crash when closing print preview dialog

## When Are These Updates Coming?

We typically sync our updates to the stable repository every Friday. Given some last minute refinements we've been validating, this week's sync will occur on Saturday, January 18th.

---

## That One Thing

For those of you that follow [our development tracker](https://dev.getsol.us/T8592) or our social media, it's no secret that we're cooking up something. We've done the rather unusual thing of setting ourselves a [timeline / countdown](https://dev.getsol.us/C17) to when we intend on **starting the process** of (not necessarily when we're releasing it, precisely) said thing. If you're a rocket scientist, or maybe just someone with some slight curiosity, you may be able to connect the dots between the tasks we have laid out.

Like, oh I don't know, ISO generation for hardware validation and branding package updates. Feel free to ping us on [Mastodon](https://mastodon.cloud/@SolusProject) or [Twitter](https://twitter.com/SolusProject) if you figure it out, but knowing us we'll conveniently not be able to confirm nor deny anything.