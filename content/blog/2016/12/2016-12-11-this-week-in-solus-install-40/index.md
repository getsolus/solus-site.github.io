+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-12-11T19:42:10+02:00"
featuredimage = "/brisk-development.jpg"
title = "This Week in Solus - Install #40"
url = "/2016/12/11/this-week-in-solus-install-40/"
+++

Welcome to This Week in Solus, install #40.

## ISO Snapshot

On the last This Week in Solus, I highlighted our roadmap, which includes our upcoming ISO snapshot. This ISO snapshot will feature the latest kernel, which at the time of this writing, is looking like `4.9`. Additionally, since the writing of TWIS #39, 
we have landed an upgraded libinput and xorg libinput driver, thus those will see inclusion in the ISO as well.

Speaking of Xorg, we will likely be introducing Xorg 1.19 for the ISO snapshot. We are currently considering deprecation of the NVIDIA 304 and 340 drivers, due to lack of updates from NVIDIA (*which have been a blocker for 1.19*) and growing bugginess of 
said drivers over time. Deprecation of the drivers would not only unblock Xorg 1.19, but continued development of Linux Driver Management (our switchable graphics solution) as well. Existing 304 and 340 users would be migrated to the Nouveau driver.

## Brisk Menu

{{< relimg "brisk-menu-twis.jpg" >}}
*Screenshot is under Budgie, for development purposes. Plan is to make it a MATE applet.*

Meet Brisk! This is a new menu we're developing for the MATE desktop, to provide a slightly traditional, but very fast and usable menu system. It started out inspired by the Budgie Menu but has drifted towards honouring Cardapio. And with it being written in C, 
it's lightning quick.

Brisk Menu will be featured in the ISO snapshot for our Solus MATE Edition and the work done on Brisk Menu will be ported back to Budgie 11.

Additionally, we're proud to announce that the [Ubuntu MATE project](https://ubuntu-mate.org/) has expressed enthusiasm about Brisk Menu and is helping to fund development of it, so all MATE desktop users can benefit from a fast, 
modern menu implementation. The Ubuntu MATE project will be integrating Brisk Menu as soon as it can replace the core functionality of MATE Menu, and will see that Brisk Menu is packaged for Debian and made available in the Debian and Ubuntu archives.

To quote Martin Wimpress:

"*Ubuntu MATE have been looking to replace MATE Menu (forked from mintMenu) for sometime. It is clear the Brisk Menu, despite being in the very early stages of development, is the project that can achieve that given the quality of work coming 
out of the Solus project.*"

## Linux Steam Integration

This week we released **v0.3** of Linux Steam Integration, our tool for enabling better Steam integration on Linux. This release features:

- Using the latest `libnica`, using it now as a submodule to simplify maintenance.
- Support the latest runtime requirements by preloading `libxcb` on native runtime.
- Support a new `--disable-replace-steam` option. By default, LSI will replace `/usr/bin/steam` with its own shim. This was to enable easier integration into distributions at a root level, as seen in Solus. However, this made it inaccessible
to users who currently do not have LSI available.

To address this, and to stave off the latest croppings of butcherscripts that make actual alterations to the Steam runtime, vs the passive LSI override approach, this new option will instead generate the following files:

- `/usr/bin/lsi-steam`
- `/usr/share/applications/lsi-steam.desktop`

This will ensure there is no path-conflict with existing Steam, and in turn lsi-steam will invoke `/usr/bin/steam`.

Users can then use the `LSI Steam` option in their menu to launch Steam via the LSI Shim. Those building LSI should also pass `--enable-frontend` if providing a package, so that users can access the LSI Settings UI - to enable control of the runtime aspects.

## Solbuild

{{< relimg "solbuild-building.gif" >}}

Last week we announced the release of solbuild. For those unfamiliar with solbuild, it's our new package build system that replaces our prior evobuild tool from the
Evolve OS days. Throughout the week, we've released multiple new versions of it, currently at **v1.2.0**, and already solbuild introduces a large set of improvements over evobuild, including (*but not limited to*):

- Eliminates previous lock and mount issues that occurred with evobuild.
- Enables performing builds in memory via the `--tmpfs` option.
- Improved output of steps and making it less spammy, as most of our prior info messages have been demoted to debug messages.
- Performing downloads ourselves, thus eliminating host-side `curl` as a dependency.
- Pretty download progressbar for ETA/speed/size. Who doesn't like pretty things? 
- Written in Go, enabling significant performance improvements and improved maintainability.

## Package Highlights

Here is a highlight of package additions and updates in the last week:

**New:**

- biber 2.5
  - Honestly, this singular item has about a million perl dependencies that Bryan had to go through. Tip a hat to him.
- libcaca 0.99.19
- mdds 1.2.2
- mythes 1.2.4
- pidgin-sipe 1.12.1
- python-neovim 0.1.12
- scanmem 0.15.8
- seafile 6.0.1
- seafile-client 6.0.0
- solbuild 1.2.0
- wire 2.11.2685
- zuki-themes 3.20

**Updated:**

- avrdude: Enable USB support
- binutils: Enable deterministic archives by default
  - This should help us in our effort to provide reproducible builds within Solus by not having to do any .a mangling to fix timestamps, etc.
- ca-certs 20161124
- calibre 2.74.0
- ccache 3.3.3
- farstream 0.2.8
- fontconfig 2.12.1
- freetype2 2.7 and rebase the Solus patches
- gnome-boxes 3.20.3 and build against new spice-gtk 0.33 ABI
- golang: Rebuild due to toolchain changes with .a files
- httpie 0.9.8
- jemalloc 4.4.0
- kernel 4.8.12
  - And addressing CVE-2016-8655 before it was released in a newer kernel
- kodi 17.0 Beta 6
- libdrm 2.4.74
- libmediainfo 0.7.91
- libreoffice: Enable java and networkless build
- linux-steam-integration 0.3
- lollypop 0.9.223
- mediainfo 0.7.91
- mercurial 4.0.1
- nano 2.7.1
- nodejs 7.2.1
- phoronix-test-suite 6.8.0
- pidgin:
  - Add dbus-glib headers
  - Enable audio/video and gtkspell
- pisi:
  - Deprecate evobuild in favour of solbuild
  - Update to 3.4 for improved files database performance for ypkg
- python-simplejson 3.10.0
- qemu: Enable opengl/virgl for VirtIO OpenGL rendering
- qownnotes 16.12.4
- qt4: Fix detection of GTK under MATE desktop for integration
- qtpass 1.1.6
- sc-controller 0.3.3
- spice 0.12.8 and optimize for speed through compiler flags
- spice-gtk 0.33 and enable GStreamer sink usage
- spice-protocol 0.12.12
- subversion 1.9.5
- suricata 3.2
- syncthing 0.14.13
- tor 0.2.8.10
- usbredir 0.7.1 and optimize for speed through compiler flags
- vim 8.0.0132
- virglrenderer: Sync with git
- vivaldi-snapshot 1.6.689.13
- vivaldi-stable 1.5.658.56
- vscode 1.7.2 and eliminate use of global node module installation
- xkeyboard-config 2.19 and add compatibility symlink for MATE
- xorg-driver-video-qxl: Do not build with full RELRO
  - All xorg driver modules must be built without full RELRO otherwise they will fail to bind when dlopen'd by the xorg server, making them impossible to use.
- yakyak 1.4.0
- yarn 0.18.0
- ypkg:
  - Update to v18
  - Begin testing parallel tree processing in ypkg
- youtube-dl 2016.12.01
