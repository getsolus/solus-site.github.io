---
title: "Accelerated Cadence and Faster Infrastructure"
author: "ikey"
categories:
- infrastructure
- news
- packages
- partners
date: 2017-10-06T01:49:59+03:00
featuredimage: "/download-speeds.jpg"
url: "/2017/10/06/accelerated-cadence-and-faster-infrastructure"
---

Over the last month we've been pushing Solus hard in order to scale properly to meet the growing daily demands of the project. In a nutshell - it's not enough to be faster, we must be fast. We're delighted to report that we've achieved that aim, and in this post we'll share the details of how we got there.
<!--more-->

### fastly

We're thrilled to announce that [Fastly](http://fastly.us/2fpXNvV), providers of first-class content delivery, are sponsoring the distribution of packages from our package server via their CDN services, enabling **blazing fast and more reliable** package downloading for Solus users around the world. Fastly is passionate about [open source](https://www.fastly.com/open-source/), with a long history of sponsoring open source projects, including Debian, Inkscape, the Linux Kernel, Mumble, and more. When we reached out regarding our desire to vertically and horizontally scale out our infrastructure, they brought their expertise and resources to the table, recognizing the opportunity to positively impact the Solus experience for our users all around the world.
Previously we used a single server (on a decent line) to provide our package repositories, and therefore package updates, to our users. As time went by and the Solus user base grew, the server became oversaturated and was no longer able to sufficiently cope with the load.

One of the most important things for a project like Solus is being able to rapidly deploy security sensitive updates, fresh software, and bug fixes, to our users. Prior to our switch to Fastly late last Friday, our systems had all but crawled to a halt. On my system, the average speed coming from the package servers had dropped as low as 280kb/s, making daily development incredibly painful. Depending on your location in the world, and your internet capabilities, this may be similar or indeed lower.

Now, we're seeing dramatically higher speeds. More importantly, our users are seeing similar speeds all around the world, so their proximity to the main server is no longer relevant. As an indication, using the previous test speed of 280kb/s on my system, the Fastly CDN now provides the same items at 11.14mb/s. That's almost 40x faster!

### ferryd

To understand what [ferryd](https://github.com/solus-project/ferryd) is, and what purpose it serves, we must take a very brief tour of the Solus deployment architecture:

- Changes made to package within git
- Core developer publishes to build controller
- Build controller allocates job to a build node
- Build node uploads the final results (packages and logs) to final servers
- Script on remote repository must process the newly upload packages into unstable

Note that our build architecture very specifically prohibits developers from directly uploading their changes, they must instead go through the build mechanism via trusted builders, which in turn are allowed to upload into the `incoming` tree.

Ok, now we understand the basic architecture in play, we can discuss ferryd. Prior to the development of ferryd, we used a tool known as `binman.py`, which is very old at this point. It was designed at a time when the project was much smaller (and indeed, under a different name!). With the growth of Solus, we unfortunately got to a point whereby the inclusion of a single `.eopkg` package file could take anywhere up to 6 minutes. With a typical payload from the build server includes 3 `.eopkg` files, each "build" then leads to a delay of a minimum 18 minutes before those items then turned up in the index. This became a massive bottleneck and made it impossible to create interdependent build queues for large stack updates.

**Enter ferryd**

[ferryd](https://github.com/solus-project/ferryd) is described as: "Fast, safe and reliable transit for the delivery of software updates to users". It was built from the ground up to ensure the absolute minimum amount of time required to process packages, as well as addressing design flaws in the old implementation. Written in Golang, it is designed to be highly parallel and ensure that as soon as a package is processed, it is always available. A typical package inclusion takes little over 6 seconds (which is an enormous improvement on the previous 6 minutes!). The new design also mandates a verifiable "transit manifest" (.tram) upload, so that an entire package set is processed at once. So even for our large build payloads, we still see an average of 6 seconds per inclusion.

**So how much faster is it..?**

OK so if we look at our pre-ferryd days, we'd become completely stuck in the mud. On average, we were limited to around 10 good package builds a day (and perhaps a kernel set). Obviously this wasn't always the case, but it slowed over time, until it was virtually crippled. Since ferryd was introduced, we really put it to the test. Within the first 24 hours of ferryd being operational, we were able to get in excess of 250 package builds in! That's a whopping **2500%** faster.

**Deltas**

As well as ferryd being our new repository manager, it's also designed to provide "always on" delta availability. Any time a new package payload reaches the unstable repository, delta operations are fired off in parallel (8 at a time) to produce delta packages. Delta packages contain the different files between two given releases of a package, allowing for much smaller and quicker updates for you. This also happens when we sync unstable into shannon (stable), in a non blocking fashion. Thus, we can perform a sync in around 8 seconds, continue development on unstable, and update the stable repo index once all of the needed
deltas are available.

### More people

OK so keep up - we've got a fantastic new repository management system, always on deltas, significantly faster downloads.. what next? More people, of course! We've now onboarded 2 more global maintainers for the project. They have direct access to the repositories like we do, and can help with landing patches. More people = more faster.

Without further ado, please welcome [kyrios](https://dev.solus-project.com/p/kyrios123/) (Pierre-Yves) and [joebonrichie](https://dev.solus-project.com/p/joebonrichie/) (Joey Riches) as global community maintainers! They've made a significant dent already, and the Solus build page is constantly ticking over.

Over the following weeks and months we'll be looking to onboard maintainers for specific repositories and stacks to further increase the Solus cadence, and ensure each area is monitored by those familiar with the relevant technologies.

### Fixed sync cycle

As of this Friday (October 6th) [we'll be implementing a formal sync cadence](/articles/packaging/release-processes/en/) for issuing updates from unstable to the Shannon channel (stable repository). This mandates that we shall sync at minimum once every Friday, which will allow us to make breaking changes in the unstable repository in that time and stabilise in time for deployment. Our first demonstration of this will be to update the GNOME Stack in Solus to 3.26.1 as part of our ["Weekendtoberfest"](https://dev.solus-project.com/T4672). We may also make minor syncs during the week, but Friday should be the expected "batch update" day.

### Finally...

Solus is now able to move at a formidable cadence once more - enabling developers to rapidly deploy updates to our users in an incredibly short amount of time, using the least amount of bandwidth possible, and over the fastest connections. We're now looking at mirroring options to help alleviate even more of the network, and we'll deploy that capability soon in a Software Center update. You can now look forward to quite literally thousands of updates over the coming month, in an streamlined and uninterrupted way!
