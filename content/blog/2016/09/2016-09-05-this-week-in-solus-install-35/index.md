+++
author = "joshua"
categories = [
"News",
"Packages",
"Plans",
"TWIS"
]
date =  "2016-09-05T23:18:02Z"
title = "This Week in Solus-- Install #35"
url = "/2016/09/05/this-week-in-solus-install-35/"
+++ 
Welcome to the 35th installation of This Week in Solus! 

#### Have you found your Sol-MATE?

![relimg](Screenshot-from-2016-09-03-21-27-18.png)

On Friday we were happy to start our Solus Mystery Hackfest with a big announcement that builds upon the emphasizing we did in the previous This Week in Solus that we don’t believe in one-size-fits-all approaches. This announcement was that 
**we will be providing MATE** as an option for your desktop experience, as well as **shipping a Solus MATE Edition** alongside our primary, Budgie image, both of which are expected to next be **available for Solus 1.2.1**.

So why was MATE chosen? To summarize a few points mentioned throughout the Hackfests, as well as Sundays with Solus:

- Not only is MATE already based on GTK, but we'll be shipping a full MATE experience enabled with GTK3. Compared to other desktop environments, this naturally meant less work towards integration, which has in fact been fairly simple.
- Like Budgie, MATE is a forward-looking desktop environment. MATE desires to maintain a traditional user experience but leverages modern technologies to accomplish these goals.
- MATE provides a more traditional desktop experience than Budgie, which has been a blocker for a number of users wanting to make the Solus switch to take advantage of the operating system itself.

Where are we with delivering MATE currently?

- Our MATE desktop is almost completely packaged barring some minor items, and the default configuration is closing on completion, by way of mate-desktop-branding. The remaining items include setting the default panel layout and selecting a 
keyboard-driven menu applet, as well as fleshing out the selection of software in the default MATE ISO.
- Ikey is currently working on an improved notification style with [mate-notification-theme-solus](https://github.com/solus-project/mate-notification-theme-solus).

Naturally, this opened the door for inquiries into the support of other desktop environments, such as Pantheon, XFCE, and so-forth. To summarize the talking points raised in our latest Sundays with Solus:

- Cinnamon has typically been slow to integrate upstream changes and is extensively targeted toward / tied to the Linux Mint project
- Pantheon as an upstream project have been slow to integrate changes from downstream contributors, in addition to being heavily tied to the Launchpad infrastructure. We don't feel confident in being able to provide a properly integrated Pantheon 
experience given prior experiences with trivial items such as Pantheon Terminal. However, the Plank and Pantheon Terminal applications will still be provided and supported within Solus due to their popularity with our users.
- Plasma: Core Team is primarily focused on providing GTK experiences and frankly lack interest in packaging, providing, maintaining, and integrating Plasma.
- Unity is heavily tied and integrated with Ubuntu. Additionally, we have no plans on support Mir and convergence is out of the scope of Solus' goals.
- XFCE development and progression doesn't match the velocity of Solus nor do we view XFCE as providing functionality that can't otherwise be achieved with Budgie or MATE.

We hope this clarifies our position!

#### i3: I got too much love in all these tiles!

![relimg](i3.png)

The improvements and integration of i3 in Solus has continued throughout last week, such as (**but not limited to**):

- A volume change sound is now played when you change the volume via keyboard keys.
- Disabled networking sections since they are largely redundant given nm-applet, which we now ensure launches alongside i3 so you can more easily configure your networking via the i3 bar.
- Further default styling has been implemented, such as:
  - Changed tztime to have date after time.
  - Changed workspacing colors easier to differentiate between focused and unfocused windows, workspaces, and so forth. 
  - This is merely commented out so easy to enable for others and ourselves in future if needed.
  - Daniel a.k.a crash_ from our community provided configuration settings to ensure preference, popup, and task dialog windows are floating.
  - Desaturated i3status coloring to better complement the Arc-based i3 bar background.
  - Increased font size from 9pt to 10pt for slightly improved readability.
  - Moved the panel to the top.
  - Tweaked volume section.
  - Introduced more elaborate battery rendering but less verbose percentage values and time info (hide seconds).

#### Further 3rd-Party Inclusions

Bryan a.k.a DataDrake has landed a multitude of software into our 3rd-Party, primarily revolving around providing a larger set of developer tooling, namely from JetBrains, such as:

- CLion
- Datagrip
- IDEA
- PHPStorm
- Pycharm
- RubyMine
- WebStorm

You can install all of these now via the more extensive [3rd-Party wiki page](https://wiki.solus-project.com/3rdParty).

#### Hackfest and Sundays with Solus Videos

#### Packaging Highlights

Here is a highlight of package inclusions and updates.

New: 

- [atril 1.14.2](https://git.solus-project.com/packages/atril/commit/?id=397ea18e56353e91286fe8dbc2e00b1b8ea70203)
- [bspwm 0.9.1](https://git.solus-project.com/packages/bspwm/commit/?id=4b1578c9f8e15fbca28d8e73600ec110245f9fc9)
- [caja 1.14.2](https://git.solus-project.com/packages/caja/commit/?id=bc49a0b06b56fe1b09d5aa682e352eec031ce979)
- [caja-dropbox 1.14.0](https://git.solus-project.com/packages/caja-dropbox/commit/?id=8438b6d070830004140ba95de28ba4203421b720)
- [dolphin-emu 5](https://git.solus-project.com/packages/dolphin-emu/commit/?id=8d3331e5150d2c0fd75763d3cb3afa7481c98118)
- [engrampa 1.14.1](https://git.solus-project.com/packages/engrampa/commit/?id=07bb2b45792816f0a3afa9bc5559d7293e28c338)
- [eom 1.14.2](https://git.solus-project.com/packages/eom/commit/?id=066693f3bada6498c46a2422d7868270af012365)
- [gnome-pomodoro 0.12.2](https://git.solus-project.com/packages/gnome-pomodoro/commit/?id=7886b442d8cc677fdcd43e5d0fe8b017879f4b0f)
- [gnome-sushi 3.20.0](https://git.solus-project.com/packages/gnome-sushi/commit/?id=ba72350ea6b5c7c8ed622e01d41b35c1bf064514)
- [gtest 1.8.0](https://git.solus-project.com/packages/gtest/commit/?id=0f14b49f4a8c02361c38e2082a28c4abf80aea71)
- [hunspell-sr 20130715](https://git.solus-project.com/packages/hunspell-sr/commit/?id=54e4d3d040a01b7a338414f2a2f7ff4c3bb2ea84)
- [i3blocks 1.4](https://git.solus-project.com/packages/i3blocks/commit/?id=2c081d36d7e9a7e485e7bc7c70530ad5113f8652)
- [ipscan 3.4.2](https://git.solus-project.com/packages/ipscan/commit/?id=29ff8fe54f287b21191629c936301c57e5f48b21)
- [lucene++ 3.0.7](https://git.solus-project.com/packages/lucene++/commit/?id=540c6cb9d4c0c34f6c930ace5cfe1d32fc459d3b)
- [marco 1.14.2](https://git.solus-project.com/packages/marco/commit/?id=aefefe20f8d624a6965144a5bf96f2fe75e75e6a)
- [mate-applets 1.14.1](https://git.solus-project.com/packages/mate-applets/commit/?id=351e858ae0474f437231899e765a7bb2ce42e49d)
- [mate-backgrounds 1.14.0](https://git.solus-project.com/packages/mate-backgrounds/commit/?id=3188b00d55c625ebf2a9796805775581727e637e)
- [mate-control-center 1.14.1](https://git.solus-project.com/packages/mate-control-center/commit/?id=b080e143a966b595016fbcba1c039692c2fc7533)
- [mate-desktop 1.14.1](https://git.solus-project.com/packages/mate-desktop/commit/?id=6ec468d3cdcbe4b044c3145ae805f28ae9cf96b8)
- [mate-desktop-branding 5](https://git.solus-project.com/packages/mate-desktop-branding/commit/?id=3e9a1a981a3d5fa55fe3fc8535559663d1920b6f)
- [mate-indicator-applet 1.14.0](https://git.solus-project.com/packages/mate-indicator-applet/commit/?id=f5d8b1ab233689b47668d4149374bdf6ff1bf8c1)
- [mate-media 1.14.1](https://git.solus-project.com/packages/mate-media/commit/?id=8d88076b1df3ff8f73e121dc8f0c987b439f1278)
- [mate-menus 1.14.0](https://git.solus-project.com/packages/mate-menus/commit/?id=ab5925d4585a609694e47c208a2604b1fe860980)
- [mate-notification-daemon 1.14.1](https://git.solus-project.com/packages/mate-notification-daemon/commit/?id=551e4e7e06eae45f4fbe04a8c27fe37a3eb6775b)
- [mate-panel 1.14.2](https://git.solus-project.com/packages/mate-panel/commit/?id=546a2da18fea5a49fd978a7dda9dd386afbe549f)
- [mate-polkit 1.14.0](https://git.solus-project.com/packages/mate-polkit/commit/?id=a120be16ba2c6b2183a227071b62c7f70e78da2e)
- [mate-power-manager 1.14.0](https://git.solus-project.com/packages/mate-power-manager/commit/?id=f333480c7cfa25227cf287224a80d91377136d9c)
- [mate-screensaver 1.14.1](https://git.solus-project.com/packages/mate-screensaver/commit/?id=6ceeec01d7eb0a873708297fc727652f3ab64b3d)
- [mate-sensors-applet 1.14.0](https://git.solus-project.com/packages/mate-sensors-applet/commit/?id=73359b80bd279cee2b2121e4699525986373cda7)
- [mate-session-manager 1.14.1](https://git.solus-project.com/packages/mate-session-manager/commit/?id=8e274bdef70700d47b7c1a81b1a9a6667ba7e2d7)
- [mate-settings-daemon 1.14.1](https://git.solus-project.com/packages/mate-settings-daemon/commit/?id=5efe501f64d0e7af80e7991462d9a74cfa87993f)
- [mate-system-monitor 1.14.1](https://git.solus-project.com/packages/mate-system-monitor/commit/?id=8b34e5dbfd6f3ed92099bd987399462a95ef848f)
- [mate-terminal 1.14.1](https://git.solus-project.com/packages/mate-terminal/commit/?id=9c91fd8b8e31e1ba66187c05af33ce43c5c03201)
- [mate-themes 3.20.10](https://git.solus-project.com/packages/mate-themes/commit/?id=aee14a1941b67a0c78a5bbe44b35a7baf5980add)
- [mate-utils 1.14.1](https://git.solus-project.com/packages/mate-utils/commit/?id=d3b196bc440ece7c8e02db44f3d0988be801503d)
- [mbpfan 1.9.1](https://git.solus-project.com/packages/mbpfan/commit/?id=7844ef1119dc00d1b88d2e216be96b0ac7e54bf3)
- [mbedtls 2.3.0](https://git.solus-project.com/packages/mbedtls/commit/?id=cf52d4709250f9ab69a3464dc35e50773364c17f)
- [naev 0.6.1](https://git.solus-project.com/packages/naev/commit/?id=55554b1fbfba383ba1916bc771d69e06cc98dd09)
- [open-vm-tools 10.0.7](https://git.solus-project.com/packages/open-vm-tools/commit/?id=7dc895b4da1247f03ebe803923d9bdd47caf235e)
- [oranchelo-icon-theme 0.7.3.5](https://git.solus-project.com/packages/oranchelo-icon-theme/commit/?id=0dbfa4c7b60e03678ffd388c6e71fce242b42cf3)
- [otclient 0.6.6](https://git.solus-project.com/packages/otclient/commit/?id=7b0e60d5ebbbcca2f14dd78f536fe449318c1d61)
- [pcsxr 1.9.93](https://git.solus-project.com/packages/pcsxr/commit/?id=c53330c4cf47a71d5bf7bec7744af747839ebf29)
- [peek 0.7.2](https://git.solus-project.com/packages/peek/commit/?id=9a6ba42666c14719afdba7895b133bc4b8b36223)
- [pluma 1.14.1](https://git.solus-project.com/packages/pluma/commit/?id=d1314a86d3135d09149dfc65fe7dfb7c0ded5e73)
- [poedit 1.8.8](https://git.solus-project.com/packages/poedit/commit/?id=f6fefa358192a5c0429fe12c1d109ffd22620e7a)
- [qdriverstation 16.08](https://git.solus-project.com/packages/qdriverstation/commit/?id=57166a61d5f30e18414958fefda0ff67f3e4d915)
- [rapid-photo-downloader 0.4.11](https://git.solus-project.com/packages/rapid-photo-downloader/commit/?id=c51bc2e8d6e4cc4c19cfc03c6f440ad8f069b9ad)
- [rstudio 0.99.903](https://git.solus-project.com/packages/rstudio/commit/?id=6b38d628350b81365d3158189dcd6683e6169e87)
- [rofi 1.2.0](https://git.solus-project.com/packages/rofi/commit/?id=ede22504e9228e847a44f4b977a764c8bddcd8c2)
- [soundtouch 1.9.2](https://git.solus-project.com/packages/soundtouch/commit/?id=14937bdc990bffa90448d9e0170517efae5c3c83)
- [stone-soup 0.18.1](https://git.solus-project.com/packages/stone-soup/commit/?id=ba43a50a5b7719585c3a8d793927443a21045417)
- [sxhkd 0.5.6](https://git.solus-project.com/packages/sxhkd/commit/?id=208978feac57bc8d0dba4154fd2e36a23afdc674)
- [visualboyadvance-m 2.0](https://git.solus-project.com/packages/visualboyadvance-m/commit/?id=040abf675f6c2a4f8a866928a9682f2091b38618)
- [warzone2100 3.2.1](https://git.solus-project.com/packages/warzone2100/commit/?id=2e6e303c83f46b14fa6e1e263d408bf40d63e93e)
Updated:
- [aria2 1.26.1](https://git.solus-project.com/packages/aria2/commit/?id=721d5033e559b64ebbcfdf60f18906b3c6f73312)
- [atom 1.10.0](https://git.solus-project.com/packages/atom/commit/?id=1debdc04c437f3e7262c21b6cccf2423b2ebebd0)
- [calibre 2.66.0](https://git.solus-project.com/packages/calibre/commit/?id=d90654f973d7072e165057ff1e892518e62ec925)
- [bzr 2.7.0](https://git.solus-project.com/packages/bzr/commit/?id=3fe52066d077de7618c104b89aa44302caa4e1c4)
- [darktable 2.0.6](https://git.solus-project.com/packages/darktable/commit/?id=bdb1c74d359fd9655ac1a601137e7d34b73b6ced)
- [deluge 1.3.13](https://git.solus-project.com/packages/deluge/commit/?id=d66b1aa742a3bfc2a576c427950d1ebdf818cbfc)
- [feedreader 1.6.2](https://git.solus-project.com/packages/feedreader/commit/?id=84b099a820baf780279bfc2a51eb7c24a72b7459)
- [feh 2.17.1](https://git.solus-project.com/packages/feh/commit/?id=fbd31b24538380e1bb361c0e7945495d878c7835)
- [focuswriter 1.6.0](https://git.solus-project.com/packages/focuswriter/commit/?id=f55556dd90026e87437537873eddcfa896d3371e)
- [freeciv 2.5.5](https://git.solus-project.com/packages/freeciv/commit/?id=095e34107455bf1922e078996da80be11b994132)
- [elixir 1.3.2](https://git.solus-project.com/packages/elixir/commit/?id=4831a1c3231e08a7b6a5f180b02f9b7d96a58207)
- [eog 3.20.4](https://git.solus-project.com/packages/eog/commit/?id=6b0aa1153078d2e457fe76e97c4626728e0eca6e)
- [erlang 19.0.5](https://git.solus-project.com/packages/erlang/commit/?id=788356cfe7f31bf45c98e0208cc1510cd353be5a)
- [evolution 3.20.5](https://git.solus-project.com/packages/evolution/commit/?id=ff7efdc97c30697b6c301c87bec72d8d48349510)
- [geary 0.11.2](https://git.solus-project.com/packages/geary/commit/?id=21ceca975fe1b93095e977c7f02894ec67a1c957)
- [git 2.10.0](https://git.solus-project.com/packages/git/commit/?id=52a3d9e7c69c09e531bfc88c156bdd7087d6aa30)
- [gitg 3.20.2](https://git.solus-project.com/packages/gitg/commit/?id=53f631b019759491965732e37ded01cebf8d4c47)
- [gnome-calendar 3.20.3](https://git.solus-project.com/packages/gnome-calendar/commit/?id=5d4bd92ef7a9e0d760b98b7562e92a41099ae5e9)
- [gnome-boxes 3.20.2](https://git.solus-project.com/packages/gnome-boxes/commit/?id=9c58265dbaff5acb52a72d84600c40167ce4bf15)
- [gnome-documents 3.20.1](https://git.solus-project.com/packages/gnome-documents/commit/?id=e896da76180c8f85f239bc4cb64091783dd5d720)
- [gnome-maps 3.20.3](https://git.solus-project.com/packages/gnome-maps/commit/?id=a1e22fe32a74483edf8c127cd15817d9f67b025d)
- [gnome-shell 3.20.4](https://git.solus-project.com/packages/gnome-shell/commit/?id=9c83d409326c4e7ef7bb0b6749fe809a21fcca07)
- [gnome-weather 3.20.2](https://git.solus-project.com/packages/gnome-weather/commit/?id=42dfb6e0ce3da64614210663dbdcf0e20c79b96c)
- [gnuplot 5.0.4](https://git.solus-project.com/packages/gnuplot/commit/?id=86535866d04be4dd1134ffe478d1679bd5fcda65)
- [godot 2.1 -- Enable headless and Linux templates](https://git.solus-project.com/packages/godot/commit/?id=ed4acfec9a7a30f36cd80698ddb290c4ec7ce4c3)
- [gpicview 0.2.5](https://git.solus-project.com/packages/gpicview/commit/?id=3f26d1e4aa3de30ba4961fbf77068130d54fcea5)
- [gtk3 3.20.9](https://git.solus-project.com/packages/gtk3/commit/?id=4d50100c16777fd4369987e28c39995fa34663e4)
- [i3 -- Read the i3 section for changes or just read log..](https://git.solus-project.com/packages/i3/log/)
- [i3status -- Read the i3 section for changes or just read log&#8230;](https://git.solus-project.com/packages/i3status/log/)
- [kicad 4.0.4](https://git.solus-project.com/packages/kicad/commit/?id=5938230f10e5d51e1b33d192b9e98d8e5923b672)
- [lollypop 0.9.113](https://git.solus-project.com/packages/lollypop/commit/?id=1f5803d5c4aa21a96f5edb09c7dfe50386373ab2)
- [mediainfo 0.7.88](https://git.solus-project.com/packages/mediainfo/commit/?id=34e7ca819109aef79b1bbbec0b3a2d7ae7a6bbfa)
- [mercurial 3.9.1](https://git.solus-project.com/packages/mercurial/commit/?id=42bde440f1cd780b904fc215655ba773d183fad2)
- [mkvtoolnix 9.4.0](https://git.solus-project.com/packages/mkvtoolnix/commit/?id=2aa2a052a57ba9a93bc61771f78c2df175e8ff7c)
- [mosh 1.2.6](https://git.solus-project.com/packages/mosh/commit/?id=0c781f71c7cc8e091766039aba5e6bf8e03ffe45)
- [mplayer 16.8.0](https://git.solus-project.com/packages/smplayer/commit/?id=508f631a5ae72e98ed6d2234519048d27694655b)
- [n1 0.4.51](https://git.solus-project.com/packages/n1/commit/?id=68870fffbecbbac702cbe12bb081f489ed9ec6b6)
- [nautilus 3.20.3](https://git.solus-project.com/packages/nautilus/commit/?id=30df1c55a2946fec2407c31ca927956b068f7bb5)
- [neovim 0.1.5](https://git.solus-project.com/packages/neovim/commit/?id=ce892e2321fd17941f355400b6953c4b0399edd5)
- [nmap 7.12](https://git.solus-project.com/packages/nmap/commit/?id=1d723b0bec88fa6c0cae9d80df741399708f15fd)
- [nodejs 6.5.0](https://git.solus-project.com/packages/nodejs/commit/?id=d33509f8bcc0cb6eb9418e0e248c916a9bd9d589)
- [numix-icon-theme-circle 16.08.31](https://git.solus-project.com/packages/numix-icon-theme-circle/commit/?id=a609cea0cc0d0dd2aea6e78283e219d937fed095)
- [octave 4.0.3](https://git.solus-project.com/packages/octave/commit/?id=6909c97bc47ea567b563df82d62c34bf8a17bd8b)
- [plank 0.11.2](https://git.solus-project.com/packages/plank/commit/?id=5d0cc29b5e2f2f07bf581c4428be21f629c6f007)
- [q4wine 1.3.2](https://git.solus-project.com/packages/q4wine/commit/?id=5828ce46db1149c9c536794cc2f85ea4baff148a)
- [qbittorrent 3.3.6](https://git.solus-project.com/packages/qbittorrent/commit/?id=93d48f7b9ffb8f839b07b768b9f6c686bf8285ab)
- [screen 4.4.0](https://git.solus-project.com/packages/screen/commit/?id=6387016a2d3961a9e9cb72c9f3cf060ef654b4c9)
- [shotwell 0.23.6](https://git.solus-project.com/packages/shotwell/commit/?id=e08bd4e7fc47345223d8fa251a48c153765d2761)
- [SFML 2.4.0](https://git.solus-project.com/packages/SFML/commit/?id=7ec4a06dc02f59c02ce6646570e9ce49a352cfa2)
- [solus-artwork: Update to v12 for MATE support.](https://git.solus-project.com/packages/solus-artwork/commit/?id=ddf3063fc40d532973c8a9132b1eb1d80bc0e9b9)
- [syncthing 0.14.5](https://git.solus-project.com/packages/syncthing/commit/?id=a758ac2a79f7e856b85c46a099525acf001b6a34)
- [syncthing-gtk 0.9.2.1](https://git.solus-project.com/packages/syncthing-gtk/commit/?id=d1d07edf2c90fc6220f32bd60f33d210bc7f209d)
- [thunderbird 45.3.0](https://git.solus-project.com/packages/thunderbird/commit/?id=7331f301c6a43e94e5d1ed7387ce7d7b3eda0fb7)
- [tor 0.2.8.7](https://git.solus-project.com/packages/tor/commit/?id=dc461d3782605dc89afc001522ab9def07b38002)
- [unrar 5.4.5](https://git.solus-project.com/packages/unrar/commit/?id=7111ed1a94737362ef1077dfabc615e20bd39a22)
- [variety 0.6.2](https://git.solus-project.com/packages/variety/commit/?id=68105cb3313ee7eb15d9b6302393517cc06d1f79)
