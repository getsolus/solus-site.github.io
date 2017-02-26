+++
author = "joshua"
categories = [
"News",
"Packages",
"TWIS"
]
date =  "2016-08-31T09:15:47Z"
title = "'This Week in Solus -- Install #34'"
url = "/2016/08/31/this-week-in-solus-install-34/"
+++
Welcome to the 34th installation of This Week in Solus. 

{{< altimg "https://i.giphy.com/OCu7zWojqFA1W.gif" >}}

#### Creativity is getting turned up a notch

Let's start out with the couple applications that have landed as of last week, that have been long-standing requested items within Solus, however due do them requiring varies bits of KDE Frameworks 5, they were frankly set off to the side awaiting 
someone that enjoys diving down rabbit holes in search of adventure.

That's right folks, we have **Kdenlive and Krita**. Thanks to the hard work of community member Peter a.k.a sunnyflunk, you're now able to unleash more of your creativity or enjoy editing on unarguably one of the best video editors on Linux.

{{< altimg "2016/08/Screenshot-from-2016-08-25-17-52-00.png" >}}

Kdenlive is currently being put through its paces and I've ensured that we enable H.265 under Solus (**enabling it in both ffmpeg and gstreamer-1.0-plugins-bad**) with 8-bit, 10-bit, and 12-bit color depths. So far some editing and effects have been 
tested as well as exporting in WebM (VP9), H.264 and H.265. We also ship breeze-icons to ensure iconography is utilized in Kdenlive. Next step is to make these applications look sexier with GTK.

#### GAMES!

{{< altimg "2016/08/all-the-games.jpg" >}}

Alongside our Steam with a native runtime and Lutris, we have a fantastic selection of open source games, and they've only been expanding with the hard work of community member Bryan, a.k.a. DataDrake. After a few Game-Fests, we're now providing a 
broader range of arcade, adventure / RPG, and racing games!

In terms of arcade games, we now have:

- Dustrac -- A tile-based, cross-platform 2D racing game
- Endless Sky -- A sandbox-style space exploration game similar to Elite, Escape Velocity, or Star Control.
- OpenJazz -- Jazz Jackrabbit reborn on Linux.

{{< altimg "2016/08/endless-sky.png" >}}

In terms of adventure / RPG games, we now have:

- Angband -- Angband is a free, single-player dungeon exploration game
- Zelda -- Mystery of Solarus XD (**This is a parody of Mystery of Solarus DX)**
- Zelda -- Return of the Hylian SE -- a remake of the original Zelda Return of the Hylian

#### i3

{{< altimg "2016/08/2016-08-31-110305_1366x768_scrot.png" >}}

Traditionally, Solus has followed a single-desktop policy. This has allowed us, over time, to continuously refine our base system and practices, without having to make compromise. We're now at a point where our core system has a very distinct and 
uncompromising shape. It must be remembered that as a whole, we build a complete Linux-based operating system, and as such our goals encompass much more than **just** the frontend.

Of late, it is these goals that have become more and more attractive to users of other Linux distributions, who have stated that their blocker in using Solus is their requirement of a power-user orientated UI. Budgie, on the other hand, tries to take a more 
simplistic and user-friendly approach to desktop management. We don't believe in a one-size-fits-all approach at Solus, a core part of the reason why Solus isn't a generic OS available for multiple architectures or verticals. We focus on the desktop, it is up 
to the user how and with what they make that desktop experience. As always, we continue to provide our **sane defaults**, coupled with a sane architecture and project-specific goals, whilst retaining the users freedom to ensure they have the best possible 
desktop experience, for them, period.

This week we landed the tiling window manager i3, specifically the i3-gaps fork, to provide a power-user oriented user experience, and out-of-the-box our i3 provides:

- Integration of function keys, including: 
 - Brightness controls which utilize xbacklight
 - Media playback controls which utilize playerctl
 - Print (typically PrntScrn) which utilizes scrot.
 - Volume controls which utilize alsactl
- Shortcut for quickly locking your screen. This can be done using $mod+Shift+S and triggers i3lock.
- Usage of gaps (as shown in the screenshot above) including window titles being automatically hidden.

Note that all the above is opt-in. If i3-config-wizard sees that you already have provided i3 configuration, it won't prompt you to utilize ours, and you can always change to it later!

We've also landed lxappearance so you can easily change the GTK theming and further integration improvements are planned in the future.

#### Package Highlights

Here is a highlight of package updates (excluding items such as KDE Frameworks 5):

New:

- [ack 2.14](https://git.solus-project.com/packages/ack/commit/?id=162933b6f1e9dafba81b8a321080d91cd9b11052)
- [angband 4.0.5](https://git.solus-project.com/packages/angband/commit/?id=68259b95d7ca7aab01d2e1d9184ea44d96892d2f)
- [apache-ant 1.9.7](https://git.solus-project.com/packages/apache-ant/commit/?id=79ebee7daa3b4116dc545e5f1c84dc2a376836a6)
- [asciinema 1.3.0](https://git.solus-project.com/packages/asciinema/commit/?id=94300136374e41355ac70de875f012fd9ee2f365)
- [asunder 2.7](https://git.solus-project.com/packages/asunder/commit/?id=73f57882a3366911e1a0c6f934f936ee000c55fa)
- [breeze-icons 5.25.0](https://git.solus-project.com/packages/breeze-icons/commit/?id=be1a518bae78872c2adc1e611f9480ef6263799f)
- [cherrytree 0.37.3](https://git.solus-project.com/packages/cherrytree/commit/?id=1a2ae024e0abec7600235a8ed6555a435e0cc4ec)
- [dmenu 4.6](https://git.solus-project.com/packages/dmenu/commit/?id=80bbf5c220c73a136e1dffeca8cd447337dccd95)
- [dosbox 0.74](https://git.solus-project.com/packages/dosbox/commit/?id=1bc0a1d53e8a2dc7a0a8d99c99c69ee6592dc81d)
- [dustrac 1.11.0](https://git.solus-project.com/packages/dustrac/commit/?id=0de022edec6cfd37877186b90f260007f75b8c95)
- [electrum 2.6.4](https://github.com/Airblader/i3)
- [endless-sky 0.9.2](https://git.solus-project.com/packages/endless-sky/commit/?id=72a2fe1156671420548a059ac3acef9137988503)
- [font-fira-ttf 4.202](https://git.solus-project.com/packages/font-fira-ttf/commit/?id=90fb231e8d02acb1ee602a304e60261cda0f35db)
- [gaupol 0.92](https://git.solus-project.com/packages/gaupol/commit/?id=b90d6f56789aa6f2e159b5774f148c2a6912405f)
- [geos 3.5.0](https://git.solus-project.com/packages/geos/commit/?id=b525d0812cfa53e5a884c50b50be6a8030a6640c)
- [dleyna-renderer 0.5.0](https://git.solus-project.com/packages/dleyna-renderer/commit/?id=e542b3cb621342641d573d356ac2f329f7a850a1)
- [gcompris 15.10](https://git.solus-project.com/packages/gcompris/commit/?id=86b752c9b8fd050a317fdd44a28bfbcdd7871cc6)
- [git-cola 2.8](https://git.solus-project.com/packages/git-cola/commit/?id=cd10e63dd3f2788f16fd1fa0d80fbc0079a391e1)
- [gnome-dictionary 3.20.0](https://git.solus-project.com/packages/gnome-dictionary/commit/?id=9f4ed499834cfc608cff897472a6458062858cca)
- [gnome-logs 3.20.1](https://git.solus-project.com/packages/gnome-logs/commit/?id=55ecefe896c08533ace0411b026b89596c74371c)
- [gnome-pie 0.6.9](https://git.solus-project.com/packages/gnome-pie/commit/?id=30679b6b8d45dffc20926d1a3a97957b2c1b4534)
- [gnome-sound-recorder 3.20.2](https://git.solus-project.com/packages/gnome-sound-recorder/commit/?id=5aeb324741f5d6ed32c1d01d765ab3eb58c5fb07)
- [hugo 0.16.0](https://git.solus-project.com/packages/hugo/commit/?id=4bd06a3adb4f9c6925f9f318cd58906da3edfbf8)
- [i3 4.12](https://git.solus-project.com/packages/i3/)
- [i3lock 2.8](https://git.solus-project.com/packages/i3lock/commit/?id=618b17b6bf691c9acd764dab88dfd484c58a59d5)
- [i3status 2.1](https://git.solus-project.com/packages/i3status/commit/?id=2bd513408be96ba001227d0df1bd7c01947ab5b0)
- [kdenlive 16.08.0](https://git.solus-project.com/packages/kdenlive/commit/?id=a8ba96f087a8f712acf6487f8181a0a5de2d7240)
- [klavaro 3.02](https://git.solus-project.com/packages/klavaro/commit/?id=84f1af033d22e9246a7c6f95f081a90940dfaeb0)
- [krita 3.0](https://git.solus-project.com/packages/krita/commit/?id=34207a727abe600f82f65e5d620cf9e145189e28)
- [lxappearance 0.6.2](https://git.solus-project.com/packages/lxappearance/commit/?id=e6a1b76e4e030e7a852ae2d4644352837ddcf2fa)
- [openjazz 160214](https://git.solus-project.com/packages/openjazz/commit/?id=be0cb862ecfdf8c70723eb54d115fa7a3c801824)
- [playerctl 0.5.0](https://git.solus-project.com/packages/playerctl/commit/?id=b91664a6164c6349a471de86bb127c649e8b2e5f)
- [pspp 0.10.2](https://git.solus-project.com/packages/pspp/commit/?id=b04f219b0b07d9d2d2ecd5feb0574944c4212ad5)
- [qgis 2.16.1](https://git.solus-project.com/packages/qgis/commit/?id=c972614835615b4d05f3f4611113c4fe0e79c533)
- [qt-creator 4.0.3](https://git.solus-project.com/packages/qt-creator/commit/?id=952dca1ed04203b8811728a965e35b314f65ac69)
- [ranger 1.7.2](https://git.solus-project.com/packages/ranger/commit/?id=f8a71eed51c6ab0b925cd16c3dadf53e87f935eb)
- [sc-controller 0.2.16](https://git.solus-project.com/packages/sc-controller/commit/?id=a5e45f7c5cdbde0157cec8662169673b609d6bed)
- [scipy 0.18.0](https://git.solus-project.com/packages/scipy/commit/?id=f9ace02b6d412dc373510f8896f0b5d6a576b1f1)
- [sqlitebrowser 3.8.0](https://git.solus-project.com/packages/sqlitebrowser/commit/?id=33a22623f1a94b87bfab3d345097164557c7c0d5)
- [solarus-quest-editor](https://git.solus-project.com/packages/solarus-quest-editor/commit/?id=56bbd9cc0b9ab88e1bab4bb24b1094cdba669f1a)
- [telegram 0.10.1](https://git.solus-project.com/packages/telegram/commit/?id=3600ef3c17f641df83756993077886dfbdf9eb66)
- [trackma 0.6.1](https://git.solus-project.com/packages/trackma/commit/?id=1e5ccdbb9766901e80df6b61326eb111c9e6847c)
- [tuxmath 2.0.3](https://git.solus-project.com/packages/tuxmath/commit/?id=60783608fac791161cdc70bdc8d65fb1f30965cb)
- [tuxpaint 0.9.22](https://git.solus-project.com/packages/tuxpaint/commit/?id=436d1d9a28744b34849f7e5a60d17fd72dc25b94)
- [vorbis-tools 1.4.0](https://git.solus-project.com/packages/vorbis-tools/commit/?id=4c5601573a21f47f4068a278a110ada899b3f1b4)
- [x265 2.0](https://git.solus-project.com/packages/x265/commit/?id=6f86cae255d982ed94904edc3a793e03bb4b7ead)
- [xbacklight 1.2.1](https://git.solus-project.com/packages/xbacklight/commit/?id=d4be16840e35eb4af634620f1b2a72cb1c820f9c)
- [xboxdrv 0.8.8](https://git.solus-project.com/packages/xboxdrv/commit/?id=0b4bfae49023dadead5fac9f684bb720944226fd)
- [zelda-roth-se 1.1.0](https://git.solus-project.com/packages/zelda-roth-se/commit/?id=83d4eb87c24c48e475265af710232722ab85c807)
- [zstd 0.6.2](https://git.solus-project.com/packages/zstd/commit/?id=5ac350ea951ea9cfd4f7efc4d6e588cdb47d12e8)
- [zsdx 1.11.0](https://git.solus-project.com/packages/zsdx/commit/?id=d85c90bc4506e6de67077ee512e79ae92a675019)
- [zsxd 1.11.0](https://git.solus-project.com/packages/zsxd/commit/?id=f27106544db311655b54761050c65eaaca755fb8)

Updated:

- [atom 1.9.9](https://git.solus-project.com/packages/atom/commit/?id=1a171610346022a2601d462ee6bd28961a25492c)
- [bitcoin 0.13.0](https://git.solus-project.com/packages/bitcoin/commit/?id=ebe53693f60cba3c57f86f5e95451c531d4c94a6)
- [bleachbit 1.12](https://git.solus-project.com/packages/bleachbit/commit/?id=c7c43c27c104b1ca5e4a35a60df0643373f0faca)
- [calibre 2.65.1](https://git.solus-project.com/packages/calibre/commit/?id=dc3ea5132dc74e4c8ce756ad0be855427afd6734)
- [feedreader 1.6.1](https://git.solus-project.com/packages/feedreader/commit/?id=50777c87fbb95e4192feb92dbc9e4ab599f266a2)
- [ffmpeg: Rebuild with x265](https://git.solus-project.com/packages/ffmpeg/commit/?id=ff31ecafb1e318e8ae81ccc29e20e0cd8e4a50fc)
- [flash-player-nonfree 11.2.202.632](https://git.solus-project.com/packages/flash-player-nonfree/commit/?id=0f4dab31cf7b8e5b1eef7e668a93a6f91ab396a6)
- [filezilla 3.21.0](https://git.solus-project.com/packages/filezilla/commit/?id=db02efb05eb954e89af71e78d4a7fd785827ac5f)
- firefox: 
 - [Update to 48.0.2](https://git.solus-project.com/packages/firefox/commit/?id=b204dfa5c6285d173b9a6d409989a5f49afce4b7)
 - [Disable libevent in config.](https://git.solus-project.com/packages/firefox/commit/?id=2cfd33c313d37c641ed8a30fb3fc17664df0d05e)
- [fotoxx 16.08.1](https://git.solus-project.com/packages/fotoxx/commit/?id=ec429167b0342905875b47004d4e57619a6cc992)
- [gegl3: Enable jasper / raw support for GNOME Photos](https://git.solus-project.com/packages/gegl3/commit/?id=b98cfba75865f7eca3a476ef156040982aab9dd2)
- [ghostwriter 1.4.2](https://git.solus-project.com/packages/ghostwriter/commit/?id=faafd901eccd43cb967514402cb470b8f8af0ff8)
- [glfw 3.2.1](https://git.solus-project.com/packages/glfw/commit/?id=7b2999275e3e019e95fa00e6101a827cb015542c)
- [gjs 1.45.4](https://git.solus-project.com/packages/gjs/commit/?id=d74c880a7b21e1d580e14e20e4a2c672563b8789)
- [gstreamer-1.0-plugins-bad: Drop component.xml, rebuild with x265](https://git.solus-project.com/packages/gstreamer-1.0-plugins-bad/commit/?id=ec71f8003a94ab5343567420e21e490d8e145e5c)
- [htop 2.0.2](https://git.solus-project.com/packages/htop/commit/?id=295b6d2e65908c6f67f1c0c6e5a695be40524cd8)
- [kernel 4.7.2 and raise NCPU to 48](https://git.solus-project.com/packages/kernel/commit/?id=17835134f4cf816bb7485644457eb35b2ee9f5c8)
- [kodi 17.0b1](https://git.solus-project.com/packages/kodi/commit/?id=c50382f66414ec2927a7e7a2cb80416f1b676ef6)
- [lutris 0.3.8](https://git.solus-project.com/packages/lutris/commit/?id=9cf3a1dbf17c0d89cddf42428f4a62bd56f12b63)
- [lyx 2.2.1: Enable hunspell and use system boost](https://git.solus-project.com/packages/lyx/commit/?id=93e11a6fc9a6ab89b92cfdcd3130832765b2ab99)
- [mpv 0.20.0](https://git.solus-project.com/packages/mpv/commit/?id=b7e2fbc2dce82a2184f34a6597ec4d5d8781bcdf)
- [mutt 1.7.0](https://git.solus-project.com/packages/mutt/commit/?id=73576c9658d5e154ac484d45daa8d8d62e6aecd9)
- [nautilus: Introduce upstream patch for fixing icon chooser dialog](https://git.solus-project.com/packages/nautilus/commit/?id=02eb25964cb645b1e7ba31c901e4b430f693f507)
- [obs-studio: Ensure we declare the OBS version, since that shows in the title](https://git.solus-project.com/packages/obs-studio/commit/?id=cc084e4cc1e818f8286737f281a9361e8af42773)
- [openjdk-8: Complete the bootstrap with a native clean build](https://git.solus-project.com/packages/openjdk-8/commit/?id=4f3a7679c4af1d7acea240f8f6b4a9de52d985f2)
- [php 7.0.10](https://git.solus-project.com/packages/php/commit/?id=18d72eeab5b240416e0a781045d5ce4e47101669)
- [polari 3.20.3](https://git.solus-project.com/packages/polari/commit/?id=cf00e350c67a592b28ae6aa48603e741ac605859)
- [quassel: Enable SSL, add WebKit support via Qt5WebKit, drop unnecessary zlib pkgconfig.](https://git.solus-project.com/packages/quassel/commit/?id=0709929a6fbff402217698d3082dac5321d91c8a)
- [rawtherapee: Use system theme by default](https://git.solus-project.com/packages/rawtherapee/commit/?id=b94f9f0268688dd68a621b1c866a86ad82fdd8fd)
- [rhythmbox 3.4](https://git.solus-project.com/packages/rhythmbox/commit/?id=603820d7ea2d885c33f90b823e428fd0fad7ee5d)
- [rust 1.11.0](https://git.solus-project.com/packages/rust/commit/?id=ffc17e7e87d3b17463d395c4bdf1ea47835f75d1)
- [shotwell 0.23.5](https://git.solus-project.com/packages/shotwell/commit/?id=73b77f9dee04fca616230001948c56b705a5a637)
- tlp: 
 - [Update to 0.9, disable default of USB_AUTOSUSPEND=1](https://git.solus-project.com/packages/tlp/commit/?id=3cb29860f842de41862df98a9ac604850e6e5244)
 - [Disable audio power saving on battery](https://git.solus-project.com/packages/tlp/commit/?id=df4f895b340c12ac71723c81ad3a122dbba1b30d)
- wine: 
 - [Convert to a full WoW64 build](https://git.solus-project.com/packages/wine/commit/?id=be45e5cf9810458d71afcce5b5b64e262239b02f)
 - [Update to WINE staging: 1.9.17](https://git.solus-project.com/packages/wine/commit/?id=2e6a34148a9bd2b8a424a727c232ae2784a0043b)
 - [youtube-dl 2016.08.28](https://git.solus-project.com/packages/youtube-dl/commit/?id=4d0bd317bcb0bf23951df28d09c6fc2900afae8c)