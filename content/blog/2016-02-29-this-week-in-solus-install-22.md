+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"TWIS"
]
date =  "2016-02-29T08:32:50Z"
title = "'This Week in Solus -- Install #22'"
url = "/2016/02/29/this-week-in-solus-install-22/"
+++ 
Welcome to the 22nd installation of This Week in Solus 

#### Marching to 1.1

We have a bunch to report on regarding our march towards 1.1, which is undoubtedly going to be the most exciting Linux distro point release anyone has every had. I think after the nice read, you'll agree.

{{< altimg "https://media.giphy.com/media/3oEdv7vedu6iAZoqTS/giphy.gif" >}}

##### Budgie Improvements

{{< altimg "2016/02/Screenshot-from-2016-02-29-03-51-45.png" >}}

This week the Solus Project released Budgie 10.2.4. Alongside updated translations, this Budgie release resolves:

- Issues with the some icons, such as network, rendering inconsistently (sizing, colors).
- Resolved issues with volume icon size.
- We have also [restored lightdm locking functionality via Raven](https://github.com/solus-project/budgie-desktop/commit/9392146c07b93d8b90681dafbd74d03e15590f12), now what we have rid ourselves of GDM again.

{{< altimg "2016/02/budgie.png" >}}

We have a new, pretty cute logo for Budgie now, thanks to the fantastic contribution was made by [Yuri Henrique](https://plus.google.com/+YuriHenriq). With this new logo, we are continuing to establish consistent branding, starting with the 
replacing of the GNOME logo and information in the Details section of GNOME Control Center with branding and information pertaining to Solus.

{{< altimg "2016/02/Screenshot-from-2016-02-27-23-27-13.png" >}}

##### Core and Graphics Improvements

We have aggressively optimized more core libraries used throughout our display stack, which now provides preliminary OpenGL 4.1 support and the following components being updated:

- Mesa is now at 11.1.2
- Xorg at 1.17.4
- Intel is synced with git
- nouveau is at the latest release.

##### Initial Installation Experience

The long-standing issue of USB and UEFI booting has been resolved in internal testing (XPS 13) and will land in 1.1. We have also replaced GNOME Initial Setup with our past installer, refining it with the following improvements:

- Fixed timezone configuration
- Added detection of Windows 8 and onwards
- Expanded the range of detection for EFI System Partitions
- Enforce stricter hostname validation
- Fixed default user groups
- Resolved fstab issues on boot (we no longer write the root partition into fstab) and on GPT systems we do not write swap partition to fstab.

This is all categorized as "bandaids", since we will be completely replacing the installer in 1.2.

{{< altimg "2016/02/2Xu9NcsxjPHz.png" >}}

##### The Bird is the Word

{{< altimg "http://i.giphy.com/8bUYuWPi8fPDW.gif" >}}

We have resolved mime association for Thunderbird in GNOME Control Center.

<hr />

#### Package Updates

New:

- [deluge 1.3.12](https://git.solus-project.com/packages/deluge/commit/?id=e6f259636c5364d947350f632a2dbbd0f8313157)
- [ocaml 4.02.3](https://git.solus-project.com/packages/ocaml/commit/?id=63662f94ce0a4ba3befcbd735c3ed179e21532dd)
- [re2c 0.16.0](https://git.solus-project.com/packages/re2c/commit/?id=4ba27f4cbd23a9550d6e62c49a3dc1e7cc65b7dd)
- [xorg-driver-video-amdgpu 1.0.1](https://git.solus-project.com/packages/xorg-driver-video-amdgpu/commit/?id=66fa82b9e038544250d352859d6122432674e274)

Updated:

- [bitcoin 0.12.0](https://git.solus-project.com/packages/bitcoin/commit/?id=b9b9e3bed2924f8490c3ae81ba42a4cd6744f443)
- [bluefish-editor 2.2.8](https://git.solus-project.com/packages/bluefish-editor/commit/?id=e17c9d2aa6c6c918daf961729891209753806622)
- [erlang 18.2.4](https://git.solus-project.com/packages/erlang/commit/?id=88d7b0e445703eb250af0cde6ede3b9047e76f77)
- [ffmpeg 2.8.6](https://git.solus-project.com/packages/ffmpeg/commit/?id=bffcd20ce0a0c0025f0eee270d568b858bd8f307)
- [git 2.7.1](https://git.solus-project.com/packages/git/commit/?id=57a41c60fea118af354f59a6c087722589ec4834)
- [gnome-mpv 0.7](https://git.solus-project.com/packages/gnome-mpv/commit/?id=cd8a48be1213026bd77213db5a0998fce1a8580e)
- [htop 2.0](https://git.solus-project.com/packages/htop/commit/?id=68119eab2029bf3fc85e23e4d7041ab0e7d77545)
- [keepassx 2.0.2](https://git.solus-project.com/packages/keepassx/commit/?id=b7da7c98f5b234f5ddefb11abaa7935ab754bdd7)
- [kernel 4.4.3](https://git.solus-project.com/packages/kernel/commit/?id=ea5fc9da35715f7ffbc30618af654242c4c14bcd)
- [less 481](https://git.solus-project.com/packages/less/commit/?id=cd26eabde82770ab6c571985007a6ee6b2b097ad)
- [libgcrypt 1.6.5](https://git.solus-project.com/packages/libgcrypt/commit/?id=b4f129ac1acff6f49d88c3a145097eaca8736924)
- [libgpg-error 1.21](https://git.solus-project.com/packages/libgpg-error/commit/?id=7b93243c923c0fbb5a3561e4729ac503cbe51e93)
- [libssh 1.7.0](https://git.solus-project.com/packages/libssh2/commit/?id=235cfcd0fa4a536aba9387ef1db07d0aa2ba692f)
- [mgba 0.4.0](https://git.solus-project.com/packages/mgba/commit/?id=33b388f758dbb752e2d1f95900ebefd381f8818d)
- [mutt enabled with SASL](https://git.solus-project.com/packages/mutt/commit/?id=86bd82c835d66bd9c89be68b26936dbfad599d21)
- [mesalib 11.1.2 (for OpenGL 4.1, enable DRI3 again)](https://git.solus-project.com/packages/mesalib/commit/?id=46f53c7bfa6427fe3585de02efea1a3192470794)
- [mpd 0.19.13](https://git.solus-project.com/packages/mpd/commit/?id=05025a887197cdea47c41daa576d600dca36ddc2)
- [n1 0.4.10](https://git.solus-project.com/packages/n1/commit/?id=cdfd7ee6408e61710ec915cc3aba7e4b17e9d6d8)
- [nodejs 5.7.0](https://git.solus-project.com/packages/nodejs/commit/?id=9c18387822c8dacff1279ff50d07087e3bb53ea6)
- [obs-studio 0.13.2](https://git.solus-project.com/packages/obs-studio/commit/?id=2d2c8e896299303bb7de9428edf28c5fb2af2dda)
- [qemu 2.5.0](https://git.solus-project.com/packages/qemu/commit/?id=52dcf463fda03550728c20ad88ae16336989e8dc)
- [retroarch 1.3.1](https://git.solus-project.com/packages/retroarch/commit/?id=011a425297f453311f10c50ac24079bc68c7bad7)
- [telegram 0.9.28](https://git.solus-project.com/packages/telegram/commit/?id=1a2aca6b20ea071c464ff73f0ff359c1ccc3ab09)
- [transmission 2.90](https://git.solus-project.com/packages/transmission/commit/?id=0bf53942dc86015eb2af8a2f971fc27c527e3fc7)
- [xkeyboard-config 2.17](https://git.solus-project.com/packages/xkeyboard-config/commit/?id=e0cc95224ebb8ddd9260870acdaf2c9b7bdd663c)
- [xorg-driver-video-intel -- enabled DRI3, xvmc, and sync with git](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=9547e833469e00d4c413d138e681e964b264d415)
- [xorg-driver-video-nouveau 1.0.12](https://git.solus-project.com/packages/xorg-driver-video-nouveau/commit/?id=27fdb9a08e73d59f491d36def4c94d40a124bb5c)
- [xorg-server 1.17.4 (enable DRI3 again)](https://git.solus-project.com/packages/xorg-server/commit/?id=77c956af0aa23c84f9c729117f7df597070bebe1)
- [youtube-dl 2016.02.22](https://git.solus-project.com/packages/youtube-dl/commit/?id=212f20d41d8f0b2451cc63f20ad579725c7e8d41)

          