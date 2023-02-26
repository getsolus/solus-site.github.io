+++
author = "ikey"
categories = [
"Packages"
]
date =  "2014-09-02T22:17:25Z"

title = "Linux 3.16.1 Now Available"
featuredimage = "/kernel.png"
url = "/2014/09/02/linux-3-16-1-now-available/"
+++

The latest upstream stable kernel version is now available for Evolve OS. Users who have previously installed the NVIDIA binary drivers manually 
should note they now also need to add 'nomodeset' to their boot line to stop nouveau loading, and they should rebuild the module to sync with the new kernel version.
<!--more-->
Note that previously legacy UMS (User Mode Setting) support was retain in our configuration, which is now completely gone. Given our recent X stack update 
this should help Radeon users. We've switched back to the SLAB allocator, and moved back from NOHZ/SYSIDLE(FULL) to 1000Hz full dyn ticks configuration, 
which has shown to improve performance within Evolve OS in local tests.

Initial support for faulty HID vendors (Microsoft, Logitech) were enabled in the kernel to increase compatibility within Evolve OS.

To update, simply issue the following command, and then reboot (taking appropriate actions as noted above if you have the binary drivers):

```
sudo pisi up
```