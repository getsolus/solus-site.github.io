---
title: "Dropping AppArmor Kernel Patches"
author: "evan"
categories:
  - news
date: 2024-07-15
featuredimage: "/apparmor-banner-image.jpg"
url: "/2024/07/15/dropping-apparmor-kernel-patches"
---

Heya folks! With the 6.9 update to our Current branch of the Linux kernel, we are dropping the AppArmor patchset from Canonical. This means that snaps will now run with partial confinement if you are using the current kernel. Our LTS kernel will still have the AppArmor patches applied.

Dropping these patches is the first step in ending support for Snap on Solus. **Snaps will still be supported for the rest of 2024**, they will just be running with only partial confinement. Long-term, Snap users are encouraged to explore alternative solutions, such as Flatpak.

## User impact

The only immediate impact on users as a result of this decision is that snaps will now be running under partial confinement. Snaps will continue to function until their support on Solus ends at the end of 2024.

### Confinement warning

Snaps are usually protected using `strict` confinement, ensuring that snaps can't access more of your system than needed. The `snap` command provided by Solus shows a warning when strict confinement is not available. For example:

> WARNING: snap is running with partial confinement. See https://help.getsol.us/docs/user/software/third-party/snap for details

We recommend [migrating to Flatpak](https://help.getsol.us/docs/user/software/third-party/snap#migrating-to-flatpak) when possible. The warning can be silenced by running:

```
sudo snap hide-confinement-warning
```

## Benefits to us

### Maintenance

Dropping the AppArmor patchset has several benefits for us. To start with, the patchset is *huge*; it is upwards of 60 separate patches, making it a significant maintenance burden. Since the set is maintained and updated by Canonical, we can only update to a new kernel after they've updated all of those patches, which sometimes takes a long time, or even doesn't happen at all, as with the 6.9 kernel series.

### ISO generation

Not applying the patches means that we can generate ISO images on our own infrastructure. Right now, ISOs can only be generated on systems using the Solus kernel, due to our AppArmor hooks. This means that every week, someone on the team has to use their system to build all the images and then upload around 10GB of ISOs to the download server for our OpenCollective backers. The same goes for full Solus releases. By dropping the AppArmor patches, we can skip all of that and generate images on the server directly.

## Next steps

Going forward, Flatpaks will be the preferred way of installing software that isn't in our official repository. We recommend looking into migrating to Flatpak and/or looking for alternatives to any snaps you use. **Snap support on Solus will end with the start of 2025.** Until then, Snaps will still work and be supported on Solus, albeit without full confinement.

### Flatpak

Flatpaks are integrated in both GNOME Software and KDE Discover, making it easier than ever to not only install, but also update, Flatpak software on your systems. They also have broader upstream support since Flatpak is developed by a cross-distribution community, whereas Snap is developed and managed by Canonical and currently largely targets Ubuntu. Most flatpaks are available on [Flathub](https://flathub.org/), which can be explored in your web browser in addition to GNOME Software and KDE Discover.

#### Migrating to Flatpak

We have implemented tools and documentation to assist users in migrating from snaps to flatpaks. The `unsnap` package has been added to the Solus repository, facilitating an easy way to switch to flatpak versions of installed snaps. Head on over to our [Help Center article](https://help.getsol.us/docs/user/software/third-party/snap#migrating-to-flatpak) for more information.
