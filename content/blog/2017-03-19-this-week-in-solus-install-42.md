+++
featuredimage = "2017/03/mate-1.18-in-solus.jpg"
categories = [
"news", 
"twis"
]
author = "joshua"
date = "2017-03-19T16:08:32+02:00"
title = "This Week in Solus - Install #42"
url = "/2017/03/19/this-week-in-solus-install-42"
+++

Welcome to the 42nd installation of This Week in Solus!

## Upgrades

Several significant upgrades happened this week (all of which are shipped in the stable repo at the time of publication), starting with Peter spending time upgrading our KDE Frameworks to `5.32.0` and upgrading our Kdenlive to the latest release.

We updated our kernel to the latest longterm release, 4.9.16.

Justin and Ikey landed MATE 1.18 today, which features our upstreamed patch for action icons in mate-notification-daemon (shown below) and the many [fantastic improvements](https://mate-desktop.org/blog/2017-03-13-mate-1-18-released/) from the MATE Desktop Team.

{{< altimg "2017/03/mate-1.18-action-icons.jpg" >}}

## Learn Solus Packaging

Over the last few weeks, I've been doing livestreams to help people get started with Solus packaging. The benefit of these sessions is that the frequency of them enable the constant improvement and tweaks we do to solbuild and ypkg to be immediately discussed. The format is as follows:

- One week, a new "session" introduces users to setting up their system for Solus packaging, walks them through a simple example live and high-level talk about the relevant actionable macros, and the process for creating and submitting a patch.
- The following week is more "advanced" topics, such as going over the majority of our actionable macros, variables, and using additional files or applying patches.

If you haven't gotten involved in Solus packaging and you're wondering where you can get started, check out the latest session!

{{< youtube TXkf1ulWm98 >}}

## Upcoming This Week

We'll be doing some crunching this week on items for the upcoming Q1 ISO snapshots. Ikey will be taking a vacation from work and will be devoting such time to working on Budgie 10.3, as well as some corner cases in the UEFI support of the Solus Installer. Furthermore, we'll be taming the verbosity of debug messages during boot time.

With the new Solus website designs nearly finalized, I'll be working on the new site design this coming week. Additionally, I'll be doing a sweep through our Dev Tracker.

Bryan will be continuing to work on [Cuppa, the upcoming upstream tracker](https://github.com/DataDrake/cuppa), primarily around improving the help system.

## Package Highlights

Here we go ladies and gents, the usual highlight of package inclusions and highlights (including the major upgrades I talked about above):

### New

- [kitematic 0.13.1](https://git.solus-project.com/packages/kitematic/commit/?id=2845647da23587fa90198029e6a6cdf530783a18)
- [mate-calc 1.18.0](https://git.solus-project.com/packages/mate-calc/commit/?id=2b193e9e0a2efc939f58047ba16763e1cf095f26)
- [puddletag 1.2.0](https://git.solus-project.com/packages/puddletag/commit/?id=a0eec36b36ae011cdb9ddfa386365d59402be759)
- [tap-plugins 0.7.3](https://git.solus-project.com/packages/tap-plugins/commit/?id=457ba185989975c40cecf3fc008d56f8e00b0d48)
- [tint2 0.13](https://git.solus-project.com/packages/tint2/commit/?id=a15e444eacd0353e26661b8902ab8dcea37d14c7)

### Updated

- [albert 0.9.5](https://git.solus-project.com/packages/albert/commit/?id=7c502736b7181e87b162b5df05655652f2d3e41d)
- [alsa-tools 1.1.3](https://git.solus-project.com/packages/alsa-tools/commit/?id=2a9c618c31e42c1ea96b95fb08719abb0959d9dc)
- [audacious 3.8.2](https://git.solus-project.com/packages/audacious/commit/?id=391034c4a52109054d489fa181efbd92f19a4f7f)
- [calibre 2.82.0](https://git.solus-project.com/packages/calibre/commit/?id=295e2fe6bf7fdc6ca0efa5b6a83de87991152e26)
- [deluge 1.3.14](https://git.solus-project.com/packages/deluge/commit/?id=b47636ccb3363e3955d070a90ed34bf3ba5b31d2)
- [digikam 5.5.0](https://git.solus-project.com/packages/digikam/commit/?id=7874623b1012f430da937480fbd5ee2c06fe66dc)
- [evolution 3.22.6](https://git.solus-project.com/packages/evolution/commit/?id=78c23c86ba3369d1fe885d822f3a4bb1f7c5d9c9)
- [focuswriter 1.6.4](https://git.solus-project.com/packages/focuswriter/commit/?id=a4fbaf2275d7f41fcc99bc0fdb1f340e43007309)
- [filezilla 3.25.0](https://git.solus-project.com/packages/filezilla/commit/?id=ca833c5fd9f6dd0fdec418dcb54be7341df872a7)
- [firefox 52.0.1](https://git.solus-project.com/packages/firefox/commit/?id=b9970b30e4bb27c3a87e43ba2c1ad32c403f6f82)
- [ffmpeg 2.8.11](https://git.solus-project.com/packages/ffmpeg/commit/?id=013f2d5ddebcb007c39979920f8b3fed6c5525d8)
- [gnome-boxes 3.22.4](https://git.solus-project.com/packages/gnome-boxes/commit/?id=633089ed77dfb21ba6bf242e670000c76b5f63db)
- [gnome-calendar 3.22.3](https://git.solus-project.com/packages/gnome-calendar/commit/?id=ba8b39f98b2318f04724fe7426ff397508e0302a)
- [gnome-documents 3.22.1](https://git.solus-project.com/packages/gnome-documents/commit/?id=a41fbe6b6dcc596bf06e06e44e6298b2eb5fb6b7)
- [gnome-photos 3.22.5](https://git.solus-project.com/packages/gnome-photos/commit/?id=95c383699f5a0025b2ba5add9fc39b1b2f010f46)
- [gnome-pomodoro 0.13.1](https://git.solus-project.com/packages/gnome-pomodoro/commit/?id=5fa50aec623016a6172163bbb7b9dc1512298c65)
- [gtk-vnc 0.7.0](https://git.solus-project.com/packages/gtk-vnc/commit/?id=eeb8ac8794170be27b83d55acfe19cd4eb3af3e6)
- [heroku-cli 5.7.0](https://git.solus-project.com/packages/heroku-cli/commit/?id=250e4e0b3160745946c4a99ce42ca23a6e7b8bb6)
- [homebank 5.1.4](https://git.solus-project.com/packages/homebank/commit/?id=4c1688b7a8d949d7f4083a51e8a91ba65b1b571e)
- [irssi 1.0.2](https://git.solus-project.com/packages/irssi/commit/?id=0ff859e0784fa641972cafb25123d7753cf588b2)
- [leocad 17.02](https://git.solus-project.com/packages/leocad/commit/?id=25d2564f9507a2d68cadd6be3bd45ef9b3066737)
- [meld 3.16.4](https://git.solus-project.com/packages/meld/commit/?id=f149a9d24fa225ddb326d2bafe895f9b77597b20)
- [mpd 0.20.6](https://git.solus-project.com/packages/mpd/commit/?id=f45c11dba887f6f0ba9f208ffcda8d4b22b0c12f)
- [mypaint 1.2.1](https://git.solus-project.com/packages/mypaint/commit/?id=5ceb51783d1e5d854550e52002878a69667179b1)
- [ninja 1.7.2](https://git.solus-project.com/packages/ninja/commit/?id=58761d10802e7b0c9244a8ab6a39ba0ab9203b01)
- [peek 1.0.0](https://git.solus-project.com/packages/peek/commit/?id=541d935267b0a142908852539dda80eb8fa74383)
- [php 7.0.17](https://git.solus-project.com/packages/php/commit/?id=31079020be6581775a8a5a70a90d21bd0fa8f462)
- [pidgin 2.12.0](https://git.solus-project.com/packages/pidgin/commit/?id=75f4f0e34c54d57d3f1ab12290f4c1de6ce0ea6d)
- [powerline 2.5.2](https://git.solus-project.com/packages/powerline/commit/?id=04b3bf3103e8e971018af126d39c388972e43cfb)
- [qownnotes 17.03.6](https://git.solus-project.com/packages/qownnotes/commit/?id=bcb017486ad0d0c98fa9ac82d1613cc1a9bfd4fd)
- [quodlibet 3.8.1](https://git.solus-project.com/packages/quodlibet/commit/?id=bbce72da10c847a6484f27f086a995afd8c95ec2)
- [retroarch 1.5.0](https://git.solus-project.com/packages/retroarch/commit/?id=26fcea68fb07b75ce7504293ef9d7504834bb178)
- [rsibreak 0.12.6](https://git.solus-project.com/packages/rsibreak/commit/?id=21d1e83584944d707b9f9182a6a0830b6ab5f6f5)
- [stoken: Split off graphical client of stoken to stoken-gui. Disable static library.](https://git.solus-project.com/packages/stoken/commit/?id=75feae9bca9679908a3749dffa136a520c71ae14)
- [sway 0.12.1](https://git.solus-project.com/packages/sway/commit/?id=c09c77244924a2cbc6bc937326dda1f34f84d6be)
- thunderbird
  - [Update to 45.8.0](https://git.solus-project.com/packages/thunderbird/commit/?id=9c1db8eb31c9664e830734ab7aa7c032e2400f39)
  - [Disable use of system ICU to resolve crash on search](https://git.solus-project.com/packages/thunderbird/commit/?id=b81db941d4fad4af9a0375e2df13e92022783da6)
- [vivaldi-snapshot 1.8.770.25](https://git.solus-project.com/packages/vivaldi-snapshot/commit/?id=328fbaed21d2a60d9827596b33e3f1737db9f533)