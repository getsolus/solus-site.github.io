---
author: "joshua"
categories:
- infrastructure
- news
- plans
date: 2017-01-05T06:20:27+02:00
featuredimage: "/2017/01/what-do-we-need.jpg"
title: "Early 2017 Infrastructure Upgrades!"
---

In the [38th installation of This Week in Solus](/2016/11/01/this-week-in-solus-install-38/), I discussed plans for improving our web infrastructure, and I'm happy to announce that the first big upgrade for 2017 is now complete. This is part of a larger 
goal to scale out our infrastructure, speed up our platform, and tackle some long-standing issues with email.

Prior to this infrastructure upgrade, we were running our git and web properties (Phabricator, forum, and website) on a server with:

- Intel Xeon E5-2670
- 4GB of RAM
- 20GB of disk storage

This worked well for us for the better part of 2016 and we're grateful for the support from Dediserve that we've had, enabling us a corner of the web to call our own and grow. As we've grown, so has the demand on our infrastructure, both by us and 
our community. To meet our requirements,  we have invested in a server hosted by OVH (same provider as our package repository), which has:

- Intel Xeon D-1520
- 32GB of RAM
- 2x2 TB of disk storage in software RAID
- Sits on a connection capable of 1Gbps burst.

This server upgrade will mean faster and more reliable git cloning as well as faster web properties (*obviously that'll partially depend on your connection, but at least we can send bits out faster*).

Additionally, we have offloaded our email needs to Google Apps for Business, which will eliminate the common issue prior to our infrastructure upgrade of emails for the forum and Phabricator not being received.

---

All that being said, this wouldn't have been possible without all the incredible people who've donated, whether it be directly via PayPal or via our Patreon every month, as well as the Ubuntu MATE project for their generous contribution as a result of 
the Brisk Menu development. I can't express enough how thankful we all are. 

If you aren't already supporting Solus, we [welcome you to visit our Support page](/support). Alongside all the work we're doing, talked about in our [This Year in Solus (2016 Edition)](/2017/01/03/this-year-in-solus-2016-edition), we'll also be investing in a 
U.S package repository server, [as mentioned on our blog post "Solus to be Unixstickers' December Beneficiary](/2016/12/01/solus-to-be-unixstickers-december-beneficiary).