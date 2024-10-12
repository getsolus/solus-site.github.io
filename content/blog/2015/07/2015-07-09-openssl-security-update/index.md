+++
author = "ikey"
categories = [
"Security"
]
date =  "2015-07-09T15:10:40Z"
title = "openssl: Security update"
url = "/2015/07/09/openssl-security-update/"
+++

openssl 1.0.1p is now available in the Solus Software Repositories. Users should immediately apply all updates and reboot.
This addresses **CVE-2015-1793**. For more details, please see the OpenSSL advisory.
<!--more-->
Graphical users may apply updates through the Software Center as per usual. The fastest CLI method is as follows:

```
sudo eopkg up -y && sudo reboot
```
