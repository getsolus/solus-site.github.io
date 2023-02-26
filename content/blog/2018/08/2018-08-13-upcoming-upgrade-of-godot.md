---
title: "Upcoming Upgrade of Godot"
author: "joshua"
categories:
- news
- packages
- plans
date: 2018-08-13T15:11:52+03:00
featuredimage: ""
url: "/2018/08/13/upcoming-upgrade-of-godot"
---

Solus has an evergrowing community of game developers that leverage open source technologies to design, build, and ship their games. To provide the most reliable experience for a segment of these developers, we had [intentionally deferred](https://dev.solus-project.com/T5668) upgrading of [Godot](https://godotengine.org/), the widely known open source 2D and 3D cross-platform game engine, to the latest in their 3.x series. This was done to ensure more time for issues related to converting of exporting 2.x projects to 3.x to be ironed out, providing our end users the most reliable process for upgrading to the latest game engine as possible.

With the release of Godot 2.1.5 and its subsequent distribution in our repository, **we will be upgrading Godot** in our repository to the latest of the 3.x series (3.0.6 at the time of posting) **during our upcoming Friday sync**. This *should* provide our users a sufficient amount of time to research how their respective projects may be affected (if at all) and perform any necessary preparations for this upgrade (we found [this issue](https://github.com/godotengine/godot/issues/9656) to be particularly helpful).

Of course, we understand that if for any reason you wish to stay on 2.1.5 for the time being, you may use the following commands to either hold back the upgrading of godot during your normal upgrades, or re-installation of the 2.1.5 `eopkg`. Naturally, doing so for longer than absolutely necessary is not recommended, as we cannot guarantee it will remain available in our repository in the future or will remain functional against other software in the stack, and we encourage you to perform the upgrade as soon as you deem it viable.

## Commands

To exclude godot when performing an upgrade, ensure you run:

``` bash
sudo eopkg up --exclude godot
```

To install godot 2.1.5, run:

``` bash
sudo eopkg install https://packages.solus-project.com/shannon/g/godot/godot-2.1.5-13-1-x86_64.eopkg
```

Note that if you already have 3.x at the time of reading, or wish to revert to 2.1.5 for any particular reason, an uninstall of godot 3 may be necessary prior to installation of the older release.

## Support

### Godot

If you encounter any issues with the conversion of Godot 2 projects after our upgrade to Godot 3, we encourage you to reach out to the Godot community for assistance. Here are some links:

- [Godot's Discord](https://discord.gg/zH7NUgz)
- [Godot's Forums](http://godotdevelopers.org/)
- [Godot's GitHub](https://github.com/godotengine/)
- [Godot's Q&A Platform](https://godotengine.org/qa)
- IRC: `#godotengine`on irc.freenode.net
- [Matrix](https://matrix.to/#/#godotengine:matrix.org)

There is a multitude of other methods of engaging with the Godot community, all of which are available [here](https://godotengine.org/community).

### Solus

If you encounter any issues with our packaged version of Godot 3 software on or after our Friday sync, please reach our via:

- [Our dedicated task for Godot 3 issues](https://dev.solus-project.com/T6778)
- IRC: `#Solus-Dev` on irc.freenode.net