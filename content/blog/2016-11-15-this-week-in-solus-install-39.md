---
author: "joshua"
categories:
- news
- twis
date: 2016-11-15T20:41:02+02:00
featuredimage: "2016/11/firefox-50.jpg"
internaltype: post
title: "This Week in Solus - Install #39"
url: "/2016/11/15/this-week-in-solus-install-39/"
---

Welcome to This Week in Solus, install #39.

## Announcing Partnership with Unixstickers

{{<altimg "2016/11/laptop-solus-sticker-small.jpg" >}}

We recently announced our partnership with Unixstickers to provide high-quality Solus stickers for our community and fans. If you have yet to read about it, click 
[here](https://solus-project.com/2016/11/15/solus-announces-partnership-with-unixstickers).

## Roadmap

We know many of you have been curious to hear our plans for the future, now that Solus 1.2.1, and today we're ready to share some details.

### First ISO Snapshot

With the [latest xorg-server released](https://lists.x.org/archives/xorg-announce/2016-November/002737.html), we will be putting out our first ISO snapshot. In addition to an updated xorg-server, it will also 
feature Kernel 4.8.8, an upgraded libinput, associated xorg-driver-input-libinput package, and ensure our proprietary drivers reflect the latest versions released by the appropriate vendors, such as NVIDIA.

### Linux Driver Management

Upon the release of our first ISO snapshot, we will shift to development of [Linux Driver Management](https://github.com/solus-project/linux-driver-management), our modern distro-agnostic solution for detection 
and configuration of drivers. This work will enable Optimus support as well as open the door for future, dynamic switchable graphics.

### Budgie 11

Once we are confident in the quality and initial functionality of Linux Driver Management, we will turn our attention to completing the re-architecting of Budgie, as well as executing our plans for the Budgie C rewrite. We 
have already expressed interest in numerous new features, functionality, and changes for Budgie 11, such as (*but not limited to*):

- Improving accessiblity and ensure all components are reusable, ATK registered, and don't break a11y.
- Budgie Panel and Raven will use separate, versioned trees, and individual plugins will be appropriately namespaced.
- Settings will be moved to a new Budgie Settings application, which we intend to be a replacement for Gnome Control Center. 
- Budgie will see the introduction of multi-monitor panel support, which the ability to drag reorder widgets, lock the panel, permit the panel on any edge, intellihide, and more.
- Raven will be resizable, switch to a "drawer mode" so it may overlay panels, support widgets such as RSS and Weather, and support our plans for richer, actionable notifications.
- Such richer, actionable notifications will be grouped, with the ability to dismiss them on a per-notification or per-group basis. And when you want a bit of peace and quiet, you'll be able to turn on "Quiet Mode" (a.k.a Do Not Disturb). 
Perfect for studying, watching movies, gaming, and more!

That is just the tip of the iceberg for what we have planned for Budgie 11 and we have more in store to talk about in the future regarding Budgie.

### Sol

Once the big Budgie 11 is released, our focus will return from our distro-agnostic desktop environment to improvements to some underlying bits of Solus, namely shifting from eopkg to a C-based "sol" package manager, which you can read 
about [here](https://solus-project.com/2016/07/05/this-week-in-solus-install-30/).

## Continued Broadening of Developer and Technical Tooling

This week we've continued broadening our selection of developer and technical tooling in the repository, as well as improving existing software. We're happy to announce that:

- The machine translation platform, Apertium, is now available on Solus.
- Programming languages got some love this week, with [Julia](http://julialang.org) landing in the repository, updating our R to 3.3.2, updating our PHP to 7.0.13, and pip to 9.0.1.
- httpd (*otherwise referred to as Apache 2*) has landed in the repo.
- The work towards enabling httpd, by landing items like fcgi and nghttp2 also means that [Valum](https://github.com/valum-framework/valum), the web micro-framework written in Vala, has also landed in the repository.
- The robust threat detection engine, [Suricata](https://suricata-ids.org/), has landed in the repository.

## General Fixes, Goodies, and Improvements

A multitude of fixes, upgrades and improvements have been made to other software in our repository, such as:

- Firefox 50
- Fixes to Asunder, Meld and git-cola.
- Landed Kernel 4.8.8, as well as enabling support for sound on some Bay Trail laptops by enabling `CONFIG_SND_SOC`, `CONFIG_SND_SOC_INTEL_BYT_MAX98090_MAC` (*rolls right off the tongue, doesn't it*) and more.
- Our protobuf and libboost have seen upgrades to the latest of their respective versions.
- Resolved issues for some i3 users and their backlight controls not functioning. We now use [light](https://github.com/haikarainen/light/) for backlight controlling.

## Package Highlights

Here is a highlight of new inclusions and updates to software in our repository.

**New:**

- [amsynth 1.7.0](https://git.solus-project.com/packages/amsynth/commit/?id=136574e170f1b01f45d1f0c9723acd1f455a6e4c)
- [apertium 3.4.2](https://git.solus-project.com/packages/apertium/commit/?id=55e2dfc8a2cddabb8de07569234110783f9d6f52)
- [arc-red-gtk-theme 1](https://git.solus-project.com/packages/arc-red-gtk-theme/commit/?id=e170f9bcdb3ff2b9f87ab7aa2e8b8c423e82e362)
- [bdftopcf 1.0.5](https://git.solus-project.com/packages/bdftopcf/commit/?id=0682b20c35dd2591316be43866d553e17f918ed4)
- [ckb 0.2.6](https://git.solus-project.com/packages/ckb/commit/?id=7cf59ae9423a56a3ae184f30d80bc2297acaca91)
- [fcgi 2.4.0](https://git.solus-project.com/packages/fcgi/commit/?id=4594914407431a8b8635f45f5732378b95d0d745)
- [font-adobe-75dpi](https://git.solus-project.com/packages/font-adobe-75dpi/commit/?id=4c8690e42c11071874bed84368b02bc2431039ec)
- [font-adobe-100dpi](https://git.solus-project.com/packages/font-adobe-100dpi/commit/?id=0b9f9a563ac65c1e04a9599bbf12fd91d7b3cd47)
- [gimagereader 3.1.99](https://git.solus-project.com/packages/gimagereader/commit/?id=99eab8fa737fd074b57281f4c1ff0c3a2d9d33d5)
- [gource 0.44](https://git.solus-project.com/packages/gource/commit/?id=9aebaa7647d4a523700edcbc1aed575603af0904)
- [gnome-power-manager 3.20.0](https://git.solus-project.com/packages/gnome-power-manager/commit/?id=897cefad70216f31840bc60877043101107e777e)
- [httpd 2.4.23](https://git.solus-project.com/packages/httpd/)
- [httpie 0.9.6](https://git.solus-project.com/packages/httpie/commit/?id=dd8d1c64da28598ee10c6f4f316cabd103acca7b)
- [httrack 3.48.21](https://git.solus-project.com/packages/httrack/commit/?id=c5116353c01cd984bbae975a9c88456b09b8f51c)
- [ibus-chewing 1.5.1](https://git.solus-project.com/packages/ibus-chewing/commit/?id=0811757347585301b8e846deecd4afe8425eacdd)
- [ibus-unikey 0.6.1](https://git.solus-project.com/packages/ibus-unikey/commit/?id=9b5768f41a45601edf401f579d7f4933a3ae633e)
- [iio-sensor-proxy 1.3](https://git.solus-project.com/packages/iio-sensor-proxy/commit/?id=b9ca36a5ef55b46def3be57e73137efbc54674f3)
- [julia 0.5.0](https://git.solus-project.com/packages/julia/commit/?id=080384b1f7f8897e4a7cc086c2933aad2cb69067)
- [lttoolbox 3.3.3](https://git.solus-project.com/packages/lttoolbox/commit/?id=1bce73f5c48b50a8e0fe95e25b9e5faff06a10f3)
- [mkfontdir 1.0.7](https://git.solus-project.com/packages/mkfontdir/commit/?id=2a420caaf296da0f02c8b1681229f0a0ed6ac1af)
- [nghttp2 1.16.0](https://git.solus-project.com/packages/nghttp2/commit/?id=ac3dcbb88e0f4bcfb6347dbddc2721072498f170)
- [nmon 16f](https://git.solus-project.com/packages/nmon/commit/?id=c7c09dd6877082399e0fa2b13506f9a1fdda8a74)
- [openscad 2015.03](https://git.solus-project.com/packages/openscad/commit/?id=32572bb531122fd8f439a5be51b698c10b6dd71c)
- [recoll 1.22.3](https://git.solus-project.com/packages/recoll/commit/?id=f5fd77c981ac58152171ca8def35999ccf238724)
- [retroshare 0.6.1](https://git.solus-project.com/packages/retroshare/commit/?id=478a848a25f036a37aabb6288f05a71b9761dcdd)
- [retro-gtk 0.8.1](https://git.solus-project.com/packages/retro-gtk/commit/?id=20deb63852a17fd95eb664a97beff081fa22a81e)
- [sigil 0.9.7](https://git.solus-project.com/packages/sigil/commit/?id=e2ed91309336c8175051bb9e73f80deca37a316a)
- [streamlink 0.0.2](https://git.solus-project.com/packages/streamlink/commit/?id=87e20611fc8b88fadef154ae962dcb826b48bfb7)
- [suricata 3.1.2](https://git.solus-project.com/packages/suricata/commit/?id=2610e31a8bec544cb886bf2f50b4ad9d29a9b61a)
- [tessdata 3.04.00](https://git.solus-project.com/packages/tessdata/commit/?id=2d6b962f12cfb08a7cfd52021757f0dc95fc566e)
- [valum 0.2.16](https://git.solus-project.com/packages/valum/commit/?id=1828c07bb8e9d5678f4efdd3974b75de40c4403d)
- [vice 2.4.32](https://git.solus-project.com/packages/vice/commit/?id=399c6d344c2642447b6aff83a0bb6b1e5ee8ac55)
- [xiphos 4.0.4](https://git.solus-project.com/packages/xiphos/commit/?id=66c41db96b2681b579decf9cb82475d9061fbb4d)

**Updated:**

- [asunder: Added missing vorbis-tools](https://git.solus-project.com/packages/asunder/commit/?id=f762cc26ca3c384f6171467d5c81b14bcafa6d2f)
- [arc-firefox-theme 50.2016.1114](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=f5ddd30cf481480c4b10cd3dd54f3feedad53cf3)
- [atom 1.12.2](https://git.solus-project.com/packages/atom/commit/?id=d56d76b271dc27dea2740b0308fa69d4ae769b4c)
- [boost 1.62.0 and convert to ypkg](https://git.solus-project.com/packages/boost/commit/?id=5a4b7884b7967e80c8def3b1a66b05c8d2f8ffb5)
- [brackets 1.8](https://git.solus-project.com/packages/brackets/commit/?id=f41330e956435b27ccc53501fee00bb82cd5a0a8)
- [cockatrice 20161030](https://git.solus-project.com/packages/cockatrice/commit/?id=3f2cbf1e2d9f3256be351eb047e7e5d52db8e6b8)
- [electrum 2.7.12 and fixed missing rundeps](https://git.solus-project.com/packages/electrum/commit/?id=a762a12f793a737e77e607cf2e5066638db15204)
- [firefox 50.0](https://git.solus-project.com/packages/firefox/commit/?id=7720ac214b9263d911f1b28346003bb7977645ba)
- [fish 2.4.0](https://git.solus-project.com/packages/fish/commit/?id=4c30620b838279bf9f9770c593f2e8f9c91aaf61)
- [font-util 1.3.1](https://git.solus-project.com/packages/font-util/commit/?id=e1e1d474d39a38c50ce21cecada4057cbe926efb)
- [freeorion 0.4.6](https://git.solus-project.com/packages/freeorion/commit/?id=e12a1ca3ddcf8befbe45f7e7c4ec3377853db008)
- [git-cola: Change to using python-qt5 as build and rundeps.](https://git.solus-project.com/packages/git-cola/commit/?id=3616a8e3a7b3970c5c02dafa92776177973f58c5)
- [hplip 3.6.10](https://git.solus-project.com/packages/hplip/commit/?id=e3e030ffe96c665b55eddbb0c50e32e263f28fd1)
- [hugin 2015.2.0](https://git.solus-project.com/packages/hugin/commit/?id=1b00f7539b650a1b1e1ab94b34d514eda39790a8)
- [irssi: Unbreak description, use official upstream source](https://git.solus-project.com/packages/irssi/commit/?id=e9ae09fbb3f44f3a6f05a4320e52ad7c4448c993)
- [krita 3.0.1.1](https://git.solus-project.com/packages/krita/commit/?id=0b710b8468697ecd6dd12c98b91edde77a63d4d4)
- [lollypop 0.9.216](https://git.solus-project.com/packages/lollypop/commit/?id=f2c230c7af9b8695c9bb4c1d96342996ed19cbf7)
- [lyx 2.2.2](https://git.solus-project.com/packages/lyx/commit/?id=6f94892a5d1c2d173484c21bf150acea7384ed44)
- [meld 3.16.3](https://git.solus-project.com/packages/meld/commit/?id=a8a09cc1c3e1ec371b41fc0b8aa488b16e8b52df)
- [mkfontscale 1.1.2](https://git.solus-project.com/packages/mkfontscale/commit/?id=ee469ff14e6fc68832aab40b6e4f1b6190166aab)
- [ncmpcpp 0.7.7](https://git.solus-project.com/packages/ncmpcpp/commit/?id=18185d2511bfeb6ca6f73ce1cf9c4a0d7a165809)
- [neofetch 1.9.1](https://git.solus-project.com/packages/neofetch/commit/?id=ac36fb8b0d4566f8dfd031876754505923ade18f)
- [neovim 0.1.6 and add neovim symlink for sanity](https://git.solus-project.com/packages/neovim/commit/?id=e2c16089ca0426e16b225d8dc3d3c64d0c62df56)
- [nginx 1.11.6](https://git.solus-project.com/packages/nginx/commit/?id=d16bdda850e0a785532f591111e0252ad80b189d)
- [numix-gtk-theme 2.6.5](https://git.solus-project.com/packages/numix-gtk-theme/commit/?id=9137131333b164fcde98cd50c2f49fd425cce61c)
- [numix-icon-theme-circle 16.11.09](https://git.solus-project.com/packages/numix-icon-theme-circle/commit/?id=aca9a0dec0b1148cdaf636e8315ed2b88f696eb2)
- [numix-icon-theme 20161006](https://git.solus-project.com/packages/numix-icon-theme/commit/?id=e34f7d2423e164ae4b6b48d8fb8594e0f219115c)
- [openflas: use thread for numpy boost](https://git.solus-project.com/packages/openblas/commit/?id=15aedfbf382ad273a3f69f250e9f1b079750d07f)
- [php 7.0.13](https://git.solus-project.com/packages/php/commit/?id=4da1b9cabdc7b6229c50d5457bb09aadf8bc8068)
- [pip 9.0.1](https://git.solus-project.com/packages/pip/commit/?id=030f8818b964bb3f1140a08b877b34019574b3a6)
- pisi:
 - [Completely moved to eopkg](https://git.solus-project.com/packages/pisi/commit/?id=8a72716ba21f478af3895b00177c2e3818cec115)
 - [Ensure evobuild creates eopkg directory](https://git.solus-project.com/packages/pisi/commit/?id=f6b61c558a308f5862190ff68a8e3ad05a84c946)
- [poedit 1.8.11](https://git.solus-project.com/packages/poedit/commit/?id=9e590710ff268f3c7a28c07692cfd0ed936aab94)
- [python3: Fix splitting for pyconfig header](https://git.solus-project.com/packages/python3/commit/?id=dfaa93e0e75220d31377c4627e1a5b6dfb380356)
- [python-pbr: Enable python3](https://git.solus-project.com/packages/python-pbr/commit/?id=6bc6ca5d704c2f61c3aff1c69e68a3c53ee4feb2)
- [python-stevedore: Enable python3](https://git.solus-project.com/packages/python-stevedore/commit/?id=afb4b56c21ffe7e3dcf42bbda5b85ed67a339e2e)
- [python-requests 2.11.1 - Updated for httpie](https://git.solus-project.com/packages/python-requests/commit/?id=2df332ac61ca2513e02b95823ca84e219cb22082)
- [r 3.3.2](https://git.solus-project.com/packages/r/commit/?id=b038cde315650735e02d0829a92623d387e221ba)
- [sardi-icons 8.0](https://git.solus-project.com/packages/sardi-icons/commit/?id=e077422c09fe870c3b11120f5ed938e158821ce5)
- [SFML 2.4.1](https://git.solus-project.com/packages/SFML/commit/?id=8a577a611f01f9891bb0809f8277e84339156bcf)
- [simplescreenrecorder 0.3.8](https://git.solus-project.com/packages/simplescreenrecorder/commit/?id=06a2b7d76e657133b7a701037783939cadadba37)
- [smplayer 16.11.0](https://git.solus-project.com/packages/smplayer/commit/?id=7dcb47061a5c272375cc4a99f1a90ae3c5e9775b)
- [suitesparse 4.5.3](https://git.solus-project.com/packages/suitesparse/commit/?id=4a53392dde88571790685258ac14fd73e2d26554)
- [tesseract: Add tessdata as rundep](https://git.solus-project.com/packages/tesseract/commit/?id=68a7a144327f401ac7d53b123ad139dd3c345c06=)
- virtualenvwrapper:
 - [Enable python3](https://git.solus-project.com/packages/virtualenvwrapper/commit/?id=f905fdc83d82020bd2e240aa80960af208c75983)
 - [Add missing rundep python-stevedore](https://git.solus-project.com/packages/virtualenvwrapper/commit/?id=e465564b0c9c61c146b7f0fa099faaf4065e680c)
- [vagrant 1.8.7: Use system libraries for nokogiri, fix unofficial installer warning, fix error when installing plugins due to external bundler](https://git.solus-project.com/packages/vagrant/commit/?id=56ac5843bfc04cae3703eb179e7d9cd0abf54171)
- [vim 8.0.0085](https://git.solus-project.com/packages/vim/commit/?id=5068b23b38a4c86560f3eab4978af2a00ae817d2)
- [vsftpd - Drop quotes around login](https://git.solus-project.com/packages/vsftpd/commit/?id=569d484bb4c6a88dab75f0777c82578f93160a71)
- [wine 1.9.23 - Drop staging patches](https://git.solus-project.com/packages/wine/commit/?id=ccf5c3e8c31785be18a5629351a35930bce449d7)
- [youtube-dl 2016.11.14.1](https://git.solus-project.com/packages/youtube-dl/commit/?id=7dac884af139b6183e69798aa8de2ff2a1ee8a66)
- [yubioath-desktop: Require CCID and fix desktop file](https://git.solus-project.com/packages/yubioath-desktop/commit/?id=7227221f549cb1bca714b1802ddf06d2951bfc0e)