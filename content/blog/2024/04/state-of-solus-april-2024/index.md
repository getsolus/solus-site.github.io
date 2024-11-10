---
title: "State of Solus - April 2024"
author: "david"
categories:
  - news
date: 2024-04-20
featuredimage: "/StateOfSolusApril2024.jpg"
url: "/2024/04/20/state-of-solus-april-2024"
---

April 18, 2024 marks exactly one year since Josh published the "New Voyage" post announcing the return of Solus in its current form. A good chunk of that post was dedicated to explaining the work we wanted to do in the future, having just completed the technical task of migrating critical Solus infrastructure off the previous hosting environment. In this post, I will outline what we've accomplished in this busy year.

<!--more-->

## Organizational work

### Expanding Solus Staff

Solus Staff now includes 19 individuals whom we have trusted with access to our packaging infrastructure. From that larger group, we have organically formed smaller groups with additional access and responsibility dedicated to:

- Maintaining specific software stacks in the Solus repository
- Running social media accounts and moderating Solus communities
- Maintaining the infrastructure that hosts Solus services
- Running the boring administrative side of the organization

As the Staff group has collaborated over the past year, we've found the lines between these groups are a little blurry. New members are trusted with more responsibilities as they demonstrate their abilities, leading to a large group with everyone wearing a few different hats. So far, this informal organization has worked out rather well, and we plan to continue along this trajectory.

### Boring administration

There is one Staff group we have formed very deliberately: We call it "Boring Admin". This group is trusted with billing access to all critical Solus infrastructure, and control over the Open Collective account holding money donated to Solus.

The idea here is to ensure that all critical access is _shared_. No single person can exert total control over the organization, or threaten it by their absence. This also allows other Staff members to focus on the technical aspects of Solus, rather than mundane administration.

In addition, we have put in place policies to ensure we have reviews of all expenses submitted for approval, and that submitters cannot approve their own expenses.

### Spending donated funds

We are eternally grateful to those of you who support us financially on [Open Collective](https://opencollective.com/getsolus). Part of the responsibility that comes with accepting donations is the implicit promise that we will _spend the money_. Solus is here to build and maintain an operating system, not accumulate cash. To that end, we updated the wording on the Open Collective page to explain more precisely what we will spend money on.

Our expenses fall into two categories: Fixed costs, (examples: server hosting, email), and discretionary spending (example: direct payment of contributors for work). Our fixed costs increased immediately in April 2023 when we moved infrastructure off the server co-located at Rochester Institute of Technology and onto more typical paid hosting.

We have also increased our discretionary spending, recognizing that these payments were rare in the past, and that we have a healthy reserve to draw on, even with the increase in fixed costs. In a way, we are recognizing contributor work that we would have liked to pay for in the past. All discretionary spending is put to a Staff vote before we commit to it.

As a reminder, all our paid expenses are published on the Open Collective page.

### Internal documentation

Have you ever wondered what _exactly_ is done behind the scenes to kick off the typical Friday Sync? As it turns out, we didn't have a good answer either. Some Staff knew from experience, but not everyone. Wherever possible, we've worked to refresh and build up internal documentation.

## Community

### Published regular sync notes

Since about June 2023, we've been publishing weekly sync notes to the forum. These posts inform the community of notable updates and give us valuable direct feedback from users.

We're grateful to Evan and Reilly for their weekly dedication here. Condensing a week's worth of commits into a friendly and informative forum post is more effort than you might think. Silke also gets a mention for creating handy scripts to automate the task of formatting the changelog.

### Moved from IRC to Matrix

This move was completed as part of the initial migration work in April 2023. We're happy with the change and have donated to [Matrix.org](https://matrix.org/) for hosting our chat over the past year.

### Migrated to new Help Center

One night, Joey got sick of the old Help Center, and put in a big effort to port everything over to [Docusaurus](https://docusaurus.io/). This modern platform has made contributing to the Help Center fun and easy.

Then, Tracey completed a thorough review and re-organization of help center content in September. From that base, we have slowly expanded topics covered, with an emphasis on documenting the many small changes to packaging practices. We've had about 200 pull requests since the port.

### Added new development log (devlog)

As an experiment, we started the [devlog](https://help.getsol.us/blog/) to host shorter developer-focused content separate from the main site. We wanted a place for more informal posts. When writing for the main Solus blog (this site), we carefully edit posts, knowing in the back of our minds that we ship browsers with the homepage set to the Solus blog.

### Sent regular backer emails

Tracey has been leading the charge in ensuring that Open Collective backers get regular email updates. This required learning how to use our new mail host (Mailgun), and creating new mail templates. The process is now well documented internally, where there was little documentation previously. Silke contributed his scripting talents here too, providing a well formatted starting point for changelogs included in emails. Work continues on automating the process of gathering data for the messages and sending the emails.

### Created new YouTube channel

Due to past turbulence at Solus, we no longer have full access to the existing [Solus YouTube channel](https://www.youtube.com/channel/UCafmzeNk3o0g79oz0qbkzNg) (note the old _solus-project.com_ URL on the page). As a result, we've started a new channel [here](https://www.youtube.com/@getsolus) under the _getsolus_ handle. I'm currently working on a series on packaging basics using the new infrastructure and tools.

### Built new XFCE Edition

The new XFCE edition of Solus was released as part of Solus 4.5. This edition is planned to take the place of the MATE edition. We are currently working on a migration tool to assist users with this task.

### Set up new translation platform

For our transition away from the MATE desktop, Joey built the Solus MATE Transition tool (MTT). I thought it would be a good idea to get the MTT interface translated into as many languages as we can find volunteers for, so we started the Solus translations team on [Transifex](https://explore.transifex.com/solus/).

### Welcomed new packaging contributors

We were worried that the blackout period prior to our return in April 2023, and the subsequent jump from Phabricator to GitHub, would leave behind some of our valued volunteers. Happily, we can report that after the switch we've seen the return of many familiar faces, and we have also managed to attract new contributors. The experience of guiding these new contributors has informed our efforts in rewriting portions of the Help Center.

## Infrastructure

Critical parts of the infrastructure migration had already been completed when we set out on A New Voyage in April 2023. This initial work was done by Algent, Ermo, Ikey, Joey, Josh, Reilly, Staudey, Tracey, and Zach, and included:

- Moving package hosting to a dedicated server at a hosting provider, backed by Cloudflare CDN
- Moving the package builder to more powerful dedicated server hardware at a commercial hosting provider
- Ensuring proper shared access to various services among Staff

### Migrated development tracker

Our next hurdle was moving Solus development off our self-hosted Phabricator instance, and onto GitHub. Phabricator had an uncertain future at the time, and GitHub was familiar to many potential contributors.

Silke and Joey wrote up a set of processes and migration tools, which included git magic to combine ~5,000 individual package repositories into a single _packages_ repository. They also ported several hundred open issues and re-tagged them for better sorting. All in all, the migration, while initially painful, has turned out very well for the project.

### Infrastructure numbers

Since April 2023 we have:

- Merged ~2,000 pull requests from community contributors
- Pushed ~14,000 package builds through the new build server
- Served 15-20TB of package data monthly

## Tooling and packaging

Solus prides itself on delivering timely and convenient updates to our users. It's what distinguishes us as a friendly rolling Linux experience. Naturally, the processes we use to _make_ Solus must _also_ be friendly and continually updated. But when the tools are not updated, becoming dull or growing brittle, we accumulate _technical debt_. This next section is about finally paying down a portion of that debt. Some issues discussed here have lurked in the background for years.

### Building a path out of the python2 rut

No single chunk of debt has loomed quite so large as our reliance on python2. The fundamental tools used to get Solus installed on user systems, as well as updating, installing, removing, and building individual packages, were all originally written for this platform. This means we're still carrying these dependencies, even though official support of any kind stopped in 2020.

#### Switched to new installer

As a first step, we decided to stop investing resources into our in-house python2 based _solus-installer_, and instead rely on [_calamares_](https://calamares.io/), an installer used by several other distributions.

Using Calamares, we get to pool our resources with other projects, collectively building and maintaining a polished installer. We are much more comfortable relying on a larger effort like Calamares to support installing Solus under many different configurations, on a wide range of hardware. The alternative was to spend valuable contributor time porting, re-testing, and then maintaining our existing installer.

We are very grateful to Evan for his efforts and patience driving the development and integration testing for our successful switch to Calamares for the Solus 4.5 release earlier this year.

#### Switching to new software centers

In the early days of Solus, we pioneered the integration of repository packages and third-party applications into a single interface for users, called the Solus Software Center, or _solus-sc_. But it too requires python2 dependencies. Between then and now, other distributions have put their collective efforts into developing newer software centers that have features we want to bring to Solus users.

The GNOME and KDE projects offer GNOME Software and KDE Discover as native software centers for their respective desktop environments. Both include Flatpak support, which we see as a natural successor to our Third Party repository.

To include these projects in Solus, Joey and Hans, with support from Evan, Fabio and Ikey, are putting the final touches on bringing _PackageKit_ support to _eopkg_. We are also trying to add support for hardware management in KDE Discover, similar to what is available in GNOME Software. If this effort goes well, we plan to contribute the work upstream to the KDE project.

#### Porting _eopkg_ and _ypkg_ to python3

Before Solus was even called _Solus_, Ikey forked the python2 based _pisi_ package manager to create _eopkg_, which we still use today. This is yet another python2 application. So, the most fundamental tool for maintaining a Solus system is based on a platform that has been end-of-life for four years now.

Replacing _eopkg_ is a tricky problem. We must create a new package manager that behaves exactly like the old one. Then swap new for old seamlessly on every existing Solus installation, _using the package manager we are replacing!_ You can imagine why we're treading carefully.

_ypkg_ is less visible to regular users, but no less vital. It is a crucial part of the Solus packaging process, interpreting _package.yml_ instruction files and translating them into build operations. This tool was also originally written in python2.

Here's the the plan that Fabio, Hans, and Joey -- with support from Ermo, Evan, Ikey and Silke -- have been following:

1. Port _eopkg_ and _ypkg_ to python3. As part of this process, Ermo has spent some time building and documenting the release testing process for _eopkg_ and _ypkg_.
2. As part of the porting effort, switch to a better XML library. Up until very recently, a stray emoji could corrupt the package index 😂.
3. Per Reilly's suggestion, use [_nuitka_](https://nuitka.net) to compile the python3 code into stand-alone executables for _eopkg_ and _ypkg_. These executables are built so they only depend on the availability of the system C library, glibc, which is _always_ available in Solus. This in turn makes these executables effectively independent of all normal python3 stack updates.
4. Ship those stand-alone executables as drop-in replacements for the current python2 versions (which in contrast depend on the installed python2 interpreter and a few other python2-based libraries).
5. Update the python3 interpreter and related dependencies without having to worry about breaking the package manager or the package build tool.

The team has already proved that the new _eopkg_ executable is immune to system python3 interpreter changes and upgrades. This was done by using a nuitka-compiled version of the _eopkg_ python3 port to update the system python3 interpreter version from python3.10 to python3.11.

In addition, the nuitka-compiled _eopkg_ python3 version has also successfully demonstrated the ability to downgrade and upgrade itself between versions nuitka-compiled against python3.10 and python3.11 respectively, with no associated crashes or loss of functionality.

The team is currently in the final stages of polishing the python3 port of _eopkg_, having already ported and put into production the python3 port of _ypkg_. Early testing has also revealed a 20-25% speed-up in packaging operations.

### Workflow improvements

"Workflow" is a broad term we use to cover the experience of using Solus packaging tools and infrastructure to do the day-to-day work of updating packages; and shepherding those changes through the services that handle building and shipping packages onto users' systems. The improvements outlined here center around automating and modernizing processes and checks that were once manual.

#### Moved from Makefile to go-task

For a long time, our packaging tasks and commands were all captured in Makefiles. At Reilly's suggestion, we've now switched to [go-task](https://taskfile.dev/), a simplified task runner written in Go. Taskfiles are easier to understand, edit, and extend. Plus, we don't have to include a Makefile stub in every package directory.

#### Added automatic packaging checks

One benefit of moving to GitHub is that we can now write automatic checks that run against all pull requests. For instance: Under the old Phabricator workflow, you could easily forget to increase the release number for a package you are working on, then the reviewer could miss it in their manual review. Now, an error like that is flagged by a pre-commit hook, and then generates a warning if it is still pushed to GitHub.

Automatic checks help new packagers learn the minutiae of packaging without having to go through multiple review cycles. Meanwhile, reviewers can focus on trickier subjects and leave the simple checks to the machines.

A big thank you to Silke for having the courage and perseverance to take on this task.

#### Released new versions of _solbuild_

The Go tooling team, led by Silke and supported by the rest of the Gophers on the team, has worked with Ermo to create and document a release process for _solbuild_, through which a range of bug fixes and additions that makes _solbuild_ more convenient to work with have recently been deployed.

#### Improved the process for updating _solbuild_ images

The process for creating and deploying _solbuild_ images, which are used to speed up package builds, has been updated by Ermo. It is now more straight-forward for Staff to update the images. Ermo also showed his talent for optimization; tweaking image compression to give users faster _solbuild_ updates.

#### Updated build server tooling

Silke, Gavin, and Reilly have contributed useful tweaks and changes to existing build server tooling, which has allowed us to:

- Create an automated PR build script, cutting down on the tedium associated with landing large stacks
- List build start and end times + PR landing progress, giving better insight into the flow of builds
- Follow the build log progress in real time via client-side CLI tool

#### Wrote better scripts for ISO generation

Our "crew" Open Collective tier gives backers access to ISOs generated weekly after every sync. You might guess that ISO generation is completely automatic, and you're _almost_ right: it _could_ be; but it wasn't! Silke and Ermo have worked together to improve that, making a weekly task less of a chore.

A big thank you to Evan and Tracey who usually handle the actual generation of the ISOs we share every week.

#### Wrote automated ISO boot and install testing scripts

The vast majority of the time spent on creating official ISO releases for Solus is spent on manually testing ISO images for each edition for basic funtionality. To take some of the tedium out of this, Silke has taken point in authoring a test harness for our official release ISOs. This tool runs automated tests on the many boot and partition permutations our installer targets, then creates a collage of desktop screenshots showing the result for each boot + install permutation.

As a result, we can now spend more time fettling the ISO install experience, and less time setting up tests just to see if an ISO will boot.

## In closing

This was a marathon post for a marathon year; thank you for reading. We're quite pleased with the progress we've made over the past twelve months. Our aim was to demonstrate a certain amount of "boring" behavior. Regular syncs, solid performance, and a friendly community; all the while working behind the scenes to improve our own experience as volunteers, and laying the groundwork for another exciting year.
