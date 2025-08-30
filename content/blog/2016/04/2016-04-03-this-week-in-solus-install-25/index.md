---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
categories:
- Budgie
- News
- Packages
- TWIS
date: "2016-04-03T23:15:02Z"
title: 'This Week in Solus -- Install #25'
url: /2016/04/03/this-week-in-solus-install-25/
---

Welcome to This Week in Solus, installation#25. If you haven't already read our [big announcement on Budgie 10.2.5](https://solus-project.com/2016/03/27/budgie-10-2-5-released/), stop reading this post and catch up. 

#### Budgie

On the heels of Budgie 10.2.5, Ikey has landed further improvements to Budgie. These improvements have already landed in Solus and will be available in the next Budgie version:

-  We now accommodate GNOME Terminal notifications in Raven.

-  Improvements have been made to the Icon Tasklist: 
  - Atom and Telegram are forbid from overriding their icons. This keeps iconography consistent across your icon theme and what Budgie shows.
  - Icons are now non-focusable. Apparently Ikey had fun with this when taking screenshots.

#### Packaging Improvements

While undoubtedly Solus is the easiest operating system to package for, that doesn't mean we can't continue to make it better. Ikey spent time this week improving the experience of packaging.

1. Previously, you would need to use a component.xml file to define which component the package would belong to (whether that be desktop, graphics, programming, etc). Now, you are able to define that right in our package.yml file. Less files, less work, less 
for you to have to remember! I'd call that a win.
2. But you know what is a bigger win? Multilib. Ikey has spent time improving ypkg to separate out our build environments for 32-bit packages and normal, x86_64 builds. You no longer need to perform make cleans to ensure the environment is cleaned up 
before doing a build for the other architecture.
3. Lastly, we now have a new (**optional, though use is obviously encouraged**) section in our package.yml, called "check". Here is where you typically run a make check, which runs tests and validation against the built software.

#### Package Updates

Here is some highlights of package updates during the last week(ish):

New:

- [breeze-cursor-theme 5.6.1](https://git.solus-project.com/packages/breeze-cursor-theme/commit/?id=7dfc371f23ba76d0986f846419d3743ded034c7e)
- [breeze-snow-cursor-theme 5.6.1](https://git.solus-project.com/packages/breeze-snow-cursor-theme/commit/?id=67fc2a7fcd505bbc2f96cf3f13d112f58e5f1cb3)
- [font-ubuntu-ttf](https://git.solus-project.com/packages/font-ubuntu-ttf/)
- [gnome-music 3.18.2](https://git.solus-project.com/packages/gnome-music/)
- [gom 0.3.2](https://git.solus-project.com/packages/gom/commit/?id=c36804139e393b4ac4e7379c62fa44070d82036b) -- Used in conjunction with updated grilo-plugins to enable playback in Gnome Music and Totem
- [mypaint 1.2.0](https://git.solus-project.com/packages/mypaint/commit/?id=b5c063342093762f6723e460abdaa42373dd9e80)

Updated:

- alsa updates: 
  -  [alsa-lib 1.1.1](https://git.solus-project.com/packages/alsa-lib/commit/?id=52cab626b26d619aa21b0ed21d9f59fc09187bf8) -- Fixes PCM issues
  -  [alsa-plugins 1.1.1](https://git.solus-project.com/packages/alsa-plugins/commit/?id=61b8e3678760ac84fd5ac0c53ae3bcf51665767a)
  -  [alsa-utils 1.1.1](https://git.solus-project.com/packages/alsa-utils/commit/?id=49cecc6fda06f94c4a851a6677633c59b601dadb) -- Fixes alsamixedr, alsactl issues
- [atom 1.6.2](https://git.solus-project.com/packages/atom/commit/?id=45cce0d0af339355286a049e2eb71cb03d0148bb)
- [budgie-desktop: Sync with git for all the shiny](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e23628fa6b438d9c8d14e051e32d4a42957700d4)
- [gnome-calendar 3.18.3](https://git.solus-project.com/packages/gnome-calendar/commit/?id=71e7ee928da3863ea94e02f05645d5bb3297d60b)
- [gnumeric 1.12.28](https://git.solus-project.com/packages/gnumeric/commit/?id=f992445fa08ed53ae97504ce2b45ca412a0a7188)
- gnome-terminal improvements: 
  -  [Fix new tab icon](https://git.solus-project.com/packages/gnome-terminal/commit/?id=53b321b568455eeb740aa65078562b884749a081)
  -  [Imported Fedora's notification + transparency patch](https://git.solus-project.com/packages/gnome-terminal/commit/?id=6267466416388123df6716f72c1e71cb40afd997)
- [grilo 0.2.15](https://git.solus-project.com/packages/grilo/commit/?id=0b40bf4001352bb75b4054349fb4d3c334e0b455)
- [grilo-plugins 0.2.17](https://git.solus-project.com/packages/grilo-plugins/commit/?id=bbd088f53960c43807b77166502e1a7712ce08c2) & rebuild against GOM for bookmark support
- [gvfs 1.28.0](https://git.solus-project.com/packages/gvfs/commit/?id=46b4e491b6841a92735ffe52ba7c168a1ca2f767) -- Addresses mount crashes from externals and network, MTP issues, fuse crashes.
- [hal-flash 0.3.3](https://git.solus-project.com/packages/hal-flash/commit/?id=0009e0f1e73e29be1be36b843a318c9cda4c04fc)
- [libgoffice 0.10.28](https://git.solus-project.com/packages/libgoffice/commit/?id=8febe9b600f4f60ccfbbfb4ded145375463bb6c2)
- [libvte 0.42.5](https://git.solus-project.com/packages/libvte/commit/?id=4ffc2fe5b67c2eae973db34105d0cdab5937b323) -- Incorporated patch for Terminal notifications
- [llvm 3.8.0](https://git.solus-project.com/packages/llvm/commit/?id=34d4f29bc9e883cb75da0cdf09dda1bbbb9fce2a)
- [mkvtoolnix 9.0.1](https://git.solus-project.com/packages/mkvtoolnix/commit/?id=36f4cc00757fed9395abd0f616b3a350941f8cbb)
- [nodejs 5.10.0](https://git.solus-project.com/packages/nodejs/commit/?id=1e373e48d7b35982e3a4a249e33809812ef2b1b2)
- [php 7.0.5](https://git.solus-project.com/packages/php/commit/?id=29cadcf6d255ea9cabe64c538e448a18394d4b60)
- [postgresql 9.5.2](https://git.solus-project.com/packages/postgresql/commit/?id=ce752c5da07cc639d38096682408870c98522dc0)
- [qbittorrent 3.3.4](https://git.solus-project.com/packages/qbittorrent/commit/?id=c2d9c5cb3344fab5f67191732066f807df6ebff5)
- [ruby 2.2.4](https://git.solus-project.com/packages/ruby/commit/?id=f86a49f7f35d902255d16ac92ff06ed8b196aa49) -- Addresses CVE-2015-7551
- [smplayer 16.4.0](https://git.solus-project.com/packages/smplayer/commit/?id=25cfea3ec6e8f1855f0c9d72028b6b809a675ea3)
- [tracker](https://git.solus-project.com/packages/tracker/commit/?id=8d468f7a3fe9d98d93d134e7b9dac2deabc6fef1) -- Enabled gstreamer tag, ffmpeg, totem-pl-parser. Ensures we index media content.
- [udisks 2.1.7](https://git.solus-project.com/packages/udisks/commit/?id=fc74c8d23128170df5fa73c20dbec136a2f6069a)
- [vertex-gtk-theme 20160329](https://git.solus-project.com/packages/vertex-gtk-theme/commit/?id=f85ba1faec5a20a2b305e3c6b4d00d3e30b3823e)
- [ypkg 7.0](https://git.solus-project.com/packages/ypkg/commit/?id=56702952478524f189ba8233e538dc0628af63b1)

![relimg](http://i.giphy.com/Yftg1iN1v6qnC.gif)