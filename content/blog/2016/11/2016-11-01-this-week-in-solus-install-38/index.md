+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-11-01T08:27:41+02:00"
title = "This Week in Solus - install #38"
url = "/2016/11/01/this-week-in-solus-install-38/"
+++

Welcome to This Week in Solus, installation #38. Lots have happened since the last one, so let's get started.

## Budgie

Last week, Ikey migrated Budgie Desktop to be its own GitHub organization, viewable [here](https://github.com/budgie-desktop). This is a reflection of the direction we want to take Budgie, which is moving from a monolithic 
architecture to a modular one, breaking up Budgie into individually components, empowering us to independently develop, iterate and release components of Budgie.

Ikey has already began work on creating a `budgie-core`, the component that all other Budgie components will depend on. This core contains gsettings schemas (*stored traditionally in the panel*) and theming used 
throughout the Budgie Desktop. We plan on extending the core in the future to provide an animation framework, as well as accented colors.

We also have the following components:

- `budgie-daemon` : Provides session support services for Budgie Desktop
- `budgie-panel`: The panel component of the Budgie Desktop
- `budgie-polkit-dialog`: Our PolicyKit Agent UI for Budgie Desktop
- `budgie-run-dialog`: Our keyboard-driven application launcher for the Budgie Desktop.
- `budgie-wm`: The window manager of the Budgie Desktop
- Current plans on inclusion of a `budgie-session` component.

This re-architecting of Budgie will first appear in Budgie 11.0.0. Yes, proper [semver](http://semver.org/) folks.

## Hackfest

During Saturday, Bryan and I had ourselves a hackfest / "build-o-rama" (*name is inspired by building and packaging of software*). During this Hackfest, Bryan worked on packaging, for example landing gzdoom, lbreakout2, 
and tools such as shellcheck. He also triaged and fixed issues, such as resolving dependencies for Gnome Builder, further putting a dent in our backlog.

During the Hackfest, I worked on the site and landed community patches.

{{< youtube "peXzufAT_Lc" >}}

{{< youtube "oMzkCEt64sk" >}}

{{< youtube "DEFQQ6cHT68" >}}

## Website and Infrastructure

### Website

As you might have noticed, our website has changed quite significantly on Saturday. Previously, we were using Wordpress to deliver information about the Solus project and Budgie, however it simply didn't fit 
our needs and was quite frankly a royal pain to work with. So it has been completely tossed out and replaced with this new Hugo-based website, which not only gives us the opportunity to tell the Solus story in a more 
tailored fashion, but opens the door to a lot of possibilities in the future.

During this week's build-o-rama / hackfest (videos above), I worked to resolve issues discovered by the community, such as font-rendering, but also landed some new functionality like easy access to our RSS feeds. With the 
launch behind us, it's time to focus on the road ahead and lay it out for those curious.

First off, I want to flesh out the content more extensively, and re-introduce the Solus page, originally shown off during earlier streams, with some differentiators from the homepage. I also understand that some may 
view the new site to be less information dense and more reliant on imagery, which is a polar opposite of the previous Wordpress-based website, and this is something I plan on gradually addressing. I'm of the opinion that 
starting with less but highly discoverable content, then working towards improving what content we do provide, is a far better path than starting with too much information that affects discoverability, that we'd gradually need to 
remove or shift elsewhere.

Once I'm happier with the content we do provide, I'll be working on adding more features and functionality, such as providing an integrated Help Center. This will enable a high-quality method for discovering and querying 
frequently asked questions, guides, and more. The original plans of dropping the User Guide Google Doc and shifting it to Markdown can then be executed upon. In the coming days, the 
[User Guide](https://github.com/solus-project/user-guide) will be updated to reflect Solus 1.2.1, Installer improvements, and more. This work will then be incorporated into the future Help Center and we'll automatically 
generate PDFs for offline usage.

Theoretically, although yet to be decided, this could enable us to eliminate our MediaWiki installation and enable the broader community to contribute to the Help Center. We haven't enabled contributions to the MediaWiki 
due to the potential of abuse (*mainly from bots*), however providing a Git-based method for people to contribute would enable us to curate and quality control contributions.

### Repo Search Tool

Moving beyond that, there are some ideas floating around Solus HQ on providing an online repo search tool, which would enable those who haven't installed Solus yet to discover our software offerings with more ease than 
the present day. We don't have more concrete details to talk about at this moment in time, but I'll obviously talk about it in future This Week in Solus installments.

### Mail

Whether it is signing up for the forums or getting emails about patches on our Phabricator, email is heavily used for and with Solus on a daily basis. As any of you, whom might've attempted to sign up for the forums noticed, 
the mail doesn't exactly always get delivered, as a result of being blacklisted by some companies due to bad actors on the same I.P. block.  We've investigated resolving this issue however the best course of action appears to be 
moving to a commercial mail provider, so we'll be working towards resolving that issue.

---

## Package Highlights

Here is a highlight of new and updated packages.

**New**

- [albert 0.8.11](https://git.solus-project.com/packages/albert/commit/?id=c2d42151a5931dfec91e7cdfbff754bfcaf1612b)
- [arx-libertatis 1.1.2](https://git.solus-project.com/packages/arx-libertatis/commit/?id=253f30c0583c2b0882dd7353e94e3832681b1b8c)
- [clustershell 1.7.2](https://git.solus-project.com/packages/clustershell/commit/?id=bb02e368b524ceddefec3502eebc55f20a8f43e2)
- [cool-retro-term](https://git.solus-project.com/packages/cool-retro-term/commit/?id=ca42aeb2430a13e0f4c20651dd32a2c5268dd4d7)
- [dmz-cursor-theme 0.4.4](https://git.solus-project.com/packages/dmz-cursor-theme/commit/?id=68d3bab5578fc7bda6289eb3c38b2c133f68f812)
- [drive 0.3.8.1](https://git.solus-project.com/packages/drive/commit/?id=09984a15e919cf9390a76ff8777df849f0268f70)
- [duckmarines 1.0c](https://git.solus-project.com/packages/duckmarines/commit/?id=bd227b346b48ae5ecba6f612b855488a46ca7f99)
- [freeplane 1.5.17](https://git.solus-project.com/packages/freeplane/commit/?id=99cc92336fb466751eadbd922e4b01ed081f7bd7)
- [gourmet 0.17.4](https://git.solus-project.com/packages/gourmet/commit/?id=60ecea2c5bedea83124d9287e01ecd4ab4b2378c)
- [gradio 4.0.1](https://git.solus-project.com/packages/gradio/commit/?id=b040b7ddf021d0c692a26672c365681dcbf8f502)
- [gretl 2016c](https://git.solus-project.com/packages/gretl/commit/?id=b8e0768ba7fde34859526fab4a9756a3d3ca5a36)
- [gxmessage](https://git.solus-project.com/packages/gxmessage/commit/?id=96ae569878ccdd412146f3f5fc16b77217bfb06a)
- [gzdoom 2.2.0](https://git.solus-project.com/packages/gzdoom/commit/?id=f26f3f93ae2b8405c4ef1c78db73c2f1a04e9c3d)
- [jq 1.5](https://git.solus-project.com/packages/jq/commit/?id=1d293539609afb13257914f57bf2083252f2852f)
- [lbreakout2 2.6.5](https://git.solus-project.com/packages/lbreakout2/commit/?id=2b68aa91ee0d681c5c333b3d6291eb0d502fc417)
- [leveldb 1.19](https://git.solus-project.com/packages/leveldb/commit/?id=6c9753aa167e49c739af7cbb2bd5945545bc1104)
- [lmdb 0.9.18](https://git.solus-project.com/packages/lmdb/commit/?id=7e117343a817a63485ece41f3f1f4c6ddad160f5)
- [mate-dock-applet 0.73](https://git.solus-project.com/packages/mate-dock-applet/commit/?id=97d9df504a3224b08113f5de5f9dc576445477d6)
- [mate-menu 16.10.1](https://git.solus-project.com/packages/mate-menu/commit/?id=ba6677b0f96555a4be31b8a4f2c017a0e4bb00ec)
- [micro 1.1.2](https://git.solus-project.com/packages/micro/commit/?id=5b6d37f85384521ddac017a9d8faa87524ad8286)
- [mrrescue 1.02e](https://git.solus-project.com/packages/mrrescue/commit/?id=79932a412172d5e58c3e12fafabc3c000bcb7f9b)
- [openastro 1.1.48](https://git.solus-project.com/packages/openastro/commit/?id=300e59f55e12d6f99d8d4a8a08d62c84017e6cc7)
- [phoronix-test-suite 6.6.1](https://git.solus-project.com/packages/phoronix-test-suite/commit/?id=0a1a13a065b960f75097a7b04b344fd1728cfd3b)
- [painobar 2016.06.02](https://git.solus-project.com/packages/pianobar/commit/?id=43794b898ee12d62c47c5a035e29aa9c61927658)
- [pioneer 20161015](https://git.solus-project.com/packages/pioneer/commit/?id=86eae03a5d57d63f7845d3c97a88a6064fdc7d63)
- [ppsspp 1.3](https://git.solus-project.com/packages/ppsspp/commit/?id=2edb767fe00e2b5f33ac5146e742beb0c2d9ff5b)
- [shellcheck 0.4.5](https://git.solus-project.com/packages/shellcheck/commit/?id=533ef8eb2f1dc7f017054c5fe846a288ed52cdf1)
- [sienna 1.0c](https://git.solus-project.com/packages/sienna/commit/?id=9c9d707f9f554e41aef70fb1626987c853a7afd5)
- [urlscan 0.8.3](https://git.solus-project.com/packages/urlscan/commit/?id=1e0e8ca9e34cc6e3bc5628edef047c69869c19ed)
- [witchbvlast 0.7.5](https://git.solus-project.com/packages/witchblast/commit/?id=70591f45927bea8b52309626dee410a112324758)
- [xdotool 3.20160808.1](https://git.solus-project.com/packages/xdotool/commit/?id=847e06b654104aaeb8284254abf65eedba0a1028)
- [yubioath-desktop](https://git.solus-project.com/packages/yubioath-desktop/commit/?id=04847e477117b776b3c33e389ae4da8177cfb8b6)

**Updated**

- [abiword 3.0.2](https://git.solus-project.com/packages/abiword/commit/?id=dc668823e05fcd78117f16c536be1c3bc9a3a442)
- [armagetronad - Fix missing menu entry](https://git.solus-project.com/packages/armagetronad/commit/?id=140babf737b448a3cdafd0d99afe46d9590cf722)
- [bitcoin 0.13.1](https://git.solus-project.com/packages/bitcoin/commit/?id=6d40009a9c73e07ba9e8dcfa5e09a1e5b3f361b1)
- [blender 2.78a](https://git.solus-project.com/packages/blender/commit/?id=254dfeaff3182a255133239b67b326cbb8f46196)
- [bspwm 0.9.2](https://git.solus-project.com/packages/bspwm/commit/?id=11f91600a84036a785f078cb094892f802c33d01)
- [btrfs-progs 4.8.2](https://git.solus-project.com/packages/btrfs-progs/commit/?id=5111ba59addbad371396289c1d678baeb2b9ca72)
- [darktable 2.0.7](https://git.solus-project.com/packages/darktable/commit/?id=3ef905fc0cab2c39558ea132b63f1a0395264133)
- [docker 1.12.3](https://git.solus-project.com/packages/docker/commit/?id=978d9e61c2290571e51f55866d18e580dea4d330)
- [electrum 2.7.11](https://git.solus-project.com/packages/electrum/commit/?id=f4877e9fc8a6e14d0331737b44c0de6a676443b9)
- [evince - Enable PS (spectre) and XPS (gxps)](https://git.solus-project.com/packages/evince/commit/?id=fdfd88f3392f8873f3e58c7680a01c190d703ed0)
- [evopop-gtk-theme 2.0.4](https://git.solus-project.com/packages/evopop-gtk-theme/commit/?id=fae37dd5e96987d39749e5701741bccad35fd5ff)
- [flightgear - Changed component to games](https://git.solus-project.com/packages/flightgear/commit/?id=afb0e13b596e3b79737320c0b9c3a95f91d753df)
- [gajim 0.16.6 and add necessary python deps for security](https://git.solus-project.com/packages/gajim/commit/?id=ee1626eb17df861a2febb2eb855ae9cb90d8319a)
- [gnome-control-center: Enable the manpages](https://git.solus-project.com/packages/gnome-control-center/commit/?id=a860e4dee739791f91c9f1fa4462e5c13ce449a8)
- [gnuplot - Enable cairo for gretl](https://git.solus-project.com/packages/gnuplot/commit/?id=e571874851020a3e58d6dd3300d4bea6c83dd10a)
- [gnome-builder: Add missing python deps](https://git.solus-project.com/packages/gnome-builder/commit/?id=79118e4e5d3345e7f2e0b55283bcf6828ef94205)
- [golang 1.7.3](https://git.solus-project.com/packages/golang/commit/?id=2811a461725eed2abb6c899ccffc9104399b9d30)
- [hexchat 2.12.3](https://git.solus-project.com/packages/hexchat/commit/?id=69ebfd012084018210eda92ded850c0e95fa56a0)
- [hplip 3.16.9](https://git.solus-project.com/packages/hplip/commit/?id=2a7c71fe3b3777f3bfa676a85f2cb6030f530565)
- [kodi 17.0 beta 4](https://git.solus-project.com/packages/kodi/commit/?id=bb15640a2fc0a15becb83db2887ed3cf2aad5103)
- [lutris 0.4.1](https://git.solus-project.com/packages/lutris/commit/?id=f958ac37e517d28fa87808a8b33f789dffd6a0c5)
- [kernel 4.8.5 and enable Corsair devices](https://git.solus-project.com/packages/kernel/commit/?id=581dab1ed7f4310a02af48c3984eff8fa55b7d44)
- [mate-themes 2.20.13](https://git.solus-project.com/packages/mate-themes/commit/?id=df113b9de273b669fdc11d5ddce4d401b9a709a4)
- [mgba 0.5.1](https://git.solus-project.com/packages/mgba/commit/?id=913c4fd892197090ee5ece422f7d9dbd44419053)
- [n1 0.4.59](https://git.solus-project.com/packages/n1/commit/?id=8eee75e71aa06b7c83fa2167815de752c4dbc82e)
- [nim 0.15.2](https://git.solus-project.com/packages/nim/commit/?id=b933346f01a78b664f3569b9d053034a196e46a2)
- [nmap 7.31](https://git.solus-project.com/packages/nmap/commit/?id=068267f3198fe2966196a3b128bfe5dc66b903b7)
- [openjazz - Changed component to games.platformer](https://git.solus-project.com/packages/openjazz/commit/?id=a8fcbd48064106401cdc48cc3002d632f4b2120f)
- [peek - 0.8.0 and add missing rundeps](https://git.solus-project.com/packages/peek/commit/?id=09e7bffe671ae118661b97288f2f81109d0a60bb)
- [php - Enable PEAR](https://git.solus-project.com/packages/php/commit/?id=01936b38af7fa42cd2dc48e0628a98fe1852179c)
- [postgresql 9.5.5](https://git.solus-project.com/packages/postgresql/commit/?id=5bf5a53d8762569c0790a9037ee1b910839cfbbb)
- [sc-controller 0.3.1](https://git.solus-project.com/packages/sc-controller/commit/?id=dd6ecf31103327a7e104dc9fbfb503e1cf89ffed)
- [screenshot-applet - Fix rundeps goof](https://git.solus-project.com/packages/screenshot-applet/commit/?id=59acfcc6c2c6b059b9cab97d739774403d3ffbb0)
- [telegram 0.10.19](https://git.solus-project.com/packages/telegram/commit/?id=e4ddb2297915d1d9d60e949989e3fc80cf43a6f1)
- [transmission - Change to network.download component and use new tarball location](https://git.solus-project.com/packages/transmission/commit/?id=32cbc3b9b1fb003dd7ce33cce72a1d5f183fccb7)
- [tzdata 2016h](https://git.solus-project.com/packages/tzdata/commit/?id=b7d63d85e17573b10c510bbd180a05e73616052c)
- [vim 8.0.0054](https://git.solus-project.com/packages/vim/commit/?id=1129414047045eaf7c64c9adf712a3b2575610b1)
- [vsftpd - Added pam service name and seccomp sandbox setting.](https://git.solus-project.com/packages/vsftpd/commit/?id=bdd2e64696a9ba256e7e25ddefcdfe61911daa9a)
- [youtube-dl 2016.10.26](https://git.solus-project.com/packages/youtube-dl/commit/?id=824d8ea090e8f687e1fe17b7396f53225986da2c)
- ypkg:
  - [Sync with git fixes](https://git.solus-project.com/packages/ypkg/commit/?id=d49881da29a217803925307285dd127541c02cbe)
  - [AVX2: Drop -msse4](https://git.solus-project.com/packages/ypkg/commit/?id=cad2711cdb31208e41ff39ccb81bdfcce393efd3)
  - [Finalize the AVX2 implementation](https://git.solus-project.com/packages/ypkg/commit/?id=131d83424088b8876448ccbe1ee03e1834b9a05f)
- [zathura - Enabled PS with libspectre](https://git.solus-project.com/packages/zathura/commit/?id=564f5ec33e256350192e408386af1b2f7dbdd1f6)