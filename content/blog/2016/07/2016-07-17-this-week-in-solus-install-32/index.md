+++
author = "joshua"
categories = [
"News",
"Packages",
"Plans",
"TWIS"
]
date =  "2016-07-17T19:17:00Z"
title = "This Week in Solus -- Install #32"
url = "/2016/07/17/this-week-in-solus-install-32/"
+++ 
Welcome to the 32nd installation of This Week in Solus. 

#### Solus 1.2.1 Releases Tomorrow

We're really excited to be releasing our last "traditional" release, Solus 1.2.1, tomorrow. We opted to delay by a day just to ensure we don't push ourselves too hard after the recent Hackfest, as well as being able to take the time to do additional QA.

#### Infrastructure Improvements & Closure of 1.0 Upgrade Path

We have used Bugzilla since mid-2015 and while it has served us well, we are continuously reviewing alternatives and as of Friday, July 22nd, **we will be locking down our BTS**. This will enable us to shift to a better alternative and cherry-pick bug history 
to migrate over.

This downtime for the Bugzilla will also open the window for additional infrastructure maintenance and **deprecate the upgrade path** from Solus 1.0, which was released over 6 months ago. This means that updating from 1.0 release 
**will no longer be possible** after Friday and we will be removing the old repository. If you have already upgraded to 1.2, whether it be through the migration tooling during 1.1 or after, **you will not be affected**.

#### Impromptu Hackfest & Sundays with Solus

On Saturday, we decided to have an impromptu hackfest to work on items for Solus 1.2.1. If you have the time to watch, we'd recommend it!

{{< youtube "hZexPAobsSo" >}}

If you just want a summary of the impromptu Hackfest or want to hear what is coming up next week, check out our short Sundays with Solus!

#### Package Highlights

A lot of packaging work occurred during the week as well as in our Impromptu Hackfest, here are some highlights:

New:

- bullet3 2.83.7
- calibre 2.62
- cmus 2.7.0
- dbus-sharp 0.8.1
- ffmpegthumbnailer 2.1.1
- graphviz 2.38.0
- gnome-pie 0.6.8
- kicad 4.0.2
- lmms 1.1.3
- mtpaint 3.4
- musescore 2.0.3
- newt 0.52.19
- rawtherapee 4.2
- sassc 3.3.6
- sloccount 2.26
- texlive 20160523b
- texstudio 2.11.0
- xkill 1.0.4

Updated:

- codelite 9.2
- dia: Enforce --integrated for single-window mode.
- easytag: Drop the inode/directory mimetype handler.
- gimp: Update to 2.8.18 and enable ascii exif and jpeg2000 support.
- git 2.9.1
- haste-applet 0.2.4
- hplip 3.16.5
- kernel: Enable CONFIG_BRCMFMAC_USB and fix kernel-tools
- r: Now uses lapack for -lapack instead of openblas.
- screenshot-applet 0.3.5
- texworks 1.6.1
- zim: Enable support for following plugins: Insert Diagram, Insert Gnuplot, and Insert Screenshot (via rundeps).