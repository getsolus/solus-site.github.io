+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"Plans",
"TWIS"
]
date =  "2016-01-10T22:31:33Z"
title = "This Week in Solus -- Install #17"
url = "/2016/01/10/this-week-in-solus-install-17/"
+++ 
Welcome to the 17th installation of This Week in Solus. 

#### Further Separation from GNOME Stack

We have benefitted extensively from leveraging the work of the GNOME Foundation, their contributors, and in the end the software they produce. However, the relationship with GNOME and downstream has continued to degrade and has made 
working with GNOME and its contributors difficult.

This degrading relationship has had the unfortunate drawback of valuable contributions from downstream, for example from the Solus Project, being rebuked and thus making it harder to innovate separately while leveraging GNOME technologies.

For the Solus Project and our demands for Budgie, this necessitates the further separation from the GNOME Stack and working with more willing upstreams. I'd like to summarize aspects that are in need of separation and improvements below. 
For the full issue report, [view this GitHub issue](https://github.com/solus-project/budgie-desktop/issues/313).

##### GDM

In order to use GDM, you must also have GNOME Shell. For a downstream desktop, this means that in order to run GDM, you must also be running Gnome Shell on the login screen. This adds a massive amount of overhead for single-user systems. 
We intend on dropping GDM and replacing it with LightDM. As we need Wayland support for 2.0, this includes working with the LightDM team towards Wayland support (**assuming they are receptive to this**).

##### GNOME Control Center

At one point in time, Gnome Control Center was more modular and extensible. However, GNOME has continued to integrate this further into the Gnome Shell Experience.

We would like to replace this commonality, potentially working with the elementary OS Team on improving and modularizing Switchboard so it may benefit not only Pantheon, but Budgie as well.

##### GNOME Session

A simpler and more extensible API could be provided to replace the extreme dependency on org.gnome.Shell interfaces and enable usage on multiple platforms and for multiple desktops. Ideally we'd advise libdesktopsession and allow for both 
Wayland and X11 functionality.

##### Vala

GNOME has been showing preference of using JavaScript and Python for primary application development. While there is no immediate evidence Vala is to be deprecated, all evidence suggests no work is currently happening on the compiler front in Vala. 
We intend on deprecating it from the core implementation of Budgie while still enabling it for extensions.

#### User Guide

We are happy to be releasing the first version of our comprehensive User Guide. This User Guide covers a wide variety of topics and is accompanied by images:

- Installation from start to finish -- This ranges from getting the ISO to walking you through every step of the Installer.
- Using the desktop -- This talks about different aspects of Budgie, Raven, and shortcuts.
- Common tasks -- This section talks about what applications are pre-installed and available out of the box to accomplish a wide variety of common tasks, ranging from browsing the web to installing and updating software.
- Managing your system: Inarguably the most comprehensive part of the User Guide, this will walk you through something as simple as changing your background to managing user accounts.
- Advanced: This section primarily contains links to resources for learning the package manager, getting involved, and reporting issues.

There are still a few things we are aiming for the second version of our User Guide and we'll report more on it during the next TWIS:

1. We will be adding OS X instructions to the User Guide. We have a fantastic community member that will be contributing instructions.
2. We're evaluating moving towards utilizing Markdown, separating out each section into individual Markdown files, and revisioning this in a Git fashion. This would eliminate the current need for revisioning via Google Drive and help with community contributions. 
- We would generate PDFs based on Markdown
- We may integrate this into the website.
3. Continue to improve the Advanced section, offering more advanced topics.
 
You can download the User Guide pdf [here](https://drive.google.com/file/d/0B5Ymf8oYXx-PWTVJR0pmM3daZUE/view?usp=sharing). It is also linked on website navigation under Solus.

#### Supporters

We have been continuously grateful for all the support from our community. [As announced on our Google+ page](https://plus.google.com/+Solus-Project/posts/M1oJ6zk2kbA), we are in the process of:

1. Setting up a dedicated support email to enable our supporters (chiefly from Patreon currently) to enable them to have a direct line of communications with us.
2. We will be providing early access to builds and features in the future to supporters. We **will** continue to release milestone releases in the **usual fashion**, but establishing the relationship with our supporters is a very key thing to do is important to us. 
- By providing these early access builds, we will also be able to withdraw the commonly confused (**and poorly named**) Daily ISOs.
- We **will** continue to have an unstable repo.
      
#### Package Updates

Here is a highlight of package updates that have occurred this week:

New: 

- codeblocks 13.12            
- easystroke 0.6.0            
- exfat 1.2.3            
- gnome-todo 3.18.1            
- mpc-client 0.27            
- python-mpd 0.3.0

Updated:

- atom 1.3.3            
- emacs 24.5            
- feedreader 1.4.3            
- firefox 43.0.4            
- fotoxx 16.01.1            
- git 2.7.0            
- hal-flash 0.3.2            
- keepass 2.31            
- nautilus-dropbox 2015.10.28            
- nodejs 5.4.0            
- php 7.0.2            
- postgresql 9.5.0            
- telegram 0.9.18            
- thunderbird 38.5.1            
- weechat 1.4            
- winetricks 20151227            
- youtube-dl 2016.01.09