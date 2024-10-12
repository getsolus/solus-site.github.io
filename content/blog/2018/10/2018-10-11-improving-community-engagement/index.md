---
title: "Improving Community Engagement | The Roundup #10"
author: "joshua"
categories:
- infrastructure
- news
- roundup
date: 2018-10-11T01:50:12+03:00
featuredimage: "/improving-community-engagement.jpg"
url: "/2018/10/11/improving-community-engagement"
---

Welcome to The Roundup #10, your bytes of Solus news. In this roundup we are focusing on improving community engagement, reducing barriers to entry, and improving the delivery of Solus news.
<!--more-->

We believe good communication is the cornerstone of a healthy community. We always strive to actively communicate with our community and understand that it's never a matter of just talking **at** our community, but listening and having a conversation. We can't implement feedback or make changes unless we listen, engage, and sometimes debate.

Sharing the happenings of Solus to our community occurs across a variety of platforms and services. As we've grown as a project and as a community, we've been increasing our presence on various platforms. Doing so enables our community to check for Solus news on the platform that fits them best, or the best middleground between what those of us on the Core Team want to use and what is most comfortable for our community members.

Back in the EvolveOS days, this was Google+, our old Wordpress site, Forums, and IRC. Since the EvolveOS days, we've expanded to other platforms like:

- Facebook
- Mastodon
- Reddit
- Twitter

To this day Google+ still remains one of the most engaged platforms, one which all of the Core Team is available on, and the Google+ Communities feature is one which is used almost daily by our community members and us. In fact, Google+ Communities is one of our favorite systems to interact with. With the unfortunate [announcement by Google](https://www.blog.google/technology/safety-security/project-strobe/) of their sunsetting of Google+ over the next 10 months, we wanted to take this opportunity to improve communication and engagement across the board.

## The Problems To Solve

To do this, we need to address multiple aspects of communication and engagement.

**1. Avoiding echo chambers.**

We want to provide avenues of communication and engagement that both the team **and** our community *want* to use. If the team isn't interested in using a platform or service (self-hosted or third-party), that just ends up creating an echo chamber where only the voices of our community reside, where they may not feel like we are responsive to their feedback. That isn't something we want. On the other hand, we need to use a platform or service that our community wants to use, otherwise it's just an echo chamber of the voices of the team, with little to no engagement from our community. That isn't something we want either. For example, the Core Team rarely uses the Solus Forums, rather we gravitate towards more social platforms with real time or near real time engagement (such as Google+, Mastodon, Reddit, Twitter).

So ensuring we choose platforms and services that **all** parties want to use is absolutely crucial.

**2. Making it easier to talk about Solus.**

There is always Solus news for us to share, whether it's something major like a release announcement, or something less significant like a new feature or package update. However, these updates would sometimes be posted in a manner which wouldn't necessarily result in the entirety of our community being made aware of them. Trying to ensure news gets out to all of our community can sometimes be difficult, just as **getting** news about Solus can be. We want to make the entire process easier.

**3. Reducing barriers to engagement.**

To make it easier to engage, we need to reduce the steps to actually doing so, on the platforms we intend on using. Let's lay out some examples where you may need a new or dedicated account:

- Development Tracker: To engage on our development tracker, you either need a dedicated account or a GitHub account.
- Forums: To engage on our forums, you need a dedicated account.
- GitHub: To engage on issues regarding some of our projects, you'll need a dedicated GitHub account.
- IRC: To engage on IRC and access registered-only Solus channels (`#Solus-Chat`, `#Solus-Dev`, `#Solus-Livestream`, `#budgie-desktop-dev`) you will need a freenode account.
- Translations: To translate some Solus software, you will need a Transifex account.

We want to reduce this as much as we possibly can, as well as be cognisant that some may not wish to have a million accounts, or accounts of platforms such as GitHub, to engage.

## Addressing The Problems

### Engagement

With the sunsetting of Google+ and thusly Google+ Communities, we want to provide a more modern alternative to our forums that not only our community would like to use, but we'd like to as well.

At this moment in time, Flarum is looking like the most appealing option, from both a UX and technical perspective. The Flarum UX is more appealing to us as a result of it delivering a more tag-oriented layout as opposed to topic-based layout, which will make it easier for us to organize content. Additionally, they have plans on introducing a hybrid approach to pagination, which is more appealing to some members of the Core Team.

After assessing the Flarum API, I'm of the opinion that it will overall be easier for us to build open source tools and login methods against it.

1. The APIs follow JSON-API 1.0 specification with a simple token-based authentication implementation, which should reduce the complexity around authentication.
2. Their discussion and post API endpoints should it easier to fetch or publish content from/to the platform.
3. Their login APIs indicate that it may be simpler to build a login method implementation that can leverage the OAuth Server functionality of our Phabricator. As a result, we'll have one less login to use on the platform. Essentially every user posting on our new forum would also be capable of creating new tasks / reports on our development tracker.

For real-time communication, IRC is still in our opinions a mature and reliable standard. However, we are open to additional services in the future, but would do so under the expectation that they meet the following requirements:

1. It needs to support buffering messages so users can read them when they come back online. If we're going to support alternatives, it may as well be to something which natively supports buffering messages as opposed to requiring the use of an IRC bouncer.
2. It needs to be open source (which rules out Discord).
3. It needs to be allow multiple channels, so that we can separate support, off-topic, and development discussions. (This rules out Telegram).
4. It should support voice channels (with push-to-talk). We understand that this isn't something IRC supports, but we're talking about supporting alternatives that enables us to engage better with our community. Voice channels have been previously facilitated by temporary Discord services for specific events like our Gamefests and Hackfests.
5. It needs to be mobile friendly.
6. Users need to be able to engage with anonymous or guest accounts for support purposes.
7. It needs to have good role management and user moderation.

We have yet to find a solution that does all of the things listed above. We're opposed to introducing non-compliant options for real-time communication (like Discord, Mumble, Telegram, etc.) as it unnecessarily fragments our community, as well as makes providing support harder and more time consuming.

### News

The team should be enabled to share news about Solus with the entire community, as easily as possible. Fewer accounts, clicks, copy / pasting, and time spent. To do this, the intent is to create an open source broadcast system which we can tie into various frontends, whether that's web-based or even on IRC (like with a plugin for the [IRC bot I'm developing](https://github.com/JoshStrobl/narwhal)). It should be able to post to as many platforms as possible, such as:

- Facebook
- Flarum
- Mastodon
- Reddit
- Twitter

Additionally it should be able to automatically generate Hugo content pieces (a mix of TOML and Markdown), so we can implement a centralized Solus news "hub" so you can see all our short and long form posts in a single place. Naturally, it would support the ability to **get** the latest posts, so in theory we could figure out a way to integrate that into an RSS feed that people can follow, a Raven widget, Software Center, or elsewhere. Really we'd have limitless options. For our needs, a custom solution is a better option over the likes of Buffer or Circular, since we're able to more closely curate the services we support. For example, Buffer doesn't support Mastodon, which means we'd have to manually post updates there.

For the blog, I'm currently working on a redesign that will enable us to feature multiple pieces of content and hopefully make content consumption easier. This will later be integrated into the News hub so all relevant activity from the team (posts, blogs, etc.) can be discovered in a single place.

### Other Areas

In addition to the above mentioned areas, there is also the opportunity to improve and simplify engagement across two other areas of Solus development:

1. GitHub-hosted projects
2. Translations

For projects currently hosted on GitHub, we should determine which ones are candidates for migrating to our development tracker (Phabricator), develop processes for tagging new releases and surfacing them on our planned development hub (Solhub) or generated project pages. Some of these projects may include our Software Center, Installer, ypkg, etc. In general, Peter and I have some ideas on using Phabricator's tag system to make it easier to tag specific pieces of software (as an example, `qt-creator`) and ideally that should extend to software developed **on** Phabricator.

For translations, we should ideally migrate from Transifex to something which is:

1. Open source
2. Is able to be self-hosted
3. Can integrate into CI (so we can do fancy things like automatic updating of translations on the platform).
4. Can scale to dozens or more projects.
5. Enables us to leverage OAuth to provide a singular login experience leveraging Phabricator

Currently I'm assessing [Pootle](http://pootle.translatehouse.org/index.html) and [Weblate](https://github.com/WeblateOrg/weblate). If you have any ideas on other platforms we can use, we'd love to hear from you. I want something that makes it not just easy for developers, but translators too!

## Going Into The Future

Some of the items I've mentioned in this blog post are ones which will take time to build, test, and improve upon. So over the course of the next several months, the plan is to tackle the following items:

1. Deployment of a Transifex alternative. This should ideally be chosen, deployed, and used for Budgie 10.5 and new Software Center.
2. Deployment of Flarum and sunsetting of our forums. This will require some time for us to build and test an OAuth implementation, so more news on that in the future. 
3. Deployment of the new blog redesign.
4. Implementation of the content posting backend (as well as a frontend) to enable team postings.
5. Implementation of the News hub.
6. Migration of some projects away from GitHub to Phabricator, introduce new project pages (and as a result, overhaul our "technologies" page).

### Suggestions

There are always other ways of improving community engagement and reducing barriers to entry. If you have any suggestions, you're always welcome to reach out via to us via the [Forums](https://discuss.getsol.us/), IRC or [social media](https://help.getsol.us/docs/user/contributing/getting-involved#social-media).
