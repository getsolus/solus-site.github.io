---
authors:
- image: https://avatars.githubusercontent.com/u/156574?v=4
  link: https://github.com/JoshStrobl
  name: Joshua Strobl
categories:
- infrastructure
- news
- plans
date: "2018-10-27T03:00:00+03:00"
featuredimage: /in-full-sail.jpg
title: In Full Sail
url: /2018/10/27/in-full-sail
---
In Full Sail is our update on the state of Solus, our project founder, services which we use, as well as our plans for the project and future Solus releases.
<!--more-->

## Audio

Embedded below is the audio recording of Bryan's and my discussion, which we call "In Full Sail". This audio recording is available in both MP3 and OGG formats.

**MP3**

<audio src="https://getsol.us/podcastmedia/in-full-sail.mp3" controls></audio>

Direct link: [https://getsol.us/podcastmedia/in-full-sail.mp3](https://getsol.us/podcastmedia/in-full-sail.mp3)

**OGG**

<audio src="https://getsol.us/podcastmedia/in-full-sail.ogg" controls></audio>

Direct link: [https://getsol.us/podcastmedia/in-full-sail.ogg](https://getsol.us/podcastmedia/in-full-sail.ogg)

## Transcript

If you wish to have the full discussion in text form, it is provided below.

---

Joshua: Hello everyone. My name is Joshua Strobl, 
Bryan: and I’m Bryan Meyers,
Joshua: We are both Core Team members of the Solus project, and we are here to talk about Solus. And there’s no real easy way of beginning this conversation, so let’s just go ahead and jump right in.

Bryan: To start off, we want to provide a timeline of events leading up until today. We will start on June 13th of last year, 2017, when Ikey departed from his job at Intel to work full-time on Solus. In his words, he felt that, and I quote: 

> “this is a move I can now make myself. In doing so this will allow me to commit full time to Solus and all of it’s projects, bringing them up to the standards I want, with the features and experience that you deserve. Whilst we have achieved a great deal so far, this has been through spare time. With this move I’m now able to dedicate all of my work hours to Solus, which in itself will result in a massive explosion in growth and development cadence for our project.
>
> For clarification, I’m leaving my current job at Intel as a personal choice, and not a professional one. The four years I’ve spent as a software engineer and distribution engineer at Intel have helped mould me into the engineer that I am today. I’ll always be grateful for the experience, knowledge and relationships I have as a result of that time, and will of course miss those that I’ve worked with. This transition is about me following my heart: Solus is my passion. This move has been enabled by you, supporters of Solus. Together, as a community, we’re going to take Solus to new heights. I want to extend my personal thanks to all supporters and users of Solus, for placing your faith in me. Now, it is time to deliver on that faith.”


Joshua: And for reference, that is coming from our [We are Growing blog post](/2017/06/13/we-are-growing/), published on June 13th 2017. Alongside this announcement, we brought on a new team member, Stefan Ric (also known as cybre), whom you may know from his work on Budgie. By working full-time on Solus, Ikey was able to enforce more strict work hours while being able to dedicate time for himself.

Bryan: [Solus 3](/2017/08/15/solus-3-released/) represents the first major development effort after this transition. We worked on out-of-the-box support for snap packages and a new Budgie release, Budgie 10.4. For Budgie this was a monumental release, featuring a dock-mode for the panel, dedicated Budgie Settings app, Night Light applet, and many other improvements.

Joshua: Solus 3 introduced further refinements to our GNOME and MATE Editions. This was also the last release until our Solus 3 ISO refresh from last month. After this point, we began focusing on various aspects of Budgie 11, which was Ikey’s first completely new project after his transition. Development began on August 26th of 2017 and was later featured in the “[Eleventh Budgie](https://www.youtube.com/watch?v=J85OBqT51ZM)” hackfest on September 16th of 2017.

Bryan: It was around this time that I finished a major porting effort for the Haskell development stack. With several hundred new packages, Haskell placed a huge strain on our existing repo manager, binman, which had otherwise been unchanged since the EvolveOS days. Creating new repo indexes took so long, that normal day to day operations were grinding to a halt. With that, Ikey and I went into deep technical discussions on how to fix the problem in a future proof way, and ferryd was born. Ikey carried out the majority of the development effort, but I was also largely responsible for the design and implementation of ferryd’s first task scheduler. 

Joshua: With the release of ferryd, we were enabled to more aggressively perform stack upgrades, which we did for the next several months, such as GNOME 3.26.1, LLVM 5, and more in October of 2017. We also rounded out the year with our Welcome to the Grid Gamefest, which put our then brand new snap-based LSI and Steam support to the test. This was also the last livestream Ikey took part in. It was around this time when, at least in my personal opinion, it grew more evident that there was various changes to his behavior and personality that gave me the impression that he was about to make various changes to his personal life.

Bryan: I can’t really say that I noticed anything at the time, but then again, I have only known Ikey for a little over 2 years. Even then, I think seeing him move on to new projects like Linux Driver Management, in January, and the Software Center rewrite, in February of 2018, we would have put those concerns behind us. On a personal level, Ikey and I spent the better part of Feb and March competing in our quest to lose weight. We were both eating a lot healthier and getting generous doses of exercise. What I can say, is that I’m not surprised that at the end of March, Ikey decided to quit Late Night Linux. It was clear to me that having to spend a non-trivial amount of time every two weeks to put a show together was more than he had bargained for. Additionally, at the time, Linux was experiencing an unusually politically charged atmosphere, with the toxicity of global politics starting to rear its ugly head in our typically less heated circles. This escalated to such a degree that we were forced to strictly disallow certain politics from being discussed in our own off-topic and development channels. For Ikey, this was a period of time where he was basically being paraded around from podcast to podcast because of his strong opinions, and frankly, ability to draw a crowd. It’s hard for me not to see this as people exploiting Ikey’s status for their own gain. The entire Core Team agreed wholeheartedly with his decision to walk away from all of that.

Joshua: Outside of Late Night Linux, Ikey had decided to no longer take part in various social media platforms, specifically Reddit and Twitter, and double down on his journey of self-improvement. He began to more publicly talk about various aspects of his personal life, such as working towards getting his driver’s license and engaging in a more healthy life, which culminated in the Core Team discussing with him privately about us taking on more responsibility and more clearly defined roles. We understood that he was carrying a large burden on his shoulders as the sole full-time developer.

Joshua: On July 3rd 2018, Ikey informed us that certain personal events in his life were going to result in him moving back to England. He began making preparations and on July 11th, Bryan, Ikey, and myself sat down to talk about eliminating various bus factor issues. This initially was ensuring we had full access to the OVH servers, namely the builder, ring0 (our package server) and the web server (which I already had SSH access to). The intent was to follow-up the next day on the domain (handled by Dediserve), Google Apps for Business (for email and documents), Fastly, and more. Unfortunately, due to various conflicting schedules, such as my family visiting from the United States, Bryan being occupied with work, and Ikey preparing to move, these discussions were never picked up again.

Bryan: On July 13th 2018, I had my first ever Friday sync. A day or so before, Ikey and I agreed that this would be a trial run for others taking over that particular duty. Everything went smoothly, serving as proof that we had access to everything we needed to make major changes to Solus on a weekly basis, without relying on Ikey to pull the final switch. At this point, I had also completed my second week of performing Kernel updates. With Josh and I both busy with life, the next week passed rather quickly. On the 19th of July, Ikey officially departed for England. He posted a few photos and messages on G+ about his journey and the rest of us on the Core Team decided to give Ikey all the time he needed to get settled into his new surroundings.

Joshua: From personal experience, as someone that moved to Finland from the United States in January of 2014, I absolutely understand how stressful and chaotic the first few weeks to a month can be to get settled in. We wanted to remain cognisant of the fact this could be a very stressful time for Ikey. On July 30th, Ikey reached out via IRC in our public off-topic channel as well as remarked on Google+ about his awful mobile Internet.

Bryan: That brings us up to August of this year. Josh and I decided that a Hackfest was long overdue and Summertime Solus was born. During the course of that stream we hit a significant number of milestones, and personally, I was able to finally release several pieces of software that I had spent over a year developing for Solus. These included Cuppa (upstream release tracking) and eopkg-deps (rebuild orders), both of which saw substantial upgrades that day. Josh also worked on several huge quality of life improvements for Budgie, making this the first-ever Hackfest where we both contributed significant code for Solus. It was hard to ignore the absence of Ikey that day, with many people asking if we knew how things were going with him and when he would finally be getting real Internet access. We knew that he hadn’t been feeling well since moving to England, likely with some sort of flu he picked up from the local fauna. Naturally, we decided to give him time to rest and didn’t press the issue of getting better internet. Looking back, it was that same week that Ikey quietly deleted his Instagram and checked into IRC while none of us were around. 

Joshua: I reached out to Ikey on August 16th, only after which he posted to Mastodon that he was effectively leaving the platform. At this stage, he had either not posted to his social media accounts or deleted them entirely.

Joshua: Fast-forward to August 27th and Solus incurred one of its first major outages of various services, such as the website, Phabricator, and forums. Unfortunately, access had not been provided to the OVH global control panel, nor was I made the technical contact for the account. As a result, OVH remained rather restrained on providing any details on the issues related to the server. After multiple calls, they finally stated it was the result of network maintenance.

After roughly 5 hours of downtime, Ikey reached out and informed that it was an OVH issue due to hard freezes. There was no further contact from him until after the second outage.

The second outage occurred on September 5th. Once again without adequate access, I was unable to immediately come to a determination on what the issue was. We immediately went into action, I set up a temporary mirror on a domain I had previously purchased for direct downloads, getsol.us, and informed our community to follow social media and that website for more information. At around 2am on September 6th, I was able to get in touch with an individual at OVH and was informed that server payments had not been made. After explaining our situation and the lack of contact with Ikey, they permitted to bring the server back online for 5 more days. It was at this point when Bryan and I began implementing various migration plans and contingencies.

Bryan: I reached out to my co-workers at the Rochester Institute of Technology for help getting us back up and running. We had previously been in talks about hosting hardware at RIT for Solus and that made it easier for me to request retired hardware to rebootstrap the Solus Infrastructure. In fact, I had already begun setting up a second build server for Peter to use in light of his (terrible) laptop and large stack upgrades (such as KF5). My coworkers provided me with yet another server, this one with much more memory, if a bit older. I set this up as quickly as possible to serve as a virtual-hosting environment for Solus services, namely: the Build Server, Package Server, and Web Server. Once this system was up and running, I turned my attention to pulling data from the OVH servers and bringing back up the Build environment.

Joshua: While Bryan was working hard on bootstrapping the various environments, such as the build environment, I began bringing up services such as the forums and website, configuring some aspects of nginx, as well as pulling down the Phabricator git repositories. We also spent a considerable amount of time focusing on informing our community by virtue of writing the [Supercharging Solus Infrastructure](/2018/09/08/supercharging-solus-infrastructure) blog post and remaining in constant contact with our community by means of our social media accounts.

Bryan: In the middle of all this, Ikey reached out to us on September 7th and informing us that he was still not feeling well, but that he had paid the server up for another 30 days so that we wouldn’t need to rush to finish the migration:

> “and i am very very sick atm. all will be paid up for the next 30 days and gives me time to get back out and transfer to you. ill speak with you tomorrow afternoon/evening”

To date, that was the last communication we or anyone in contact with us have received from Ikey.

Joshua: By September 9th, our development tracker was online. With Bryan’s attention focused on bringing up the builder, I focused on implementing changes to eopkg / pisi to gracefully move our users over to the RIT Solus package repository (hosted on mirrors.rit.edu). On September 10th, the builder was officially up, receiving builds and passing them to our new repository. I finalized the eopkg update and subsequently released it on September 11th to the old stable repository and announced via the “[Package Repo Migration Now Available](/2018/09/11/package-repo-migration-now-available)” blog post. 

Joshua: It was also around this time where, unbeknownst to me, I was contacted by various individuals for comment on an upcoming podcast. With a lack of concrete information about Ikey, an understanding of his personal situation, as well as being preoccupied with ensuring a seamless upgrade experience for our users, we simply did not have the full opportunity to comment until after the podcast took place. As a result of our (unintended) lack of response prior to the podcast, several individuals grossly mischaracterized the situation both for the project and Ikey, which lead to a more official response from me on Reddit about the situation at that time, with respect for Ikey’s privacy. Looking back, it is easy to see why people were frustrated by our lack of a definitive response. However, we believed (and still believe) that the best course of action was not to respond until either receiving more information about the situation or until such a time as we could no longer justify waiting.

Joshua: The infrastructure migration officially was completed with the release of the Solus 3 ISO Refresh (also referred to as Solus 3.9999). After this point, our focus moved to improving community engagement, first-party services, and delivering users exciting new features and stack upgrades (such as the new Plasma Testing ISO as of our [Shiny Delights](/2018/10/24/shiny-delights) roundup). To put this all into context, in the span of only 6 days we had entirely re-bootstrapped the Solus infrastructure, including a new Solus release.

Bryan: Now that you have a better idea of the series of events leading up to today, I would like to take this opportunity to share with you our reasoning behind the decisions we have made in the past several weeks. I do this both in the interest of transparency and because I personally believe that you have a right to hear it directly from us and not through the words of other groups or individuals. 

There are two main reasons that we have kept an effective “Radio Silence” when it comes to Ikey and the status of certain aspects of the project. Firstly, it is important to recognize that while the members of the Core Team do not place Ikey on a pedestal, we do have a significant amount of respect for him both as a person and as an excellent technical mind. It is this respect which we have exercised these many weeks by giving him time to take care of himself both physically and mentally. This has meant that we have opted to wait patiently for him to provide his own answers, rather than resorting to, or encouraging, speculation. Many of you likely see the resulting silence as poor judgment, avoiding confrontation, or just plain being “cagey”. I would like to again reiterate that our silence has been out of our mutual respect for Ikey as a human being, for his vision for Solus, and for the many thousands of hours he has given to us and the project.

Bryan: Our second reason for remaining silent is much more pragmatic. In the wake of the last OVH outage, we spent nearly every spare moment bringing our infrastructure back online and doing everything we can to return to our previous pace as a project. This meant focusing entirely on the migration, restoring service for our users, and finally being able to resume day-to-day development. As a result of the migration we are now 100% back online, but it has taken us most of the last month to make up for lost time. Almost ironically, I can now say that we are actually in a better state now than we were before the OVH outages. We now have our own hardware for the infrastructure, are presently not required to pay any hosting fees, and are in full control of Solus, from stem to stern. In the past 30 days we have closed over 300 Tasks on the bug tracker and Triaged just as many Tasks into their appropriate priorities and projects. We have also carried out 5 successful Friday syncs, featuring: the Xorg 1.20 stack upgrade, the introduction of the latest Nvidia 410 series graphics drivers for the Turing RTX cards, and an upgraded Plasma Desktop Environment now available as Public Beta ISO.

Joshua: During this time, I have been in contact with a multitude of providers of services which were handled either via Ikey’s personal accounts or the administrative Solus account which Core Team lacks access to. I want to provide a clear list of services which were and/or still are not accessible to the Core Team:

1. Dediserve is what was used for the previous Solus domain name and DNS. Without access to this, we are unable to update the various DNS settings to point to our new servers and as a result were forced to migrate to getsol.us, likely permanently.
2. Fastly is what was used prior to our migration for our repository CDN, enabling users around the world to access packages at a server geographically closer than the OVH package repository.
3. Google Apps for Business is what was used for our email as well as document collaboration.
4. OVH is what was used for hosting our previous build, repo, and web servers. As explained earlier, we did not have full access (via the control panel) to make any necessary changes or pay for OVH services. Fortunately, we did have partial access in the form of SSH.
5. Patreon is what was used for monthly financial contributions to the Solus project. This funding was used to pay Ikey to work full-time on the project as well as provide additional funding for hardware purchases, covering service costs, and more.
6. Paypal is what was used for withdrawing money from Patreon. This was to Ikey’s personal account.
7. SendGrid is what was used for mail delivery for Phabricator and the Forums.

I have reached out to all the above mentioned parties, which has resulted in the following:

1. In the case of Dediserve, they have refused to provide any access to the account.
2. In the case of Fastly, their support has been absolutely incredible and they immediately provided me the necessary access to the Fastly CDN. We have the fullest intent on moving our users to a CDN-backed package repository and I’d like to thank Fastly again for their fast response and understanding.
3. In the case of Google and Google Apps for Business, they have not responded to my inquiries as a result of me not being in control of the administrative account.
4. In the case of OVH, they had been unwilling to provide us the adequate access, however they were willing at the time to leave the servers on for an additional 5 days during our migration. At this stage, they are no longer needed.
5. In the case of PayPal, this is Ikey’s personal account and as such, it is not feasible for me to obtain access to it.
6. In the case of SendGrid, they have not responded to my inquiries. I have however created a new SendGrid account for mail delivery, so this is a non-issue.

Joshua: Which brings me to [Patreon](https://www.patreon.com/solus), arguably the most difficult for me to talk about. After multiple support tickets, they have repeatedly **refused** to provide access to the Solus account. At this moment, we have **no way** of accessing the funds many of you have graciously donated, nor are we fully aware of what funds are available via Patreon. I absolutely understand if you are frustrated with having financially contributed to the Patreon, with no way for us to utilize these funds for hardware purchases and paying for services, it’s frustrating for us too. Unfortunately, with Patreon’s refusal to assist us, our only option is to kindly request that you **immediately cease your donations to it**. My personal advice would be to additionally contact Patreon for refunds and express your frustration to them for their unwillingness to assist us. We can only hope that they decide to grant us access to the funds or account.

I deeply apologize that we did not take the necessary measures earlier to ensure this account was accessible to the entire team. Moving forward, we will not be accepting any monetary donations until we have measures in place to ensure it can be accessed by the entire team at any point in time.

Bryan: Ikey’s vision for Solus is one that all of us on the Core Team share. Solus is a selfish, pragmatic obsession with building a technically excellent linux distribution. This vision is what attracted us all to the project in the first place. We each bring our own unique experiences and expertise to the table, with Ikey’s phenomenal mentoring over the years giving us an incredible foundation to build on.

Admittedly, what first brought me to Solus was actually the Budgie Desktop environment. At the time, Solus was still EvolveOS and, I’m ashamed to admit, I was an avid user of XFCE on Ubuntu Studio. With XFCE development ground to a halt, I was looking around for a new desktop environment and Budgie showed remarkable promise. Digging further, I was surprised to find that “that Ikey guy” had been at it for years and was also running his own from-scratch Linux distribution. I had to find out more. For the next year, I kept an eye on EvolveOS and Budgie development, avidly reading the blog posts for any new details, even as EvolveOS became Solus. It was in the Spring of 2016 that I finally broke down and dusted off my IRC client and started hanging around the Solus channels on Freenode. During the Solus 1.2 Hack-fest in June, I finally felt comfortable engaging in conversation with Solus users and the Core Team. Ironically, one of my earliest memories of these conversations was an exceedingly nerdy argument between me and Josh about how Asynchronous Compute Shaders in the Radeon GPUs work. I won.

At work, I was spending my volunteer hours helping to support researchers by building and maintaining some of the software they used. So the leap between that and my learning how to package (especially seeing how easy it was ypkg), wasn’t that far. So, I pulled an ancient machine off the shelf, fired up by first Solus install and found myself taking on ludicrous things like printer drivers and the massive TeXLive LaTeX publishing distribution. After contributing several packages through the then Bugzilla Bug Tracker, I decided that it was time to carve out a corner of Solus that I would work on: Games. I felt that Solus utterly lacked open-source games, so I made it my personal vendetta to fix that and the Solus Game-Fests were born! During these early YouTube streams, I was only a community member, but I was spending anywhere from 5-17 hours a weekend packaging new Games for the Solus repos. By that time I was already in fairly constant communication with the Core Team and we had started “hanging out” on our mumble server. After several livestreams together, Ikey and Josh finally broke down on October 26th, 2016 and invited both me and Peter to join the Core Team, remarking that they really should have done this sooner. All of a sudden, things had changed for me forever. Fast forward to today, and I just celebrated my second anniversary as a member of the Core Team. Looking back, I am incredibly proud of all that we have accomplished in such a short time and thankful for all of the support that I have received from both the Core Team and the Solus Community. Thank You!

 
Joshua: I first got started with the project shortly after the release of EvolveOS Beta 1. I was originally attracted to the project for several reasons, some I’ll admit are more superficial than others. Budgie 8 looking similar to Chrome OS, which was a design I was fairly attracted to at the time. Some more technical reasons like its focus on a single architecture (at the time with no support for emul32 packages even, so no Steam or WINE) and being built from scratch with home computing devices in mind. It was also (and still is) the only operating system my old laptop was able to properly suspend with, which was remarkable on its own. Of course, that didn’t make up for its hilariously few packages at that time. It had no Atom, so I didn’t really have a comfortable IDE to edit with. It had no mono, which meant no Keepass so I couldn’t even open up my password database. But it had Ikey, his vision, and his willingness to dedicate countless hours to teaching me ypkg and the brand new package.yml packaging format, so I could email him patches so that he could include them in our then single monolithic git repository. EvolveOS (and later Solus) was the first real Linux project where I felt truly empowered to make a difference and help serve others. I was there when we formalized the first proper team for EvolveOS (Ikey, Justin, and myself). I remember the conversations with Ikey where I was absolutely adamant that we have some form of notification and widget center for the new Budgie release. I was the one that announced the first release (and release candidate) of Solus and stepped into the shoes of communications manager. I remember sitting there, reviewing and landing Bryan’s packages in his game-fests before he became a Core Team member. I remember having the discussion with Ikey on bringing Bryan, Peter, Stefan into Core Team. I’ve been there, I’ve had those discussions, and we pushed forward together because what we have as a diverse team is a shared vision and common goals.

 
Joshua: The shared vision of what Solus fundamentally is has remained unchanged throughout the years and has acted as our true north, our north star to guide us. What Solus can be has been our catalyst for change as our community, our needs, and our team have evolved.

**Solus is selfish.**

- We are focused solely on home computing devices.
- We are focused on supporting the dominant hardware architectures for devices we use.
- We are focused on building an operating system we want and are proud to use.

**Solus is pragmatic.**

- We don’t constrain ourselves to any single philosophy.
- We curate the contents of our repository to ensure users install software which is well integrated into the operating system, as well as ensure maintainability and sustainability.
- We provide closed-source software because that provides an optimal experience for our users, even though we prefer open-source wherever possible.

**Solus is an obsession.**

- We are obsessed with providing sane out-of-the-box experiences and defaults, some which may run counter to their upstream counterparts (like GNOME).
- We are obsessed with providing a responsive, performant, and accessible platform for all users regardless of experience or skill level.
- We are obsessed with providing a safe, friendly community and working environment for our users.

**Solus is technically excellent.**

- We do not shy away from rethinking entire aspects of our architecture to continuously provide ourselves and our users a better experience, whether that’s driver management, Steam support, or software delivery.
- We develop the tools that Solus needs because nothing else is good enough to meet those demands.

**Solus is a Linux-based operating system.**

- We are proud to use the Linux kernel as the basis for our operating system. Using Linux enables us to maximize hardware compatibility, rapidly support new devices and features, and when necessary, engage with the Linux project for the benefit of our users.


Bryan: Moving forward, we want to spell out our clearly defined roles and responsibilities. We will also be working on a dedicated Team page on our website so you can learn a bit more about us, get information on our roles in the project, as well as means of contacting us.

The various roles for the project are currently spread across the three active members of the Solus Core Team: Joshua, Peter, and myself.

Going forward, I will be in taking on the title of Technical Lead. This role involves (but is not limited to) the following:

- Development, enablement, and support of drivers and the kernel
- Development, enablement, and support of key sub-systems such as dbus and systemd
- Development of various tools related to packaging and devops.

Peter will be taking on the title of Performance Lead. This role involves (but is not limited to) the following:

- Development, enablement, and support of our various supported compiler toolchains
- Development of various build-time optimizations
- Development of various tools related to benchmarking.

Joshua: I will be taking on the title of Experience Lead. This role involves (but is not limited to) the following:

- Development, enablement, and support of Budgie and GNOME desktop environments.
- Development and support of various platforms and tools related to community engagement, internationalization and accessibility.
- Continued role of community engagement across the blog and social media accounts.

Bryan: I would like to take this opportunity to directly speak to Ikey, since I have no other way to do so at present and out of respect for his many years of service feel that I owe him that much and so much more.

Ikey. You are the reason that Solus exists today. There isn’t a single one of us that can stake that claim or who isn’t grateful to you for everything you have accomplished and for letting us be a part of this journey. It is our sincere intention to carry on with Solus in a way the fits with your vision for the project and that reflects the thousands of conversations we have had over the years on what Solus is and what it needs to be. This is in no way some form of hostile-takeover or coup. If at any point in time you wish to return to the project, we will be happy to welcome you back. We will also respect your decision not to if that is what you truly desire. In the meantime, Solus has a life of its own now and we are all thoroughly invested in continuing its development and, pardon the pun, evolution. 

On a personal note, I am immensely grateful for all of our time working together on Solus. You have taught me a great many things these past two years and I will carry those memories for the rest of my life. It is an honor for me to be able to call you friend. For you, I wish the highest of successes in whatever you choose to do next in life and that it brings you the happiness that you so rightfully deserve. Thank you and good luck!

Joshua: These last few weeks have emphasized the need to fully eliminate all aspects of bus factor from the Solus project, immediately when we bring up or start using new services. This ranges from domain administration to access to funds. Already, we have done the following:

- I have enabled administrative capabilities for the GetSolus domain for Bryan, so any DNS changes necessary can be made by him.
- For our GetSolus GitHub organization, every member of Core Team has owner rights.
- Bryan, Peter, and myself all have SSH access to the relevant self-hosted servers and virtual machines used by Solus.
- Bryan has administrative access for the GetSolus SendGrid account via their Teammates feature.
- As was previously the case with Phabricator, our Development Tracker, Bryan, Peter, and myself all have administrative capabilities as well as the ability to perform modifications to Phabricator via its CLI over SSH.

Bryan: One of the single largest challenges for any open-source project is dealing with the legal side of the house, especially when the developers span multiple different countries and jurisdictions. In the past, we dealt with this by having Ikey be financially responsible for the project and having the whole Core Team share the legal burdens of things like enforcing our licenses and complying with the license terms of the software we provide. However, with the project growing, it has been clear to us for well over a year now that we would eventually need to move to either treating Solus as a business or relying on another organization to become our “clearing house” for legal matters.

At present, none of the Core Team members are in a position to take on the individual responsibility of establishing Solus as a legal entity, so we are planning on pursuing membership with a non-profit legal entity. We will be preparing to submit a formal application to have Solus join the [Software Freedom Conservancy](https://sfconservancy.org/). The Conservancy is a non-profit organization which exists for the sole purpose of serving as a parent organization for FOSS projects. In this role, they are able to:

- Receive tax-deductible charitable donations that may be directed to the Solus Project
- Provide us with the ability to hire full-time developers as contract workers
- Provide us with legal representation for both licensing (copyright) and branding (trademark) enforcement
- Assist in the organization and operation of Solus Community Events (e.g. conferences and meetups)

For those of you with reservations about us joining forces with another organization, I would like to put your minds at ease by pointing out that the Conservancy provides legal representation for:

- Coreboot
- Debian Copyright Aggregation Project
- Git
- Godot
- Inkscape
- Mercurial
- QEMU
- Samba
- Wine

Joshua: Solus has long been defined as a curated rolling release operating system. This model enables us to rapidly deliver new updates to our projects or relevant software stack in a manner that does not sacrifice the overall stability of the user experience.

In the past, we have alternated between major releases and ISO snapshots. Going forward, we will have a model that enables us to release new versions of Solus every month while still providing adequate amounts of time for larger projects to mature before shipping them.

This model will have both major and minor releases. Starting with Solus 4, which is our upcoming major release, we will be implementing this new model. For Solus 4, our primary focus at this moment in time is the finalizing of Budgie 10.5 and deferring the Software Center to a later 4.x release. Our decision to do this is also in recognition that we have had a multitude of stack upgrades since even our Solus 3 ISO Refresh, such as X.Org 1.20.x, and these are changes we want to get delivered in a new ISO.

For Solus 4.1, the focus will be on Budgie 10.5.1 and upgrading our GNOME stack to 3.30.x. During this time, we will be analyzing the “xng” or “next generation” Software Center code and begin work on its completion. We have no set date or release for it, simply “when it’s ready”.

Beyond our releases, we also want to take the time to focus on improving our first-party services and improving communication with our community. This was something we detailed in our [Improving Community Engagement](/2018/10/11/improving-community-engagement) blog post, as well as our following roundup, “[Shiny Delights](/2018/10/24/shiny-delights)”. We want to provide room for more voices in our community, regardless of their language, and provide better tools to serve them.

Additionally, Bryan will be focusing on improving our build tooling, including continued improvements and updates to cuppa and eopkg-deps. He is also in the planning stages of the next major version of ypkg.

This is just the start and a look at the near-term. There are countless other aspects of Solus we want to improve or re-architecture, whether that is sol, a new Installer, a power management replacement for TLP, and yes even a GTK4-based Budgie 11.

We absolutely understand that everything we’ve just discussed is a lot to take in. We hope that all of it has provided a comprehensive explanation on our perspective. As always we want to be upfront with you, our community, about the current events and situation of Solus, while still respecting the privacy of others. If you have any questions, we will answer to the best of our ability.

Signing off,

The Solus Core Team
