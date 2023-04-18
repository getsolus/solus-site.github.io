---
title: "A New Voyage"
author: "joshua"
categories:
  - infrastructure
  - news
  - partners
  - plans
date: 2023-04-18T13:00:00+03:00
featuredimage: "/featured-image.jpg"
url: "/2023/04/18/a-new-voyage"
---

As a community and a team, we have been through some choppy waters the last few months. After extensive internal discussions involving consultation with contributors past and present, we have charted a new course for long term success which will yield immediate results for users and contributors. As of today, we are deploying a new, more resilient infrastructure and a new governance structure for Solus.

# What Have We Already Done

## Infrastructure & Operations

Previously, our build and development infrastructure was hosted on-premises at the Rochester Institute of Technology. This infrastructure was only accessible to (and physically serviceable by) one individual. On January 17th 2023, Solus infrastructure suffered a hardware-level issue that caused a service outage. This outage resulted in almost three months of service downtime, which impacted the ability to update and deliver packages, communicate on the Solus forums, or access the website (which was rehosted on GitHub Pages on February 27th). Alongside this service downtime, there was minor data loss for a limited set of package git repositories on the server which hosted the development tracker (Phabricator).

Both prior to and during the outage, active Solus team members offered to help mitigate the infrastructure bus-factor issue and move the infrastructure to more accessible hosting providers. These efforts were not met with success. In parallel, the Solus team members stepped up to communicate with the community when there was otherwise an absence of information.

Separately, the Serpent OS project, led by Ikey Doherty (original founder and lead of Solus), reached out to offer hosting of the website to facilitate Solus’ ability to communicate with its user base and serve ISOs. Concerned by the continuing outage and its impact on Solus users and contributors, the Serpent OS team shared a proposal which would allow Solus to resume operations with less technical debt and mitigation of the apparent bus factor of one.

This proposal was well-received by active Solus team members and led to extensive discussions and eventual agreement regarding a sensible path towards infrastructure recovery and a viable future for Solus.

After reaching a consensus at the beginning of April regarding the new organizational structure and plans for the short, medium, and long term; the cross-project team began detailing the necessary action items for restoring operations, the continuation of the development of Solus, and earning back the trust of our community.

Our infrastructure is in the process of being redeployed on a more robust multi-cloud architecture. This infrastructure is hosted across DigitalOcean and Hetzner, mitigating the requirement for physical access, and access to the virtualized resources and service control panels are available to multiple team members, mitigating any bus-factor issues from the outset. This management is made easier with the adoption of modern DevOps tooling such as terraform. Alongside this, we now take advantage of Bitwarden Teams for consistent and secure credential sharing where it is otherwise not feasible to set up dedicated teams or invite on team members for management purposes.

This shared access to the new infrastructure also means that Solus team members are now able to independently perform package syncs to users, which is in contrast to the prior situation as package syncs were blocked on the availability of a single person.

# Charting A New Course

As we embark on a new voyage, it would be wise to take inspiration from our shared experiences and perspectives. This involves addressing not only highlights and successes but also taking an honest look at what perhaps didn’t work so well or didn’t meet our expectations or that of our community.

Moving forward, our aim is to adopt a more grassroots-based leadership approach with more fluid domains of responsibility along with the increase in transparency such a move allows. Philosophically, it provides a welcome opportunity for the current team to adjust course towards the original goal, spirit, and soul of Solus.

In that respect, it is perhaps useful to outline some of the strengths displayed by Solus in its heyday.

## The original Solus value proposition

Originally, the community was attracted to Solus because, as an independently developed Linux-based operating system, for a while, it was right at the vanguard of desktop Linux development, due to its ability to deliver a friendly, fast and well-curated home computing experience with an eye towards elegance and technological advancement.

Solus could deliver this because it was engineered as a seamlessly integrated collection of innovative backend engineering choices and user-facing tools, resulting in quantum leaps compared to the then competition in many areas, such as:

- Having a desktop focused Linux kernel configuration that targeted increased responsiveness in the user experience under load out of the box
- Delivering Haswell-optimized binaries as part of the base x86_64 packages, which would automatically be utilized on supported processors. These were offered where they showed tangible package performance benefits, during a period where there was no equivalent to the recently adopted psABI-based x86_64-v2/3/4 offerings.
- Enabling PGO and LTO performance optimizations in binaries that benefited from this, before doing so was the norm across mainstream Linux distributions
- A much more streamlined packaging experience, which from the outset insisted on a packaging process based around a chroot-based environment, thus ensuring reproducibility. This was made possible through innovative tooling such as ypkg and evobuild / solbuild.
- A release engineering workflow which provided the stability of a long-term release model with the upside of not having to wait many months for new software versions with new features and increased performance, due to the curated rolling-release model employed by Solus.
- Simple hardware enablement for many vendors such as Broadcom and NVIDIA, via our hardware enablement tool DoFlicky. This was combined with native NVidia Optimus (integrated⇔dedicated GPU switching) support at a time when this was a legitimate pain point in other Linux distributions
- A great Steam experience on Linux via the in-house developed Linux Steam Integration tool, the features of which were subsequently adopted by the Steam Flatpak runtime

## Leadership & Organizational Structure

Historically, the hierarchy of the Solus management did not facilitate or promote the idea of shared domain ownership or organizing into groups that could work independently to keep the Solus ship sailing smoothly. Management was organized into the “Core Team” and “Global Maintainers”, with Core Team being responsible for most of the administrative work and a considerable amount of decision-making. In contrast, Global Maintainers were mostly involved in maintaining a subset of Solus packages, such as desktop environment stacks and individual packages. The purview of Global Maintainers was typically viewed as being confined to “their” individual stacks, not allowing them much agency beyond that.

To enable the continuing evolution of Solus and the next set of quantum leaps, Solus leadership needs to evolve as well.

The new Solus organizational structure is built around the philosophy that the sum of the whole is greater than its parts. This structure, by virtue of being flatter and less strictly delineated, is deliberately designed to provide more opportunities for the community to get involved in various areas. This will allow people to showcase their amazing skills and talents in a context that encourages personal and professional growth through more areas / avenues of collaboration and learning. We intend for community members to be able to evolve in new and exciting ways, treating their experience using and contributing to Solus as an adventure where the journey is just as important as the destination.

While the organizational structure will need to be able to constantly evolve to meet the current and emerging needs of contributors and users alike, we believe that the teams listed below will provide for a good start towards our vision of a more open and inclusive Solus.

All of these teams contain more than one individual (preferably at least three), reducing bus factor within each domain, and as a result of cross-domain expertise and knowledge, it is expected that many of these groups will consist of at least a handful of people.

### Technical Steering Committee

This group would be responsible for researching, guiding and influencing matters of technical development in the larger arc of evolution for Solus. The overarching goal is to ensure that Solus remains relevant in a constantly changing computing landscape. As part of its responsibility, it will carefully listen to input from the community and the various stakeholders in Solus.

At the time of publication, this group consists of: Ikey Doherty, Joshua Strobl, Joey Riches, Reilly Brogan and Rune Morling (ermo).

### Infrastructure and Operations

This group would be responsible for ensuring infrastructure related to Solus is adequately maintained and managed, evolves over time as new hardware and capabilities arise, adopts modern development and infrastructure practices, essentially safeguarding the promise of install today, update forever.

At the time of publication, this group consists of: Ikey Doherty, Joshua Strobl, Joey Riches, Reilly Brogan, Rune Morling (ermo), Philipp Trulson.

### Community Engagement and Communications

This group would be responsible for engaging and communicating with not only the Solus community but also the wider tech community. This includes, but is not limited to: surveys, blog posts, tech highlights, interviews, social and trade media, podcasts, and our forums.

At the time of publication, this group consists of: Joshua Strobl, Joey Riches, Reilly Brogan, Thomas Staudinger (Staudey), Tracey Clark, Algent Albrahimi.

### Stack Maintainers

This is a high-level group with the goal of providing points of contact and resiliency for the maintenance of crucial or otherwise important parts of the software stack and user experiences that Solus delivers. This ranges from toolchains and kernels to your favorite applications and desktop environments.

At the time of publication, well it is basically everybody! Ikey Doherty, Joshua Strobl, Joey Riches, Reilly Brogan, Algent Albrahimi, Thomas Staudinger (Staudey), Zach Bacon.

### Package Maintainers

This group would be responsible for maintaining various packages that are not part of the core software and toolchains, but are otherwise important for a fully functional desktop or server operating system.

At the time of publication (and at any point in the future): Everyone is welcome!

### Web Developers

This group would be responsible for the development and maintenance of the various web properties of Solus and intersect with the Infrastructure / Operations team.

At the time of publication, this group consists of: Joshua Strobl and Ikey Doherty. This group is actively looking to onboard more contributors. Our toolset primarily consists of Node.js, React, TypeScript, Docusaurus and Next.js.

## Transparency and Communications

Previously, individuals would have to coordinate with a single person before communicating via various public Solus communication channels, such as Mastodon, Twitter, posts on the Solus subreddit, and announcements on the Solus forums. In the case of Mastodon, it resulted in it no longer being taken into use at all.

Going forwards – and entirely in line with the more grassroots-oriented approach the current Solus team is adopting – more people are able (and encouraged!) to share what they are working on in the context of Solus, via our public communication channels. Our Community Engagement and Communications group is instrumental in assisting with, collating, and boosting those efforts.

As an example, this will enable stack maintainers to announce their intention to stream their work on package updates, which at the same time would allow contributors and interested users to provide feedback and see the nitty gritty details of how the distribution is actually built and kept up to date, driving more attention to the project and potentially resulting in new contributors being onboarded.

In the case of the blog, Solus team members will be actively encouraged to write dedicated posts or sections for posts, and it should be expected that the blog will return to a more regular flow of publications.

For day-to-day communication and in the spirit of evolving Solus, we have [adopted Matrix](https://matrix.to/#/#solus:matrix.org) and created a Matrix Space for all members of Solus. Matrix offers a superior experience over IRC, including ease of onboarding, built-in message history, video calls that could be used for community events, bots / integration, and more.

## Solus 4.x release series

In the context of the above aims, the primary focus for the foreseeable future will be on delivering new ISOs with updated -lts and -current kernels, as well as new desktop environment / stack / framework releases. This will enable Solus to once again be installed on more recent hardware.

In terms of tooling and features, we are currently focusing on maintenance and quality-of-life tweaks to the developer / packager experience. Discussions are ongoing regarding the current workflows and how to improve them going into the future.

As we will be focusing on the next-generation of Solus, in the coming weeks we intend to evaluate our existing custom tooling and will come up with an individual plan for each. This includes, but is not limited to:

- DoFlicky
- Linux Steam Integration
- OS Installer
- Software Center

## Solus 5 and beyond

To bring Solus back into a position where it is again at the vanguard of innovation and user experiences within the Linux ecosystem, it is perhaps useful to understand how Solus 4.x compares to the current state of the art in the Linux landscape.

Notably, innovation in the Linux ecosystem is presently centered around the use of application sandboxing, containers and the development of immutable operating systems with a well understood Software Bill of Materials. Each of these concepts allow for a degree of separation and stability when developing, testing and certifying software and products.

The current Solus tooling, as well as the resulting packaging and development experience, is somewhat ill-suited to this objective and would most likely need a wholesale re-engineering of the tools before this becomes feasible.

However, there is a more straightforward path for Solus: Rebasing onto Serpent OS.

### Rebasing onto Serpent OS

[Serpent OS](https://serpentos.com) is an independent, built-from-scratch Linux-based Operating system. It is first and foremost a project built on engineering-led, scalability-driven infrastructure and tooling, which is designed to vastly reduce the burden on project contributors via tight integration of modern devops practices.

The Serpent OS moss package manager mimics the familiarity of eopkg in daily use, marrying advanced and modern underpinnings with the celtic magic of simple yet powerful system package manager operations.

This results in Serpent OS being able to merge the world of traditional Linux distribution practices that we all cut our teeth on, with the advanced features expected from next generation tooling: offline rollbacks, atomic updates, immutability and continuous, verifiable delivery of packages.

The Serpent OS packaging format (stone.yml) is an evolution of the packaging format used in Solus (package.yml), such that existing contributors will find it very easy to learn the minor differences between the two.

#### How is Serpent OS developed?

In line with the aims of Solus, Serpent OS and its tooling is developed and delivered in the open, with current and former Solus contributors actively involved in the process.

#### How far advanced is Serpent OS?

Currently, Serpent OS is in the development stage with functioning prototype tooling, infrastructure and ISO images. Serpent OS is not yet in a state for end users to rely on as their development or daily driver system. However, even in its current prototype state, the Serpent OS tooling is already more capable and advanced than the equivalent (and originally planned future) Solus tooling, including:

- ypkg3 and solbuild (build system) – replaced by [boulder](https://serpentos.com/boulder/) and the distributed avalanche middleware
- sol (eopkg replacement) – replaced by [moss](https://serpentos.com/moss/)
- solhub (development hub) – replaced by [summit](https://serpentos.com/blog/2023/03/18/infrastructure-launched/) (and [GitHub](https://github.com/serpent-os))
- ferryd (binary package repository manager) – replaced by [vessel](https://github.com/serpent-os/vessel)

#### How could Solus benefit from Serpent OS and vice versa?

The primary focus of the Serpent OS team is to focus on the development of a scalable, high performance set of Linux distribution development and delivery tools.

This ties neatly into the projected future needs of the Solus community and contributors, in that it enables Solus to focus on the business of the day-to-day running of a grassroots community operating system, including timely and well-tested package updates.

In return, the day-to-day needs of the Solus development process will help inform the development direction and priorities of the Serpent OS base, while offering a path to dogfooding and battle testing the Serpent OS tooling in a large-scale production environment.

### Solus V – flexible, rock-solid performance

What we are proposing is that, alongside its day-to-day operations, we will begin exploring the option of re-basing our distribution onto a Serpent OS base with Serpent OS tooling and processes.

This would elegantly address several longstanding concerns in how to evolve Solus and bring it into the brave new future. Adopting the the Serpent OS tools and processes would enable Solus to:

1. Shed technical debt in terms of tools and development processes
2. Offer seamlessly integrated from-source user repositories, finally making the much asked for Solus User Repository a reality, as well enabling users to self-host personal from-source repositories
3. Become an atomic and immutable operating system with the benefits that this entails in terms of reliability and security
4. Be ported to other architectures than x86_64, such as AArch64 and RISC-V, in the future

This would be married to the traditional Solus approach of a resilient, curated rolling release with its mantra “install once, update forever”.

# Conclusion

Having completed the handover process and initial testing, we’re now activating our new infrastructure and updating DNS records to make them available to the general public.

The journey ahead is incredibly exciting for users and contributors alike - the very foundations of our project, the ideas that held us together over the years, are finally coming to fruition.

We welcome you aboard as we chart new waters, melding the original, high quality experience of Solus with the forward-thinking innovation it was always known for.

The New Solus Team
