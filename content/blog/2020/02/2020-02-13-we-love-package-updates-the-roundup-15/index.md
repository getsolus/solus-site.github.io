---
authors:
- image: https://avatars.githubusercontent.com/u/156574?v=4
  link: https://github.com/JoshStrobl
  name: Joshua Strobl
categories:
- packages
- news
- roundup
date: "2020-02-13T07:55:05+02:00"
featuredimage: /new-fancy-things.jpg
title: 'We ❤️ Package Updates | The Roundup #15'
url: /2020/02/13/we-love-package-updates-the-roundup-15
---

Welcome to The Roundup #15, your bytes of Solus news. For this Valentine's Day we're giving you what you love the most on Linux, lots of package updates.

<!--more-->

## Python3

Thanks to the hard work spanning multiple days by Global Maintainer Joey Riches, we have brought up our [Python3 to 3.7.6, the latest in the 3.7 series](https://dev.getsol.us/T6817), as well as updating or rebuilding hundreds of packages. Users should see performance gains **upwards of 30%** depending on the python3-based application or package as well, as we're now building python3 with `-fno-semantic-interposition`. You can see additional details on that [here](https://fedoraproject.org/wiki/Changes/PythonNoSemanticInterpositionSpeedup#Benefit_to_Fedora).

This Python3 upgrade is also a fairly significant bump from our previous 3.6 series and introduces major features for our Python 3 developers on Solus to take advantage of, such as:

- [Built-in breakpoint()](https://www.python.org/dev/peps/pep-0553/)
- [Context Variables](https://www.python.org/dev/peps/pep-0567/)
- [Data Classes](https://www.python.org/dev/peps/pep-0557/)
- [New time functions with nanosecond resolution](https://www.python.org/dev/peps/pep-0564/)

## Linux 5.5 Series

Our `linux-current` has been updated to the 5.5 series, with Solus users getting the latest release at the time of publication, 5.5.3.

The 5.5 series introduces a bunch of new features and fixes, we'd suggest heading over to [Phoronix's feature overview](https://www.phoronix.com/scan.php?page=article&item=linux-55-features&num=1) for a more comprehensive list. Some highlights include:

- AMDGPU HDCP support
- [A new Logitech driver for improved gaming keyboard support](https://www.phoronix.com/scan.php?page=news_item&px=Linux-5.5-HID-Improvements)
- [A new System76 ACPI Coreboot driver](https://www.phoronix.com/scan.php?page=news_item&px=Linux-5.5-x86-Platform-Improve)
- [Improved k10temp driver and SATA temperature monitoring](https://www.phoronix.com/scan.php?page=news_item&px=Linux-5.6-HWMON-Changes)

### NVIDIA 340.xx Driver Deprecated

With the introduction of the 5.5 series and support for DisplayPort Multi-Stream Transport (DP MST), NVIDIA has officially [dropped support](https://nvidia.custhelp.com/app/answers/detail/a_id/3142/~/support-timeframes-for-unix-legacy-gpu-releases) for the 340.xx series for kernels newer than 5.4.x. As a result of this dropped support, we've deprecated our `nvidia-340-glx-driver` package and have set `xorg-driver-video-nouveau` as the replacement. No user intervention should be necessary, however **if** you have used the NVIDIA X Server Settings tool to generate a nvidia configuration file for `/etc/X11/xorg.conf.d/`, it is highly recommended to remove the file before updating. If you do not have this file, no intervention is needed on your part.

## ALSA

ALSA and its respective packages have seen updates to their latest releases as well, introducing new UCMs (Use Case Managers) and topologies, which enables audio drivers to "load their mixers, routing, PCMs and capabilities from user space at runtime without changing any driver source code".

This upgrade introduces improved support for various devices such as:

- Broadwell Audio DSPs (including new PCM configurations)
- Dell WD15 Dock USB-audio
- Gigabyte Motherboards with dual HD-audio codecs
- Intel Broxton SoCs such as the bxtrt298
- Intel Skylake I2S
- Mic recording for internal analog microphones for the Asus T100HA and Lenovo Ideapad Miix 320

For full changelogs, see: [1.2.1](https://alsa-project.org/wiki/Changes_v1.1.9_v1.2.1), [1.2.1.1](https://alsa-project.org/wiki/Changes_v1.2.1_v1.2.1.1), and [1.2.1.2](https://alsa-project.org/wiki/Changes_v1.2.1.1_v1.2.1.2).

## Package Highlights

Here's a highlight of some other package updates that have been done since our last sync. Please note this is not a comprehensive list, we weren't going to go through hundreds of package updates:

- [bleachbit 3.2.0](https://dev.getsol.us/R436:2419b95648b734a9eb6f08ae30088d93b0bddd34)
- [blender 2.81a](https://dev.getsol.us/R437:d93dce4b0da0706de2b8b43bf7fa62d20dff0d72)
- [calibre 4.10.1](https://dev.getsol.us/R485:4cc9f45a9bf09ac2802b33ec962b263938139f42)
- [dhcpcd 8.1.6](https://dev.getsol.us/R619:cdc142118ecd467a8359bfc7b93507a6f5bf79e2)
- [dhclient 4.4.2](https://dev.getsol.us/R618:199b6eedfcd5244082f9cb5cab6612892f207b31)
- [dmd 2.090.1](https://dev.getsol.us/R638:98ca98b9daeb5cd735cab2d9f0ec57db108c8b9d)
- [dub 1.19.0](https://dev.getsol.us/R668:60d181880d04db6f8935f4e485ecfbce62e33b94)
- [duplicity 0.8.10](https://dev.getsol.us/R672:740ee8dae4e73da3d4c8c767553125e7e6ca3a63)
- [easyssh 1.6.6](https://dev.getsol.us/R4413:dc571b2164a0ca83449be5b7c499023dd72464c3)
- [etcher 1.5.76](https://dev.getsol.us/R3610:4f798ac701f9d36e910d7ad48f0a4b2130b98927)
- [gphoto2 2.5.23](https://dev.getsol.us/R3985:001aad3368859f5bff250edcf67ab1b6d2aaf8ef)
- [gtkwave 3.3.103](https://dev.getsol.us/R4210:c705da7daec93f0add16eeaecbf3db3f1e30247c)
- [kubectl 1.17.3](https://dev.getsol.us/R4352:a066ddff9a42e437611eac2524fc956b48c3ff5e)
- [latte-dock](https://dev.getsol.us/R4030:e41d087b34ce5d6a5f4a0b2a18a221d4b20a7771)
- [libinput 1.15.0](https://dev.getsol.us/R1743:cfc0ce08e096feaf306324b549655ceb610dfbf2)
- [libratbag 0.13](https://dev.getsol.us/R3780:9d559a47aeb3bc4b9ff974bda5d551528c37dbb8)
- [libreoffice 6.4.0.3](https://dev.getsol.us/R1835:26c4a984fe5b73890c5ba2cda2e05b8f11362a50)
- [nginx 1.17.8](https://dev.getsol.us/R2166:d4ac0e02a2389fa30cf5c019181e8f60df6a4040)
- [nodejs 12.15.0](https://dev.getsol.us/R2177:226c1ad4136ef8402411ba33308de01b082f994f)
- [opera-stable 66.0.3515.72](https://dev.getsol.us/R2263:40756d725eb99b406b610dcc3e8b284d1d468918)
- [pencil 3.1.0](https://dev.getsol.us/R3747:bb9ba86478e5f64904ba67c0e4ce90bf9f63fb79)
- [piper 0.4](https://dev.getsol.us/R3781:df3868b61df52c37c5549b68f3151d64ebe278fe)
- [podman 1.8.0](https://dev.getsol.us/R4790:b007c0916a268acdde4437b05500f35fd80ea67e)
- [qownnotes 20.2.3](https://dev.getsol.us/R2730:a4a37a1dda98e70d35c5113d285c3d160e9ca539)
- [rapid-photo-downloader 0.9.18](https://dev.getsol.us/R2785:3eff51ad8639ec15a7bf4c2fbb7d741cac736adc)
- [rust 1.41.0](https://dev.getsol.us/R2839:b6dbdb4d697745fbbb938d563f09ec7e3aa4f84d)
- [screen 4.8.0](https://dev.getsol.us/R2859:6101f7117643c99f8909bc247d61610f3b1acc19)
- [snes9x-gtk 1.60](https://dev.getsol.us/R2920:71936bcf8bedb39ce052f5c6a2964bdd890a9828)
- [scummvm 2.1.1](https://dev.getsol.us/R2865:1d1ee86239425c1488f85b7edf4c8897fc735350)
- [supercollider 3.10.4](https://dev.getsol.us/R4550:bd24e390fb77cda8cd466835e10762e954cfa3b7)
- [systemd: Start using our new NTP Pool vendor zones. Yay.](https://dev.getsol.us/R2999:25787c1e38142c7a7be4ecf326f970e80aa271da)
- [tilda 1.5.0](https://dev.getsol.us/R3038:91c3d27d92ef116ab32a4a68f85d683d7e065234)
- [veracrypt 1.24-update4](https://dev.getsol.us/R3118:b756a8fca7746fe7deea8f30ce5a596c688f7beb)
- [vivaldi-snapshot 2.11.1811.28](https://dev.getsol.us/R3138:4b23b2c8b9dbcc7f9baa5badfb31a062a8ff695c)
- [vivaldi-stable 2.11.1811.33](https://dev.getsol.us/R3139:743dc2afb111121be99ce52f97114c8905c2d7c1)
- [vscode 1.42.0](https://dev.getsol.us/R3148:7148cc71e4fd3a527d8b3d9ce573c6637a849bbc)
- [wine 5.1](https://dev.getsol.us/R3169:252dd8f9a6b3d5925786568f6762e6d776ff680c)
- [woeusb 3.3.1](https://dev.getsol.us/R3806:262a66963cc0a412d8cf0b54d84df60aa7715174)
- [xournalpp](https://dev.getsol.us/R4810:bef4b35fdea9996c74ca7eea3def42d9a0d7589a)
- [zeromq 4.3.2](https://dev.getsol.us/R3321:240e2a19dcd86d93be5b89d0a670119d61c416ff)