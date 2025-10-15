---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- News
date: "2014-03-21T18:47:27Z"
title: Reusing What Is Already There
url: /2014/03/21/reusing-what-is-already-there/
---

As many of you know, with Evolve OS I'm setting out to create an experimental distribution. Hopefully, throughout the course of Evolve OS, I'll be able to influence and 
help other projects accomplish common goals and improve current technologies.

Recently I've been in quite a pickle in terms of choosing a base. Given that Evolve OS is **not intended as a daily driver for other users**, there are slightly different 
requirements. A common issue I've run into in the past is attempting to keep my own changes in sync with the upstream project, or chasing package versions.

What I actually need with Evolve OS is<!--more--> absolute control and flexibility, the ability to put out images knowing exactly how every component is interacting with 
each other. In larger projects such as openSUSE or Fedora, this is extremely difficult and large teams are required just to package.

What I intend to do, is to reuse materials from the past. Whilst SolusOS was indeed closed down, it had very different aims to Evolve OS. During the development of SolusOS 2
 I put in an enormous amount of effort to build the system from scratch, and built many, many packages. These happen to be mostly the same packages I require for Evolve OS.

Please **do not misinterpret this post!** SolusOS is, and will remain, gone. I am saving myself the enormous struggle I suffered during the development of SolusOS 1, that 
led to the original decision, in keeping my own changes in sync with an upstream package base.

I simply intend to reuse the old package base, not the distro itself. This will allow me to greatly speed up the development of Evolve OS. Whilst some may have argued in the 
past creating SolusOS 2 was an enormous task in itself, it seems ridiculous to now overlook so much work that is still very relevant. The packages and toolchain will be reused to create Evolve OS ISO's within a **matter of weeks**.

**Immediate Advantages:**

I retain the sole administrative position within the project, having absolute say on what enters the repositories. Evolve OS is then able to stay on task, and to be very light.

I do not have to battle upstream changes to enable experimentation. Having full control over a very small repository leaves less room for bugs, and more time to work on 
software and not just another packaging distro.

**Integration -- not just packages**

Many distributions exist today that now only concentrate on the packaging side of things. Evolve OS prioritizes **integration**. The system will be completely user friendly, and components interact with each other in a natural and expected manner.

**What it wont be**

Evolve OS remains an experimental distribution -- nothing has actually changed. The first move will be trimming the repository size and keeping it small. I have absolutely
 no intention in creating a "PPA" system, or providing **yet another monolithic distribution.**

**Do one thing, do it well**

I've always maintained this is important. The "one thing" actually encompasses quite a lot of things, being user friendly and actually useful. What you can expect however, is
 that no other desktop apart from the GNOME stack and Budgie Desktop will be in the repositories, and no package that is outside the scope of the goals set on our About page 
 will be included.

I do not want to create a large bloated system, I want to express my ideas and my own software in a guaranteed medium, i.e. Evolve OS releases. I want to promote 
experimentation, and enable other projects to try concepts within Evolve OS (assuming they relate to the aforementioned goals)

**And lastly**

Most of the packaging work is actually done, remnants of the old package base. After some cleaning and updating, I'll rebuild the binary packages and upload the first 
snapshots. For now I am only targeting **x86-64 architecture **(My build machines happen to run 64-bit OSes for my own needs, and this enables me to concentrate on 
less packaging quirks)

Remember, I also need a distribution for myself. Evolve OS will suit my needs very nicely, and will become **my daily driver**-- though I will not recommend it as such for 
other people in the slightest. As much as other people might not need the package base, the concepts or even the goals I wish to achieve via the project, they are indeed 
my own personal goals, and I am first and foremost creating Evolve OS for myself. As I've said many times, with the already known Budgie Desktop and Budgie Media 
Player, this is how I want my desktop to be. This is my vision, and I'm happy to share it via Evolve OS publicly.

Have a fantastic weekend!

Ikey