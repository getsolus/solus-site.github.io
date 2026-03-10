---
authors:
- image: https://avatars.githubusercontent.com/u/156574?v=4
  link: https://github.com/JoshStrobl
  name: Joshua Strobl
tags:
- infrastructure
- packages
- news
date: "2018-09-11T19:11:30+03:00"
featuredimage: /laptop.jpg
title: Package Repo Migration Now Available
url: /2018/09/11/package-repo-migration-now-available
---

As previously announced on our [Supercharging Solus Infrastructure](/2018/09/08/supercharging-solus-infrastructure) blog post, we have been migrating infrastructure to a new domain and new hardware. As part of this migration, we are changing the repository away from `packages.solus-project.com`.

This package update is now available for your system(s) via the `pisi` package update, accessible via the Updates section of the Software Center or `sudo eopkg up`. After installation of this package update, running `sudo eopkg up` or checking for updates via the Software Center should automatically convert your `packages.solus-project.com` repo over to the new shannon or unstable repository, based on what you previously set.

This update also brings a couple added improvements:

1. You no longer need to remove or disable a repo to add one of the same name. You can now directly run `sudo eopkg ar Example https://example.com/eopkg-index.xml.xz` and if you already had `Example` set, it'd update the repo URL.
2. Upon removal (via `sudo eopkg rr RepoName`) of the last repository you have configured, we will automatically added the shannon / stable repository. This ensures you will always have a repository on your system to perform updates.

Further notes:

- We strongly encourage you perform this upgrade **immediately**, as we can not guarantee availability of the legacy package server in the near future.
- If you had multiple repos on your system, you may need to re-disable ones which were previously disabled prior to this update. If those repositories were not pointed to `packages.solus-project.com`, their URLs will not be modified.
- You may need to run `eopkg` as `sudo` during the first interaction with it after this upgrade, such as `sudo eopkg lr`, as it will need to perform the necessary writes to disk.

## Manually Configuring Package Repositories

In the event you are viewing this blog post after the legacy package server is no longer available, the eopkg/pisi update unexpectedly does not work as intended on your system, or you wish to switch over to the unstable repository, you can follow the steps below.

### Stable / Shannon Repo

**Pre-Migration:**

This will disable and remove the previous Solus shannon / stable repo (pointed to packages.solus-project.com), then proceeds to add the stable / shannon RIT repo.

``` bash
sudo eopkg dr Solus
sudo eopkg rr Solus
sudo eopkg ar Solus https://mirrors.rit.edu/solus/packages/shannon/eopkg-index.xml.xz
```

**Post-Migration:**

This should not be necessary since the removal of all repos will gracefully fall back to stable.

### Unstable Repo

**Pre-Migration:**

This will disable the previous Solus unstable repo (pointed to packages.solus-project.com) and add the unstable RIT repo.

``` bash
sudo eopkg dr Solus
sudo eopkg rr Solus
sudo eopkg ar Solus https://mirrors.rit.edu/solus/packages/unstable/eopkg-index.xml.xz
```

**Post-Migration:**

If you have updated to the new eopkg / pisi and wish to use the unstable repository, you can follow the instructions below.

``` bash
sudo eopkg ar Solus https://mirrors.rit.edu/solus/packages/unstable/eopkg-index.xml.xz
```

Note:

1. As mentioned, you no longer need to disable and remove the repo, hence the exclusion of such instructions.
2. Do not switch to unstable unless you are willing to be present in our development IRC channel, actively file issues while testing, validate that we are not performing breaking changes (which may happen at any time) before upgrading, etc.