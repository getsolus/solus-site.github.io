---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- News
- Plans
- TWIS
date: "2016-02-08T01:50:23Z"
title: 'This Week in Solus -- Install #20'
url: /2016/02/08/this-week-in-solus-install-20/
---

Welcome to the 20th installation of This Week in Solus. 

#### Packaging and Package Manager Improvements

Without question, Solus has the least complex native packaging and package manager systems of existing, modern Linux operating systems, and while we could sit back and enjoy that current status, we are committed to continuing to improve the 
experience of packaging and using the package manager.

We will be bringing small, incremental modernizations to improve the experience of using the package manager and establishing an even more optimized developer experience than what exists today. We anticipate these changes to land between now 
and our 1.1 release.

#### Update on 1.1

Speaking of 1.1, we have been hard at work refining and testing Solus to bring you a polished 1.1. I'd like to highlight some of the aspects of these improvements, as well as plans, below.

##### Early Access

We are currently in the process of internal QA and assessing the logistics of delivering early access images to our Patreon subscribers. We will be putting out an early access ISO to those supporters that pledged in the month of January soon.

##### Optimizations
      
1. We now expose a configuration option in our build tools to optimize for either speed or size of libraries and binaries. We have done an initial pass on the following libraries to optimize for speed: bzip2, libjpeg-turbo, libpng, xz, and zlib. This work was 
largely inspired by [Clear Linux's autospec](https://github.com/clearlinux/autospec).
2. We have enabled lock elision in glibc. This speeds up locks and under the right conditions (such as hardware support), can eliminate them entirely. This opens up the potential for things to be faster, to put it simply.
3. Improvements have been made to enable Solus to run significantly faster and smoother under virtualized environments (video below).

      
##### Printing

As stated in our [1.0 and Beyond](https://solus-project.com/2015/12/28/1-0-and-beyond/) blog post, printing support has been a target for 1.1. I am happy to report that printing has been resolved and will be made readily available in the stable 
repository for 1.1.

![relimg](2WCcF57H2z6O.png)

##### Python 3.5 and UCS4 migration

Python 3 and Python 3-based packages have been migrated from 3.4 to 3.5. The decision was made to move to 3.5 due to it disabling (by default) of SSLv3. In addition to the work done on Python 3, we have moved from UCS2 to UCS4 in Python 2. This was 
necessary to progress on getting printing to work out of the box (hplip would segfault without it).

As a result of the changes made to python, the process for updating existing systems is slightly more complicated. To ensure an easy transition for existing users, we will be providing an update assistant to bring Solus 1.0 installations to 1.1.

##### Refined Base

We will be working on reducing the size of the base and development components of the operating system. This will result in:
      
1. Smaller ISOs
2. A slimmer base installation
3. A slimmer development environment for our build system
      
##### Software Center

Work has been done on bringing AppStream information into the Solus infrastructure to provide more in-depth information (**and screenshots**) regarding libraries and applications. Slated for 1.1, we will be utilizing AppStream in the Software Center to 
provide a richer browsing experience.

Alongside AppStream integration, we will be working to make it more responsive and making it more obvious when there are updates available for the user's system.   