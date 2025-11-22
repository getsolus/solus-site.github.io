---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- news
- plans
- twis
date: "2017-04-24T01:33:12+03:00"
featuredimage: /twis-43-featured-image.jpg
title: 'This Week in Solus - Install #43'
url: /2017/04/24/this-week-in-solus-install-43
---

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

---

## Package Highlights

Here is a highlight of package since our ISO snapshot!

**New:**

- [flat-plat-gtk-theme 20170323](https://git.solus-project.com/packages/flat-plat-gtk-theme/commit/?id=48d5fd394c285e9b1e864b4291825fb02c830da1)
- [flow-pomodoro 1.2.0](https://git.solus-project.com/packages/flow-pomodoro/commit/?id=ced21c1ee1c3eda35d6f961a2edd8f98f769120d)
- [k3b 17.04.0](https://git.solus-project.com/packages/k3b/commit/?id=d8f8a143a83a9ba71198f1d736becf822d100683)
- [okteta 17.04.0](https://git.solus-project.com/packages/okteta/commit/?id=8ac3183c69d8a413f89111d91218807f9914b60a)
- [radiotray-ng 0.1.5](https://git.solus-project.com/packages/radiotray-ng/commit/?id=ec251b1a49f862725f8786983b05942cc4f44149)
- [zsh-syntax-highlighting 0.5.0](https://git.solus-project.com/packages/zsh-syntax-highlighting/commit/?id=a9cfa4679e434df089422d3bfae71a6da51c7f1b)

**Updated:**

- [adapta-gtk-theme 3.90.0.93](https://git.solus-project.com/packages/adapta-gtk-theme/commit/?id=174c15d8246938054a103ccec05be7de47f849e8)
- [albery 1.11.1](https://git.solus-project.com/packages/albert/commit/?id=a1e894840168d855b87ca4aa22928a855343007a)
- [arc-firefox-theme 53.20170420](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=9258419377941a61b413a0920f90873602b27a98)
- [bitcoin 0.14.1](https://git.solus-project.com/packages/bitcoin/commit/?id=f4f869442aee10045fc9ac2d7300ccbdee4e1b93)
- [caja 1.18.2](https://git.solus-project.com/packages/caja/commit/?id=00219789545082a4f06df30d04ddb2fd68ba05b3)
- [cantarell-fonts 0.0.25](https://git.solus-project.com/packages/cantarell-fonts/commit/?id=342739025d9b223bbc0c03fe5134e8cd9a8d3fc8)
- [epiphany: Resolve inability to access web schema via dconf.](https://git.solus-project.com/packages/epiphany/commit/?id=a5d184a659d2c19bf94110891de6c14c5ceacec1)
- [firefox 53.0](https://git.solus-project.com/packages/firefox/commit/?id=fce23633d2ff669af5b5fd23ab4042afc937dc49)
- [gcolor3 2.2](https://git.solus-project.com/packages/gcolor3/commit/?id=cecac4ec4accba0c6568420d548123b82a354604)
- [geany 1.30.1](https://git.solus-project.com/packages/geany/commit/?id=e0a6dd5828ff50a34190a76621d1f7eaaec4aab3)
- [gnome-builder 3.24.1](https://git.solus-project.com/packages/gnome-builder/commit/?id=f107e56e8b5c863b8e78ce21f477b4ad88c27360)
- [gnome-documents 3.24.1](https://git.solus-project.com/packages/gnome-documents/commit/?id=7f86d0b61f9b38fabd7c48929ca8c6dd8fcb09ac)
- [gitg 3.23.90](https://git.solus-project.com/packages/gitg/commit/?id=4ae926e8f6adad52801f87ba1f9eb082dcf56361)
- [kdenlive 17.04.0](https://git.solus-project.com/packages/kdenlive/commit/?id=2ec3f10d1f755982b69f0de4fdfcccbadd9455fb)
- [kstars 17.04.0](https://git.solus-project.com/packages/kstars/commit/?id=a253edcacbb59d9222e52333bd61dd74b079cadf)
- [kteatime 17.04.0](https://git.solus-project.com/packages/kteatime/commit/?id=bed36d34a00d8faf115f35d67a13f885a648a9fa)
- [linux-lts 4.9.24](https://git.solus-project.com/packages/linux-lts/commit/?id=2b3729f4d808fd52ce9767481d844341f77b0bdd)
- [lutris 0.4.8](https://git.solus-project.com/packages/lutris/commit/?id=d28e68d5c5b2595864fa8ab50501017ebf9b6dc5)
- [marble 17.04.0](https://git.solus-project.com/packages/marble/commit/?id=b5f7ca740490a30daa47849f204d724b77fd1c7a)
- [mercurial 4.1.3](https://git.solus-project.com/packages/mercurial/commit/?id=1c2997c96a48e24a3482afadf14694ca83ab07a1)
- [miller 5.1.0](https://git.solus-project.com/packages/miller/commit/?id=e5a4dd1293587cf4a2665934df4f0f6c32a67a75)
- [mutt 1.8.2](https://git.solus-project.com/packages/mutt/commit/?id=f6f02a66c55e5f2fc50aaa30cd98a0c9adb757b5)
- [paperwork-gui 1.1.2](https://git.solus-project.com/packages/paperwork-gui/commit/?id=af18deabf49496e15f61809df9efb6307b864079)
- [qgis 2.18.6](https://git.solus-project.com/packages/qgis/commit/?id=24a407ede278a08ff1d2978ba41dc3e53d1107ef)
- [qt-creator 4.2.2](https://git.solus-project.com/packages/qt-creator/commit/?id=6580cfd7583f2bc38daa4ae7a77f6b649a724544)
- [shotcut 17.04](https://git.solus-project.com/packages/shotcut/commit/?id=a10f4a360488d53ecf81a9c47a1bc185fd4ee2e1)
- [smplayer 17.4.0](https://git.solus-project.com/packages/smplayer/commit/?id=f353a62b4f9f675f168ce4e40f76ed157d380802)
- [smtube 17.1.0](https://git.solus-project.com/packages/smtube/commit/?id=ff650a4fcbd36e7f073ec79d1e70ae00bd240317)
- [solbuild v1.3.1](https://git.solus-project.com/packages/solbuild/commit/?id=78ad1fac230a1e5db66b3364920c93057d9ff3f6)
- [solus-hardware-config v13 and disabled coredumps](https://git.solus-project.com/packages/solus-hardware-config/commit/?id=ae82d4b3aad7dbc34c29f2de482173d7fbb65a62)
- [sshfs 2.9](https://git.solus-project.com/packages/sshfs/commit/?id=8b4f8dab6c001e4a6a245b72fd4c109a8d603383)
- thunderbird
  - [Update to 52.0.1](https://git.solus-project.com/packages/thunderbird/commit/?id=d0ea238e44ea51fbe3e348454264b90dadaab947)
  - [Enable calendar](https://git.solus-project.com/packages/thunderbird/commit/?id=c679a9bd81bab3cad2604fd48e44d105802ee9e6)
- [tmux 2.4](https://git.solus-project.com/packages/tmux/commit/?id=05eab4c9ed8b68109ac0dc14521fb3c3242771bc)
- [uget 2.0.9](https://git.solus-project.com/packages/uget/commit/?id=7ba8d4274b7f6c4fa2156974e1a8e8728f2e588a)
- [vagrant 1.9.3](https://git.solus-project.com/packages/vagrant/commit/?id=39046cc89568eaeaac652212b72322d53f1d3810)
- [vivaldi-snapshot 1.9.818.22](https://git.solus-project.com/packages/vivaldi-snapshot/commit/?id=b8e0017003eb54dcaaf89e487cc1c889cbd89aba)
- [weechat 1.7.1](https://git.solus-project.com/packages/weechat/commit/?id=8a1ed9b19a16a3abb46570e3bdfcccf21073361c)
- [ypkg v21](https://git.solus-project.com/packages/ypkg/commit/?id=2cbd149ebf5111016e086ac3958a247aa4b431a1)
- [youtube-dl 2017.04.17](https://git.solus-project.com/packages/youtube-dl/commit/?id=37bd9eddd55a3b934b14add30c7172bf2872591a)
- [zuki-themes 3.22](https://git.solus-project.com/packages/zuki-themes/commit/?id=499d01341c4f389c255bd8ebaccdfb9ef171639a)
