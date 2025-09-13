---
authors:
- image: https://avatars.githubusercontent.com/u/53261402?v=4
  link: https://github.com/ikeycode
  name: Ikey Doherty
categories:
- news
date: "2018-02-15T11:33:21Z"
featuredimage: /architecture.jpg
title: Exploring Solus Architecture
url: /2018/02/15/exploring-solus-architecture
---

In this post we'll be exploring the Solus architecture, going over some of the key differences separating it from other projects. Do note this is a technical article, and doesn't encompass **every** area of Solus for the sake of brevity.
<!--more-->

One of the driving aims of Solus is to provide a stable rolling release Linux distribution with a focus on the desktop. On the surface this may sound trivial, but how do we sustain that over time? In a nut shell, our tools and processes are extensions of our philosophy, and enable us to continuously deliver.

Importantly, one should remember that Solus 1 looked absolutely nothing like what we describe below. In fact, Solus 1.0 was intended to be a statically versioned, classic distribution, which has since significantly evolved over time into a fully fledged rolling distribution. This article will help you understand exactly how we got to this point, and highlights the invisible parts that make Solus what it is. Lastly, we're not claiming to be perfect! There are other areas to attack, and we continue to evolve, and hope that our approach in tackling these issues may be useful to projects outside of Solus, be it code or just philosophy.

## To The Repository

Any package in Solus starts life in a git repository hosted at the [dev portal](https://dev.solus-project.com). Once a developer is happy with the changes, the release number is bumped, and they run `make publish` to schedule a build on our [build controller](https://build.solus-project.com). A remote build server will clone the same repository from an immutable git tag, and if the build succeeds, it will be uploaded to our [ferryd](https://github.com/solus-project/ferryd) instance for further processing.

Within 15 seconds of a set of packages reaching ferryd, they will be included in the `unstable` repository. These packages are checked against the `transit manifest` to verify the payload, and upon success they'll be generally available in our repository. At the same time, `ferryd` will schedule delta updates in the background so that the update cost will be minimised for future users, whilst also keeping the main processing queue unblocked. This allows us to maintain a high cadence as well as provide convenience for the bandwidth-constricted.

## To The User

The `unstable` repository does have a tendency to live up to its name, however! In a single week we see hundreds of changes, and many breaking changes and fixes. Thus, developers will opt for unstable to allow time to stabilise this update window, whilst the vast majority of daily users will be on the `stable` channel (known as Shannon). Every week, we go through this iterative development process and re-stabilise the repository in time for a weekly sync. At this point, we perform any remaining testing with real hardware, and produce test ISOs to verify our changes. When all is well, we'll perform the weekly (typically Friday) sync into stable. Typically this operation takes 15-20s and pulls all new/missing packages from the current versions published in unstable, into shannon. This makes the sync process incredibly fast, and we can immediately begin hacking on unstable again.

Additionally, `ferryd` will spawn delta operations to produce any missing delta packages for Shannon in the background, which will turn up post-sync to minimise bandwidth consumption for users on Shannon. Behind the scenes we're using various deduplication techniques, including reference counting of all asset IDs in the pool, and hardlinking these packages between unstable and shannon via the pool to minimise the total disk usage of the repository. Doing so allows us to retain multiple backversions of packages and extended graphs for delta packages, reducing the size of the update download for users. All of this comes for "free" with our architecture, allowing us to maintain a high velocity without making any sacrifices.

## Rolling Snapshot

If we truthfully evaluate the branches here, then `unstable` is technically the "real" distribution, and Shannon is a rolling, tested snapshot of unstable. Our processes are such that every weekly sync constitutes a new release of Solus Shannon, whilst unstable continuously rolls. This affords the user a safety blanket, and developers have more freedom to make the necessary changes. As such we're able to make sweeping architectural changes, or even perform large stack updates such as the recent updates to MATE 1.20 or Plasma 5.12. As an added layer, developers are free to utilise the [local repository](/articles/packaging/local-repository/en/) functionality of `solbuild` to build massive local changes/additions before staging them for inclusion in unstable.

## The Package Format

Once upon a time Solus employed the legacy `actions.py` / `pspec.xml` format inherited from PiSi. However we very quickly realised that we were simply repeating _policy_ in packaging, and wasted a great deal of time in manually specifying the same rules again and again. These days we have replaced the legacy format with our own `package.yml` in [ypkg](https://github.com/solus-project/ypkg). This is a structured, declarative build format and has been in use now since 2015. Unlike other native package build options, we employed an automated approach to policy and rules. In essence, a `package.yml` file provides some build instructions that are just inline bash scripts with special markup (such as `%configure`) and the automatic accounting of file placement and inter-package dependencies.

This allows us to consistently produce packages using the distro rules (such as our flags, file locations, lib directories) and enjoy automatic subpackages (such as `-devel`, `-docs`, `-dbginfo`). This has grown significantly since the early inception, and supports a wide range of features, including:

- Enhanced macros for many build systems (obscure ones too)
- Automatic Profile Guided Optimisation via the `profile` build step
- Automatic control of flags via `optimize` keyset to enable targeted compiler optimisations
- Advanced `fnmatch` style custom patterns to automatically produce developer-defined subpackages
- Support for git sources
- Full support for `-m32` package builds (`emul32: yes` will produce `-32bit` packages, and relevant `-32bit-devel`, `-32bit-dbginfo`, etc)

It should be noted that as an early design decision, we opted to not include support for triggers in the format to keep it simple and force clean design decisions when packaging software, especially when considering the update process.

Builds of all packages are performed in special containers via [solbuild](https://github.com/solus-project/solbuild), which employs `overlayfs` to provide a sane build environment to facilitate building Solus packages on any system that supports modern `overlayfs`. This handles many implementation details for us, such as git sources, or exporting git changelogs directly into the resulting packages to allow users to know what we've changed in our packages simply by looking at the update data in the Software Center. Additionally we use this to perform some minor sandboxing, such as disabling privileged operations in the container, as well as disabling networking by default (`localhost` loopback is permitted, however.)

## Package Triggers

In traditional package-driven distributions, the notion of package triggers (postinstall scripts) is employed. At the simplest level, these will run some script/operation once a package is installed/removed/updated on a system, such as updating the icon cache, adding users, etc. As previously explained, our package format deliberately has no support for triggers, and we also recently abolished the [legacy configuration system](/2017/11/12/this-week-in-solus-install-48/) entirely. So, how do we perform required changes after a package change? We use [usysconf](https://github.com/solus-project/usysconf/).

`usysconf` is very clever by being very dumb, in that it has no knowledge of packages or events. Instead, `usysconf` will track the modification time of interesting paths, and when a change is observed on one or more of those paths, the corresponding actions will be performed. Note however that `usysconf` is a single, static binary, that has absolutely no configuration files. Instead it incrementally
applies intelligent actions based purely on these changes, or more technically, the _invalidation of system paths_.

Another key difference between `usysconf` and traditional postinstalls is that it is run only once a transaction is complete, not on a per-package basis. This solves many race conditions between inter-dependent packages by ensuring the filesystem is in a consistent, complete state before applying actions.

### Recovery First

The most basic trigger would be `ldconfig`, which simply re-runs `ldconfig` when the system library paths become invalidated. However, these are **well defined triggers** in a statically linked, fail-safe binary. Unlike traditional package triggers, there is no hiding of these actions behind scripts or the package manager. Instead the user is free to directly invoke the binary to perform system recovery. It is possible to invoke `usysconf run -f` within a chroot to perform **all** known triggers regardless of invalidation state to bring the installation back up to full health. Additionally `usysconf` knows if its running in a chroot or a live environment, so it will conditionally execute some triggers. This means usysconf can be used in our installer, chroot recovery, `solbuild` environments, ISO production, etc.

### Boot Management

We consider it invalid to ship any files in `/boot` in any Solus package. Instead, our kernels live in `/usr/lib/kernel`, and managed by [clr-boot-manager](https://github.com/clearlinux/clr-boot-manager) to promote/demote kernels from the boot partition/directory/ESP. This allows a level of granularity not possible before, such as controlling per-kernel command lines, as well as always having an "old" kernel to fallback to if there are problems with the newly updated kernel. This gives us an almost bulletproof boot when it comes to kernel management. `usysconf` will automatically call out to `clr-boot-manager` during any transaction that alters the kernel paths, such as `/usr/lib/kernel` or `/usr/share/kernel/cmdline.d`. During the early conception of `clr-boot-manager`, it was decided that the tool should be agnostic and provide a sane approach to boot management, as well as some level of standardisation of dual booting on the EFI System Partition. As such, all boot assets are fully namespaced to avoid conflicts.

Another noticeable difference here is in how we handle the `initramfs` (initial RAM filesystem). In the majority of Linux distributions, this is produced on the end users system during some postinstall operation/transaction, which can be susceptible to local failures (such as invalid local configurations breaking the target image). Conversely, we produce the `initramfs` image during the kernel compilation, shipping these prebuilt images directly to the users along with the kernel package. It is then the job of `clr-boot-manager`to promote these alongside the kernel to the boot partition/ESP. This change alone has solved a whole host of issues for us, and enabled a level of reproducibility and testing previously impossible with target-specific images.


### Driver Management

Another trigger that `usysconf` will run is [linux-driver-management](https://github.com/solus-project/linux-driver-management) when graphical driver paths are invalidated. These days the job of LDM as a trigger is greatly simplified, as we recently rolled out updates to switch the Solus graphical architecture to use GLVND. This trigger is now responsible for managing early X11 session initialisation for Optimus devices, and managing the X11 configuration for proprietary drivers. Essentially, just installing the correct NVIDIA drivers is enough to invoke the triggers automatically and produce the correct configurations. As with all of our updates, the aim is that it works entirely automatically. The user simply reboots after installing the packages and they'll be using the right configuration/drivers without having to touch anything. Additionally LDM now provides hardware detection capabilities, which we'll be extending in Solus 4 to provide hotplug support for offering device drivers to the user.

### Ahead-of-Time Triggers

`usysconf` also packs some common ahead-of-time style triggers, such as rebuilding font + icon caches as and when they invalidate. [Most recently](/2018/02/07/mate-plasma-and-python-3/#update-on-boot-optimizations) we added a new trigger to combat boot-time regressions with AppArmor, via our [aa-lsm-hook](https://github.com/solus-project/aa-lsm-hook) project. This provides a generic, agnostic mechanism for sanely wrapping `apparmor_parser`. As a result we now compile the AppArmor cache during package transactions, and only load the binary cache at boot. For added safety, we ensure that `aa-lsm-hook` will attempt recompilation on boot if the early load fails. This was recently incorporated into the building of our ISOs, and converted a massive boot time regression (1.3s+) to the region of 8ms.

## System Migrations

A long standing benefit of **statically versioned** releases is that in reality, the core OS doesn't really change much. This allows migration scripts to be run during "dist-upgrade" style updates between major updates. Rolling releases like Solus have traditionally been at a disadvantage in this area, as the goalposts can and will move over time. To combat this issue we created the [qol-assist](https://github.com/solus-project/qol-assist) project to provide Quality of Life assistance for **permanent** rolling release installations.
During a package transaction, `usysconf` may invoke `qol-assist` to register a migration trigger if `qol-assist` has been updated. This effectively creates a trigger file on disk to inform systemd that the QoL unit should be run during early boot (`sysinit.target`). When this unit runs it will detect the migration status (integer version) of the system, and apply any pending migrations, before finally storing the new system migration version. This ensures we don't need to run old triggers again, however all triggers will first verify if they are needed.

Using this versioned migration trigger system, we have transparently fixed issues in existing Solus installations simply through the update + reboot procedure. Examples of some migrations that have cropped up over time:

- Automatically migrated the systemd-allocated dynamic `users` gid to a fixed gid `100` (Also now a systemd [configure time option](https://github.com/systemd/systemd/pull/7533))
- Automatically placed all **active**, **admin** users on the system into the new `scanners` group to fix `sane-backends` regression.

The last example is quite an interesting one from an architectural perspective; the `scanners` group did not exist in Solus when we released Solus 3, so there was absolutely no chance for users to automatically be a part of this group. Instead we fixed this issue by pushing the `scanners` group through to systems via a systemd `sysusers` snippet (automatically executed by `usysconf`) and provided the `qol-assist` trigger to place users into this group if they weren't already a member, and were also considered "admin" and "active". This is a powerful tool for any rolling release distribution, allowing us to hotfix issues that would typically require manual intervention or a new release.

## Slightly Controversial Decisions

In order to help streamline some elements of Solus, we've made some decisions that might be deemed controversial in other scopes.

### No DKMS

Solus does not, and will not, support DKMS. Instead we ship two kernel branches, `linux-current` and `linux-lts`, with all of our kernel module packages built in tandem with our kernels. This ensures that kernel modules (built out of tree) are always known to work with our kernels, and there is none of the risk associated with local recompilation using DKMS. For example, if a user installs `nvidia-glx-driver-current`, this provides modules only for `linux-current`. These are built in unstable against `linux-current`, and will be issued as an update alongside the kernel.

Additionally with our `clr-boot-manager` integration, these are pushed into the same module tree on disk, ensuring the older `.ko` files are still present for the backup kernels between updates, allowing users to rollback to the older working kernel if an issue crops up with a newer kernel. These are automatically purged over time. Every Solus kernel update is unique down to the release number, allowing users to boot the last build of the kernel.

### Avoiding "three-way-merge" Config Hell

Many parts of Solus have been slowly changing to a stateless configuration by default. At the most basic level, we split the configuration domains into OS, Data, Admin. The basic premise is that stuff that doesn't actually require configuration to run, shouldn't have any, and all software should function in the absence of user provided configuration. In many places, we
use a default configuration that is "owned" by the OS, but can be overridden by users/administrations. This ensures their configuration is separate from the OS, permitting rollbacks and resets, as well as avoiding the dreaded interactive configuration merges on update. Or "who really owns /etc?". This isn't perfect in Solus yet, and we're aiming to improve this over
time with the introduction of configuration management tooling as well as concise documentation/policies.

### Avoiding Conflicts

As a design decision we actively avoid packages that conflict with one another. This means you will not find `update-alternatives` style systems in Solus, and only one package can own each path. As a result there is no given situation where a package can depend on one or more providers of a given library or interface, they must all be satisfied exclusively. We do
allow packages that sanely co-exist, but we do not permit duplication of a given `soname` or `pkgconfig` provider between packages. Thus, one PNG, one JPEG, etc.

The only notable exceptions to this rule right now:

  - NVIDIA proprietary drivers (As a design decision to enforce a single NVIDIA driver to be active)
  - Display managers (LightDM/SDDM/GDM). In time we'll allow them to co-exist with a switch to change preferred DM, with built-in weights.

It is arguable that the culmination of these rules may seem overly hostile to free motion, however the real world outcome is that it forces developers to consider how their packages will work from the outset, and how they will behave when updated. For users, they get a consistent install and update experience, without being faced with interactive configuration/scary
removal dialogs, and everything "just works".

### Package Management as "delivery"

We simply use package management to deliver software and updates, and some areas of the system are outside the management of the package manager, and indeed, the user. An example of this is the management of `/boot` by `clr-boot-manager`. Updates are _delivered_ to `/usr/lib/kernel`, and `/boot` is then managed exclusively by `clr-boot-manager`. As such, various areas of Solus fall under different scopes, and package management
alone cannot be viewed as the singular solution or selling feature of a well integrated operating system - it instead forms one element in the delivery pipeline.

### Fixing the "stupid"

It should be noted that we're not spending every minute contemplating how to rework our architecture, typically it evolves out of real world issues. However a long standing theme has been to "fix the stupid", i.e. attack low hanging fruit and drop legacy cruft from the system. With that said, it would be unwise to blindly run into these projects, so we only use this approach in combination with a very important piece of Solus philosophy:

> *Let's fix this for the last time.*

Consequently most of our projects nowadays are written in an agnostic fashion that look to solve the problem for the last time, whilst attacking a root issue in the real world of Solus deployment (the "stupid"). Some minor examples might be our recent conversion of our CPU on-demand management from expensive bash scripts to C, or even the introduction of usysconf to replace traditional triggers. Either way the end result is the same, the system constantly improves for the end user, becoming more robust over time, and focusing on the
issues that actually matter.

## Wrapping It All Up

This article briefly touched on some of the invisible components of the Solus architecture, and should hopefully highlight some of the core differences between Solus and a "traditional" distribution. It is important to remember some very important ideas in the Solus philosophy:

- The OS should know how to look after itself.
- Agnostic code leads to superior design and quality.
- The OS should keep out of the user's way
- The OS should facilitate, not hamper, the user.
- The purpose of the OS is to safely, reliably and transparently enable workloads for the user.
- Tooling matters. If the process sucks, then the tooling needs to be improved.
- No part of Solus is sacred. If areas in Solus are found wanting, they can and will be changed/replaced. (sol...)
- Things should **really** "just work".
