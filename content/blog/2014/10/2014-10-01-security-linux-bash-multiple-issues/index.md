+++
author = "ikey"
categories = [
"Security"
]
date =  "2014-10-01T21:45:16Z"

title = "Security: linux, bash, multiple issues"
url = "/2014/10/01/security-linux-bash-multiple-issues/"
+++

Evolve OS users are advised to update their installations as soon as possible to address a number of recent security issues.
  
It is advised you check often for updates from the Evolve OS repositories to protect you against any future issues. Note that in the instance of Evolve OS, 
**/bin/sh** is provided by **dash**, and not **bash**.

To update your installation, simply issue the following command in a terminal, and then reboot:

```
sudo eopkg upgrade
```

### bash

Bash has received numerous updates during the last few days, and the current version is 4.2.051 in the Evolve OS repositories.
  
This is part of the widely publicised [Shellshock](http://en.wikipedia.org/wiki/Shellshock_(software_bug)) bug. As such, Evolve OS users are advised to attempt an update 
at least daily until we know the issue is completely resolved.

### Linux kernel

Three vulnerabilities have been addressed in the Linux kernel, and have been backported to 3.16.3 for inclusion within Evolve OS.
  
Note that CVE-2014-3186 doesn't directly affect Evolve OS, however the security patch was backported in preparation for the 3.17 sync when it exits RC stages.

[CVE-2014-3181](http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-3181)

"Multiple stack-based buffer overflows in the magicmouse\_raw\_event function in drivers/hid/hid-magicmouse.c in the Magic Mouse HID driver in the Linux kernel 
through 3.16.3 allow physically proximate attackers to cause a denial of service (system crash) or possibly execute arbitrary code via a crafted device that provides a 
large amount of (1) EHCI or (2) XHCI data associated with an event."

[CVE-2014-3186](http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-3186)

"Buffer overflow in the picolcd\_raw\_event function in devices/hid/hid-picolcd_core.c in the PicoLCD HID device driver in the Linux kernel through 3.16.3, as used in 
Android on Nexus 7 devices, allows physically proximate attackers to cause a denial of service (system crash) or possibly execute arbitrary code via a crafted device 
that sends a large report."

[CVE-2014-6410](http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-6410)

"The _\_udf\_read_inode function in fs/udf/inode.c in the Linux kernel through 3.16.3 does not restrict the amount of ICB indirection, which allows physically proximate 
attackers to cause a denial of service (infinite loop or stack consumption) via a UDF filesystem with a crafted inode."