---
author: ikey
categories:
- News
date: 2014-02-22T15:24:15Z
id: 101
title: Budgie Desktop v1.19
url: /2014/02/22/budgie-desktop-v1-19/
---

Hello all, today I've released a fairly small update to budgie-desktop, v1.19

From the [GitHub release page](https://github.com/solus-project/budgie-desktop/releases/tag/v1.19):

* glib schemas should be compiled
* CSS styles built directly into binary
* popover support greatly improved (using grabs, should disappear when its meant to)
<!--more-->
* Battery icon correctly displays various statuses, including fully charged
* Icon tasklist fully functional, including action menu (right click)
* Touch support improved (tasklist, etc.)
* Painting issues fixed

The RPM packages on OBS now have post,postun handlers to ensure that the GLib schemas are compiled on the host, as is expected. I apologise for this failure in 
the last release.

Note the version number is not indicative of stability, and is generated via "git --describe tags"

As usual, you can install for Fedora 20 and openSUSE 13.1 [via the OBS repository](http://software.opensuse.org/download.html?project=home%3Aikeydoherty%3Aevolve&package=budgie-desktop)

{{< altimg "2014/02/Screenshot-from-2014-02-22-145146.png" >}}