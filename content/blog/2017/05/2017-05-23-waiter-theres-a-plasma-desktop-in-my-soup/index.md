---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
categories:
- news
date: "2017-05-23T15:12:34+01:00"
featuredimage: /kde-in-sc.png
title: Waiter, There's A Plasma Desktop In My Soup
url: /2017/05/23/waiter-theres-a-plasma-desktop-in-my-soup
---

If you've been keeping your Solus installation up to date recently, well, you saw that already, right? If not, you should be aware that there are new KDE categories within the Solus Software Center.

Peter O'Connor, a core Solus team member (aka `sunnyflunk`) has been your friendly Solus KDE maintainer for a long time now. If you're wondering why we needed a dedicated KDE maintainer, look no further than some of the KDE specific software that is very such in demand on Solus:

  - [K3b](https://userbase.kde.org/K3b)
  - [Kdenlive](https://kdenlive.org/)
  - [Krita](https://krita.org/en/)

These apps introduce large stack complexity, and luckily for us, we have Peter maintaining all of these components, including the Qt stack itself. The question on your mind right now is very likely, why have the desktop components turned up in Solus?

## Why Plasma Desktop?

For the sake of clarity, please note that the Plasma Desktop from KDE is **not officially supported** at this moment in time. It is however a project that Peter is working on, and slowly building up to be something useful. This in itself was enabled by the vast amount of KF5 (KDE Frameworks) software required in the repositories already for the "Big Items" (Kdenlive, etc).

Per our [inclusion requirements](https://solus-project.com/articles/packaging/package-inclusion-policy/en/) on the topic of stack complexity:

> Certain requests may tick all the boxes, but introduce a level of complexity or require a level of engagement not possible to balance for the packaging team. Under certain situations, a request will be frozen until it has a dedicated maintainer.

Peter's ambition is to eventually support a full Plasma stack on Solus, and through his long standing commitments to this work already, and to Solus as a project, he will be the official maintainer for KDE items in the distribution. The argument of stack complexity is already met and nullified.

In a nut shell, the Plasma Desktop is currently a slowly evolving future option for Solus, and at present isn't currently officially supported. As and when Peter feels the work is complete, final integration steps will be taken and at that moment in time we can formally support the KDE stack, under Peter. If you're a KDE fan, you can help Peter by reporting bugs on our [Phabricator instance](https://dev.solus-project.com/) against applications and components in the stack (i.e. Dolphin, plasma-desktop, etc.)

## Stack Maintainers

To date, the team has evolved and expanded in a way that has met the challenges of stack complexity head on:

  - **GNOME Shell**: Joshua Strobl `[JoshStrobl]`
  - **Budgie Desktop**: Ikey Doherty `[ikey]`
  - **KDE/Plasma**: Peter O'Connor `[sunnyflunk]`
  - **MATE Desktop**: Justin Zobel `[JustinZobel]`
  - **Solus Software**: Ikey Doherty `[ikey]`
  - **Scientific/Machine Learning/Research**: Bryan T Meyers `[DataDrake]`

The GNOME Shell and Budgie Desktop stack are currently 99.99% identical, significantly reducing overhead there. Likewise, the MATE Desktop efforts reuse (with the exception of around 50 packages) much of that same stack. Going forward, for Budgie 11, much of the underlying components used in the KDE/Qt base stack will also be used, so there is an added benefit to fleshing out these items prior to starting on Budgie 11 development. 

The rest of the stack is shared between the team and the community.

## Success of Phabricator

As an aside, I'd like to talk about the success of our migration to Phabricator. We went live with the migration of our legacy infrastructure on May the 6th 2017, and in the period of 17 days we've already hav *179 patches* contributed via the new system! This number excludes the dedicated maintainers who already have push permissions to their own repositories.

## A Personal Thank You

It's not often that I do the Solus blog posts, as we have our wonderful Josh doing the communication side of the project most of the time. While I'm here though, I'd like to extend a personal heart-felt thank you, to all Solus users, contributors and supporters, for your ongoing faith in Solus and your desire to make Solus the best it can possibly be.

Without your help, we'd have never gotten to this point. Gone are the days of the tiny upstart project that was our origins, however our mentality and resolve has only strengthened over time. Thank you for being with us, to make Solus, Solus. My biggest pleasure personally comes from the recognition of the importance of the OS that is Solus, over any one desktop or configuration, as an open platform to improve the daily lives of it's users. Through this mindset we've evolved, and as a result we create better solutions, and write better software, always thinking in an agnostic and portable way, to the benefit of all of our users.

A huge thank you also goes to everyone who's donated to Solus or supports us via [Patreon](https://www.patreon.com/solus). Thanks to your help, we've managed to get to a **$1,438** a month in support! This has helped us to keep the servers going, and to buy various pieces of hardware for validation (A2DP works now right? :)), as well as SSL certificates and other running costs.  The eventual goal for the current Patreon campaign is to support the employment of one full time employee, which would result in an
exponential difference to our cadence, i.e. how fast we can get awesome into your hands. With your support, we're just over half way there!

## Discombobulate Your Update Matrix

As a final sign off for this blog post, until the next time, make sure you discombobulate your update matrix often to stay on top of the latest updates, fixes and security updates to Solus. We may be a rolling release, but we'll make sure we deliver new features and enable new technology for you too. Remember, the most important part of Solus - is you.
