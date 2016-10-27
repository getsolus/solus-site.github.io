---
author: Ikey Doherty
categories:
- News
date: 2015-07-27T20:57:38Z
id: 645
title: Clear Inspiration
url: /2015/07/27/clear-inspiration/
---

Over the course of the last few months, Solus has undergone some very core changes, and embarked on a few new missions too. But where did this inspiration come from? Well, for the most, from the 
[Clear Linux Project for Intel Architecture](https://clearlinux.org/).
<!--more-->

### What is the Clear Linux Project for Intel Architecture?

Per the website description:

The Clear Linux* Project for Intel® Architecture is a project that is building a Linux OS distribution for various cloud use cases. The goal of Clear Linux OS is to showcase the best of Intel Architecture technology, from low-level kernel features to 
more complex items that span across the entire operating system stack.

### Why is Solus interested?

The Clear Linux Project is doing a lot of things *new*, and a lot of things *well*. Whether its the [stateless](https://clearlinux.org/features/stateless) implementation, or the 
[always-available debug information](https://clearlinux.org/features/all-debug-information-all-time), there are an awful lot of cool things happening there.

### Ok, so what did you steal?

Actually, quite a lot! The most fundamental change we took away was *attitude.* The Clear Linux project has a truly impressive release cadence, seeing two builds every day with real world tangible changes. With an international team the 
benefits are very obvious. We took home the message of *delivering*. And to do that, you're going to need some powerful tooling.

The current Solus infrastructure is largely inspired (but isn't representative of) Clear Linux Project development processes. The [Makefile-based system](https://git.solus-project.com/common/about/) that powers our current workflow with such ease, 
is inspired directly by what is being used within Clear Linux. Before this, we used a single repository for all of our packages, with manual patch management across all packages within this repository, and a hook to build the repo when it changed. Now, 
we're able to deploy tangible changes in minutes, with no obstacles.

More recently, we embarked on a mission to convert Solus to a stateless configuration. We're a long way from that target right now, but we're directly following the work of what we consider upstream in this regard, the Clear Linux Project. Through the 
work done there, we can benefit and extend upon this to get to the point shown in the screenshot below, of Clear Linux (2190) running via KVM.

{{ altimg "2015/07/clear.png" }}

### Other areas we've taken interest

Well, for one, boot time. It's no secret lately we've been doing many things to optimize our boot time, and we know we can do better. Granted, we'll never achieve the awesome boot speeds of Clear Linux, but we can definitely look to it for 
inspiration to do better!

{{ altimg "2015/07/clear_boot.png" }}

The major thing for us, is how we put things together. Tooling is a huge thing for us now, and we try to integrate good tooling into our daily practices. We've got [Over the course of the last few months, Solus has undergone some very core 
changes, and embarked on a few new missions too. But where did this inspiration come from? Well, for the most, from the [Clear Linux Project for Intel Architecture](https://clearlinux.org/).

We recently adopted some toolchain changes too, ensuring that the '**Wl,--as-needed**' behaviour actually functions as described. This was integrated into binutils, and vastly reduces the unnecessary linking we suffered 
(unused direct dependencies). Today we went a bit further and integrated some further default CFLAGS/LDFLAGS changes, switching our compiler to emit full relro, stack protected binaries by default, and ensure NT NEEDED was looked at 
rather than shallow .so only.

### Lastly

Huge thanks to Intel OTC and the Clear Linux team for all the work being done, and shared, so that projects that do not even share the same goals can actually benefit immensely. We highly recommend those reading the article head over to the 
[project homepage](https://clearlinux.org/) and take a good look!

Disclaimer:

I, the author, work as part of the Clear Linux Project for Intel Architecture development team at Intel OTC. As such, the views expressed in this post, and blog, do not necessarily reflect those of my employer.

Whilst my connection to the project could potentially jade my opinion in some aspects (positive!) -- this post serves as a nod to the great work everyone involved in Clear Linux Project is doing, and to show the great impact it is having on other 
unrelated projects, such as a desktop Linux distribution, Solus.