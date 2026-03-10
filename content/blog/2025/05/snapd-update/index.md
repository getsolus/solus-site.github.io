---
authors:
- image: https://avatars.githubusercontent.com/u/5798032?v=4
  link: https://github.com/silkeh
  name: Silke Hofstra
tags:
- news
date: "2025-05-05"
featuredimage: /snap-banner-image.jpg
title: Update on Snaps
url: /2025/05/05/snapd-update
---

Last year we announced the [removal of snaps from Solus][1] in January of 2025. Because of recent developments, we have decided to hold off on the complete removal for the time being.

## What has changed

There is progress on getting the required AppArmor support added to the Linux kernel itself. The changes have made it to `linux-next`, which means that they *could* land in the next Linux release (v6.16).

The maintenance burden of the AppArmor patches was the primary driver behind our deprecation of Snaps. With full AppArmor support in the Linux kernel, we should get full Snap support *without* the maintenance burden.

## Current status

The current situation is the same as in [our previous blog post][1] on the topic:

- Snaps will continue to show a warning when not running in strict confinement.
- We recommend [migrating to Flatpak][2]: Flatpaks are integrated in both GNOME Software and KDE Discover, making it easier than ever to not only install, but also update, Flatpak software on your systems. They also have broader upstream support since Flatpak is developed by a cross-distribution community.

## Next steps

There is a lot that needs to happen before Snaps can be strictly confined again:

- The new AppArmor features need to actually land in the Linux kernel. When this happens is unknown, but it will be in Linux 6.16 at the earliest (expected in July, 2025).
- Both AppArmor and `snapd` will need to be updated to support the new version of AppArmor in the Linux Kernel.
- We will need to integrate the new Linux kernel, AppArmor and `snapd` releases.

We will continue to monitor the situation. Updates will be posted to [the GitHub issue][3] tracking deprecation.

[1]: /2024/07/15/dropping-apparmor-kernel-patches/
[2]: https://help.getsol.us/docs/user/software/third-party/snap#migrating-to-flatpak
[3]: https://github.com/getsolus/packages/issues/325
