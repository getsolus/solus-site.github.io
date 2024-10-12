+++
categories = [
"news",
"twis"
]
author = "joshua"
date = "2017-03-05T18:27:27+02:00"
title = "This Week in Solus - Install #41"
url = "/2017/03/05/this-week-in-solus-install-41"
featuredimage = "/ldm-detection.jpg"
+++

Welcome to This Week in Solus, install #41.

## Linux Driver Management

Ikey has spent considerable amount of time this week dedicated to shaping up our Linux Driver Management tool, which will be responsible for our switchable graphics solution. The initial version of LDM will enable always-on Optimus, as that is the highest priority item, before moving on to switchable graphics itself.

We're able to detect multiple system configurations, across:

- AMD Integrated Graphics + AMD GPU
- Intel Integrated Graphics + AMD GPU
- Intel Integrated Graphics + NVIDIA GPU

Now the work is beginning on having LDM configure X.Org, Mesa, and so-forth. Additionally, we'll be obsoleting `gl-driver-switch` and putting LDM into `system.base`, meaning LDM will be seamlessly rolled out to existing users, deprecating old scripts and paving an easier route to LDM being shipped in future snapshot ISOs.

## Help Center

Last week we rolled out our new Help Center, which replaces our old MediaWiki with a centralized, more user-friendly and mobile-friendly venue for documentation. Moving to our own Help Center gives us the added benefit of being able to easily crowdsource documentation via our [Help Center](https://help.getsol.us). Since rolling out the Help Center, we've gotten a lot of feedback and contributions, and rolled out additional functionality to bring it up to par with our old wiki, such as a Table of Contents.

In the near future, we'll be rolling out an update to introduce "breadcrumb" navigation, so you can easily find your way back to various categories from the article you're viewing. Expanding on that, with the next major update (and redesign) of the Solus website, enabling a multi-lingual experience will be easier than ever!

## Improving the Contributor Experience

Speaking of contributions, we've recently been reviewing our process for contributing to Solus in the form of packaging and patches. Currently, the process is slightly complicated, with:

- Us currently utilizing gitolite for git repository management, thus adding maintainers with write-access to be slightly cumbersome.
- Manual patch reviewing and diff checking by downloading patches.
- Tooling that doesn't directly tie into our Phabricator.

Naturally, we want to make the experience easier on everyone and remove some bottlenecks. As a result, we will soon be moving our git management to our Phabricator's Diffusion application and utilize the Arcanist tool for easier submission and management of patches. This move has the added benefits of:

- Allowing us to take advantage of inline patch review.
- Providing a method to add community maintainers in a scalable manner.
- Enabling us to consolidate some infrastructure, namely moving *some*  `solus-project` GitHub and GitLab repositories, into Phabricator.
  - For items such as our Software Center, it'll make filing issues less of a complex matter, with some being split between GitHub and Phabricator.

## On Track

All this being said, we are **on track** for our Q1 goals. After we land Optimus support via LDM, we'll be turning our attention to rounding off Q1 with Budgie 10.3.

This will be followed by an ISO snapshot and starting the development of Budgie 11, our major rewrite to Qt5 and C++.

I'll be working with Ikey on continuing to improve our web infrastructure with Solhub, which will feature our web-based repo search utility and an improved build dashboard, as well as landing our new site redesign. Bryan has been hard at work on Haskell support in Solus, which should see finalizing this month, alongside his start on ypkg-tools. I anticipate Peter will continue his long and tireless campaign on optimizing every bit of Solus, a lot of those optimizations being exposed to new users in our upcoming ISO snapshot.

---

Thanks for tuning in to this installment of This Week in Solus!
