---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- News
- Packages
- TWIS
date: "2016-01-17T22:23:51Z"
title: 'This Week in Solus -- Install #18'
url: /2016/01/17/this-week-in-solus-install-18/
---
 

Welcome to the 18th installation of This Week in Solus. 

#### Repository Improvements

We're currently moving the repository to a new server with significantly more disk space and resources, as well as to a location that should improve the main repository speeds.

This has been the result of generous donations from our Patreon and PayPal supporters. Thanks to them, we're able to worry less about disk space while everyone else can enjoy faster package downloads.

Server Information:

- Intel Xeon E3 (8-core)
- 32GB RAM
- 2TB disk space (RAID1)

#### User Guide

As stated in the 17th installation of This Week in Solus, the comprehensive User Guide [has been released](https://drive.google.com/file/d/0B5Ymf8oYXx-PWTVJR0pmM3daZUE/view?usp=sharing). 
I have since converted the entirety to Markdown, which is all available on [our GitHub repo](https://github.com/solus-project/user-guide).

This week the User Guide should progress with:

1. Writing the parser that'll be responsible for converting the Markdown to HTML, as well as handling some of our [custom syntax](https://github.com/solus-project/user-guide/blob/master/Custom-Syntax.md). The HTML **may** be used on the 
site (to be discussed) in addition to converting the HTML to PDF.
2. Writing the styling to make the HTML pretty, which will also leverage HighlightJS styling.

I also welcome anyone that wants to convert the User Guide into their language. The images have been separated out from the Markdown and the English docs should provide a sane basis for converting it to another language.

#### Package Updates

As a result of the process of moving the repository, a repository freeze has been issued. As a result, there has not been many updates that have landed. Prior to the freeze, the following updates were issued:

- [atom has been updated to 1.4.0](https://git.solus-project.com/packages/atom/commit/?id=9e777ea9b7615ade673bc9c656e974aa5b3e8531)
- [bleachbit has been updated to 1.10](https://git.solus-project.com/packages/bleachbit/commit/?id=bc186b29f92c0f2a797f0c8808d3d4319f6ad52b)
- [blender has been updated to 2.76b](https://git.solus-project.com/packages/blender/commit/?id=93863546b76959f39a5fdaf2c44d6544b96e0d8b)
- [cve-check-tool has been updated to 5.6](https://git.solus-project.com/packages/cve-check-tool/commit/?id=ab17a1106cad1e2713917ac8bcb9274586f326bb)
- [darktable has been updated to 2.1.0](https://git.solus-project.com/packages/darktable/commit/?id=083a5a1fe931755dbadac9582c754fb196543eb8)
- [ffmpeg has been updated to 2.8.5](https://git.solus-project.com/packages/ffmpeg/commit/?id=9d32bf901f8de3eeffd6e9d80fd49b89e4bc8392)
- [erlang has been updated to 18.2.2](https://git.solus-project.com/packages/erlang/commit/?id=9bd7eead337872e54285d4497a6fc5525c3176a7)
- [lollypop has been updated to 0.9.77](https://git.solus-project.com/packages/lollypop/commit/?id=ff0947fe938e78bbd4f60127e8e027d71562d4f2)
- [mosh 1.2.5 has been added to the repo](https://git.solus-project.com/packages/mosh/commit/?id=26cc3af6d2bd7cde4d258ec6cb8db26bbe6958a6)
- [nodejs has been updated to 5.4.1](https://git.solus-project.com/packages/nodejs/commit/?id=703e243ccf58a67f516b4e8bc36f07ceda220391)
- [portmidi 217 has been added to the repo](https://git.solus-project.com/packages/portmidi/commit/?id=fbef066d27a8469f6a6f93b7f8ace267e56e2636)
- [scribus has been updated to 1.4.6](https://git.solus-project.com/packages/scribus/commit/?id=1d3c79f517bc7c248d7c7fc26c4ca7935ae8d3a6)
- [tor 0.2.7.6 has been added to the repo](https://git.solus-project.com/packages/tor/commit/?id=f132d205664ec365d4930f4e30af00b1b4b215a0)
- [youtube-dl has been updated to 2016.01.14](https://git.solus-project.com/packages/youtube-dl/commit/?id=4dd0f34defc8fb1082eff340b74e2979b522a422)

          