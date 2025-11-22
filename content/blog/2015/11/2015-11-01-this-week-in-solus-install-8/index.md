---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- news
- twis
date: "2015-11-01T17:22:46Z"
title: 'This Week in Solus -- Install #8'
url: /2015/11/01/this-week-in-solus-install-8/
---
 
Welcome to This Week in Solus, Installation #8.

#### Release Candidate 1

We were happy to [announce](https://solus-project.com/2015/10/29/announcing-1-0-release-candidate-1/) Solus 1.0 Release Candidate 1 last Thursday. We have gotten an immense amount of feedback since then, bug reports to tackle, and lots of 
new package requests! We also can confidently say that we reached over **2000 downloads** of the RC1 ISO, across reported mirrors and BitTorrent, which is fantastic for a Release Candidate!

We've been hard at work fixing bugs and updating software, something that'll be highlighted below.

#### Firefox Fixes

We can fairly confidently state that we've resolved crashes in Firefox. We've opted to enable Firefox to use it's own cairo, as well as libpng and pixman. Alongside these fixes, we've pushed more enabling of HTML5 features, namely MediaSource, including 
MediaSource WebM specific features. In essence, this means HD, WebM-based video content is now playable under Firefox. This was primarily an issue for content on YouTube.

![relimg](Screenshot-from-2015-10-30-19-59-53.png)

#### Package Updates

As per the usual, we'll break down the package changes since last week based on contributor and if the package is new or updated. We'll also have a highlights section, so it is clear what the more major items are!

##### Highlights from everyone:

- [atom 1.1.0](https://git.solus-project.com/packages/atom/commit/?id=685d35dc297352782b3ad86f2022b18394bb1462)        
- [doflicky 3](https://git.solus-project.com/packages/doflicky/commit/?id=c8afcc310c2aa78def57c1ff8af5f9951ce4b77b)        
- [dracut: Garbage collect old initramfs files](https://git.solus-project.com/packages/dracut/commit/?id=1507ce6bc0a98dcc79705d7ac25a1d9f1f950028)        
- [ekiga 4.0.1](https://git.solus-project.com/packages/ekiga/commit/?id=14263203fd6ec69b0a141b0141926b44e31acd4d)        
- [evolve-sc: Include select/deselect fix](https://git.solus-project.com/packages/evolve-sc/commit/?id=34780e08eb3c8d7c914544d6cd8bacdedda57ed8)        
- [firefox: Enable more HTML5 features and reduce crashing](https://git.solus-project.com/packages/firefox/commit/?id=3353286a92a16421fb23485f3f2fd83d352d0a9f)        
- [gnome-contacts 3.16.2](https://git.solus-project.com/packages/gnome-contacts/commit/?id=f538b7d1e6705e7bb75a1b1d399de0ad46ddc419)        
- [gnome-mpv 0.6](https://git.solus-project.com/packages/gnome-mpv/commit/?id=eb25bbe520977095c7c9da802f4ce714a387cc56)        
- [grub-customizer 4.0.6](https://git.solus-project.com/packages/grub-customizer/commit/?id=ba31cc02c4573c8b548368f4076f8e9c37e0d702)        
- [kernel: Hopefully enable touchpoints and other such wonders](https://git.solus-project.com/packages/kernel/commit/?id=5db7d97193ec6b109aa5509fec6dcfe2135fb3d7)        
- [kodi 15.2](https://git.solus-project.com/packages/kodi/commit/?id=a5d73a14a5fc3fe45cc68d91e4d833abc505e67d)        
- [mercurial 3.5.2](https://git.solus-project.com/packages/mercurial/commit/?id=f44692e6c88880f31ec541be94e94bce538f4919)        
- [mpv 0.12.0](https://git.solus-project.com/packages/mpv/commit/?id=78330435e12cde24eb0a2687ee15a8cb2d8561fe)        
- [nodejs 5.0](https://git.solus-project.com/packages/nodejs/commit/?id=dc47b73e512ded99562e1ab1a9280d5f0a766e3e)        
- [qbittorrent 3.2.5](https://git.solus-project.com/packages/qbittorrent/commit/?id=4a8a057d8b3f250495e7434474976cc8f17c01b4)        
- [remmina: 1.1.2](https://git.solus-project.com/packages/remmina/commit/?id=287d577e9f32cab0bb5d9ed3c13836168567011e)        
- [rust 1.4.0](https://git.solus-project.com/packages/rust/commit/?id=ecb75b4d036901767baaf860eebad48c64b38bc8)        
- [simplescreenrecorder 0.3.4](https://git.solus-project.com/packages/simplescreenrecorder/commit/?id=fe7dc17ac450e0bc5ef90d8eb855973e31b58d9c)        
- [xfsprogs 4.2.0](https://git.solus-project.com/packages/xfsprogs/commit/?id=7eee05dbe4f6fce87dafa4c73c2797e20b56ffd4)

##### Ikey Doherty

###### Updated

- [arc-firefox-theme: Ensure Firefox is a rundep](https://git.solus-project.com/packages/arc-firefox-theme/commit/?id=8feb80a4c27142fd4781b679d8a415e5410b268e)        
- [atkmm: Rebuild against C++ ABI change](https://git.solus-project.com/packages/atkmm/commit/?id=2b60dc244942349e1e03f1aba9b14cc1662913d5)        
- [cairomm: Replace libcairomm* packages](https://git.solus-project.com/packages/cairomm/commit/?id=80d851ce0e3556940ff2048143ead7a61d1b67eb)        
- [dracut: Garbage collect old initramfs files](https://git.solus-project.com/packages/dracut/commit/?id=1507ce6bc0a98dcc79705d7ac25a1d9f1f950028)        
- [evolve-sc: Include select/deselect fix](https://git.solus-project.com/packages/evolve-sc/commit/?id=34780e08eb3c8d7c914544d6cd8bacdedda57ed8)        
- [firefox: Enable more HTML5 features and reduce crashing](https://git.solus-project.com/packages/firefox/commit/?id=3353286a92a16421fb23485f3f2fd83d352d0a9f)        
- [gparted: Emulate how Arch pkexec launch gparted, so it works on Solus](https://git.solus-project.com/packages/gparted/commit/?id=2c3f1ff05479239c8a29537798639a07fd503852)        
- [gtkmm: Rebuild against C++ ABI change](https://git.solus-project.com/packages/gtk2mm/commit/?id=b8c175def4003973beb100e3baf3582f119d3d63)        
- [inkscape: Rebuild against C++ ABI change](https://git.solus-project.com/packages/inkscape/commit/?id=e8b4e73f3ff4ec7340babba335d7d9a1c18622e3)        
- [kernel: Hopefully enable touchpoints and other such wonders](https://git.solus-project.com/packages/kernel/commit/?id=5db7d97193ec6b109aa5509fec6dcfe2135fb3d7)        
- [mesalib 11.0.4](https://git.solus-project.com/packages/mesalib/commit/?id=f54aaf229f287639e21456de70b55a285ca54c78)        
- [os-installer: Include an override to stick launcher on the panel by default](https://git.solus-project.com/packages/os-installer/commit/?id=7849060fdfcabb2f16d0d11e1f48595c497ea98a)        
- [pangomm: Rebuild against C++ ABI change](https://git.solus-project.com/packages/pangomm/commit/?id=1aaf2ba8d3587e02b1356988ab230921d6d109dd)        
- [PHP: Fixed php.ini symlink issue](https://git.solus-project.com/packages/php/commit/?id=4b86f4ecde4158d6a19807b423c3aaec34afc5ef)        
- [pip: Unbreak /usr/bin/pip](https://git.solus-project.com/packages/pip/commit/?id=9c1060ebad742a2d29a733ce9342d205561977a5)

 ######  New

- [doflicky 3](https://git.solus-project.com/packages/doflicky/commit/?id=c8afcc310c2aa78def57c1ff8af5f9951ce4b77b)        
- [goocanvas1 1.0.0](https://git.solus-project.com/packages/goocanvas1/commit/?id=c9b654de383f9e8a988adac92c11a03cfdd6d531)        
- [goocanvas 2.0.2](https://git.solus-project.com/packages/goocanvas/commit/?id=51710c70c42b63e9e8558ef7f9bd3aa6a0994e21)        
- [pygoocanvas 0.14.1](https://git.solus-project.com/packages/pygoocanvas/commit/?id=2802e9f6eeec5dd45e47943a8711e7a1c97ebdd0)

 ##### Justin Zobel

 ###### Updated

- [hplip: Fix hplip dependencies](https://git.solus-project.com/packages/hplip/commit/?id=8a6abd870e1455e77f3b31be4096bf5ef2ca7e55)        
- [gnome-mpv 0.6](https://git.solus-project.com/packages/gnome-mpv/commit/?id=eb25bbe520977095c7c9da802f4ce714a387cc56)        
- [kodi 15.2](https://git.solus-project.com/packages/kodi/commit/?id=a5d73a14a5fc3fe45cc68d91e4d833abc505e67d)        
- [lightzone 4.1.3](https://git.solus-project.com/packages/lightzone/commit/?id=b64ddec5ea7ae5e60bec8abb8f74af57e9190a14)        
- [lollypop: Additional rundeps](https://git.solus-project.com/packages/lollypop/commit/?id=906fade1df3f6ae63d86d8294bb429d6254cc4ad)        
- [mpv 0.12.0](https://git.solus-project.com/packages/mpv/commit/?id=78330435e12cde24eb0a2687ee15a8cb2d8561fe)        
- [python-beautifulsoup4: Ensure python3 build](https://git.solus-project.com/packages/python-beautifulsoup4/commit/?id=899a05af8e06421a0d68c4097ab702a6f54b9c0d)        
- [simplescreenrecorder 0.3.4](https://git.solus-project.com/packages/simplescreenrecorder/commit/?id=fe7dc17ac450e0bc5ef90d8eb855973e31b58d9c)

 ###### New

- [autoconf-archive](https://git.solus-project.com/packages/autoconf-archive/commit/?id=16d769fee8b56ca7ccd3a2a46674c4af4bc4039b)        
- [grub-customizer 4.0.6](https://git.solus-project.com/packages/grub-customizer/commit/?id=ba31cc02c4573c8b548368f4076f8e9c37e0d702)        
- [libidl 0.8.14](https://git.solus-project.com/packages/libidl/commit/?id=1ac408fd76d14c1ff7e3466edde46fcbee6fa35a)        
- [libvncserver 0.9.10](https://git.solus-project.com/packages/libvncserver/commit/?id=ae8ecec1382c74392b7eaca77af86561d34bbfec)        
- [mdadm 3.3.4](https://git.solus-project.com/packages/mdadm/commit/?id=92e456e1e8d42628b835fa959a77ab0de38f3e64)        
- [python-reportlab 3.2.0](https://git.solus-project.com/packages/python-reportlab/commit/?id=d82854abaf04ecd412f29be93f2386a5ba47ad5f)        
- [python-wikipedia 1.4.0](https://git.solus-project.com/packages/python-wikipedia/commit/?id=8b20af2fd6e74071f54e844bb8db4fe6de49047c)        
- [remmina: 1.1.2](https://git.solus-project.com/packages/remmina/commit/?id=287d577e9f32cab0bb5d9ed3c13836168567011e)        
- [xfsprogs 4.2.0](https://git.solus-project.com/packages/xfsprogs/commit/?id=7eee05dbe4f6fce87dafa4c73c2797e20b56ffd4)

 ##### Joshua Strobl

 ###### Updated

- [atom 1.1.0](https://git.solus-project.com/packages/atom/commit/?id=685d35dc297352782b3ad86f2022b18394bb1462)        
- [nodejs 5.0](https://git.solus-project.com/packages/nodejs/commit/?id=dc47b73e512ded99562e1ab1a9280d5f0a766e3e)        
- [qtpass 1.0.3](https://git.solus-project.com/packages/qtpass/commit/?id=d2b273d276d6bf7be2f86e364f8958f432eabc7b)        
- [rust 1.4.0](https://git.solus-project.com/packages/rust/commit/?id=ecb75b4d036901767baaf860eebad48c64b38bc8)        
- [tlp: Fix systemd file inclusion](https://git.solus-project.com/packages/tlp/commit/?id=09e06bc53aab9c9cb063b726077847892aa43b61)        
- [youtube-dl 2015.10.24](https://git.solus-project.com/packages/youtube-dl/commit/?id=b0094436b5f058e780326534eb0e29c3f7dce96c)        
- [zopfli 1.0.1](https://git.solus-project.com/packages/zopfli/commit/?id=d8aea6006fcd9d4ab6756eef51c0749cc307484f)

 ###### New

- [ekiga 4.0.1](https://git.solus-project.com/packages/ekiga/commit/?id=14263203fd6ec69b0a141b0141926b44e31acd4d)        
- [gnome-contacts 3.16.2](https://git.solus-project.com/packages/gnome-contacts/commit/?id=f538b7d1e6705e7bb75a1b1d399de0ad46ddc419)        
- [mercurial 3.5.2](https://git.solus-project.com/packages/mercurial/commit/?id=f44692e6c88880f31ec541be94e94bce538f4919)        
- [opal 3.10.10](https://git.solus-project.com/packages/opal/commit/?id=694888652a6d09f0c0b535139406b546a6224381)        
- [ptlib 2.10.10](https://git.solus-project.com/packages/ptlib/commit/?id=7bb53f4c23054a37b8240a2050d0d255d3e288dd)        
- [qbittorrent 3.2.5](https://git.solus-project.com/packages/qbittorrent/commit/?id=4a8a057d8b3f250495e7434474976cc8f17c01b4)        
- [qjson 0.8.1](https://git.solus-project.com/packages/qjson/commit/?id=9b5591c8b06dac7418c0b546a4ea11c48166c229)