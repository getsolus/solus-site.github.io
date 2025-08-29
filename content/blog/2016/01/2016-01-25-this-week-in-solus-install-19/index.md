+++
author = "joshua"
categories = [
"News",
"Packages",
"TWIS"
]
date =  "2016-01-25T07:35:20Z"
title = "This Week in Solus -- Install #19"
url = "/2016/01/25/this-week-in-solus-install-19/"
+++ 

Welcome to the 19th installation of This Week in Solus. 

Alongside our crunch and focus for 1.1, we've also been continuing our [campaign of bug crushing](https://plus.google.com/+Solus-Project/posts/6FPLh4WJCkf). 
We've crushed 22 bugs over the last week, ranging from long sitting bugs that have been resolved since the Budgie rewrite to recent ones that are related to inclusion of git-based patches for new software in the repo.

#### Bug Smash

Here is a highlight of bugs we've smashed. Naturally some have been resolved by actively pushing changes while others are simply outdated, such as pre-"Budgie rewrite" bugs.

- [A static image of the desktop after the computer gets suspended](https://bugs.solus-project.com/show_bug.cgi?id=250)
- [Close/minimize/maximize buttons are not working for google chrome](https://bugs.solus-project.com/show_bug.cgi?id=117)
- [Doesn`t see iPad](https://bugs.solus-project.com/show_bug.cgi?id=487)
- [Keyboard keys not working correctly](https://bugs.solus-project.com/show_bug.cgi?id=157)
- [New Package: jack-audio-connection-kit](https://bugs.solus-project.com/show_bug.cgi?id=279)
- [[PATCH] dia](https://bugs.solus-project.com/show_bug.cgi?id=503)
- [[Patch] Zeal](https://bugs.solus-project.com/show_bug.cgi?id=536)
- [Problem with emacs font](https://bugs.solus-project.com/show_bug.cgi?id=137)
- [[Request] LibreCAD](https://bugs.solus-project.com/show_bug.cgi?id=179)
- [[Request] Mixxx](https://bugs.solus-project.com/show_bug.cgi?id=330)
- [[Request] mono-complete](https://bugs.solus-project.com/show_bug.cgi?id=400)
- [[Request] Trelby](https://bugs.solus-project.com/show_bug.cgi?id=14)
- [Synergy v1.7.5](https://bugs.solus-project.com/show_bug.cgi?id=532)
- [VLC doesn't seem to quit right away.](https://bugs.solus-project.com/show_bug.cgi?id=413)
- [VLC fails to play file properly](https://bugs.solus-project.com/show_bug.cgi?id=243)
- [VLC is missing upnp functionality](https://bugs.solus-project.com/show_bug.cgi?id=529)

![relimg](http://i.giphy.com/nryJthsS2EKf6.gif)

#### Package Updates

This time, I'm giving you both highlights and the fire hose of updates (**not including rebuilds**). Why? Well I guess I'm just in that kind of mood today.

##### Highlights

- [brackets 1.6 ](https://git.solus-project.com/packages/brackets/commit/?id=5e862cc2b3ddb701936cca59f498ff02d5ab4c9e)        
- [cutegram 2.7.1](https://git.solus-project.com/packages/cutegram/commit/?id=edc66fa3188946208378a7c9e31d52a832acfbdb)        
- [dia 0.97.2](https://git.solus-project.com/packages/dia/commit/?id=7ae99cdc491b9654e493c726ff906816ceacf424)        
- [elixir 1.2.1](https://git.solus-project.com/packages/elixir/commit/?id=d8f4bfe4a5a5c28a0376960c21eedfd389f6cebd)        
- [enabling xft for font configuration issues](https://git.solus-project.com/packages/emacs/commit/?id=eb1c10c9c2e5ea44f73b463c5e7e1ad04879f0e2"emacs 24.5</a> and <a href="https://git.solus-project.com/packages/emacs/commit/)        
- [evolution 3.18.4](https://git.solus-project.com/packages/evolution/commit/?id=e3bf99eb296fb0d033f9241d2bd88ae891c52808)        
- [gedit 3.18.3](https://git.solus-project.com/packages/gedit/commit/?id=9da3db76a4cb3d2b0992642fbf259589e41dbf6c)        
- [jack-audio-connection-kit (JACK) 0.124.1](https://git.solus-project.com/packages/jack/commit/?id=d9cb09e7d974efe81dcd2a1086b8bab9aef3d089)        
- [kernel 4.4.0 LTS](https://git.solus-project.com/packages/kernel/commit/?id=a2fa067bec4f0b4393021fdec2bb411454745815)        
- [librecad 2.0.9](https://git.solus-project.com/packages/librecad/commit/?id=aed930d1d7ad9d2b4e8af07ea60ecb435579c0bf)        
- [mixxx 2.0](https://git.solus-project.com/packages/mixxx/commit/?id=5f5ee39eb9352a505eb8124b60853cbfb84a16b5)        
- [mpv 0.15.0](https://git.solus-project.com/packages/mpv/commit/?id=e67330c6949d76c1d07bab77742f1d3acc630c38)        
- [nim 0.13.0](https://git.solus-project.com/packages/nim/commit/?id=5cd9d40e6c43d59051300359ff0864a7e328e70e)        
- [nodejs 5.5.0](https://git.solus-project.com/packages/nodejs/commit/?id=8137178ca8b2349dcf4842f38c122687193c8499)        
- [peerunity 0.13-rc1](https://git.solus-project.com/packages/peerunity/commit/?id=231bd6fb1cdd19cebe09e5b25b152685490964d9)        
- [qbittorrent 3.3.3](https://git.solus-project.com/packages/qbittorrent/commit/?id=c359ff3d590eff42ee1fad82ab940285b214c925)        
- [qtox 1.2.4](https://git.solus-project.com/packages/qtox/commit/?id=2f8d6e7790ee14c141a8e746319c835fa3c72765)        
- [rust 1.6](https://git.solus-project.com/packages/rust/commit/?id=8ad2c4e2d6b49a03cda69516b34c4af333b07434)        
- [smplayer 16.1.0](https://git.solus-project.com/packages/smplayer/commit/?id=343116b9496c718d47479baf3be88b291afed8a6)        
- [subversion 1.9.3](https://git.solus-project.com/packages/subversion/commit/?id=8d84391aa9cb53896a23bc074df16123ee38b49e)        
- [trelby 2.2](https://git.solus-project.com/packages/trelby/commit/?id=4c934f79dc7d5ad0fe6ad8f272caecef2bfa3bc9)        
- [youtube-dl 2016.01.23](https://git.solus-project.com/packages/youtube-dl/commit/?id=2160d85d0e5111bbfcfa3acf4349db77291dcc0e)

##### Fire hose

New: 

- [apr 1.5.2](https://git.solus-project.com/packages/apr/commit/?id=1d825183833990860e6e5dabfab2eecdab9cfd29)            
- [apr-util 1.5.4](https://git.solus-project.com/packages/apr-util/commit/?id=4d220b30eb327cba9b85838697ae27a50a381c70)            
- [cutegram 2.7.1](https://git.solus-project.com/packages/cutegram/commit/?id=edc66fa3188946208378a7c9e31d52a832acfbdb)            
- [dia 0.97.2](https://git.solus-project.com/packages/dia/commit/?id=7ae99cdc491b9654e493c726ff906816ceacf424)            
- [jack-audio-connection-kit (JACK) 0.124.1](https://git.solus-project.com/packages/jack/commit/?id=d9cb09e7d974efe81dcd2a1086b8bab9aef3d089)            
- [lapack 3.6](https://git.solus-project.com/packages/lapack/commit/?id=378476cc72d30f4549a04e641fd3f4099b6b631f)            
- [librecad 2.0.9](https://git.solus-project.com/packages/librecad/commit/?id=aed930d1d7ad9d2b4e8af07ea60ecb435579c0bf)            
- [libunwind 1.1](https://git.solus-project.com/packages/libunwind/commit/?id=e18da0db245c5619b7bba9059abc97b839608a60)            
- [libupnp 1.6.19](https://git.solus-project.com/packages/libupnp/commit/?id=55575e189b671118c52d67b2567466badfc9a48f)            
- [mixxx 2.0](https://git.solus-project.com/packages/mixxx/commit/?id=5f5ee39eb9352a505eb8124b60853cbfb84a16b5)            
- [peerunity 0.13-rc1](https://git.solus-project.com/packages/peerunity/commit/?id=231bd6fb1cdd19cebe09e5b25b152685490964d9)            
- [perl-net-http 6.09](https://git.solus-project.com/packages/perl-net-http/commit/?id=ffbc45edb17ff549b5f20e065606fba9e3c92f9b)            
- [rygel 0.28.2](https://git.solus-project.com/packages/rygel/commit/?id=ac178698a1286064d40abc6e005f1699917c1629)            
- [serf 1.3.8](https://git.solus-project.com/packages/serf/commit/?id=115e92db34f9f37448680eccc460a2486fad45a8)            
- [subversion 1.9.3](https://git.solus-project.com/packages/subversion/commit/?id=8d84391aa9cb53896a23bc074df16123ee38b49e)            
- [suitesparse 4.4.6](https://git.solus-project.com/packages/suitesparse/commit/?id=cd64ca964c81570a0bed0f46cf8ef94578dbc0fe)            
- [sqlcipher 3.3.1](https://git.solus-project.com/packages/sqlcipher/commit/?id=0d7c1b93168c14433692aff15de5af91e0f26aae)            
- [telegramqml 0.9.2](https://git.solus-project.com/packages/telegramqml/commit/?id=16197fc585f1878cfb0183a0f8e4535e0457417b)            
- [trelby 2.2](https://git.solus-project.com/packages/trelby/commit/?id=4c934f79dc7d5ad0fe6ad8f272caecef2bfa3bc9)            
- [wxPython2 2.18.12.1](https://git.solus-project.com/packages/wxPython2/commit/?id=73a48cbe1f63f99ef962a303c8d899b91fede5f3)            
- [zeal 0.2.1](https://git.solus-project.com/packages/zeal/commit/?id=f4e60d38e1f49288e324d779a97fd41a886e8189)

Updated: 

- [brackets 1.6 ](https://git.solus-project.com/packages/brackets/commit/?id=5e862cc2b3ddb701936cca59f498ff02d5ab4c9e)            
- [elixir 1.2.1](https://git.solus-project.com/packages/elixir/commit/?id=d8f4bfe4a5a5c28a0376960c21eedfd389f6cebd)            
- [enabling xft for font configuration issues](https://git.solus-project.com/packages/emacs/commit/?id=eb1c10c9c2e5ea44f73b463c5e7e1ad04879f0e2"emacs 24.5</a> and <a href="https://git.solus-project.com/packages/emacs/commit/)            
- [evolution-data-server 3.18.4](https://git.solus-project.com/packages/evolution-data-server/commit/?id=126399a96c9ce358be93d3c6b6c7d9eb3f49aa9c)            
- [evolution 3.18.4](https://git.solus-project.com/packages/evolution/commit/?id=e3bf99eb296fb0d033f9241d2bd88ae891c52808)            
- [gedit 3.18.3](https://git.solus-project.com/packages/gedit/commit/?id=9da3db76a4cb3d2b0992642fbf259589e41dbf6c)            
- [gnome-bluetooth 3.18.2](https://git.solus-project.com/packages/gnome-bluetooth/commit/?id=520583848714b2dae74361090c418e2b98487198)            
- [gnupg 2.0.29](https://git.solus-project.com/packages/gnupg/commit/?id=0adf9384e87ec86fd9b1c701f7d90cbd4351f6e2)            
- [kernel 4.4.0 LTS](https://git.solus-project.com/packages/kernel/commit/?id=a2fa067bec4f0b4393021fdec2bb411454745815)            
- [mono 4.2.1](https://git.solus-project.com/packages/mono/commit/?id=0e617aa3393b77c3bba876371dbbc0a42f217e2e)            
- [mpv 0.15.0](https://git.solus-project.com/packages/mpv/commit/?id=e67330c6949d76c1d07bab77742f1d3acc630c38)            
- [mutt 1.5.24](https://git.solus-project.com/packages/mutt/commit/?id=dc6023874ba171553f9dedd703d7552cdd865495)            
- [nano 2.5.1](https://git.solus-project.com/packages/nano/commit/?id=3aa53784695d0e591cc7ee9332a2853a413fa90f)            
- [nim 0.13.0](https://git.solus-project.com/packages/nim/commit/?id=5cd9d40e6c43d59051300359ff0864a7e328e70e)            
- [nodejs 5.5.0](https://git.solus-project.com/packages/nodejs/commit/?id=8137178ca8b2349dcf4842f38c122687193c8499)            
- [powertop 2.8](https://git.solus-project.com/packages/powertop/commit/?id=011a4f93c0f9b3bc8512543a328eca54ccca712a)            
- [qbittorrent 3.3.3](https://git.solus-project.com/packages/qbittorrent/commit/?id=c359ff3d590eff42ee1fad82ab940285b214c925)            
- [qt4 -- sqlite3 support added.](https://git.solus-project.com/packages/qt4/commit/?id=591e1a463e58224476f84ac98cd6051122bd799c)            
- [qtox 1.2.4](https://git.solus-project.com/packages/qtox/commit/?id=2f8d6e7790ee14c141a8e746319c835fa3c72765)            
- [redshift 1.11](https://git.solus-project.com/packages/redshift/commit/?id=f106b0d556adb7283d8de157ff0ec295026fd3b7)            
- [rust 1.6](https://git.solus-project.com/packages/rust/commit/?id=8ad2c4e2d6b49a03cda69516b34c4af333b07434)            
- [smplayer 16.1.0](https://git.solus-project.com/packages/smplayer/commit/?id=343116b9496c718d47479baf3be88b291afed8a6)            
- [stellarium 0.14.2](https://git.solus-project.com/packages/stellarium/commit/?id=e3a851efaa31d89f20810b7c24c0958ca15bdc41)            
- [synergy 1.7.5](https://git.solus-project.com/packages/synergy/commit/?id=36d48c498e45b883f89265465165288d9bc7b930)            
- [systemd -- Enabled acl, again.](https://git.solus-project.com/packages/systemd/commit/?id=c2ab6310b546942a4a483a80f28f24802cd00f36)            
- [taglib 1.1.0](https://git.solus-project.com/packages/taglib/commit/?id=1adb918c0386d248a23121cd023e142fe60b15be)            
- [toxcore 3697](https://git.solus-project.com/packages/toxcore/commit/?id=7de1e0e45902c3e88b7ac92a16cae5d4073a5b9d)            
- [vlc -- Build with upnp support.](https://git.solus-project.com/packages/vlc/commit/?id=b1ada88b0dc3aa3251dcf2684d6b3d4e388d7842)            
- [youtube-dl 2016.01.23](https://git.solus-project.com/packages/youtube-dl/commit/?id=2160d85d0e5111bbfcfa3acf4349db77291dcc0e)
          