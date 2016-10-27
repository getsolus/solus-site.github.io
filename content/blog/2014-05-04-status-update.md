---
author: ikey
categories:
- News
date: 2014-05-04T17:25:51Z
id: 136
title: Status Update
url: /2014/05/04/status-update/
---

Hello all!

It's been a while since the last bit of news, so I thought I'd update you with where I currently am with Evolve OS building. Today, the last of the "mass-rebuilds" is 
taking place, ensuring that the underlying toolchain is fully functional and correct. <!--more-->

{{< altimg "2014/05/Screenshot-from-2014-05-04-180645.png" >}}

At the time of writing, I have 157 binary packages built and verified. I am now preparing a local build system to finish the building of the remaining packages. This is 
roughly 10% of all possible binary packages right now, though its a much higher source percentage.

**What's on the agenda?**

Once I have the remainder of the base packages (base/devel/boot/util) built I'll be building my first Evolve OS ISO. Once that's done there's some security issues and 
outdated packages to address in the repository (as they hadn't been updated in quite some time) -- and then its full steam ahead with putting out an ISO with the Budgie 
Desktop!

Note that the first ISO will be somewhat lacking in features and polish, but this is more of a verification stage. I have made a few decisions though that I would like to share 
with people:

* Evolve OS will not be a rolling release
* We'll follow the "stable base, up to date apps" philosophy that made SolusOS so successful.
* We're not going to be an enormous distro. What you see is what you get, package requests will be evaluated but at the end of the day contributions of packages are so 
much more valuable.
* Budgie Desktop will be the only supported desktop (And its associated GNOME friends)
* No other desktop will be available via the repository
* It will only ship as 64-bit -- please do not ask for 32-bit.
* We're looking at 3 weeks for the first ISO (realistically)
* In many ways we're going back to the basics -- integration is a massive project priority. Remember, your system should not be getting in your way!
* Eventually -- package conversion systems will exist to make life easier for users.
* Performance is also a big priority

**RepoHub**

Internally I will continue to use RepoHub (the build software created for SolusOS 2, and indeed this set of packages) to manage repo builds and sync-work. Note that I cannot 
run a public instance, as I simply do not have the available resources to do so (limited to 17GB binary package repository)

It has been suggested that I use OBS, however OBS does not actually support the PiSi package manager (or indeed the Evolve OS modifications). While it is true I could 
contribute patches to OBS to enable PiSi support, the following facts remain starkly true:

* I cannot run an OBS instance anywhere
* This would require the support of openSUSE to have an Evolve OS repository bootstrapped project in their public OBS
* I know about as much about Perl as I do about the opinions of a Yorkshire Terrier on the human condition.
* Assuming the above could be satisfied, that would be a very long and drawn out process which would actually delay Evolve OS even further, and I intend to reuse what 
I already have.

**Anything special in the first ISO?**

The first ISO confirms that Evolve OS lives (insert horror music here) and exists publicly. It will include the installer, as a layover from SolusOS 2, and not a whole bunch 
of features. In reality it won't be an awful lot different from previous ISOs made from the same packages.

It will feature a minimal set of packages, installer, budgie-desktop, and the repo already setup. This will hopefully serve as a good system for those wanting to contribute 
to the project.

**Contributing.. How?**

Well, as soon as the ISO goes out, please let me know what I can do to facilitate easier builds of Evolve OS packages from foreign systems, so that it can be built from the 
outside-in if needed. A lot of the stuff that needs addressing comes down to packaging or the budgie-desktop.

Check out the [GitHub page](https://github.com/solus-project) for details on current repositories