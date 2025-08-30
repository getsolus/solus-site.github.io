---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
categories:
- News
- Security
date: "2014-10-18T18:43:26Z"
title: Repo Changes/Potential Breakage
url: /2014/10/18/repo-changespotential-breakage/
---

### EDIT: We'll give people one week to get gnupg installed and then we'll introduce signing.
  
Please ensure you have updated your installs and install gnupg before Sunday the 25th.

Hello all,

Our security audit is now complete, and we've made a few changes to how we distribute the Evolve OS repository. If you update now you'll notice that your repo 
is unable to do so. To remedy the situation you need to import the signing key we now use for the Evolve OS repository, by resetting the repo information:

```
sudo eopkg remove-repo "Evolve OS"
wget https://solus-project.com/repo.gpg && sudo gpg --import repo.gpg
sudo eopkg add-repo main http://packages.solus-project.com/eopkg-index.xml.xz
```

It is possible you do not have gpg, if so please install as follows:

```
sudo eopkg install http://packages.solus-project.com/g/gnupg/gnupg-2.0.24-4-1-x86_64.eopkg```
```

This will also change the main repository name to "main" in keeping with our intentions for beta1.
  
We will have a main repo, as well as a security channel soon. Once you have reset the repository information please ensure you apply all updates immediately, and then reboot.

We're working hard now on beta1, and we've updated many packages during our security update, as your safety is of paramount concern.

It is possible that some who have not updated their machines in quite some time now will not be able to switch to the new mechanism. We apologise for any 
convenience, and it was suspected with the warning we gave that breakage would occur.