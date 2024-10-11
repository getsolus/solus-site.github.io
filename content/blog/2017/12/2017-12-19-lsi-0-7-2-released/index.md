---
title: "Linux Steam Integration 0.7.2 Released"
author: "ikey"
categories:
- news
date: 2017-12-19T16:10:34Z
featuredimage: "/lsi-072-fullscreen-but-not-actually.jpg"
url: "/2017/12/19/lsi-0-7-2-released"
---

[Linux Steam Integration 0.7.2](https://github.com/solus-project/linux-steam-integration/releases/tag/v0.7.2) is now here.
This release introduces many enhancements and new features, including initial [snapd](https://snapcraft.io/) support and a new workaround for the
Unity3D "black screen of nope" bug.
<!--more-->

Brief overview of the important changes in this release:

  - Initial snapd support
  - New Unity "black screen of nope" workaround
  - Enhanced vendoring rules
  - New `lsi-exec` general-purpose binary
  - Massively enhanced shim system

#### Intercept module

  - Support `openal-soft` -> `openal` soname rewrite
  - Blacklist vendoring of `mpg123`, `freetype`, `zlib`
  - Modify SDL vendor blacklisting/transmute rules to apply to well known names only
  - Rewrite `libcurl.so.3` to `libcurl.so.4`
  - Support Fedora `libbz2` soname transmute
  - Rewrite `libudev.so.0` to `libudev.so.1`
  - Permit `html5_app` to load `widevine` modules for encrypted content playback
  - Permit `swiftshader` for CPU based GL acceleration on slower cards in Steam client
  - Fix vendoring rules for `libstdc++.so.6` to apply to games on separate Steam Libraries (partitions) so that Black Mesa launches again.

#### Shim improvements

This release also features a new generic `lsi-exec` entry point. This entry point is used by the main `steam` (or `lsi-steam`) binary, and can be used to execute any given program under the LSI environment. This is useful for  debugging. Future versions will add support for some GOG titles (ongoing).

  - Add support for XDG specification (`XDG_CONFIG_HOME`, etc)
  - Reworked environment bootstrap to be robust and respect existing `LD_PRELOAD` variables, allowing Simple Screen Recorders glinject to work.
  - Export `DBUS_SILENCE_WARNINGS` for patched d-bus to fix message spam (only useful with this non-upstream patch or using the LSI snap)


#### Redirect module

The `redirect` module now has a new workaround for the "Unity Black Screen Of Nope" issue. This issue is known in older Unity3D builds where the output renderer is clamped to `0x0` resolution when in fullscreen borderless mode. Many games default to this, hence the expression "black screen of nope".

To alleviate this issue, the redirect module emulates the behaviour of the `-screen-fullscreen 0` CLI argument. The `$XDG_CONFIG_HOME/unity3d/*/prefs` file is abstracted through SHM (`shm_open`) and we rewrite the  config on save/launch, writing an initial config if one doesn't exist.

Specifically, we change a single preference on the fly:

`<pref name="Screenmanager Is Fullscreen mode" type="int">0</pref>`

This means all Unity3D games using this older prefs path will default to launching as a windowed game, even if the configuration already existed with fullscreen being activated. This alleviates the issue for many games (tested with "Keep Talking And Nobody Explodes" and others) - but obviously forces these games to not know about the fullscreen setting anymore. You can enable this again in-game, and this is effectively the price to pay for general compatibility. The game authors can alleviate this by updating to the latest build of Unity3D and issuing new Linux builds. You may also turn off this option through the `lsi-settings` UI if you do not have any games that suffer from this common  bug.

#### snapd support

The new `shim` architecture shared by the `lsi-exec` and `steam`/`lsi-steam` binary entry points now has support for running within snapd, within the `solus-runtime-gaming` and `linux-steam-integration` snaps.

  - Support full environment bootstrap, and construction of `XDG` directories
  - Snap environment pivots home to `$SNAP_USER_COMMON` for more efficient/sane update paths
  - Supports `vdpau` from host NVIDIA files dynamically
  - Support proprietary NVIDIA drivers from host dynamically (`/var/lib/snapd/lib/gl` and `/var/lib/snapd/lib/gl32`) 
  - Support host (and runtime) Vulakan ICD files dynamically (`/var/lib/snapd/lib/vulkan`)

#### Upstream snapd work

The following changes have happened upstream to allow support for LSI:

General support for biarch distros/Solus as a runtime snap:

  - [Recognise Solus as a classic Linux distribution](https://github.com/snapcore/snapd/pull/3974)
  - [Only attempt to copy/mount NVIDIA libs when NVIDIA is used](https://github.com/snapcore/snapd/pull/3975)
  - [Support biarch Linux distribution confinement](https://github.com/snapcore/snapd/pull/3976)
  - [Enhance full confinement support for biarch distributions](https://github.com/snapcore/snapd/pull/3977)
  - [Correctly name the "Ubuntu" and "Arch" NVIDIA methods](https://github.com/snapcore/snapd/pull/3978)
  - [Ensure lib64 biarch directory is respected](https://github.com/snapcore/snapd/pull/3980)

LSI Specific:

  - [Ensure snap-confine is allowed to access os-release](https://github.com/snapcore/snapd/pull/4182)
  - [cmd/snap-confine: Respect biarch nature of libdirs](https://github.com/snapcore/snapd/pull/4183)
  - [Support bash as base runtime entry](https://github.com/snapcore/snapd/pull/4197)
  - [Flesh out NVIDIA support for biarch and multiarch systems](https://github.com/snapcore/snapd/pull/4207)

#### LSI Snap

All of that work both within LSI and on snapd wouldn't make a lot of sense if you weren't able to make use of the new Snaps! Right now we have our snaps living on the `edge` channel in the snap store, and they can be downloaded provided you have a sufficiently new `snapd` version. Currently you need to be running either a git/unstable or PPA (edgers) version of snapd to install them, and there are some known issues at present.

Please ensure that if you have manually installed the old snaps that you remove them before installing the new snaps.

**Install snaps**:

```
sudo snap install --edge solus-runtime-gaming
sudo snap install --edge --devmode linux-steam-integration
```


**Known issues**:

  - glvnd status is currently untested/unsupported within snapd and needs work.
  - Feral Interactive ports won't run if on a separate Steam Library (partition) due to base confinement rules.

At this time Solus and Ubuntu are known to work with the latest versions of snapd and our snaps, though we appreciate testing and feedback via the [LSI Issue Tracker](https://github.com/solus-project/linux-steam-integration/issues). In the new year we will begin working on the last remaining items to allow full confinement for Steam, and will begin moving our snaps into the stable channels. At that point, we will make snaps the preferred method for installing Steam on Solus, and using LSI in general.
