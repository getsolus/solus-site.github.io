+++
author = "joshua"
categories = ["news", "plans", "twis"]
date = "2017-04-24T01:33:12+03:00"
featuredimage = "/twis-43-featured-image.jpg"
title = "This Week in Solus - Install #43"
url = "/2017/04/24/this-week-in-solus-install-43"

+++

Welcome to the 43rd installation of This Week in Solus.

## Post Snapshot

We've been hard at work after [last week's snapshot](/2017/04/18/solus-releases-iso-snapshot-20170418-0/) on various items. We got some early reports of hardware incompatibilities with Wayland as well as issues on the GNOME edition of Wayland breaking important functionality like the ability to re-login after a logout. After some investigation, we have decided to temporarily disable Wayland in both gnome-session as well as GDM.

Alongside this issue, we also discovered that the Epiphany web schema keys, such as `user-agent`, were not modifiable via `dconf-editor` by end-users, so this issue was resolved.

Since last week, we've upgraded our ypkg build tool to v21, which:

- Fixed stripping of `.a` files
- Fixed the URL for obtaining assistance with packaging
- Ensure we can work with multiple variations of `BIND_NOW_FLAGS`
- Explicitly set the build directory for `%meson_*`

solbuild also received an update to be compatible with the new libgit2, which we upgraded alongside gitg and enabling git support in gnome-builder.

Our kernel was updated to 4.9.24 and disabled `vga=current` as it would cause boot failures.

Lastly we synced upower with git due to many upstream changes being unreleased that were needed to resolve "critical actions", which would spam multiple popups and battery icons.

## Binman and ferryd

Since 2013, we have been utilizing our tool, [Binman](https://github.com/solus-project/ypkg/blob/master/repo/binman.py), for syncing our unstable and stable repositories. The repositories have grown dramatically since the original design of binman, and as a result, binman has caused syncs to take longer than desired, with the sync during our ISO snapshot taking a total of 104 minutes and delaying the release.

To enable shorter sync windows and immediate available of packages, as well as to help upscale infrastructure for community maintainers, we're developing [ferryd](https://github.com/solus-project/ferryd) (*pronounced ferried*). `ferryd` is a daemon for enabling the safe transit of packages, monitoring uploads from a secure build server, and aims to provide simple management of the Solus repositories, with a rigid approach to caching by pooling assets and hardlinking them into the appropriate place.

## Cuppa

Bryan has been hard at work implementing the command-line interface of [Cuppa](https://github.com/DataDrake/cuppa), the upstream tracking assistant, and will be leveraging Cobra for a more complete implementation. He's also planned support for BitBucket and Crates.io and discovered that Launchpad is inconsistent in its handling of version numbers, which will be addressed soon.

Normalization of version numbers will be implemented to make comparisons between the versioning of Solus packages and upstreams easier. Solus uses consistent versioning that may not be the case upstream, such as `2.47` whereas upstream may be `2_47`, `v2.47`, or `release-v2.47`.

Cuppa will see support for configuration of the GitHub API key, so rate-limiting will no longer be a factor, and in his initial testing we now cover 1/3 of the package repositories in Solus, with plans on improving coverage through various methods like planned support for HTML scraping, enabling tracking of GNOME and KDE upstreams.

## Site

The redesign of the Solus website has officially started. The new site design is a shift towards a brighter aesthetic and improved information density, such as information on technologies we develop or leverage for Solus, and shifting away from solely talking about Budgie (at the time of the switch to Hugo and the current site design, it was the only edition) to talking about all the experiences we provide. The Download page saw this new brighter aesthetic for the new ISO snapshot, which:

- Improved the presentation of our various editions
- Made downloading of editions easier and in some cases faster.

## Snapshot 3

Looking forward, some immediate plans for the future ISO is an upgrade of our ffmpeg 3 to ffmpeg 3.3, as well as upgrading systemd.

## Sundays with Solus

Sundays with Solus is back and this time, in audio format! This was a decision made back in January to shift from using Hangouts to locally recorded audio, enabling better audio quality. It also seemed logical, as our Sundays with Solus were audio-focused anyways.

I'm currently working out the infrastructure bits for doing a live stream of Sundays with Solus, simultaneously to Facebook Live, our site, and our Youtube channel, as well as working on podcast-specific RSS feeds for MP3 and OGG. I'll have a future announcement when all of those bits are ready, however I didn't want to hold back on getting everyone the latest news in an edited format, so below are the MP3 and OGG!

{{< sundays-with-solus episode="10" >}}

---

## Package Highlights

Here is a highlight of package since our ISO snapshot!

**New:**

- flat-plat-gtk-theme 20170323
- flow-pomodoro 1.2.0
- k3b 17.04.0
- okteta 17.04.0
- radiotray-ng 0.1.5
- zsh-syntax-highlighting 0.5.0

**Updated:**

- adapta-gtk-theme 3.90.0.93
- albery 1.11.1
- arc-firefox-theme 53.20170420
- bitcoin 0.14.1
- caja 1.18.2
- cantarell-fonts 0.0.25
- epiphany: Resolve inability to access web schema via dconf.
- firefox 53.0
- gcolor3 2.2
- geany 1.30.1
- gnome-builder 3.24.1
- gnome-documents 3.24.1
- gitg 3.23.90
- kdenlive 17.04.0
- kstars 17.04.0
- kteatime 17.04.0
- linux-lts 4.9.24
- lutris 0.4.8
- marble 17.04.0
- mercurial 4.1.3
- miller 5.1.0
- mutt 1.8.2
- paperwork-gui 1.1.2
- qgis 2.18.6
- qt-creator 4.2.2
- shotcut 17.04
- smplayer 17.4.0
- smtube 17.1.0
- solbuild v1.3.1
- solus-hardware-config v13 and disabled coredumps
- sshfs 2.9
- thunderbird
  - Update to 52.0.1
  - Enable calendar
- tmux 2.4
- uget 2.0.9
- vagrant 1.9.3
- vivaldi-snapshot 1.9.818.22
- weechat 1.7.1
- ypkg v21
- youtube-dl 2017.04.17
- zuki-themes 3.22