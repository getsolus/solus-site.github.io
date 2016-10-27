---
author: Joshua Strobl
categories:
- News
- Packages
- Security
- TWIS
date: 2016-10-09T19:45:00Z
id: 1718
title: 'This Week in Solus -- Install#37'
url: /2016/10/09/this-week-in-solus-install-37/
--- 

Welcome to the 37th installation of This Week in Solus. 

{{< altimg "https://media.giphy.com/media/IMXrsmoW5kuxq/giphy.gif" >}}

#### Linux 4.8.1

{{< altimg "2016/10/Screenshot-from-2016-10-08-00-23-15.png" >}}

This week Linux 4.8.1 landed in Solus, in addition to numerous changes and improvements, such as:

- We enabled CONFIG_HARDENED_USERCOPY which prevents a lot of heap overflow exploits (so a further level of protection against 0-day exploits in the future until patches come forward). 
[You can read more here](https://www.phoronix.com/scan.php?page=news_item&px=Hardened-Usercopy-Linux-4.8).

- We enabled [virtio-vsock](http://qemu-project.org/Features/VirtioVsock) which enables native sockets over a hypervisor, which will be useful for software such as spice in the future.

- We now have support for the Microsoft Surface Pro 3's touchscreen.

- We now have support for the "Intel Virtual Button", which is a required driver for some newer hardware, notably the power button on the new Dell XPS 13.

#### Libreoffice 5.2.2.2

{{< altimg "2016/10/Screenshot-from-2016-10-08-23-19-22-1.png" >}}

LibreOffice 5.2.2.2 has landed in the repo. LibreOffice 5.2 brings a lot of fantastic improvements, such as:

- A new Single Toolbar mode is available to provide a less cluttered UX.
- Calc: 
 - Currency drop-down list attached to currency toolbar icon makes it easy to choose and use desired currency format."
 - RAWSUBTRACT and Forecast.ETS functions have been added.
- Impress: 
 - "Speed drop down menus with presets are replaced with comboboxes with editable values."
 - You now can get "quick access to slide and page properties in a new 'Slide' and 'Page' content panel in the 'Properties' sidebar tab."
- GUI: 
 - Improved resizing behavior for images, videos and OLE objects: Dragging a corner will resize proportionately while dragging an edge will resize unproportionately.

For more information, check out LibreOffice's comprehensive list of changes [here](https://wiki.documentfoundation.org/ReleaseNotes/5.2). **They also have some great vids!**

#### Other Goodies

Some other goodies have landed in Solus this week, such as:

- RADV, the open source Radeon Vulkan driver, is now supported in Solus, as well as swr driver (AVX2).
- systemd user session support is now enabled.

#### Package Highlights

Here is a **highlight** of new and updated packages in Solus:

New:

- [bam 0.4.0](https://git.solus-project.com/packages/bam/commit/?id=06e912a2932cbc70cfb304f313d641009cd6bc53)
- [bzflag 2.4.6](https://git.solus-project.com/packages/bzflag/commit/?id=8b0cca4327739b1918635977ecb7a6095349fa88)
- [catfish 1.4.2](https://git.solus-project.com/packages/catfish/commit/?id=7202ce2d4512ca41cfd7725b9fe5b1a3631d15d1)
- [flightgear 2016.3.1](https://git.solus-project.com/packages/flightgear/commit/?id=b254bce3d99d77238ae3f88b68672f1931259720)
- [fritzing 0.9.3b](https://git.solus-project.com/packages/fritzing/commit/?id=d6727f3a294f99bb084666344fbf57757937fa99)
- [fritzing-parts 0.9.3b](https://git.solus-project.com/packages/fritzing-parts/commit/?id=188d8636504392e7a8225df91653f72cf8201a20)
- [gnome-sudoku 3.20.5](https://git.solus-project.com/packages/gnome-sudoku/commit/?id=a44794e5a3196b180f2c2474a6a2ce3842e0772e)
- [gradle 3.1.0](https://git.solus-project.com/packages/corebird/commit/?id=866b1f6f7f1b834d20fbb8a9433f4dc620c03279)
- [openmw 0.40.0](https://git.solus-project.com/packages/openmw/commit/?id=8aa1f49aad50cae4a6d1ae375b4d84c86514a605)
- [openra 20160508](https://git.solus-project.com/packages/openra/commit/?id=2a35b071c2910cd47f61094d99b3cb64d506854c)
- [simgear 2016.3.1](https://git.solus-project.com/packages/simgear/commit/?id=13071a640777ab83b72dec3e065e6ba68a66439b)
- [teeworlds 0.6.3](https://git.solus-project.com/packages/teeworlds/commit/?id=26af99576bcef18ddc42851e38d4294574dbc6e1)
- [vagrant 1.8.6](https://git.solus-project.com/packages/vagrant/commit/?id=b58c9bbca3b58fea04dc3cc4df1a162baf3d6db8)

Updated:

- [adapta-gtk-theme 3.22.1.12](https://git.solus-project.com/packages/adapta-gtk-theme/commit/?id=443c40b1e22a2929004e65c56fe8ccbcd9650ae2)
- [arc-gtk-theme 20161005](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=7171471fb5fba4e3f333db4931b66fd9422ba9de)
- [budgie-desktop: Sync with git to fix systemd journal spam](https://git.solus-project.com/packages/budgie-desktop/commit/?id=d02c1f20fd744089e68acb46d5e953a87bfb948b)
- [bullet3: Enable extra libs](https://git.solus-project.com/packages/bullet3/commit/?id=2beb4c3944c1ac1604fc2ed6f89d4cdad7b1c846)
- [c-ares: Update to 1.12.0 to address CVE-2016-5180](https://git.solus-project.com/packages/c-ares/commit/?id=5e85212bdbdf039d1616a9b794d50b71ee1ed48e)
- [cherrytree 0.37.5](https://git.solus-project.com/packages/cherrytree/commit/?id=bb3d65bd08a631c4ed0aa43eecac8820102890f6)
- [corebird 1.3.3](https://git.solus-project.com/packages/corebird/commit/?id=866b1f6f7f1b834d20fbb8a9433f4dc620c03279)
- [electrum 2.7.4](https://git.solus-project.com/packages/electrum/commit/?id=3b43f5b8fd98959a335280f82133c8c72913661c)
- [elixir 1.3.4](https://git.solus-project.com/packages/elixir/commit/?id=11d39420c969161d5c97723a064a8512ff784256)
- [filezilla 3.22.1](https://git.solus-project.com/packages/filezilla/commit/?id=323a5918aadbf646d090a9a70bf7bd23365c2164)
- [firefox 49.0.1](https://git.solus-project.com/packages/firefox/commit/?id=8b06b953715d7deab37fc873d07ec831d26c2df6)
- [git 2.10.1](https://git.solus-project.com/packages/git/commit/?id=0679b7dfd538a034cad5a30aa88c91e0aa904014)
- [gnome-twitch: Fixes the issue with getting followers list](https://git.solus-project.com/packages/gnome-twitch/commit/?id=5b378b3db6db70f8da7289c392df8afeb151fe44)
- [gnuchess 6.2.3](https://git.solus-project.com/packages/gnuchess/commit/?id=a116890f20d3cdcd65f531719456e45fdadb0699)
- [gnutls 3.4.15](https://git.solus-project.com/packages/gnutls/commit/?id=a9cd00b3946b01750bab2625aaa964e162dcab1a)
- [hexchat 2.12.2](https://git.solus-project.com/packages/hexchat/commit/?id=5cd36be834976ee0b4e54b9fae7286fe60696cdb)
- [imagemagick 7.0.3](https://git.solus-project.com/packages/imagemagick/commit/?id=d6c691bc3b8d99ed553cca58297014f8d1cd047f)
- [kernel 4.8.1](https://git.solus-project.com/packages/kernel/commit/?id=27727bb687aba8eeaa81e563d88d26666b187a53)
- [kodi 17.0 beta 3](https://git.solus-project.com/packages/kodi/commit/?id=b8e583385e6dd0be3223dba2f5823f31eb4c1764)
- [libarchive 3.2.1](https://git.solus-project.com/packages/libarchive/commit/?id=2205176232f87f16330e398d8b6d2c02207e6b4c)
- [librecad 2.1.3](https://git.solus-project.com/packages/librecad/commit/?id=1b27f4d8592755d7f236127f38d00905f1031f51)
- [libreoffice 5.2.2](https://git.solus-project.com/packages/libreoffice/commit/?id=5d6e8a5f9696acf4e3d21b81975d9f4efdcd86e1)
- [libX11 1.6.4](https://git.solus-project.com/packages/libX11/commit/?id=1f0dbf1b7bfd691a5172ab49d5baf91cb0fb964a)
- [libXfixes 5.0.3](https://git.solus-project.com/packages/libXfixes/commit/?id=15b9f2d2b03829081e094acfb709fffff9b3f448)
- [libXi 1.7.7](https://git.solus-project.com/packages/libXi/commit/?id=74764e7acb468e2d33f1d7f488212fdb9c14119d)
- [libXrandr 1.5.1](https://git.solus-project.com/packages/libXrandr/commit/?id=99d65677b0733510b562f1720485e0de2ef51793)
- [libXrender 0.9.10](https://git.solus-project.com/packages/libXrender/commit/?id=1a67705e1d709e34bfcd55a84369c7c938252acc)
- [libXtst 1.2.3](https://git.solus-project.com/packages/libXtst/commit/?id=2e34b014eac51df0617b99e1ff9440f24c91fb29)
- [libXv 1.0.11](https://git.solus-project.com/packages/libXv/commit/?id=022b73303af1371920abbb0a5d9304413f1684a7)
- [libXvMC 1.0.10](https://git.solus-project.com/packages/libXvMC/commit/?id=7c81cea92ffc42180e1492db48c5adce3ce49eb0)
- [llvm 3.9.0](https://git.solus-project.com/packages/llvm/commit/?id=b753d878ddf2cae8765915a2bd84515450e681e3)
- [lollypop 0.9.210](https://git.solus-project.com/packages/lollypop/commit/?id=30d7e0631225b75a992b6b4a3f17b0d4d4b3264f)
- [mesalib: Sync with git commit 4d7d9825f34a31368e63c493c28d57c8f84a984c](https://git.solus-project.com/packages/mesalib/commit/?id=74d5c702a6d31f838356e3209e3766c217885865)
- [mkvtoolnix 9.4.2](https://git.solus-project.com/packages/mkvtoolnix/commit/?id=61cca450d71e10c7f6cdb0fbf8f351c04bde8c51)
- [mercurial 3.9.2](https://git.solus-project.com/packages/mercurial/commit/?id=0ab52ecc6c848808ab236f480411b95f613bab89)
- [mumble 1.2.17](https://git.solus-project.com/packages/mumble/commit/?id=dc3f9f7b32e350dbde5b470b80e5c55dff261be1)
- [neofetch 1.8.1](https://git.solus-project.com/packages/neofetch/commit/?id=91c5e82b700bad35112b6495feb6701eaada1b98)
- [octave:Added additional libs, fixed docs](https://git.solus-project.com/packages/octave/commit/?id=a4423b6a18c7b772471b4dbf287663968001e3c0)
- [openssl 1.0.2j](https://git.solus-project.com/packages/openssl/commit/?id=48d357cdd89eb71ff6abc56951dcc58764fe8635)
- [paper-icon-theme 1.3.4](https://git.solus-project.com/packages/paper-icon-theme/commit/?id=77332282cb691b7e6aad40f26b1963ca0697f899)
- [pinta 1.7](https://git.solus-project.com/packages/pinta/commit/?id=93fd9ea22ba6379f740553ec4997518cbf90d770)
- [retroarch: Enabled alsa and xset](https://git.solus-project.com/packages/retroarch/commit/?id=525d604a09c6d3f5878115091277489e71801904)
- [q4wine 1.3.3](https://git.solus-project.com/packages/q4wine/commit/?id=22022c452e8bcc2faf4b7360bf6fa89f47eac262)
- [scummvm: Update to 1.8.1 and enable flac, OpenGL, JPEG, MPEG2, FAAD, PNG, Theora, Vorbis, MAD. Also enables engine for Wintermute.](https://git.solus-project.com/packages/scummvm/commit/?id=90fee28f295652290d78e3bfa66d015482ac72fd)
- [syncthing 0.14.8](https://git.solus-project.com/packages/syncthing/commit/?id=f775d6d2dd2fcfa6f95f77992ac132e0fb85dfb1)
- [synergy 1.8.3](https://git.solus-project.com/packages/synergy/commit/?id=a1e8936ec63b6314ce06e225ad3e15fb48a26605)
- [systemd: Fix PAM configuration to enable systemd user](https://git.solus-project.com/packages/systemd/commit/?id=8c665217e2c84a60e80958204fd5d7e04434df36)
- [telegram 0.10.11](https://git.solus-project.com/packages/telegram/commit/?id=af674f635b871c228d32a7a12aa150f1746f3bb9)
- [texinfo 6.3](https://git.solus-project.com/packages/texinfo/commit/?id=ddee300ff755e8527c5d3cb7cc85e3cdcae0e68f)
- [texstudio 2.11.2](https://git.solus-project.com/packages/texstudio/commit/?id=fda8b2a2904bcf01fddcdd134eb982040c7f274a)
- [thunderbird 45.4](https://git.solus-project.com/packages/thunderbird/commit/?id=db82fdd5c4f1f97b61864d46ec21d032ae38afb1)
- [tmux 2.3](https://git.solus-project.com/packages/tmux/commit/?id=1932b4f905ad8d51e6f29361b6ac2521eccbf8c7)
- [vim 8.0.0027](https://git.solus-project.com/packages/vim/commit/?id=64f49f12d63fb170e1ed8ca184d35cf56e6f2357)
- [weechat 1.6](https://git.solus-project.com/packages/weechat/commit/?id=44f3f7e185377d181025801f715c66e102bbc65e)
- [wine 1.9.20](https://git.solus-project.com/packages/wine/commit/?id=7f9f1ce09705ff1154ad93b66e36d22c0c25b9a1)
- [x265 2.1](https://git.solus-project.com/packages/x265/commit/?id=bada65054428696931f8b4d122b0de6269e72c5f)
- [x2goserver: Fixed installation of .service file](https://git.solus-project.com/packages/x2goserver/commit/?id=28c51a9f53ad4ed27b5b50c779db4b727fcd5472)
- [xgamma 1.0.6](https://git.solus-project.com/packages/xgamma/commit/?id=28f5e56a264bf74ab47219e903e05adeac9c7cfa)
- [xz 5.2.2](https://git.solus-project.com/packages/xz/commit/?id=d30cb07e3475dbd2a09ad2646f4585880b787952)
- [zathura 0.3.6](https://git.solus-project.com/packages/zathura/commit/?id=1034c78cf852ac951692f5eb206086863558a1d5)

{{< altimg "https://media.giphy.com/media/66hrbnBs4PYha/giphy.gif" >}}