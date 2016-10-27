---author: joshua
categories:
- Budgie
- News
- Plans
- TWIS
date: 2016-07-05T23:03:56Z
id: 1498
title: 'This Week in Solus -- Install#30'
url: /2016/07/05/this-week-in-solus-install-30/
---
Welcome to the 30th installation of This Week in Solus, or as I prefer to call this one, the Hackfest 1.2.1 roundup. 

#### Hackfest 1.2.1

Last weekend, Ikey and I worked with the community on addressing items for Solus 1.2.1, in addition to closing a multitude of bugs and landing patches from the community.

##### Videos

##### Summary

A lot was accomplished over the course of those two days, such as:
-  You can now pin Visual Studio Code (both the proprietary and OSS versions) in Budgie.
-  Fixes landed to ensure the Color calibration and profiling section in Gnome Control Center showed the appropriate devices and resolved crashes for some users.
-  You can now set a custom background for the Lock Screen via Gnome Control Center.
-  Conky transparency has been fixed.
-  The Third-Party section in Solus Software Center has received support for installation of more software, namely: 
 - Google Talk Plugin
 - Sublime Text 3
 - Opera
-  Patches have landed for a multiple of new and existing packages, such as: 
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=711">font-indic-ttf has landed in the repo for improved international support.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=879">Glade has been updated to 3.19.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=961">Guake has landed in the repo.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=910">Parted is now a runtime dependency of gnome-disks.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=721">pgAdmin3 has landed in the repo, alongside sphinx.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=1001">SFML has landed in the repo.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=883">xprop now using the correct package format.</a>
 - <a href="https://bugs.solus-project.com/show_bug.cgi?id=868">Zenity now using the correct package format.</a>

#### eopkg is dead, long live sol

Immediately following the delivery of Solus 1.2.1, Solus 2.0 will enter active development. The first change in this series of developments will be the removal of eopkg, which will be re-implemented in C as 
<a href="https://github.com/solus-project/sol">**sol**</a>. The implementation will be specifically tailored to take advantage of modern CPU features, enabling an optimized package manager that will form the core of Solus 2, enabling a far lighter disk 
profile for the core of the operating system.

sol will eliminate the need for comar, a remnant from the fork of PiSi to eopkg, and inherit views towards transactional usage and global Solus philosophy such as **being stateless**. We'll add support for post-installs but they'll be used sparingly, and 
where possible sol will pick up the bits it needs to.

#### C No Evil

{{< altimg "2016/07/Screenshot-from-2016-07-05-23-51-45.png" >}}

Budgie at its core has long been written in Vala, with parts of the environment (**such as the Applet plugin API**) being written in C. But as we look towards improving performance, ensuring a firmer control on memory management and security, 
and better defining an ABI, we have come to one, simple conclusion: **In order to address our concerns and fit our needs, we need to (re-)write the core in C**.

What does this mean for third-parties shipping Budgie applets? You can continue to develop applets in the **same fashion**: leveraging C, python, and Vala, and effortlessly these applets will be more responsive under our C-based core.