+++
author = "joshua"
categories = [
	"news",
	"plans",
	"twis"
]
date = "2017-05-08T22:18:43+03:00"
featuredimage = "/2017/05/oh-my-god-it-is-a2dp-everybody.jpg"
title = "This Week in Solus - Install #44"
url = "/2017/05/08/this-week-in-solus-install-44"

+++

Welcome to the 44th installation of This Week in Solus.

## Migration to Diffusion and Differential

Ikey spent late Friday and the better part of Saturday moving our git repositories and patch management to Diffusion and Differential, applications within Phabricator, the development tracker we use. This was discussed [back in February](https://dev.solus-project.com/T2616) and is our response to:

- Needing to "upscale" with our community and its needs
- Improving the review process by enabling inline patch review, syntax highlighting to more easily catch changes, the ability to auto-close Maniphest tasks via a commit, etc.
- Enabling the use of Arcanist, a tool designed to interface with Phabricator and handle patches in a simplified manner.

Our old git infrastructure will [continue to live, read-only, for a month](https://dev.solus-project.com/C5). After such point it will be removed. This ensures any latent projects or packages definitely make the migration over to Diffusion.

If you're a package maintainer, maintain a clone of the repository, etc. you will need to either update your common's git remote to, or re-clone, the HTTPS url from [the new common repo](https://dev.solus-project.com/source/common/). After that, run `make pull -jN` (N here would be how many repositories you want to be cloning at the same time and would depend on your connection) in your repository folder and you should have your existing cloned git repositories receive updated remote addresses.

Do note, however, that the names of some repositories has changed. For example, uppercase-named repositories (*such as SDL*) are now lower-case, and repositories with `++` will change to `xx` instead, such as libsigcxx.

Our [Submitting a Package/Patch article](https://solus-project.com/articles/packaging/submitting-a-package/en/) has been updated and I will be having a livestream late this week that will cover submitting a patch with the new system.

## New Website

We deployed the new website on Friday, listening to people's feedback and addressing issues, such as some rendering bugs for lower-resolution displays and a chunky laptop vector design (*we received a new vector design from a community member via our subreddit*). Overall, the site has been well received and I look forward to applying the new, brighter aesthetic to various places on the site, such as the Blog, Help Center, and Press Center.

I'll be working this week on updating the Help Center to have a better categories view for particular sections, namely for Packaging, to make it more obvious the natural path one would take for packaging, deprecation of the "Packaging Guide" article (*which was carried over from MediaWiki and hasn't been particularly useful*) and surfacing media such as the Learn Solus Packaging videos.

Furthermore, I'll be implementing the MP3 and OGG podcast feeds in preparation for a new Sundays with Solus this coming Sunday. I'll make announcements throughout the various social channels when these feed URLs are up.

## Other Goodies

### ABI Reports

{{< altimg "2017/05/abi-reports.jpg" >}}
*This goes on for several pages.*

Peter spent time before our migration to Diffusion and Differential generating the ABI reports for over **500** packages. These reports give us a clear picture of all the used libraries of a package as well as what ABI / APIs they expose, which makes it easy to spot changes across upgrades or tweaks to packages and come to a determination as to whether we'll need to rebuild packages that depend on it.

### Bluetooth

{{< altimg "2017/05/creative-t3250.jpg" >}}

[Thanks to our Patrons](https://patreon.com/solus) and donators on PayPal for their continued support of the project, Ikey was able to sponsor my purchase of some Bluetooth speakers, specifically the [Creative T3250 wireless speakers](https://plus.google.com/+JoshuaStrobl/posts/ftwh36axeuC) and an Asus USB-BT400 Bluetooth USB adapter. This was done as we had received reports of non-functionality Bluetooth A2DP audio on some systems and needed hardware to test and validate solutions in a more rapid fashion than what have may otherwise been possible through conversing and testing via IRC.

The issue was a result of GDM starting its own instance of Pulseaudio, something I addressed in our [GDM 3.20.1 rel 22](https://dev.solus-project.com/R881:4b64ed1e4ea0d8a1823f2ae4b948f98c988dcdb3). Furthermore, I did enablement of bluez, namely enabling a stateless config and shipping our vendor-provided configuration with AutoEnable set to true, so Bluetooth controllers are automatically enabled. I also [went through and tested all editions](https://plus.google.com/+JoshuaStrobl/posts/hrGiypVeFob), as well what would be considered a more frankenstein installation of Budgie and GNOME, with GDM as the display manager, which is reflective of almost all usage of GNOME prior to the release of Solus GNOME Edition, to validate A2DP functioning on all them.

### Google Accounts Integration Fixed

We have been tracking numerous upstream tasks in regards to Google accounts signin no longer functioning. We're happy to report that an upstream fix has landed in WebKit, landed in our unstable repository, and validated.

### Scanning

Bryan spent time improving scanning support with his landing of [utsushi 3.30.0](https://dev.solus-project.com/R3102:08e237d6938dcc7046a0aa3a78ed0effc09f0603) and packaging of [iscan 2.30.3](https://dev.solus-project.com/R3384:3391f26dfa533ae71f79a49e7e773a88f7dcb1ff), alongside its data. While we are still awaiting validation from users, we know that utsushi should enable scanning for some Epson printer / scanners.

## Package Highlights

Despite a repo freeze that occurred Friday and some of Saturday, quite a few new and updated packages landed over the last week (some are in unstable awaiting sync and expected to land soon).

**New:**

- [beets 1.4.3](https://dev.solus-project.com/R3363:c954274dee6f89c94d365b2e48aa9d0356c5f5b8)
- [luminance-hdr 2.5.0](https://dev.solus-project.com/R3383:0b0c4522742d3584ee239194e4774d3629abc836)
- [perl-dbd-sqlite 1.54: Added for x2goserver](https://dev.solus-project.com/R3386:facb186439b3f9d6a25fc14b82da169a4e91a5ce)
- [plano-theme 3.22](https://dev.solus-project.com/R3365:b240e8e9b28913fa5f7e496082344d45163c9a2a)
- [python-setuptools-git 1.2](https://dev.solus-project.com/R3388:cf07cee0be08d3c3c696b9c4633c01e1639b82e0)
- [screenkey 0.9](https://dev.solus-project.com/R3389:33a3db47d1c50d75a9d6de217083284e367d36f2)
- [slop 5.3.37](https://dev.solus-project.com/R3387:7842127aaa8bfa4c660379c4f95205b6ea4665c7)

**Updated:**

- [abcm2ps 8.13.9](https://dev.solus-project.com/R329:3b4d9e2be497db6c3c69f3bc4c7b9b38bee057e4)
- [adapta-gtk-theme 3.90.0.166](https://dev.solus-project.com/R338:fc4394009ec75f93516c1591631f058341f57335)
- arcanist:
  - [Ensure arcanist can handle Initial Commit situations](https://dev.solus-project.com/R375:9e39283a03a7e3c531eea023a19d4bc097129f74)
  - [Sync with Solus server version, 2017.17, added missing PHP runtime dep.](https://dev.solus-project.com/R375:354fca0da1e1897781b0b01b470ff41ae7557ea7)]
- [ardour: Added (LX)VST support](https://dev.solus-project.com/R381:e8e847b2382b53b289724324b780826be269316f)
- [autofs: Enable systemd](https://dev.solus-project.com/R407:043f915d75aa4211f2fea4a4a55aa9db05e340af)
- [bluez: Enable stateless main.conf and set AutoEnable to true by default. AutoEnable=true should enable automatic enabling of all Bluetooth controllers](https://dev.solus-project.com/R441:e4224fb86dc5f52bd6df32d33a6263e73f40e93e)
- [budgie-haste-applet 0.2.9](https://dev.solus-project.com/R1392:ae3ba31eb3e07cba6b38ed7e756b33bf47889a2f)
- [calibre 2.84.0](https://dev.solus-project.com/R485:da4d8f37f9436ecf22dca49117c555da1ec54deb)
- [corebird 1.5](https://dev.solus-project.com/R558:7e2c52685763d98a331d60599b27bd7b388ef0fa)
- [cmake 3.8.1](https://dev.solus-project.com/R535:c4139dbb8479f9166189b1bb021983da893e9bbc)
- [epiphany 3.24.2](https://dev.solus-project.com/R707:2f76a254066d880caa4dcec713613afa1676844d)
- [evolution 3.24.2](https://dev.solus-project.com/R716:4c46e7ac8972d9c4ea0729c8e7a0d546c3ed1d75)
- [evolution-data-server 3.24.2](https://dev.solus-project.com/R717:abbc12e80def78c14d3a1189ac9c9887641a87f9)
- [evolution-ews 3.24.2](https://dev.solus-project.com/R718:4332c71ede6078643464ab0f3b285a02e3092241)
- [flatpak 0.9.3](https://dev.solus-project.com/R766:0bad1352101aa816dae29a585b38a1d8f4e9ae47)
- [firefox 53.0.2](https://dev.solus-project.com/R755:360d8fc632717e6411877ef43981bc13309fbd6f)
- [fuse-emulator 1.3.5](https://dev.solus-project.com/R862:77085a091be6a9f249cbfe16a331fdcd2d648adf)
- [fzf 0.16.7](https://dev.solus-project.com/R864:16ae416a7ccb9164f123fb127cf56257877f8f2c)
- [gjs 1.48.3](https://dev.solus-project.com/R916:c7d881f1ef55f0d245cee55d98898f2dd2262f18)
- [gnome-disk-utility 3.24.1](https://dev.solus-project.com/R959:461971afa3bf75939b9babb18012c4c640d35583)
- [gnome-maps 3.24.2](https://dev.solus-project.com/R971:d47e960d2fbca148254abf5b82ca480e3db4d751)
- [gparted 0.28.1](https://dev.solus-project.com/R1042:4b86f007fc1add11270e1589c8748ce0952e069a)
- [ibus-libpinyin 1.9.0](https://dev.solus-project.com/R1449:311743ea5b3ff6fa33103ec673d59f71a492c83e)
- [icoutils 0.31.3](https://dev.solus-project.com/R1456:fc4d27da8cf84332697d2badd4bcf8ee4690bf59)
- [iscan 2.30.3](https://dev.solus-project.com/R3384:73602b88ef9570caacadc3c5a08475db6053f199)
- [lastpass-cli 1.1.2](https://dev.solus-project.com/R1603:c1436c64a5206025674e1db70f66e4f2ae9bfd31)
- [liberation-circuit 1.3](https://dev.solus-project.com/R3366:6cc3561a2a6fb36f0cf39f1645d6f15cd87dbe3a)
- [libmediainfo 0.7.91](https://dev.solus-project.com/R1772:c2d42401f5c109105238104888f6ca9bda1f788f)
- [libpinyin 2.0.0](https://dev.solus-project.com/R1819:9955a201d8afcd78ae7c7ff4bcb5ffc28487c01f)
- [libwebkit-gtk: Add upstream modification to resolve signing in with Google](https://dev.solus-project.com/R3336:1b7ea45ce9310e6729756995d58fec9ccffe7203)
- [linux-lts 4.9.26](https://dev.solus-project.com/R1966:7f566115fec7d2a52ffeb42e61e7fe7a6b5e4360)
- [mate-terminal 1.18.1](https://dev.solus-project.com/R2044:1ad563583f597807d83c7b4efedf05f2d545762a)
- [media info 0.7.95](https://dev.solus-project.com/R2060:30f9ae4de44f2ed801c61c2c2488118b8372f838)
- [nodejs 7.10.0](https://dev.solus-project.com/R2177:085557899253608e031df3f7e6118ece34a7d4eb)
- [nvidia-glx-driver 375.66](https://dev.solus-project.com/R2210:ea2786ec6781e782589f34b8a94ee0892c110032)
- [open-vm-tools 10.1.5](https://dev.solus-project.com/R2260:c1b62e5800363d1cddf9bec5f6a7bd4dc3ade45c)
- [opencv: Enable python3 support](https://dev.solus-project.com/R2235:c3173e3a47932a6509c9b65fb23fff51e7e078d9)
- [owncloud-client 2.3.2](https://dev.solus-project.com/R2279:58d2d6a591cde2ebf4ede26d275b92848bfe591c)
- [pantheon-files 0.3.4](https://dev.solus-project.com/R2292:5f786ccbf6eb660027cda5af4e19953c234490dd)
- [pcsx2: Disable -march=native](https://dev.solus-project.com/R2311:26ded5d6e629df0d955bbe9ecc4a081f7faea584)
- [pioneer 20170415](https://dev.solus-project.com/R2439:05f41849e717d8bd2ba5f06a80c9779789e448f9)
- [pluma 1.18.2](https://dev.solus-project.com/R2455:528e48bd1be63bf3bd3c32d6b9ba8b1d98ab4f56)
- [q4wine: Built against Qt5, enabled icoutils, compressed man pages](https://dev.solus-project.com/R2719:7156f07c4d5d01c48f4fe2e2a6875693329657ba)
- [qgis 2.18.7](https://dev.solus-project.com/R2726:61be7b5e6ba3a10a6d2625e1133605efc8dc5629)
- [qownnotes 17.05.2]https://dev.solus-project.com/R2730:fbe4f29ca9ba50adac5749058823ec9f0e5bb324)
- [rcm 1.3.1](https://dev.solus-project.com/R2791:5584ca024f70405d99fb75cd594a0b0c0722b7e4)
- [riot 0.9.9](https://dev.solus-project.com/R2816:2a0bb2f87595999029041b7dea81c3a627b56757)
- [scala 2.12.2](https://dev.solus-project.com/R2852:db7c01c40a3e9e3510e38e16cf90012625c51dc3)
- [shotcut 17.05](https://dev.solus-project.com/R2900:f0214ce916a99271e9c01656468d5b333859cac5)
- [speedtest-cli 1.0.6](https://dev.solus-project.com/R2944:ab3f2598d8d76166043b6a51937a9fb9a1f78bef)
- [telegram: Handle tg:// addresses](https://dev.solus-project.com/R3013:932c27da93a2bd7349ac4730e6446b28eba5435c)
- [vala 0.36.3](https://dev.solus-project.com/R3107:f6eb9f0162907d761d3633d7dcaac01e1dcb94d9)
- [vivaldi-snapshot 1.10.834.9](https://dev.solus-project.com/R3138:408ff17727c36ce7314d6519bd2e1619a8406941)