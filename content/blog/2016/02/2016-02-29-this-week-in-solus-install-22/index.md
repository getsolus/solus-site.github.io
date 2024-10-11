+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"TWIS"
]
date =  "2016-02-29T08:32:50Z"
title = "This Week in Solus -- Install #22"
url = "/2016/02/29/this-week-in-solus-install-22/"
+++ 
Welcome to the 22nd installation of This Week in Solus 

#### Marching to 1.1

We have a bunch to report on regarding our march towards 1.1, which is undoubtedly going to be the most exciting Linux distro point release anyone has every had. I think after the nice read, you'll agree.

{{< altimg "https://media.giphy.com/media/3oEdv7vedu6iAZoqTS/giphy.gif" >}}

##### Budgie Improvements

{{< relimg "Screenshot-from-2016-02-29-03-51-45.png" >}}

This week the Solus Project released Budgie 10.2.4. Alongside updated translations, this Budgie release resolves:

- Issues with the some icons, such as network, rendering inconsistently (sizing, colors).
- Resolved issues with volume icon size.
- We have also [restored lightdm locking functionality via Raven](https://github.com/solus-project/budgie-desktop/commit/9392146c07b93d8b90681dafbd74d03e15590f12), now what we have rid ourselves of GDM again.

{{< relimg "budgie.png" >}}

We have a new, pretty cute logo for Budgie now, thanks to the fantastic contribution was made by [Yuri Henrique](https://plus.google.com/+YuriHenriq). With this new logo, we are continuing to establish consistent branding, starting with the 
replacing of the GNOME logo and information in the Details section of GNOME Control Center with branding and information pertaining to Solus.

{{< relimg "Screenshot-from-2016-02-27-23-27-13.png" >}}

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

{{< relimg "2Xu9NcsxjPHz.png" >}}

##### The Bird is the Word

{{< altimg "http://i.giphy.com/8bUYuWPi8fPDW.gif" >}}

We have resolved mime association for Thunderbird in GNOME Control Center.

<hr />

#### Package Updates

New:

- deluge 1.3.12
- ocaml 4.02.3
- re2c 0.16.0
- xorg-driver-video-amdgpu 1.0.1

Updated:

- bitcoin 0.12.0
- bluefish-editor 2.2.8
- erlang 18.2.4
- ffmpeg 2.8.6
- git 2.7.1
- gnome-mpv 0.7
- htop 2.0
- keepassx 2.0.2
- kernel 4.4.3
- less 481
- libgcrypt 1.6.5
- libgpg-error 1.21
- libssh 1.7.0
- mgba 0.4.0
- mutt enabled with SASL
- mesalib 11.1.2 (for OpenGL 4.1, enable DRI3 again)
- mpd 0.19.13
- n1 0.4.10
- nodejs 5.7.0
- obs-studio 0.13.2
- qemu 2.5.0
- retroarch 1.3.1
- telegram 0.9.28
- transmission 2.90
- xkeyboard-config 2.17
- xorg-driver-video-intel -- enabled DRI3, xvmc, and sync with git
- xorg-driver-video-nouveau 1.0.12
- xorg-server 1.17.4 (enable DRI3 again)
- youtube-dl 2016.02.22

          