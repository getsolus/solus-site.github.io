+++
author = "joshua"
categories = [
	"news",
	"plans",
	"twis"
]
date = "2017-05-08T22:18:43+03:00"
featuredimage = "/oh-my-god-it-is-a2dp-everybody.jpg"
title = "This Week in Solus - Install #44"
url = "/2017/05/08/this-week-in-solus-install-44"

+++

Welcome to the 44th installation of This Week in Solus.

## Migration to Diffusion and Differential

Ikey spent late Friday and the better part of Saturday moving our git repositories and patch management to Diffusion and Differential, applications within Phabricator, the development tracker we use. This was discussed back in February and is our response to:

- Needing to "upscale" with our community and its needs
- Improving the review process by enabling inline patch review, syntax highlighting to more easily catch changes, the ability to auto-close Maniphest tasks via a commit, etc.
- Enabling the use of Arcanist, a tool designed to interface with Phabricator and handle patches in a simplified manner.

Our old git infrastructure will continue to live, read-only, for a month. After such point it will be removed. This ensures any latent projects or packages definitely make the migration over to Diffusion.

If you're a package maintainer, maintain a clone of the repository, etc. you will need to either update your common's git remote to, or re-clone, the HTTPS url from the new common repo. After that, run `make pull -jN` (N here would be how many repositories you want to be cloning at the same time and would depend on your connection) in your repository folder and you should have your existing cloned git repositories receive updated remote addresses.

Do note, however, that the names of some repositories has changed. For example, uppercase-named repositories (*such as SDL*) are now lower-case, and repositories with `++` will change to `xx` instead, such as libsigcxx.

Our [Submitting a Package/Patch article](https://solus-project.com/articles/packaging/submitting-a-package/en/) has been updated and I will be having a livestream late this week that will cover submitting a patch with the new system.

## New Website

We deployed the new website on Friday, listening to people's feedback and addressing issues, such as some rendering bugs for lower-resolution displays and a chunky laptop vector design (*we received a new vector design from a community member via our subreddit*). Overall, the site has been well received and I look forward to applying the new, brighter aesthetic to various places on the site, such as the Blog, Help Center, and Press Center.

I'll be working this week on updating the Help Center to have a better categories view for particular sections, namely for Packaging, to make it more obvious the natural path one would take for packaging, deprecation of the "Packaging Guide" article (*which was carried over from MediaWiki and hasn't been particularly useful*) and surfacing media such as the Learn Solus Packaging videos.

Furthermore, I'll be implementing the MP3 and OGG podcast feeds in preparation for a new Sundays with Solus this coming Sunday. I'll make announcements throughout the various social channels when these feed URLs are up.

## Other Goodies

### ABI Reports

{{< relimg "abi-reports.jpg" >}}
*This goes on for several pages.*

Peter spent time before our migration to Diffusion and Differential generating the ABI reports for over **500** packages. These reports give us a clear picture of all the used libraries of a package as well as what ABI / APIs they expose, which makes it easy to spot changes across upgrades or tweaks to packages and come to a determination as to whether we'll need to rebuild packages that depend on it.

### Bluetooth

{{< relimg "creative-t3250.jpg" >}}

[Thanks to our Patrons](https://patreon.com/solus) and donators on PayPal for their continued support of the project, Ikey was able to sponsor my purchase of some Bluetooth speakers, specifically the [Creative T3250 wireless speakers](https://plus.google.com/+JoshuaStrobl/posts/ftwh36axeuC) and an Asus USB-BT400 Bluetooth USB adapter. This was done as we had received reports of non-functionality Bluetooth A2DP audio on some systems and needed hardware to test and validate solutions in a more rapid fashion than what have may otherwise been possible through conversing and testing via IRC.

The issue was a result of GDM starting its own instance of Pulseaudio, something I addressed in our GDM 3.20.1 rel 22. Furthermore, I did enablement of bluez, namely enabling a stateless config and shipping our vendor-provided configuration with AutoEnable set to true, so Bluetooth controllers are automatically enabled. I also [went through and tested all editions](https://plus.google.com/+JoshuaStrobl/posts/hrGiypVeFob), as well what would be considered a more frankenstein installation of Budgie and GNOME, with GDM as the display manager, which is reflective of almost all usage of GNOME prior to the release of Solus GNOME Edition, to validate A2DP functioning on all them.

### Google Accounts Integration Fixed

We have been tracking numerous upstream tasks in regards to Google accounts signin no longer functioning. We're happy to report that an upstream fix has landed in WebKit, landed in our unstable repository, and validated.

### Scanning

Bryan spent time improving scanning support with his landing of utsushi 3.30.0 and packaging of iscan 2.30.3, alongside its data. While we are still awaiting validation from users, we know that utsushi should enable scanning for some Epson printer / scanners.

## Package Highlights

Despite a repo freeze that occurred Friday and some of Saturday, quite a few new and updated packages landed over the last week (some are in unstable awaiting sync and expected to land soon).

**New:**

- beets 1.4.3
- luminance-hdr 2.5.0
- perl-dbd-sqlite 1.54: Added for x2goserver
- plano-theme 3.22
- plotinus 0.2
- python-setuptools-git 1.2
- screenkey 0.9
- slop 5.3.37

**Updated:**

- abcm2ps 8.13.9
- adapta-gtk-theme 3.90.0.166
- arcanist:
  - Ensure arcanist can handle Initial Commit situations
  - Sync with Solus server version, 2017.17, added missing PHP runtime dep.]
- ardour: Added (LX)VST support
- autofs: Enable systemd
- bluez: Enable stateless main.conf and set AutoEnable to true by default. AutoEnable=true should enable automatic enabling of all Bluetooth controllers
- budgie-haste-applet 0.2.9
- calibre 2.84.0
- corebird 1.5
- cmake 3.8.1
- epiphany 3.24.2
- evolution 3.24.2
- evolution-data-server 3.24.2
- evolution-ews 3.24.2
- flatpak 0.9.3
- firefox 53.0.2
- fuse-emulator 1.3.5
- fzf 0.16.7
- gjs 1.48.3
- gimp 2.8.22
- gnome-builder 3.24.2: Enable Vala language pack support
- gnome-disk-utility 3.24.1
- gnome-maps 3.24.2
- gnome-music 3.24.2
- gnome-shell-extensions-impatience 0.4.5
- gnome-user-docs 3.24.2
- gparted 0.28.1
- ibus-libpinyin 1.9.0
- icoutils 0.31.3
- iscan 2.30.3
- lastpass-cli 1.1.2
- liberation-circuit 1.3
- libmediainfo 0.7.91
- libpinyin 2.0.0
- libwebkit-gtk: Add upstream modification to resolve signing in with Google
- linux-lts 4.9.26
- mate-terminal 1.18.1
- media info 0.7.95
- nodejs 7.10.0
- nvidia-glx-driver 375.66
- open-vm-tools 10.1.5
- opencv: Enable python3 support
- owncloud-client 2.3.2
- pantheon-files 0.3.4
- pcsx2: Disable -march=native
- pioneer 20170415
- pluma 1.18.2
- q4wine: Built against Qt5, enabled icoutils, compressed man pages
- qgis 2.18.7
- qownnotes 17.05.3
- rcm 1.3.1
- riot 0.9.9
- rstudio 1.0.143
- scala 2.12.2
- shotcut 17.05
- speedtest-cli 1.0.6
- telegram: Handle tg:// addresses
- vala 0.36.3
- vivaldi-snapshot 1.10.838.7
- yubioath-desktop 4.1.1