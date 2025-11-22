---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- budgie
- news
- plans
- security
- twis
date: "2016-03-07T10:08:34Z"
title: 'This Week in Solus -- Install #23'
url: /2016/03/07/this-week-in-solus-install-23/
---
 

Welcome to the 23rd installation of This Week in Solus. 

March has been a busy month so far, kicking off with the release of Solus 1.1. If you're been living under a rock since the start of March, the [Solus 1.1 Release Announcement](https://solus-project.com/2016/03/02/solus-1-1-shannon-released/) 
is a must-read. We proceeded to have our first public Hangout session, named by Ikey to be "Sundays with Solus", talked about below.

#### Sundays with Solus

We had our first Sundays with Solus yesterday (March 6th, 2016) and it went surprisingly well. We discussed a multitude of topics, primarily surrounding 1.2 as well as some open Q&A. Below is the video and a summary of the items discussed!

{{< youtube "t8h4U0mNgpg" >}}

**Summary of the video:**

-  A mass rebuild of the entire repo is being done by Ikey. This is being done to enable further hardware optimizations throughout the entire stack instead of doing "generic" optimizations.
-  Work is currently progressing on multilib enablement of some libraries, namely those needed for Steam and WINE. 
  - Ikey wanted to clarify that this is a fairly simple process and usually only amounts to a 4 line diff in the package.yml syntax.
-  The intent is to land AMD proprietary driver support with both Crimson and Catalyst in this cycle. It was an item that we held off for 1.1 after weighing the pros / cons of delaying the release further.
-  We get it, some people want pretty things too. Here are some Budgie improvements that are likely to happen down the line: 
  - Alt-tab is going to be fixed. OMFG guys it's going to be fixed, how exciting is this! I can't even express it in words. I'm actually going to put a GIF at the end of this summary that explains my feelings.
  - Landing a Weather Applet in Raven.
  - Hotcorners (disabled by default) will be evaluated and possibly land in Budgie during 1.2.
-  The installer is being re-written. We discussed this in the last This Week in Solus, but I felt it needed to be re-iterated. 
  - We understand the current pain-point with not making it obvious when you have an invalid hostname written. This is something that will be tackled in the rewrite.
  - Encryption, encryption, encryption.
  - Separate home partition.
-  We're going to be doing some web infrastructure work in this cycle. 
  - Unlike some distributions, we actually care about security. Justin is going to be working to deploy MirrorBrain this cycle and have it automatically audit / integrity check ISOs, among the other goodies that come with using MirrorBrain like surfacing the closest ISO mirrors to you based on geolocation.
  - I'll be working on improving the build infrastructure frontend and backend tooling.
-  There was some questions. Please, don't make me write them all down here too ;_; Good questions, just watch the video.
-  Ikey has single-handedly caused the fleeing of countless citizens and hamsters from their respective countries after turning his webcam on at the end of the video. In all fairness, he warned.

![relimg](http://i.giphy.com/itDBteCsTFSVO.gif)