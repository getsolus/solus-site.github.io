---
title: "Supercharging Solus Infrastructure"
author: "joshua"
categories:
- infrastructure
- news
date: 2018-09-08T08:20:20+03:00
featuredimage: "2018/09/supermicro.jpg"
url: "/2018/09/08/supercharging-solus-infrastructure" # Example, /2017/01/18/adopting-flatpak-to-reassemble-third-party-applications
---
The time is nigh for another significant shift in the infrastructure and development of Solus. As many of you know, we have been utilizing multiple dedicated OVH servers to provide a multitude of services: the website, forums, development tracker, package repo, and build server. Migrating to OVH was a significant upgrade from our previous hosting provider and this allowed us to retire the build server that once sat (literally) within arm’s length of Ikey. Just as that previous hosting providing and build server worked well for us at the time, the OVH servers we have been using of late have contributed significantly to the progress of Solus. With our current infrastructure, we have been able to achieve well over 25000 package builds, countless stack upgrades, many ISO releases, and a several fold increase in the size of our community.

Empowered with our new tooling like cuppa and eopkg-deps, we are now capable of a faster package upgrade cadence than ever before. As a result, we have begun to run into instances where we would like to perform major stack upgrades (such as Haskell or KDE Frameworks 5) while still ensuring that our global maintainers are able to continue landing patches. Once again, we find ourselves out-growing our computing resources.

## Infrastructure Improvements and Migration

To facilitate our accelerated development cadence, as well as our growing needs, we are shifting our infrastructure from multiple OVH servers to hardware graciously provided by the Rochester Institute of Technology. Specifically, we have been provided with:

- A Supermicro 2042G-TRF 2U Server
 - Four AMD Opteron 6128 CPUs (32 Cores)
 - 128 GB of DDR3-1333 Registered ECC Memory
 - 6TB of (Raw) HDD Capacity
 - Dual Redundant 1400W Power Supplies
 - IPMI Remote Management
- An unmetered 1Gb network connection
- The ability to directly push packages to the purpose-built “mirrors.rit.edu”, which is fitted with an even faster 10Gb uplink.

In order to make efficient use of this hardware, we are leveraging the Xen Hypervisor in order to host multiple Virtual Machines to support the various needs of the project:

- Building packages
- Community Engagement via the Forums
- Development Tracking via Phabricator
- Website Hosting

As a result of this new hardware, we are significantly reducing our operational costs on a monthly and yearly basis, as well as enabling us to scale up our infrastructure in the future with more ease. We are now at a point as a project where it no longer makes good financial sense to lease resources when we have the ability and expertise to configure and manage our own equipment.

With this new hardware, we have already been able to:

- Allocate more disk space and processing to the development tracker and forums.
- Utilize this opportunity to switch from httpd (Apache2) to nginx, which has been shown to [use significantly less memory while being capable of serving far more connections per second than httpd](https://help.dreamhost.com/hc/en-us/articles/215945987-Web-server-performance-comparison). This will help improve ring0 (repo) performance as well as that of serving any static content we need (like the website).
- Scale up builder capabilities including dedicating cores to a secondary builder for stack upgrades.

This infrastructure migration does currently come with a caveat. Because of the timing of these upgrades and our lack of access to the solus-project.com domain, Bryan and I are going to be shifting Solus services over to the getsol.us domain. We are expecting this to be a temporary measure until we are provided access to perform the necessary DNS changes. To be clear, the decision to migrate to our own hardware has been in the works for some time. However neither myself, Bryan, or anyone else on the Core Team expected to be accelerating our original plans and roadmap for our infrastructure migration and upgrades so soon. With the development cadence of Solus accelerating and our OVH service contracts expiring, we have decided not to renew our OVH services this year and therefore need to migrate off of their equipment. It is unfortunate that the timing of this has lined up with Ikey’s move to England. However, we take full responsibility for not having prioritized several “bus factor” issues sooner that would have made this transition smoother. We do not expect our migration to greatly impact our users and we are working to reduce as many user-facing headaches as possible. Again, we apologize in advance if this inconveniences you in any way.

## Repo URLs

We are assessing the pisi / eopkg code to determine the best method for gracefully changing your stable (Shannon) and unstable repo URLs from solus-project.com to getsol.us. This will enable us to automatically transition you to the new repository, without manual intervention, via normal package updates. We will have a further announcement (both on this blog and social media) to notify you of the release, as well as providing steps to manually change to the new repositories, should you need them. We strongly encourage you perform this upgrade **immediately**, as we can not guarantee availability of the legacy package server in the near future.

To build on this, these instructions will also be made available in our Help Center, as pinned posts on our social media accounts and subreddit, in the topic of our support IRC channel, as well as via support channels typically reserved for these sorts of important cases, like Facebook Messenger, to help aid you in this changeover should you need it.

If you are using a repository which is not provided by us (or RIT), we recommend reaching out to the respective administrator to ensure they update their rsync URLs to new endpoint (mirrors.rit.edu).

## New ISOs

Additionally, existing ISOs will no longer be able to update after the legacy server is retired. We are in the process of issuing new ISOs (which will be Solus 3.9999) that will default to the new repo URLs. This measure is being taken to ensure new installs via the new ISOs have a viable upgrade path. It should also reduce any issues that users have experienced with the first upgrade post-install and will feature hardware enablement for new CPUs and GPUs that have been released since the last ISO. We will be have a further announcement (both on this blog and social media) when these ISOs are available, so that you may download them as needed.

## Moving Forward

Over the next couple days, we will be working hard to bring up our existing services in the new environment and to migrate DNS records to the getsol.us domain. While we are migrating, Solus services have been set “read-only” to minimize any down-time. We anticipate that we will be fully operational again on Sunday, barring any unexpected issues.

---

If you have any questions, don’t hesitate to reach out via social media or IRC. Once again, we deeply apologize for any inconvenience this infrastructure change may cause you. As we continue to explore the capabilities of this hardware during this new chapter of Solus development, we look forward to the new opportunities and adventures it will bring!