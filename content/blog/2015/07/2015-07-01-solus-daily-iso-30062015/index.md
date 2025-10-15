---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- news
- releases
date: "2015-07-01T07:35:05Z"
title: 'Solus Daily ISO: 30/06/2015'
url: /2015/07/01/solus-daily-iso-30062015/
---

This is our second daily ISO, which features more hardware support, a slight visual refresh, along with some core bug fixes. This came a few hours late due to some technical issues, an ISO for July 1st will be issued this evening. (Timezones are relative. :])

Main changes:

- UEFI dual-boot issues [resolved](https://git.solus-project.com/packages/os-installer/commit/?h=os-installer-2-16)
- [Issue](https://github.com/solus-project/repository/issues/99) with network hostname change preventing application launches [resolved](https://git.solus-project.com/packages/dhcpcd/commit/?h=dhcpcd-5.6.7-5)
- Updated [firmware](https://git.solus-project.com/packages/linux-firmware/commit/?h=linux-firmware-20150513-4) package, supporting more devices (Intel WiFi, Radeon GPU, Tegra GPU)
- 4.1.1 LTS [kernel](https://git.solus-project.com/packages/kernel/commit/?h=kernel-4.1.1-49)
- Trial-run of [Arc GTK theme](https://github.com/horst3180/Arc-theme)

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO