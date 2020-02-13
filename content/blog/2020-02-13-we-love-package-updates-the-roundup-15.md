---
title: "We ❤️ Package Updates | The Roundup #15"
author: "joshua"
categories:
- packages
- news
- roundup
date: 2020-02-13T07:55:05+02:00
featuredimage: ""
url: "/2020/02/13/the-roundup-15"
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