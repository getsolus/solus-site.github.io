---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- news
- security
date: "2014-06-07T19:04:11Z"
title: Security Status of Validation ISO, Mini Update
url: /2014/06/07/security-status-of-validation-iso-mini-update/
---

Hello all,

Just a quick word on where I'm at right now. A multitude of issues cropped up in PiSi due to the recent changes, and as a result it's now impossible to update the repository from the Validation ISO. Many apologies for this, but there is not an awful lot I can do apart from issuing a new ISO, but with a new ISO around the corner (Saturday) it makes little sense right now.

This bug is documented in [OS-4](https://solus-project.com/project/os/issues/OS-4), and has subsequently been fixed in the repository. Please also note that an 
[update has been pushed for OpenSSL](https://github.com/solus-project/repository/commit/ed525284f039aae2cbafd3924cbca5b37cfd4c21) addressing 
[CVE-2014-0918](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0198). As the repository 
**cannot be updated within Evolve OS current releases, you should currently consider the existing ISO's as vulnerable.**

We're currently looking at June 14th for the 0.3.0 release of Evolve OS (or "alpha1") -- which will ship with a desktop, though networking via WiFi will be difficult 
as the Budgie Desktop currently lacks support for graphical networking agents (nm-applet)

You can follow the progress of bugs [here](https://solus-project.com/project/os/milestone/2/details)

You can follow git (development) activity [here](https://github.com/solus-project/repository/commits/master)

Today I'm performing the rebuilds due to encountered dependency issues, however that now puts me at a binary package count of 280. Each package is being cleaned 
up and validated as I go along, ensuring each package builds first time from an entirely fresh build root (using KVM)

I've managed to get most of X built locally, but before I release these on Saturday there are some remaining CVE's to deal with:

* gnutls -- [CVE-2014-3466](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-3466)
* libxfont -- [CVE-2014-0209](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0209)
* libxfont -- [CVE-2014-0210](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0210)

If you're testing the ISO, please report any issues you find on the bug tracker! I'm personally looking forward to releasing a desktop-enabled ISO on the 14th, however if it 
proves that Budgie desktop will hold back the release, we'll fall back for one ISO to using something like OpenBox/tint2 -- just so we stay on schedule.