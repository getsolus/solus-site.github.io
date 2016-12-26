---
author: ikey
categories:
- Security
date: 2015-07-09T15:10:40Z
title: 'openssl: Security update'
url: /2015/07/09/openssl-security-update/
---

openssl 1.0.1p is [now available](https://git.solus-project.com/packages/openssl/commit/?h=openssl-1.0.1p-13) in the Solus Software Repositories. Users should immediately apply all updates and reboot. 
This addresses **CVE-2015-1793**. For more details, please see the [OpenSSL advisory](https://www.openssl.org/news/secadv_20150709.txt).
<!--more-->
Graphical users may apply updates through the Software Center as per usual. The fastest CLI method is as follows:

```
sudo eopkg up -y && sudo reboot
```