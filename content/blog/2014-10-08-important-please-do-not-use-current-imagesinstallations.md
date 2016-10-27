---
author: Ikey Doherty
categories:
- News
- Security
date: 2014-10-08T15:57:14Z
id: 393
title: 'Important: Please do not use current images/installations'
url: /2014/10/08/important-please-do-not-use-current-imagesinstallations/
---

Please note that we must currently ask you to not use your Evolve OS installations, until we have completed a thorough security audit of the repositories. 
There is no reason to panic here, however before we can get to beta 1, and thus closer to production quality, we must ensure the system is secure throughout. 

The prompting for this post is two fold. During the development of a new security framework, a few flags were raised that some older security issues may 
not have been addressed. Note that recent issues are, but we want to ensure that going forth with Evolve OS Beta 1 that the systems are secure at every level.

Secondly, we know some people are using Evolve OS on bare metal. Due to the changes we will be implementing, such as toolchain hardening and major binary rebuilds, as well as 
updates across a large amount of packages that need to be completed before our code freeze, we're essentially asking you to NOT use your current Evolve OS systems, 
as there is almost certainty that our updates will now break these, in a way that will not be repairable.

We apologise for the inconvenience caused, and we too hoped for an upgrade path from Alpha to Beta, but in order to guarantee a solid future, we must currently 
break what we have. Note that as usual we will continue our works in public (i.e. on GitHub) so that users are aware of changes as and when they happen, and 
during this period new supporting services will be coming online for Evolve OS to support the infrastructure.