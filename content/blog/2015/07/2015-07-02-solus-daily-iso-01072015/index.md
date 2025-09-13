---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
categories:
- Uncategorized
date: "2015-07-02T03:46:49Z"
title: 'Solus Daily ISO: 01/07/2015'
url: /2015/07/02/solus-daily-iso-01072015/
---

The most recent daily ISO was uploaded last night, and features some small, but noticeable, improvements. 

- Broadwell support validated       
- SNA (Intel driver acceleration method, the fastest one) now working fully on Broadwell and Haswell, due to [syncing](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?h=xorg-driver-video-intel-2.99.917-10) 
with xf86-video-intel git       
- Support [added](https://git.solus-project.com/packages/kernel/commit/?h=kernel-4.1.1-50) for NVME block devices (NVM Express, SSD over PCIe)       
- Auditing [disabled](https://git.solus-project.com/packages/kernel/commit/?h=kernel-4.1.1-51) in the kernel -- ensuring less console spam and less SSD writes       
- Support [added](https://git.solus-project.com/packages/kernel/commit/?h=kernel-4.1.1-51) for additional, common, Realtek WiFi chipsets (RTL8192EE and RTL8723BE)       
- libdrm [updated](https://git.solus-project.com/packages/libdrm/commit/?h=libdrm-2.4.62-6) to 2.4.62       
- mesa [updated](https://git.solus-project.com/packages/mesalib/commit/?h=mesalib-10.5.8-11) to 10.5.8       

The featured image in this post was taken during hardware validation of Broadwell, and was validated on the Intel NUC (NUC5i7RYH) with Iris 6100 graphics.    

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO.        