+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-12-11T19:42:10+02:00"
featuredimage = "2016/12/brisk-development.jpg"
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

{{< altimg "2016/12/brisk-menu-twis.jpg" >}}
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

{{< altimg "2016/12/solbuild-building.gif" >}}

Last week [we announced](https://plus.google.com/+Solus-Project/posts/8zKuytw1p1h) the release of solbuild. For those unfamiliar with solbuild, it's our new package build system that replaces our prior evobuild tool from the 
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

- [biber 2.5](https://git.solus-project.com/packages/biber/commit/?id=8a8917f9ea04bb62ac071a747e39e7367ea147fd)
 - Honestly, this singular item has about a million perl dependencies that Bryan had to go through. Tip a hat to him.
- [libcaca 0.99.19](https://git.solus-project.com/packages/libcaca/commit/?id=8cfec3a6ae3526593c3066419585c13a3392a915)
- [mdds 1.2.2](https://git.solus-project.com/packages/mdds/commit/?id=f4a782cad2a559a2f5d90c9d895716c28ea77454)
- [mythes 1.2.4](https://git.solus-project.com/packages/mythes/commit/?id=08e8ee3139bbc47db13860e765e4f0bdf144f2e7)
- [pidgin-sipe 1.12.1](https://git.solus-project.com/packages/pidgin-sipe/commit/?id=3baef01b1bef46d11a83ba25f73eee06ef3da841)
- [python-neovim 0.1.12](https://git.solus-project.com/packages/python-neovim/commit/?id=e480b06fe5389bcec3f1050308946681ac62d619)
- [scanmem 0.15.8](https://git.solus-project.com/packages/scanmem/commit/?id=d7e388a64bd01f03235a605d18ad27d1e4cc1d1d)
- [seafile 6.0.1](https://git.solus-project.com/packages/seafile/commit/?id=3433cf83d115e3489fa4358f190443c89fed9093)
- [seafile-client 6.0.0](https://git.solus-project.com/packages/seafile-client/commit/?id=5d4e7fdbaa2939c478cf7ecdc3550115981eecdf)
- [solbuild 1.2.0](https://git.solus-project.com/packages/solbuild/commit/?id=03ec3b3409f314e4a4fed1e10c0d84a69c6c2610)
- [wire 2.11.2685](https://git.solus-project.com/packages/wire/commit/?id=d6ef0379f374b58afdfdae11dd1106a0fdf6ba8c)
- [zuki-themes 3.20](https://git.solus-project.com/packages/zuki-themes/commit/?id=f72c462e2109fa024424b25c15c320a656a66427)

**Updated:**

- [avrdude: Enable USB support](https://git.solus-project.com/packages/avrdude/commit/?id=233f3692411341ddf0b015a3202a3fc3f740e646)
- [binutils: Enable deterministic archives by default](https://git.solus-project.com/packages/binutils/commit/?id=ee75f143e77ab4d8cd13ea9fe3698dbe1c3f8578)
 - This should help us in our effort to provide reproducible builds within Solus by not having to do any .a mangling to fix timestamps, etc.
- [ca-certs 20161124](https://git.solus-project.com/packages/ca-certs/commit/?id=ffeab9c97c3bee1e33b4972906de73c268acc01f)
- [calibre 2.74.0](https://git.solus-project.com/packages/calibre/commit/?id=19a028902ed596b4d57554f4334364b798af879f)
- [ccache 3.3.3](https://git.solus-project.com/packages/ccache/commit/?id=e795d7aff85f6a9729e3b03f5eba7bb0701b9ba7)
- [farstream 0.2.8](https://git.solus-project.com/packages/farstream/commit/?id=f1ef5c62edc59003b9f9ea846d403ed1784c8c6f)
- [fontconfig 2.12.1](https://git.solus-project.com/packages/fontconfig/commit/?id=f8b4c6f5fe1f48c2ec397707f65cfc37c606225c)
- [freetype2 2.7 and rebase the Solus patches](https://git.solus-project.com/packages/freetype2/commit/?id=9c50f1963236e1ede07afea4e384a8546ffcb26b)
- [gnome-boxes 3.20.3 and build against new spice-gtk 0.33 ABI](https://git.solus-project.com/packages/gnome-boxes/commit/?id=ac014477a54ebe0aa2501c368698e6ddf5d3e8c0)
- [golang: Rebuild due to toolchain changes with .a files](https://git.solus-project.com/packages/golang/commit/?id=2b8510626fe3be0bb2cd77178235abde1087c948)
- [httpie 0.9.8](https://git.solus-project.com/packages/httpie/commit/?id=df504b4622b21e3b553e65d39ce57075c5c4da08)
- [jemalloc 4.4.0](https://git.solus-project.com/packages/jemalloc/commit/?id=feea644238241acb199f86d3128dc67005a47261)
- [kernel 4.8.12](https://git.solus-project.com/packages/kernel/commit/?id=428267d3f72b1e7342cad37c72e17988689f8843)
 - [And addressing CVE-2016-8655 before it was released in a newer kernel](https://git.solus-project.com/packages/kernel/commit/?id=65080112af6e4b75172f846524e26377405e5932)
- [kodi 17.0 Beta 6](https://git.solus-project.com/packages/kodi/commit/?id=27cb691c708546b0cd32e418ce869f6320e85e9f)
- [libdrm 2.4.74](https://git.solus-project.com/packages/libdrm/commit/?id=1ad592cf5ab154534ac9b7f101545fecd027f48a)
- [libmediainfo 0.7.91](https://git.solus-project.com/packages/libmediainfo/commit/?id=1dac766b94c65847650e531225f2e37585d6d230)
- [libreoffice: Enable java and networkless build](https://git.solus-project.com/packages/libreoffice/commit/?id=ded5fa7014bc6347632152b7f0a8a16b654749e3)
- [linux-steam-integration 0.3](https://git.solus-project.com/packages/linux-steam-integration/commit/?id=bf7029ff609f22cab5a1a5b0182adf38c88a3e11)
- [lollypop 0.9.223](https://git.solus-project.com/packages/lollypop/commit/?id=1959f238b61a61c83ae9bba8070b86e78f952761)
- [mediainfo 0.7.91](https://git.solus-project.com/packages/mediainfo/commit/?id=231c6a406b26ec65a3ce2b13ed3554dec294439d)
- [mercurial 4.0.1](https://git.solus-project.com/packages/mercurial/commit/?id=d84672e72b78b1574e1c46f2975f3cb8a224e3a0)
- [nano 2.7.1](https://git.solus-project.com/packages/nano/commit/?id=9892632bd7f931e3b673cec5fa322eb03b4e0745)
- [nodejs 7.2.1](https://git.solus-project.com/packages/nodejs/commit/?id=0f0adddac2d8a22cf072303559ac67fe83491761)
- [phoronix-test-suite 6.8.0](https://git.solus-project.com/packages/phoronix-test-suite/commit/?id=18fe12bef89b3b477b085651c6c175e82d2c46be)
- pidgin:
 - [Add dbus-glib headers](https://git.solus-project.com/packages/pidgin/commit/?id=052359319e9cd962a10d126e4dec241a455873ab)
 - [Enable audio/video and gtkspell](https://git.solus-project.com/packages/pidgin/commit/?id=0aab28e8f4ccd6239d6ff95b5d5c44ccd7095223)
- pisi:
 - [Deprecate evobuild in favour of solbuild](https://git.solus-project.com/packages/pisi/commit/?id=48d30f0a3a877a5ae150e0a7f77e0f070ebe9d8a)
 - [Update to 3.4 for improved files database performance for ypkg](https://git.solus-project.com/packages/pisi/commit/?id=b1e52a01754518897f48f8e111ab7ccabe979a05)
- [python-simplejson 3.10.0](https://git.solus-project.com/packages/python-simplejson/commit/?id=25a0e27674830a0d58d4cc9fb85ef54bb54aea5c)
- [qemu: Enable opengl/virgl for VirtIO OpenGL rendering](https://git.solus-project.com/packages/qemu/commit/?id=1c7d4c0d224bdd92da3888cef3836b6ae89b2a48)
- [qownnotes 16.12.4](https://git.solus-project.com/packages/qownnotes/commit/?id=dcada6ca1d6e44c91f32f754a3406b978584c1e3)
- [qt4: Fix detection of GTK under MATE desktop for integration](https://git.solus-project.com/packages/qt4/commit/?id=b3760706004711c20025868d459357c2f5690aaf)
- [qtpass 1.1.6](https://git.solus-project.com/packages/qtpass/commit/?id=9a09867e382e8d83ccdfc898611057c513a037a5)
- [sc-controller 0.3.3](https://git.solus-project.com/packages/sc-controller/commit/?id=5e4a365a6e9989813e21d5636cbaf9abbd1301e5)
- [spice 0.12.8 and optimize for speed through compiler flags](https://git.solus-project.com/packages/spice/commit/?id=a84f2b23891909a4bc1fd330faf95fee60eee0b8)
- [spice-gtk 0.33 and enable GStreamer sink usage](https://git.solus-project.com/packages/spice-gtk/commit/?id=20a20f6c8909f9423e82e7b393bd63a3ad6d8b0e)
- [spice-protocol 0.12.12](https://git.solus-project.com/packages/spice-protocol/commit/?id=60bc44b516c4172f32859a364fb9444339614c85)
- [subversion 1.9.5](https://git.solus-project.com/packages/subversion/commit/?id=dd959df525b7ab2a5bfa7d83f76ca098cfeb20c3)
- [suricata 3.2](https://git.solus-project.com/packages/suricata/commit/?id=7d5d85f850f916ea770a860cd1067c394aff8cce)
- [syncthing 0.14.13](https://git.solus-project.com/packages/syncthing/commit/?id=d394226235c58c50adfbb336393cad977f0ccbb2)
- [tor 0.2.8.10](https://git.solus-project.com/packages/tor/commit/?id=d8998437611432cc747b5900b77c7d229762b523)
- [usbredir 0.7.1 and optimize for speed through compiler flags](https://git.solus-project.com/packages/usbredir/commit/?id=5a31c51a06058edb74674f4d1fbe575ad3f5ab7f)
- [vim 8.0.0132](https://git.solus-project.com/packages/vim/commit/?id=9cfd30302483e43460cfab87037efce7c7a6c06d)
- [virglrenderer: Sync with git](https://git.solus-project.com/packages/virglrenderer/commit/?id=18f21efcc8578a44bc51626c870612f261f3fc2b)
- [vivaldi-snapshot 1.6.689.13](https://git.solus-project.com/packages/vivaldi-snapshot/commit/?id=b19f3f252c6b2d7400b7a72b06d9a2cd3ab84c97)
- [vivaldi-stable 1.5.658.56](https://git.solus-project.com/packages/vivaldi-stable/commit/?id=4bfd18537aa59eeb114804ddadc7b475a50fa6de)
- [vscode 1.7.2 and eliminate use of global node module installation](https://git.solus-project.com/packages/vscode/commit/?id=96212173d37352146bb75c3d4528e7a77729dfad)
- [xkeyboard-config 2.19 and add compatibility symlink for MATE](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=5ae9ea62ff8be7f95f3e7813ce6043e766e9f8bd)
- [xorg-driver-video-qxl: Do not build with full RELRO](https://git.solus-project.com/packages/xorg-driver-video-qxl/commit/?id=abb781d4a81e88181bbc79ed41fa891c9e5c5270)
 - All xorg driver modules must be built without full RELRO otherwise they will fail to bind when dlopen'd by the xorg server, making them impossible to use.
- [yakyak 1.4.0](https://git.solus-project.com/packages/yakyak/commit/?id=bf04354781b436039dd538cfbfcc1f22ee385894)
- [yarn 0.18.0](https://git.solus-project.com/packages/yarn/commit/?id=6f80ee65f825af54f70b82814891eefd0a2f16d5)
- ypkg:
 - [Update to v18](https://git.solus-project.com/packages/ypkg/commit/?id=b6b97a60c2d102e89db920028307c81fb6cb4c59)
 - [Begin testing parallel tree processing in ypkg](https://git.solus-project.com/packages/ypkg/commit/?id=1d87df2fc3c84bdc30b22a8bae0069a8c3b9149c)
- [youtube-dl 2016.12.01](https://git.solus-project.com/packages/youtube-dl/commit/?id=f860f6a029585a618f609f92c476875ac08e819b)