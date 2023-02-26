---
title: "Software Center Redesign | The Roundup #5"
author: "joshua"
categories:
- news
- roundup
date: 2018-03-09T12:21:00+02:00
featuredimage: "/solus-sc-redesign.jpg"
url: "/2018/03/09/software-center-redesign"
---

Welcome to The Roundup #5, your bytes of Solus news. In this roundup, we're talking about our in-progress redesign of the Software Center!
<!--more-->

## Software Center Redesign

Ikey has been working this week on a redesigned Software Center. We went into this redesign with multiple goals in mind:

1. We wanted to simplify navigation of the Software Center.
2. We wanted to improve discoverability of software, with a new home view featuring "New This Week" and "Recently Updated".
3. We wanted to be able to provide a curated featured software list in our repository and open the door to the possibility of doing so on a per component level (such as gaming). This is similar to "editor's picks" in other software centers / "app stores" on other platforms.

The old Software Center has been around in one shape or another since 2013, and despite various face lifts, still was stuck to the limitations of its time. The new Software Center applies some modern biases and design logic, moving from the old static 4:3 design to 16:9 by default and taking advantage of wider displays. The entire layout and interaction has been overhauled to give the feeling of a "single-page webapp", highly responsive with no assumptions on how the user is interacting with mouse, keyboard or indeed even touch-screen.

As a result of the redesign, the Software Center starts very quickly, and feels _good_ to use. Users are not left waiting ages for content to appear, and can instead focus on discovering software to help them, rather than navigating arbitrary lists of packages.

We've also been having discussions on improving the integration of the Third Party repository. Instead of a dedicated Third Party section, we'll be leveraging the upcoming Software Center's plugin-based architecture, making a Third Party repo plugin and enable Third Party items to be surfaced alongside native repo items throughout the browsing experience, so you could expect to see Google Chrome in the Web Browsers category, Slack and Skype for Linux in Instant Messaging, and so on. Like we'll be doing with snaps in a future release of the Software Center (post Solus 4), we'll visually differentiate Third Party items to communicate to the user where the software is coming from.

There are more architectural improvements coming to this Software Center as well, such as:

- Dynamic backend support added at runtime
- Highly threaded design
- Fast startup time
- Responsive UI design that adapts to various screen configurations
- Ability to "stack" operations to install/remove software on a dedicated workqueue.

It should be pointed out however that this is more than just a "face lift". The internals of the Software Center have been rebuilt to support a modular approach, with the `eopkg` plugin being detected at runtime if the user is running a Solus (or Solus based) system. This has laid the groundwork for `snapd` integration in a future update. More importantly however, the Software Center is in line with how a Solus installation is **designed to be maintained**. That means no forced offline updates, instead prompting for when a reboot is recommended, and providing the ability to select the correct updates to suit your habits. Last but not least, all native Solus packages in the Software Center integrate the git history into their changelogs, allowing users to be fully informed on what these changes are doing on their system. With the new specialized markdown parser we've added, this will allow richer changelogs with links and styling, so that Solus developers can better present this information to users before they update. Above all, the Software Center is designed to facilitate the user to easily make informed decisions on how to maintain their systems, without forcing them to do so.

We're really excited to bring everyone this new Software Center for Solus 4 and while it's still a work-in-progress, we wanted to share the work we've done so far, so here's an early preview!

{{< youtube "AQX5OhAi9bA" >}}