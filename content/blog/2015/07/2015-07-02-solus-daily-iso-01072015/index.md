+++
author = "ikey"
categories = [
"Uncategorized"
]
date =  "2015-07-02T03:46:49Z"
title = "Solus Daily ISO: 01/07/2015"
url = "/2015/07/02/solus-daily-iso-01072015/"
+++

The most recent daily ISO was uploaded last night, and features some small, but noticeable, improvements. 

- Broadwell support validated       
- SNA (Intel driver acceleration method, the fastest one) now workin fully on Broadwell and Haswell, due to syncing.
with xf86-video-intel git       
- Support added for NVME block devices (NVM Express, SSD over PCIe)
- Auditing disabled in the kernel -- ensuring less console spam and less SSD writes
- Support added for additional, common, Realtek WiFi chipsets (RTL8192EE and RTL8723BE)
- libdrm updated to 2.4.62
- mesa updated to 10.5.8

The featured image in this post was taken during hardware validation of Broadwell, and was validated on the Intel NUC (NUC5i7RYH) with Iris 6100 graphics.    

See our first daily ISO announcement for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://getsol.us/download) now to obtain the latest daily ISO.
