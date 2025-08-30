---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
categories:
- News
- Packages
- Security
- TWIS
date: "2016-02-22T03:58:08Z"
title: 'This Week in Solus -- Install #21'
url: /2016/02/22/this-week-in-solus-install-21/
---
 
Welcome to the 21st installation of This Week in Solus. Apologies for the lack of one last week, basically entire team was running unstable on our robotic bodies and we all got knocked out by a bad build and we only got the new bodies after 
TWIS's normal time. I mean we were all ill or feeling "blergh" in general.
      
#### Road to 1.1

Due to our benevolent code monkey, Ikey, being ill last week, we don't have news to report on the 1.1. We should have some news to report next week.

#### Hangout Sessions

Last week we announced that we are going to start having bi-monthly Hangouts sessions. These hangout sessions will occur on the 1st and 3rd Sunday of every month, at 10am UTC, and will go over news from This Week in Solus, discuss plans for the month,  
open Q&A, etc.

You will be able to watch these Hangouts via our [YouTube channel](https://www.youtube.com/channel/UCafmzeNk3o0g79oz0qbkzNg) and attend if you pledged via Patreon or donated, in the month prior to the Hangout, at $10 or more. 
You will receive an invitation link before we go on-air so you can join the hangout, ask questions, and engage with us directly.

Our first Hangout session will be the 6th of March and invitation links will be sent to those that pledged or donated at the $10 tier in the month of February.

#### Packaging on Solus Series

A [Packaging on Solus video series](https://www.youtube.com/playlist?list=PLhhMWYdkJJbOtQirX-hgqac0xOpMTCb2v) has been started on the Solus Project 
[YouTube channel](https://www.youtube.com/channel/UCafmzeNk3o0g79oz0qbkzNg). This series is meant to introduce people to the process of creating, building, and submitting packages for Solus. The first video of the series is out 
(shown below) will the second video being released sometime today.

#### Security Improvements

In light of the recent issues with the Linux Mint project, we're adding an additional piece of mind to the distribution of our ISOs and signing of our sha256sums (**which we've always used**) and providing a global Solus GPG key. You can find the 
related links below:

- [Global Solus gpg key](https://archive.solus-project.com/solus.gpg)         
- [Inclusive SHA256SUMS](http://ikeydoherty.com/SHA256SUMS)         
- [Inclusive SHA256SUMS detached signature](http://ikeydoherty.com/SHA256SUMS.sign)

We have already audited our servers, ensured that every official mirror provided by the core team is synced with the SHA256SUMS.sign file, and follow best practices to controlling access as well as updating of mirrors, in addition to secure distribution of ISOs.

We will be separating out official and community mirrors on our Download page. Official mirrors are guaranteed to be regularly audited and updated, and we'll be doing **daily** integrity checks against **every** ISO mirror.

#### Package Updates

Below is a highlight of the packages that been updated or new, from this week:

New: 

- [audacity 2.1.2](https://git.solus-project.com/packages/audacity/commit/?id=d38b0e2fe6bfdf7f3d40b39bc882ea586b85a77d)
- [galculator 2.1.3](https://git.solus-project.com/packages/galculator/commit/?id=af59243c31123a9139945418baac91ac3cdae1f8)

Updated: 

- [atom 1.5.3](https://git.solus-project.com/packages/atom/commit/?id=dfb213ba3bb3c537d15ba1338cbee6cf2ffe3a4f)
- [epiphany 3.18.4](https://git.solus-project.com/packages/epiphany/commit/?id=de5b8df42c7ee4aa3fbcfe0612307cfc39d82d1a)
- [filezilla 3.15.0.2](https://git.solus-project.com/packages/filezilla/commit/?id=025d3596cb0c4db5ff4d4a6f766fa75edbbb32a5)
- [firefox 44.0.2](https://git.solus-project.com/packages/firefox/commit/?id=4720dedd8bcbc9b7f2993d383715d1b8f6ffebf7)
- [lollypop 0.9.87](https://git.solus-project.com/packages/lollypop/commit/?id=e5fc767d3e0c093f46837b3041234a61d9eac25f)
- [owncloud-client 2.1.1](https://git.solus-project.com/packages/owncloud-client/commit/?id=5e650f23177b030398ae502623f2507a06ef9b5c)
- [kernel 4.4.2](https://git.solus-project.com/packages/kernel/commit/?id=c97aa3e76f839c16503233c6ddd0b02e9cdf768f)
- [postgresql 9.5.1](https://git.solus-project.com/packages/postgresql/commit/?id=5ddd3887f5766422a15d877f45e59ea7dd3ba7fb)
- [thunderbird 38.6.0](https://git.solus-project.com/packages/thunderbird/commit/?id=58fc24104998ea3cc8ece8d9b93266dc293d3690)
- [tilda 1.3.2](https://git.solus-project.com/packages/tilda/commit/?id=b73e4ac51b065b9744877c9864f05b2aea307fb4)
- [youtube-dl 2016.02.13](https://git.solus-project.com/packages/youtube-dl/commit/?id=b928eb78dae628a72177638025099bac5ed5cec7)