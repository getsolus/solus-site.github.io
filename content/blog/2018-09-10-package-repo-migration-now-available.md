---
title: "Package Repo Migration Now Available"
author: "joshua"
categories:
- infrastructure
- packages
- news
date: 2018-09-10T22:19:44+03:00
featuredimage: "2018/09/laptop.jpg"
url: "/2018/09/10/package-repo-migration-now-available" # Example, /2017/01/18/adopting-flatpak-to-reassemble-third-party-applications
---

As previously announced on our [Supercharging Solus Infrastrucutre](/2018/09/08/supercharging-solus-infrastructure) blog post, we have been migrating infrastructure to a new domain and new hardware. As part of this migration, we will be changing the repository from `packages.solus-project.com`.

This package update is now available for your system(s) via the `pisi` package update, accessible via the Updates section of the Software Center or `sudo eopkg up`. This update will set a new Shannon repository as the default, singular repository on the system. If you are using the unstable repository and wish to continue doing so, you will need to perform the relevant "Unstable repo" commands listed below. If you have any other repositories added and enabled on your system, you will need to re-add those as well.

We strongly encourage you perform this upgrade **immediately**, as we can not guarantee availability of the legacy package server in the near future.

## Manually Configuring Package Repositories

In the event you are viewing this blog post after the legacy package server is no longer available, or wish to switch over to the unstable repository, you can follow the steps below.

### Stable / Shannon Repo

``` bash
sudo eopkg dr Solus
sudo eopkg rr Solus
sudo eopkg ar Solus https://mirrors.rit.edu/solus/packages/shannon/eopkg-index.xml.xz
```

### Unstable Repo

``` bash
sudo eopkg dr Solus
sudo eopkg rr Solus
sudo eopkg ar Solus https://mirrors.rit.edu/solus/packages/unstable/eopkg-index.xml.xz
```