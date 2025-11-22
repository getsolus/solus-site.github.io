---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- news
date: "2015-01-16T02:04:23Z"
title: 'Important: Repo Changes'
url: /2015/01/16/important-repo-changes/
---

Hello all!

Please note that to accommodate a more stable development path in the future, we have had to alter the layout and position of our package repository.

This means that if you download a current ISO, you will need to change the repositories post-install to ensure you continue to receive updates.

Note that we now push to an "unstable" repo, and quite regularly, before resyncing the packages into "main". You'll need to immediately update your installation 
to ensure the security and stability of it, as well as ensure you keep up to date with new features! 🙂 The update from

Alpha 4 will be considerable at this time, so please reboot once all updates are applied.

**This is required as a stock Alpha4 image will appear as if it cannot update, this is due to the change in location!**

```
sudo eopkg remove-repo EvolveOS
sudo eopkg add-repo EvolveOS http://packages.solus-project.com/main/eopkg-index.xml.xz
sudo eopkg upgrade
```