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

Welcome to the 16th installation of This Week in Solus. This is the first installation since the great 1.0 release, which happened last week, as well as being the first of 2016! I opted to not have three blog posts in the span of two days last week, that'd be a tad excessive.

Fast forward a week and things haven't slowed down at all. We have gotten plenty of new package requests, bug reports, and issued fixes for hiccups users have had along the way.

{{< altimg "http://i.giphy.com/8EmeieJAGjvUI.gif" >}}

#### Budgie

There has been **three** **updates** released for the Budgie desktop since the v10/10.1 release (we're currently on 10.2.2). Here are some highlights:

- Budgie is officially supported via OBS for Fedora 23 and openSUSE.
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

Alongside all these improvements and fixes, we asked our community to assist in translating Budgie into other languages via Transifex and we're absolutely blown away by the contributions.
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

- We have enabled crypto optimizations in the kernel.
- Wacom support has been improved. It is now configurable in Gnome Control Center.
- Printer detection support is working. We are currently addressing a printer filter issue and an issue regarding the communication between CUPS and the printer, so printer support should be coming soon™.

#### Known Issues and Reminders

- Some users are having issues with booting the ISO. We posted a workaround here. We're hopeful that the issue will be resolved for Solus 1.1.
- Reminder to read this thread if you're having issues with Steam.

#### Package Updates

Here is a **highlight** of package updates over the past week.

##### New

- antimicro 2.20.2 has been added to the repo
- brackets 1.5.64 has been added to the repo
- clisp 2.49 has been added to the repo
- ecl 16.0 has been added to the repo
- fbreader 0.99.4 has been added to the repo
- foomatic-db 4.0.20150819 has been added to the repo
- gutenprint 5.2.10 has been added to the repo
- keepassx 2.0 has been added to the repo
- libmspack 0.5 has been added to the repo
- links 2.12 has been added to the repo
- lshw 2.17 has been added to the repo
- moc 2.5.0 has been added to the repo
- n1 0.3.32 has been added to the repo
- pavucontrol 3.0 has been added to the repo
- purple-facebook 20151226 has been added to the repo
- racket 6.3 has been added to the repo
- retroarch 1.2.2 has been added to the repo
- rhythmbox-alternative-toolbar 0.15.0 has been added to the repo
- scribus 1.4.5 has been added to the repo
- weechat 1.3 has been added to the repo

##### Updated

- audacious has been updated to 3.7.1
- elixir has been updated to 1.2.0
- firefox has been updated to 43.0.3
- flash-nonfree-player has been updated to 11.2.202.559
- gnumeric has been updated to 1.12.25
- libpng has been updated to address CVE-2015-8540
- libreoffice has been updated to 5.0.4.2
- mercurial has been updated to 3.6.2
- pulseaudio has been updated to enable equalizer
- qtpass has been updated to 1.0.6
- tmux has been updated to 2.1
- youtube-dl has been updated to 2016.01.01
- yubikey-personalization has been updated to 1.17.3
