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

{{< relimg "Screenshot-from-2016-09-03-21-27-18.png" >}}

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

{{< relimg "i3.png" >}}

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

You can install all of these now via the more extensive [3rd-Party Help Center page](https://help.getsol.us/docs/user/software/third-party/).

#### Hackfest and Sundays with Solus Videos

#### Packaging Highlights

Here is a highlight of package inclusions and updates.

New: 

- atril 1.14.2
- bspwm 0.9.1
- caja 1.14.2
- caja-dropbox 1.14.0
- dolphin-emu 5
- engrampa 1.14.1
- eom 1.14.2
- gnome-pomodoro 0.12.2
- gnome-sushi 3.20.0
- gtest 1.8.0
- hunspell-sr 20130715
- i3blocks 1.4
- ipscan 3.4.2
- lucene++ 3.0.7
- marco 1.14.2
- mate-applets 1.14.1
- mate-backgrounds 1.14.0
- mate-control-center 1.14.1
- mate-desktop 1.14.1
- mate-desktop-branding 5
- mate-indicator-applet 1.14.0
- mate-media 1.14.1
- mate-menus 1.14.0
- mate-notification-daemon 1.14.1
- mate-panel 1.14.2
- mate-polkit 1.14.0
- mate-power-manager 1.14.0
- mate-screensaver 1.14.1
- mate-sensors-applet 1.14.0
- mate-session-manager 1.14.1
- mate-settings-daemon 1.14.1
- mate-system-monitor 1.14.1
- mate-terminal 1.14.1
- mate-themes 3.20.10
- mate-utils 1.14.1
- mbpfan 1.9.1
- mbedtls 2.3.0
- naev 0.6.1
- open-vm-tools 10.0.7
- oranchelo-icon-theme 0.7.3.5
- otclient 0.6.6
- pcsxr 1.9.93
- peek 0.7.2
- pluma 1.14.1
- poedit 1.8.8
- qdriverstation 16.08
- rapid-photo-downloader 0.4.11
- rstudio 0.99.903
- rofi 1.2.0
- soundtouch 1.9.2
- stone-soup 0.18.1
- sxhkd 0.5.6
- visualboyadvance-m 2.0
- warzone2100 3.2.1
Updated:
- aria2 1.26.1
- atom 1.10.0
- calibre 2.66.0
- bzr 2.7.0
- darktable 2.0.6
- deluge 1.3.13
- feedreader 1.6.2
- feh 2.17.1
- focuswriter 1.6.0
- freeciv 2.5.5
- elixir 1.3.2
- eog 3.20.4
- erlang 19.0.5
- evolution 3.20.5
- geary 0.11.2
- git 2.10.0
- gitg 3.20.2
- gnome-calendar 3.20.3
- gnome-boxes 3.20.2
- gnome-documents 3.20.1
- gnome-maps 3.20.3
- gnome-shell 3.20.4
- gnome-weather 3.20.2
- gnuplot 5.0.4
- godot 2.1 -- Enable headless and Linux templates
- gpicview 0.2.5
- gtk3 3.20.9
- i3 -- Read the i3 section for changes or just read log.
- i3status -- Read the i3 section for changes or just read log
- kicad 4.0.4
- lollypop 0.9.113
- mediainfo 0.7.88
- mercurial 3.9.1
- mkvtoolnix 9.4.0
- mosh 1.2.6
- mplayer 16.8.0
- n1 0.4.51
- nautilus 3.20.3
- neovim 0.1.5
- nmap 7.12
- nodejs 6.5.0
- numix-icon-theme-circle 16.08.31
- octave 4.0.3
- plank 0.11.2
- q4wine 1.3.2
- qbittorrent 3.3.6
- screen 4.4.0
- shotwell 0.23.6
- SFML 2.4.0
- solus-artwork: Update to v12 for MATE support.
- syncthing 0.14.5
- syncthing-gtk 0.9.2.1
- thunderbird 45.3.0
- tor 0.2.8.7
- unrar 5.4.5
- variety 0.6.2
