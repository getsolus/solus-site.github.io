---
authors:
  - name: Joshua Strobl
    link: https://github.com/JoshStrobl
    image: https://avatars.githubusercontent.com/u/156574?v=4
tags:
- news
- twis
date: "2016-08-07T22:01:38Z"
title: 'This Week in Solus -- Install #33'
url: /2016/08/07/this-week-in-solus-install-33/
---

Welcome to the 33rd installation of This Week in Solus. 

#### Infrastructure Change

![relimg](Screenshot-from-2016-08-07-23-43-39.png)

Our development and bug tracking oriented infrastructure moved from Bugzilla to Phabricator a few days ago. Bugzilla simply didn’t offer us the flexibility we needed and has long been a bit of a sore tooth for us. Phabricator empowers us to work at a 
faster, more agile pace, with:

-  A better permission system
-  The concept of projects which can be anything from groups of people with a set of abilities on Phabricator to a tag to file bugs against, like Package Requests or Patch Submissions.
-  It has the concept of parent v.s sub-tasks, which is similar to Bugzilla “depends” but laid out in a fashion that is more generic and is presented in a clearer fashion.

So if you’d like to join up, file bugs, and enjoy the vastly prettier interface, then you can go to [https://dev.solus-project.com](https://dev.solus-project.com) and create an account or sign in with GitHub.

#### GNOME 3.20 Stack Upgrade

Ikey has finished the GNOME 3.20 stack upgrade and we're currently evaluating the latest applications and resolving pain-points around the upgrade, such as GNOME Calendar.

#### Hardware Enablement

We're currently in the process of enabling further hardware support by way of Linux 4.7. Linux 4.7 will bring a plethora of improvements, such as (but not limited to):

-  **AMD** 
  - [Adding full AMDGPU support, enhanced Radeon features, Polaris architecture support.](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=a64424d722504926f3375bc4887976e3bfe3a01d)
  - Power Play [support](https://lists.freedesktop.org/archives/dri-devel/2015-November/094230.html)
  - Radeon [DRM_MODE_PAGE_FLIP_ASYNC](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=c63dd758589b1f7e8398841d1f443f06ebfbcefc) support
-  **Intel** 
  - Skylake improvements such as proper color management (gamma control, etc) [support](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=82cf435b3134a5f892971b721b34e4c5d249363d) and 
 [SKL RAPL support](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=dcee75b3b7f025cc6765e6c92ba0a4e59a4d25f4).
-  **NVIDIA** 
  - Adding [support](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f9e2029443afc550365864abf760419371cc3bc1) for GeForce 800M
  - [Complete](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=7d12388a1f4243c2f13e0f84b251b1a4a92f79a3) support for Maxwell
-  **Miscellaneous** 
  - C720 [trackpad](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9bd9a90b013c647ed88ed4fa69b664b770924cf0) support
  - GEN3 Thunderbolt IDs [support](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1d111406c6d91f4d7f6cc69a43e59546e8010aae)
  - USB 3.1 support

#### Solus Platform Enhancements

![relimg](Screenshot-from-2016-08-04-23-03-03.png)

This week there were numerous enhancements to the Solus platform. The first example of a long-standing issue resolved was around our packaged Golang. Due to an issue with Golang having special static libraries and the method in which we strip them, 
it would cause our Golang to not work as intended. With this now being resolved, we now have a **natively compiled Go 1.6.3**.

![relimg](Screenshot-from-2016-08-05-00-08-55-1.png)

With an optimized, natively compiled Go, we have also been enabled to **deliver Docker in our repository**. This is now available for developers and we're happy to say that our Docker is compliant with OCI (Open Container Initiative). In 
the immediate screenshot above, you can see [Clear Linux* Project for Intel Architecture](https://clearlinux.org) running via Docker 1.12.0.

![relimg](Screenshot-from-2016-08-05-01-51-29-1.png)

But we didn't stop there. On the heels of the release of Firefox 48, we are now delivering a **natively compiled Rust 1.10.0 using our own LLVM 3.8.1**. Our Firefox is compiled against this native Rust for better performance and MP4 decoding.

![relimg](Screenshot-from-2016-08-04-11-37-19-1.png)

We also have Libreoffice 5.2.0.4 available for use!

We are also happy to announce that TLP will be available in **future shipped ISOs and enabled out-of-the-box**. For those unaware, TLP is a power management tool that aims to optimize battery life on laptops when 
they’re unplugged. This can range from power management for PCI-e devices to USB autosuspend, and more. By us enabling TLP out-of-the-box by default, **you can expect to see improved battery life**!

We are also now shipping thermald in the repos and will also be **enabled out-of-the-box in shipped ISOs**. Thermald monitors and controls the temperature for Intel Sandy Bridge and newer CPUs and ensures that appropriate measures 
are taken to ensure the CPU remains within appropriate operating temperature thresholds.

#### Sundays with Solus

Does anything else really need to be said? It is Sundays with Solus, it's awesome. You should watch it.

#### Community Events

There has been a multitude of community events that have happened over the past week. Firstly, I did a livestream where I worked on the upcoming, Hugo-based Solus website.

Secondly, there was a short community gaming event where we had some fun in a relaxed environment, playing some Xonotic, and took a break from all the hard work of Solus.

Thirdly, DataDrake from the community hosted a 10 hour livestream, breaking the record for the longest livestream in our community yet, where he worked on packaging a bunch of games to breathe a bit more life into our gaming 
options. He packaged up:

- Neverball and Neverputt.
- An open source pacman clone.
- Starfighter, an awesome spaceship shooter game.
- Quadrapassel, which is a tetris game.
- Gnome Mahjongg, also referred in this context as solitaire mahjongg, a solitaire matching game based on mahjongg tiles.
- Galois, which offers a Tetris like game with the choice of different geometric shapes like triangles as well as a pretty trippy 2D game.
- Godot, a game engine and game development environment.
- Manaplus, which is a quirky RPG-style MMO game.
- And Supertux which is lends itself to being a free classic 2D jump'n run sidescroller game in a style similar to the original Super Mario games.

#### Package Highlights

Here is a highlight of package updates and inclusions that have occurred, excluding GNOME Stack Updates:

-  **New** 
  - [cargo 0.11.0](https://git.solus-project.com/packages/cargo/commit/?id=aae5afbb4d837279a2733a172f6f4b8a95d0cf34)
  - [font-tlwg-ttf 0.6.3](https://git.solus-project.com/packages/font-tlwg-ttf/commit/?id=a0bd0b8d7da317faa73e4b78a9a782f50562d820)
  - [freedroidrpg 0.16](https://git.solus-project.com/packages/freedroidrpg/commit/?id=7aa9b9c42bbd03326453e32de2a7e505d0dd5b59)
  - [galois 0.4](https://git.solus-project.com/packages/galois/commit/?id=70c626b599bb13e315a8bee6eec0a7de0212c6fb)
  - [gnome-mahjongg 3.20.0](https://git.solus-project.com/packages/gnome-mahjongg/commit/?id=31f230cce0d85fa1c8c830c325e7effac9aea17c)
  - [godot 2.0.4.1](https://git.solus-project.com/packages/godot/commit/?id=894edc3b6c1ae41bc1a7870503a6c1ac01a49430)
  - [gweled 0.9.1](https://git.solus-project.com/packages/gweled/commit/?id=7d527ccab49f9cc34ea55e0d2f2d6086477b762d)
  - [manaplus 1.6.30](https://git.solus-project.com/packages/manaplus/commit/?id=594c70a69fcd834e53ec43f04bf98d2261450b8d)
  - [meson 0.33.0](https://git.solus-project.com/packages/meson/commit/?id=250d8a63fe4221ddd5dc633b0fa429936b473510)
  - [neverball 1.6.0](https://git.solus-project.com/packages/neverball/commit/?id=ee62bf1b73d5a51e64b87f9b8aa63e02e17785fe)
  - [opentyrian 2.1.20130907](https://git.solus-project.com/packages/opentyrian/commit/?id=520c0ed8eeb2de8b5e1e007debb3310ac6e562bb)
  - [pacman 0.9](https://git.solus-project.com/packages/pacman/commit/?id=2fbdae8770e7fb476b8cfe6fedf21518df852e3f)
  - [quadrapassel 3.20.0](https://git.solus-project.com/packages/quadrapassel/commit/?id=830de9e44efe67f104c296f48694fbc923bd0dcf)
  - [starfighter 1.5.1.1](https://git.solus-project.com/packages/starfighter/commit/?id=e67d7fae5e5369ea68806f2508807d8cf5878a5e)
  - [supertux 0.4.0](https://git.solus-project.com/packages/supertux/commit/?id=da9799132bb1fe419dbff64b67831691aed9d270)
  - [syncthing 0.14.3](https://git.solus-project.com/packages/syncthing/commit/?id=09eba6efefa4497542fd6334d7d553836c9802a4)
  - [syncthing-gtk 0.9.1](https://git.solus-project.com/packages/syncthing-gtk/commit/?id=9921da53ae057f9b7bab4d6ddcf48a05aee1d808)
  - [wesnoth 1.12.6](https://git.solus-project.com/packages/wesnoth/commit/?id=cb6eadac15171144c29a38f06f0d8756407157b5)

-  **Updated** 
  - [atom 1.9.6](https://git.solus-project.com/packages/atom/commit/?id=54a8b0bc4bc962f6711957199186a2d49e7d6987)
  - [bluez 5.41](https://git.solus-project.com/packages/bluez/commit/?id=db1a8de566dcf9a447c9fbe4ba0cfc7b611c63d2)
  - [erlang 18.3.4.3](https://git.solus-project.com/packages/erlang/commit/?id=fc4bdd41395989cdb10c0c251fe94296d87c035f)
  - [feedreader 1.6](https://git.solus-project.com/packages/feedreader/commit/?id=929fd9587fd48a710a83babab0efdbcd47ab905f)
  - [firefox 48.0: Add rust as build dep for MP4 decoder, explicitly enable MOZ_RUST.](https://git.solus-project.com/packages/firefox/commit/?id=84de4354c7fa8f26baacb5d6309a963bf49cea67)
  - [fotoxx 16.08](https://git.solus-project.com/packages/fotoxx/commit/?id=ec8a83e170d3972886735a7e16d1a4c8f99cf071)
  - [gnome-mpv 0.10](https://git.solus-project.com/packages/gnome-mpv/commit/?id=16db387c71874f58aadbad157b02afb2ace88987)
  - [golang 1.6.3](https://git.solus-project.com/packages/golang/commit/?id=fbf692013b4a958650cead95610f62963719029d)
  - [libreoffice 5.2.0.4](https://git.solus-project.com/packages/libreoffice/commit/?id=e87352b51e99411f91b19fb212d7a4f118abc6af)
  - [mercurial 3.9](https://git.solus-project.com/packages/mercurial/commit/?id=b6e780e65b1fa95f3e7d9a3de447db91ead5f5ce)
  - [nginx 1.11.3](https://git.solus-project.com/packages/nginx/commit/?id=a07b000247a4a9231a4616bc05b6afce19f39589)
  - [nodejs 6.3.1](https://git.solus-project.com/packages/nodejs/commit/?id=6d148457bb270b8fa9683412ba0a496b865dd0b4)
  - [obs-studio 0.15.2](https://git.solus-project.com/packages/obs-studio/commit/?id=2682909ba3283504ff41ba96eda8cca420f38bb0)
  - [openssh 7.3p1 and Enable PAM](https://git.solus-project.com/packages/openssh/commit/?id=dc02fef57044735c03869d7b2623c8f7dd606031)
  - [r: Enable shared library, move docs and add check](https://git.solus-project.com/packages/r/commit/?id=2d433bb63f5152b35a0fd95b14c741e93be1ce8e)
  - [racket 6.6. Dropped old component.xml, enabled static libraries.](https://git.solus-project.com/packages/racket/commit/?id=45c515983d1e4597308e72ed35cafb52d1cf39d0)
  - [retroarch: Enable Vulkan support.](https://git.solus-project.com/packages/retroarch/commit/?id=d1f74ebdff98ec9056f9801de48a9c0ab20d4cdd)
  - [rust: Build from source now, enable release channel.](https://git.solus-project.com/packages/rust/commit/?id=b3fe6e60586455d1958e14841352f5eb06bd9d97)
  - [telegram 0.10](https://git.solus-project.com/packages/telegram/commit/?id=2bb395dd5bdc7ec772f4006677fa07aca4ccf539)
  - [texlive: Add support for missing TeX symlinks, remove tlmgr](https://git.solus-project.com/packages/texlive/commit/?id=379f8535464db782a4d0a2877a639de4fbf7685f)
  - [vscode 1.4.0](https://git.solus-project.com/packages/vscode/commit/?id=82798d81630f66b07da383dc0b7edd77c7deea95)
