---
author: Ikey Doherty
categories:
- News
date: 2014-06-06T17:10:55Z
id: 184
title: New Bug Tracker + HTTPS
url: /2014/06/06/new-bug-tracker-https/
---

Hello all!

In order to make it easier to get involved with the project and report bugs, I've set up a bug tracker on this site. We're now using 
[The Bug Genie](http://www.thebuggenie.com/) for our bug needs. This is open source software under the 
[Mozilla Public License](http://www.mozilla.org/MPL/1.1/) version 1.1 (MPL-1.1). A demo screenshot is provided below.<!--more-->

{{ altimg "https://solus-project.com/wp-content/uploads/2014/06/bts.png" }}

You can get signed up by visiting [https://solus-project.com/project/](https://solus-project.com/project/) -- we'll also have some bits of documentation 
there on the built-in wiki soon enough. Note that this facilitates proper project management and releases, and this is exactly how we'll use it.

Also please notice that now the Evolve OS websites will redirect you to HTTPS any time you try using a direct http link. I recently invested in an SSL certificate and all 
public facing services that potentially offer login, are now using https only. So, when you log into the bug tracker you'll only be using an https connection.

Our bug tracker instance does support logins via OpenID (to negate the need to set up an LDAP server) -- which uses post-callbacks between web-services, and I wanted 
to ensure they would only use SSL to protect your data. Also note that the servers within the Evolve OS realm are regularly updated, and the certificate has been issued 
post OpenSSL woes (so no need to revoke "just in case", server was also updated again this morning)

To cap it off, please test the new bug tracker to verify things work properly, and start reporting issues with the Validation (or PreAlpha) ISOs, and we'll get them all in the 
BTS ready for 0.3.0! Apologies if emails from the new bug tracker end up in your spam folder, Google seems determined that it is indeed spam, so I'll get on the case of 
fixing those..