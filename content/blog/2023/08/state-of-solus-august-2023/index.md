---
authors:
- image: https://avatars.githubusercontent.com/u/23007135?v=4
  link: https://github.com/DavidJHarder
  name: David Harder
categories:
- news
date: "2023-08-07T00:27:44+03:00"
featuredimage: /StateOfSolusAugust2023.jpg
title: State of Solus - August 2023
url: /2023/08/07/state-of-solus-august-2023
---

This blog post is meant as a follow-up to [A New Voyage](/2023/04/18/a-new-voyage/). We want to discuss what we have accomplished, and what we have planned for the future.

<!--more-->

## New Roles and Faces

Long-time Solus users know that the project has navigated some choppy waters in the past with [bus factor](https://en.wikipedia.org/wiki/Bus_factor). Too much responsibility on too few shoulders has led to burnout, stalled work, and even an extended project blackout. For Solus to continue long into the future, we need people to enjoy working on Solus, and we need it to be a team effort.

In short, the new strategy is to spread responsibilities across a larger team, enabling individuals to fill in for each other as availability dictates. Our new processes enable us to seamlessly onboard new and offboard existing team members as necessary. Since our return in April, Solus Staff has grown to a team of 16 volunteers, and we’ve been working on internal documentation and workflows so responsibilities can be readily shared.

Case in point, to test our processes and documentation, we have been rotating the individuals that perform the package repository sync, with 11 out of our 16 staff members having already completed the process.

_Solus Staff_ is the umbrella term for everyone who has a role on the Solus team. Note that the roles are a little different from what was laid out in the New Voyage blog post. As we have collaborated over the past few months, we found these were the roles people naturally fell into.

The roles and their responsibilities are as follows:

- Boring Admin
  - Be responsible for the financial side of Solus, in particular OpenCollective.
  - Manage the keys for all important Solus accounts.
- Comms
  - Reach out with news to the Solus communities, and solicit feedback.
  - Moderate Solus communities to keep them friendly and useful.
  - Supervise work on Help Center documentation.
- Infrastructure
  - Maintain the services that are knitted together to make Solus: services hosting the homepage, Help Center, build server, the dev tracker, forum, and others.
- Packaging
  - Push their own packaging work, review work done by other packagers, and show new packagers the ropes.
  - Coordinate weekly syncs with other Packaging Team members, Infrastructure and Comms teams.
- Web
  - Work with Infrastructure to develop the sites and services that deliver Solus: particularly the primary web property (getsol.us) and the Help Center.

At the end of the day, Solus is a Linux distribution, so we expect that most people will join Solus Staff as packagers, and take on other responsibilities as they wish.

Solus Staff now includes the following people:

- Alex Vorobyev (aleksvor)
- Algent Albrahimi (algent)
- David Harder (davidjharder)
- Evan Maddock (EbonJaeger)
- Fabio Forni (livingsilver94)
- Gavin Zhao (GZGavinZhao)
- Ikey Doherty (ikey)
- Joey Riches (joebonrichie)
- Joshua Strobl (JoshStrobl)
- Philipp Trulson (der_eismann)
- Reilly Brogan (ReillyBrogan)
- Rune Morling (ermo)
- Silke Hofstra (silke)
- Tracey Clark (TClark77)
- Troy Harvey (Harvey)
- Zach Bacon (ZachBacon)

## Other Recent Work

### New Help Center

Help Center content was moved onto a new stand-alone site at [help.getsol.us](https://help.getsol.us/). With this new [Docusaurus](https://docusaurus.io/)-based site, we can quickly review and incorporate changes suggested by anyone willing to send us a Pull Request or open an issue on the accompanying GitHub repository [here](https://github.com/getsolus/help-center-docs). Please take a look around and let us know what you think.

### Launching the Solus Matrix Space

We now have four public Matrix rooms set up, migrating our old setup from IRC. All our rooms are listed [in the Help Center](https://help.getsol.us/docs/user/contributing/getting-involved#matrix-chat).

All Solus IRC channels have been retired, except for `#solus`, which remains solely
to direct people to Matrix.

### Releasing Solus 4.4

The 4.4 ISOs were released at the beginning of July. Thanks to all our [OpenCollective backers](https://opencollective.com/getsolus) for testing the pre-release images. If you haven’t heard about it and would like to learn more, check out our [release blog post here](/2023/07/08/solus-4-4-released/) and catch up on all the awesome stuff that went into it!

## Next Steps

### Phabricator to GitHub migration

The [Solus dev tracker](https://dev.getsol.us/), where all our package repositories, development tasks, and reported issues live, is currently run by software called _Phabricator_. We have decided to migrate these services to GitHub. There are several reasons why we decided to make this change:

- GitHub provides a better team experience, especially for reviewers and admins.
- GitHub has a greater mindshare among developers around the world.
- GitHub provides good APIs, opening the door to more tooling improvements.
- Solus will no longer need to pay for the infrastructure required to run the development tracker.
- The future of Phabricator as a project is [uncertain](https://admin.phacility.com/phame/post/view/11/phacility_is_winding_down_operations/) as the historical upstream is not undergoing development. The open source fork “Phorge”, while doing fantastic work associated with maintenance, is not actively focusing on new features that would positively impact the developer experience of the Solus project.

This change should be mostly transparent to users, but will be a big change for our volunteers who contribute to packaging. For our users, the place to report issues and request packages will change. Work is just beginning here, we will share more in the future.

### Solus 4.5

The next milestone for Solus staff is the 4.5 ISO, which we have tentatively planned for release towards the beginning of Q4. We have a list of updates and features we want to bring to the release, which you can see [here](https://dev.getsol.us/T10476).

### The Bridge to Solus V

We are still very much in the planning and experimentation phase for the eventual rebase of Solus on Serpent OS tooling. That said, real work is being done right now to move us towards our goals. Ikey and Joey have been working away on technology that encapsulates the legacy Python2-based eopkg tooling, enabling us to write a DLang-based PackageKit plugin for eopkg.

This plugin has some features we are excited about:

- It’s ecosystem friendly: Enables us to use already established software centers that already have excellent flatpak integration, such as KDE Discover and GNOME Software.
- It’s efficient: The design is memory efficient and prevents memory leakage.
- It’s fast: Frustratingly slow Python db queries are avoided by generating a secondary database that is cached in memory and accessible from DLang, thereby significantly improving search performance.
- It’s future-proof: With this plugin in-hand, we begin our efforts of adapting it to existing and upcoming Serpent DLang tooling, making the transition for our users even smoother.

## Closing Thoughts

Solus continues to exist solely (heh) because a wide group of people, scattered all over the globe, are willing to contribute to the project, and build a community excited about our future. We are incredibly grateful for the continued support of all of you fine folks in the community and those of you that have financially contributed through our [OpenCollective](https://opencollective.com/getsolus). All of this wouldn’t be possible without you. Thanks everyone! We look forward to continuing on this journey together, and we hope you’ll join us for the adventure.
