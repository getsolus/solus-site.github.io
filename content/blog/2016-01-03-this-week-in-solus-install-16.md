+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-01-03T20:12:28Z"
title = "This Week in Solus -- Install #16"
url = "/2016/01/03/this-week-in-solus-install-16/"
+++ 

Welcome to the 16th installation of This Week in Solus. This is the first installation since the [great 1.0 release](https://solus-project.com/2015/12/27/solus-1-0-released/), which happened last week, as well as being the first of 2016! I opted to not have three blog posts in the span of two days last week, that'd be a tad excessive. 

Fast forward a week and things haven't slowed down at all. We have gotten plenty of new package requests, bug reports, and issued fixes for hiccups users have had along the way.

{{< altimg "http://i.giphy.com/8EmeieJAGjvUI.gif" >}}

#### Budgie

There has been **three** **updates** released for the Budgie desktop since the v10/10.1 release (we're currently on 10.2.2). Here are some highlights:

- Budgie is [officially supported](https://plus.google.com/+Solus-Project/posts/fsxB3kHEEWy) via OBS for Fedora 23 and openSUSE.
- Fixes: 
  - Partially fixed issues relating to notifications from Mumble.
  - Resolved an issue where Firefox would not appear in panel.
  - Resolved issues with Raven rendering when using a bottom panel.
  - Respect and follow screen resolution changes
  - Resolve sizes of x11 tray icons.
  - linking/portability issues on other distributions

- Other Improvements: 
  - Use unique desktop name (XDG_CURRENT_DESKTOP=Budgie:GNOME)
  - We ship our own nm-applet .desktop launcher until we have our own network settings
  - Replace polkit-gnome dependency with our own new budgie-polkit.

Alongside all these improvements and fixes, we asked our community to assist in translating Budgie into other languages [via Transifex](https://www.transifex.com/solus-project/budgie-desktop/) and we're absolutely blown away by the contributions. 
Budgie is now 100% translated into the following languages (not including English):

- Catalan
- Czech
- Dutch (Belgium)
- Esperanto
- Finnish
- French + French (France)
- German
- Indonesian
- Italian
- Japanese
- Korean
- Lithuanian
- Polish
- Portuguese + Portuguese (Brazil)
- Romanian
- Russian
- Serbian
- Spanish + Spanish (Argentina)
- Turkish

There is also progress being done on languages such as Swedish, Tagalog, Catalan, and more! Absolutely massive thanks to everyone that has contributed so far.

{{< altimg "http://i.giphy.com/q9fohf0Erd50A.gif" >}}

#### General Improvements

- We have enabled [crypto optimizations](https://git.solus-project.com/packages/kernel/commit/?id=acc188d1e663d51c028123e0bda0e79b720bc350) in the kernel.
- Wacom support has been improved. It is now configurable in Gnome Control Center.
- Printer detection support is working. We are currently addressing a printer filter issue and an issue regarding the communication between CUPS and the printer, so printer support should be coming soon™.

#### Known Issues and Reminders

- Some users are having issues with booting the ISO. We posted a workaround [here](https://plus.google.com/+Solus-Project/posts/Kf6DHinoMkf). We're hopeful that the issue will be resolved for Solus 1.1.
- Reminder to read [this thread](https://solus-project.com/forums/viewtopic.php?f=17&t=886&p=5281#p5281) if you're having issues with Steam.

#### Package Updates

Here is a **highlight** of package updates over the past week.

##### New

- [antimicro 2.20.2 has been added to the repo](https://git.solus-project.com/packages/antimicro/commit/?id=1c186e32fe06eec54e9e774b638727c0e45ef886)
- [brackets 1.5.64 has been added to the repo](https://git.solus-project.com/packages/brackets/commit/?id=2b8d437826e4f3f2b9614a63e5ac4e05b64f6ae6)
- [clisp 2.49 has been added to the repo](https://git.solus-project.com/packages/clisp/commit/?id=80e62ea1b93b142ca59d90c15c846d31fee5901d)
- [ecl 16.0 has been added to the repo](https://git.solus-project.com/packages/ecl/commit/?id=15da28e0ca34058d1a2384591ed8296d06bdf456)
- [fbreader 0.99.4 has been added to the repo](https://git.solus-project.com/packages/fbreader/commit/?id=8b87676e8f3fc8396373812521766d0d966e8431)
- [foomatic-db 4.0.20150819 has been added to the repo](https://git.solus-project.com/packages/foomatic-db/commit/?id=68340d4a85270866b90b03af880e7a6b5c5b6780)
- [gutenprint 5.2.10 has been added to the repo](https://git.solus-project.com/packages/gutenprint/commit/?id=8e40dfa2a36a64ed691ec83ee71c6de8756879e2)
- [keepassx 2.0 has been added to the repo](https://git.solus-project.com/packages/keepassx/commit/?id=5faab6ff870e20dcf6eba37d510d91e4b6b399fd)
- [libmspack 0.5 has been added to the repo](https://git.solus-project.com/packages/libmspack/commit/?id=22c9e39bcef001077097d92ad1889984db642554)
- [links 2.12 has been added to the repo](https://git.solus-project.com/packages/links/commit/?id=1d011849b7d6772b55f56c5c2e1a9e6542d13147)
- [lshw 2.17 has been added to the repo](https://git.solus-project.com/packages/lshw/commit/?id=b06b02953d9e79e9a7e12736205c5d4c8982fa74)
- [moc 2.5.0 has been added to the repo](https://git.solus-project.com/packages/moc/commit/?id=e02ecf60b5b9accf37b04a6e3dcac21ea6c907b7)
- [n1 0.3.32 has been added to the repo](https://git.solus-project.com/packages/n1/commit/?id=ce97262b6adf63ad782837cc00c93b0dad3995f7)
- [pavucontrol 3.0 has been added to the repo](https://git.solus-project.com/packages/pavucontrol/commit/?id=ac413c1687a84b51d6fbe81f15192963c345e62c)
- [purple-facebook 20151226 has been added to the repo](https://git.solus-project.com/packages/purple-facebook/commit/?id=f28414c151dad050ea89df90dd440f9497f01987)
- [racket 6.3 has been added to the repo](https://git.solus-project.com/packages/racket/commit/?id=10701be1165b56fdd8d7651e7a2e63833d889fce)
- [retroarch 1.2.2 has been added to the repo](https://git.solus-project.com/packages/retroarch/commit/?id=241a071835154bfd27cb2b7a975ae1a18da24dab)
- [rhythmbox-alternative-toolbar 0.15.0 has been added to the repo](https://git.solus-project.com/packages/rhythmbox-alternative-toolbar/commit/?id=b17b5d4ae9d198dec9f00232a8588948e0098a90)
- [scribus 1.4.5 has been added to the repo](https://git.solus-project.com/packages/scribus/commit/?id=eb6c19c4248cc7d493148ed0d76d071f53ebaebf)
- [weechat 1.3 has been added to the repo](https://git.solus-project.com/packages/weechat/commit/?id=feba65505a5b0523f3484d03c6ed276367e2cc2d)

##### Updated

- [audacious has been updated to 3.7.1](https://git.solus-project.com/packages/audacious/commit/?id=38a06fdd1c53711c50257c3316b688a79dc60d59)
- [elixir has been updated to 1.2.0](https://git.solus-project.com/packages/elixir/commit/?id=1b6de2058280d9667dbf9ba4e98811123af0f5f2)
- [firefox has been updated to 43.0.3](https://git.solus-project.com/packages/firefox/commit/?id=3398ce0a28aee917eb72bff711b8bf776a70358e)
- [flash-nonfree-player has been updated to 11.2.202.559](https://git.solus-project.com/packages/flash-player-nonfree/commit/?id=da87ade602cdae2a2495377d8d522bfa13aab0cd)
- [gnumeric has been updated to 1.12.25](https://git.solus-project.com/packages/gnumeric/commit/?id=805d1471573ad29884928360a8b57b1b746d4847)
- [libpng has been updated to address CVE-2015-8540](https://git.solus-project.com/packages/libpng/commit/?id=844e2639f8a2c29b6a1f1f1ce82c8bf6397a1546)
- [libreoffice has been updated to 5.0.4.2](https://git.solus-project.com/packages/libreoffice/commit/?id=9f62bca641312984adfbd157d72e46d540dc22db)
- [mercurial has been updated to 3.6.2](https://git.solus-project.com/packages/mercurial/commit/?id=13b93512ce92daf6c700a933398af93af3116feb)
- [pulseaudio has been updated to enable equalizer](https://git.solus-project.com/packages/pulseaudio/commit/?id=211eb50328942eda3d54efed33ea04a6d5900119)
- [qtpass has been updated to 1.0.6](https://git.solus-project.com/packages/qtpass/commit/?id=372aa72848fd84eb7794751a2083987d8e1a78ee)
- [tmux has been updated to 2.1](https://git.solus-project.com/packages/tmux/commit/?id=f0bfd5b7115c3dc7cda4dc10d00ce0117638e39d)
- [youtube-dl has been updated to 2016.01.01](https://git.solus-project.com/packages/youtube-dl/commit/?id=1ea844622636328169491535df5abc84a0356917)
- [yubikey-personalization has been updated to 1.17.3](https://git.solus-project.com/packages/yubikey-personalization/commit/?id=94cc47b846ab0bf5941e3a5445a065ef4e96f4ef)