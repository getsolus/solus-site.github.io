---
author: "ikey"
categories:
- news
- plans
date: 2016-07-31T17:19:31+03:00
featuredimage: "replacement-of-release-schedule.png"
internaltype: post
title: "Replacement of Release Schedule"
---

In the not so distant past, Solus followed a static point release model. Our most current release at this time is 1.2, with a 1.2.1 planned to drop in the near future.
However, we also recently [announced](https://solus-project.com/posts/this-week-in-solus-31) our move to a rolling release model.

<!--more-->

As such, these two schools of thought are in contradiction of one another. Going forward, the old release schedule is **officially**, entirely dropped, and the branching
pattern of a point-release-system is also shed.

## Important Points

- There is no longer a concept of separate major releases. You will always run on the current “distribution version”.
- Support, therefore, does not end for the current, and only, series. Note however you are still expected to update your system. We’ll introduce some changes to make this
simpler to manage, of course.
- There is no longer a concept of “1.3”, “2.0”, etc. Future ISOs will follow the internal versioning system
- Future ISOs will land both features and package refreshes. Whilst you can always configure your installed Solus to match that of the ISO, through package selection, installer
features are only ever available in reinstalls (This is the only time you ever see the installer)
- The internal versioning system at present is based on the concept of major releases, so it will therefore be dropped. For example, the 1.2 release is internally referred to
as: **1.201629.7.0**. At minimum, we’ll drop the major version, and use this scheme in future ISO updates.

## 1.2.1 - Update

We can only apologise in announcing that yes, 1.2.1 has been delayed. This has primarily come about due to a mixture of circumstances (work schedules), a wish to ensure consistency
and longevity in the installations (GNOME 3.20 updates), and the migration to a rolling release model. As soon as it is appropriate, 1.2.1 will be released. However, the release
schedule is now **officially withdrawn**, leaving us some extra time to get 1.2.1 polished to the level we require.

## Coming Items

Our upcoming update list involves, but is not limited to:
- Update to GCC 6.1.0 (ongoing right now, handling libmpx incorporation)
- Move to GNOME 3.20.x
- Update to X.Org Server 1.18.4
- Ongoing rebuilds to utilise newly available CPU features on the build server to improve Solus packages
- Budgie 10.2.7 – whilst we initially envisaged going directly to 10.3, which has outstanding goals, we’ve opted to provide a maintenance release of Budgie to accommodate all Budgie
downstreams in the near future, due to the already extensive diff since 10.2.6. You can see the latest git build in the featured image for this post.

## Advantages

The core advantage to the withdrawal of this static release schedule is that it in fact enables us to land features with a higher velocity, and **maintain** that velocity over time. With
the move to a rolling release, one of our primary goals is in increasing the project cadence. As such, this frees us up to land future updates and refreshed ISOs, as and when new
features, fixes and changes are available, as opposed to being tied to a rigid schedule. In the long run, this will result in **more** ISO releases and updates, enabling incremental testing
of technology in Solus.
