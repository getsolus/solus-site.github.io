+++
author = "joshua"
categories = [
"News",
"Releases"
]
date =  "2015-12-02T07:52:13Z"
title = "Daily ISO 0.201549.3.0 Released"
url = "/2015/12/02/daily-iso-0-201549-3-0-released/"
+++

The Solus Project is happy to announce the release of a new Daily ISO, 0.201549.3.0. 

#### GDM

The Solus Project now uses GDM instead of LightDM.

#### New Installation Process

The Solus Project now uses [gnome-initial-setup](https://github.com/GNOME/gnome-initial-setup) to vastly simplify the installation process of Solus. The majority of the process is now post-install, where you setup your user, locale and 
keyboard settings, timezone, and optionally online accounts.      

We also now directly integrate goofiboot into the installer (as a result, we now manipulate EFI variables).

Below is a video of the installation process.

#### Optimizations and Fixes

DRI3 has now been disabled and issues relating to the booting of ISOs via USB 3.0 drives are now resolved.

We have also resolved WebKit related issues that affected Epiphany and Online Accounts.

#### Download

{{< relimg "Hey-You-Guys.jpg" >}}

You can download the latest Daily ISO by going [here](https://solus-project.com/daily-iso/).