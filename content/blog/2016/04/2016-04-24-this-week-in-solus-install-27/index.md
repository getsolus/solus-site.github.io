+++
author = "joshua"
categories = [
"News",
"Plans",
"TWIS"
]
date =  "2016-04-24T19:03:35Z"
title = "This Week In Solus -- Install #27"
url = "/2016/04/24/this-week-in-solus-install-27/"
+++ 
Welcome to the 27th installation of This Week in Solus and one I'm happy to say is actually being written and published on schedule. 

#### 1.2

Let's be blunt here. We all know 1.2 is coming. We've said it is coming, our release schedule shows it is coming, and we're currently entering what we consider a "stabilization phase" for next month's release.
We will be seeding our first testing ISO to our Patrons tonight and we want **highly critical** feedback from you folks. We anticipate seeding multiple testing ISOs throughout the week, so if you're a Patron, keep your eyes peeled on your email. 
**If you're not a Patron, don't mind the "accidental" screenshots on Google+.**

#### Learn Solus Packaging

Yesterday afternoon I hosted an event where people could learn the basics to packaging on Solus. Condensed down to an hour, people were walked through everything from setting up their Solus install to packaging basics, in this session the example was 
Gnome Weather.

An edited version of the Hangouts On Air session is available to watch below and I plan on releasing both new and updated videos on the Packaging Series throughout the week, featuring all the new goodies of ypkg 2.0!

{{< youtube "kIaY1Bro3ag" >}}

#### Multilib

Multilib enablement is still on target for availability by the release of Solus 1.2 and we are currently in the process of landing the last of them. We have some expectations internally on when multilib should land but I'm declining to say when, mainly because 
I'm evil.

#### Kernel

For those that have been living under a rock, I'm happy to inform you that Solus is a Linux-based operating system, and as such uses the Linux kernel. For the rest of you, you'll be happy to know that we have updated to the latest 4.4.8 LTS version. We 
have also followed the lead of the [Clear Linux* Project for Intel® Architecture](https://clearlinux.org/) project by adopting a 
scheduler tweak that should help to mitigate the "wasted cores" problem (whereby workload isn't balanced across all the available cores).

#### Stability and Testing

DRI3 has been temporarily disabled in the Intel driver pending an investigation into instances where fonts may glitch. If you have been affected by this issue, please apply updates and inform us whether it resolves said issue. If the update not resolve this 
issue, please let us know so we can re-enable DRI3 and further investigate the glitch. Internet points and cookies in advance for all the testers!
We have also reverted to an older version of os-prober. In some reported instances, Windows would not be shown as an available boot option and as such, we rolled back to resolve this issue. We had initially updated os-prober to resolve an issue where 
newer Windows versions would be reported as Vista. But I'm sure we'd all rather have Windows be an option to boot, even if it claims it is Vista, than not at all.

#### Package Updates
Wait, you mean to tell me we don't stick with the same version of software for years? Here is a highlight of packages that have been updated this week:

New:

- evolution-ews 3.18.5

Updated:

- adapta-gtk-theme 3.20.3.56
- aria2 1.22
- atom 1.7.2
- cups-filter 1.4.0
- evolution 3.18.5.2
- gzip 1.7
- librecad 2.0.10
- lollypop 0.9.98
- mercurial 3.7.3
- mesalib 11.2.1
- moc 2.5.1
- nodejs 5.11.0
- optipng 0.7.6
- telegram 0.9.44
- tilda 1.3.3
- xorg-driver-video-amdgpu 1.1.0
- xorg-driver-video-vesa 2.3.4
- xorg-server 1.18.3
