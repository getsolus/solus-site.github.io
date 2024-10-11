+++
author = "joshua"
categories = [
"News",
"TWIS"
]
date =  "2016-08-07T22:01:38Z"
title = "This Week in Solus -- Install #33"
url = "/2016/08/07/this-week-in-solus-install-33/"
+++

Welcome to the 33rd installation of This Week in Solus. 

#### Infrastructure Change

{{< relimg "Screenshot-from-2016-08-07-23-43-39.png" >}}

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

{{< relimg "Screenshot-from-2016-08-04-23-03-03.png" >}}

This week there were numerous enhancements to the Solus platform. The first example of a long-standing issue resolved was around our packaged Golang. Due to an issue with Golang having special static libraries and the method in which we strip them, 
it would cause our Golang to not work as intended. With this now being resolved, we now have a **natively compiled Go 1.6.3**.

{{< relimg "Screenshot-from-2016-08-05-00-08-55-1.png" >}}

With an optimized, natively compiled Go, we have also been enabled to **deliver Docker in our repository**. This is now available for developers and we're happy to say that our Docker is compliant with OCI (Open Container Initiative). In 
the immediate screenshot above, you can see [Clear Linux* Project for Intel Architecture](https://clearlinux.org) running via Docker 1.12.0.

{{< relimg "Screenshot-from-2016-08-05-01-51-29-1.png" >}}

But we didn't stop there. On the heels of the release of Firefox 48, we are now delivering a **natively compiled Rust 1.10.0 using our own LLVM 3.8.1**. Our Firefox is compiled against this native Rust for better performance and MP4 decoding.

{{< relimg "Screenshot-from-2016-08-04-11-37-19-1.png" >}}

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
  - cargo 0.11.0
  - font-tlwg-ttf 0.6.3
  - freedroidrpg 0.16
  - galois 0.4
  - gnome-mahjongg 3.20.0
  - godot 2.0.4.1
  - gweled 0.9.1
  - manaplus 1.6.30
  - meson 0.33.0
  - neverball 1.6.0
  - opentyrian 2.1.20130907
  - pacman 0.9
  - quadrapassel 3.20.0
  - starfighter 1.5.1.1
  - supertux 0.4.0
  - syncthing 0.14.3
  - syncthing-gtk 0.9.1
  - wesnoth 1.12.6

-  **Updated** 
  - atom 1.9.6
  - bluez 5.41
  - erlang 18.3.4.3
  - feedreader 1.6
  - firefox 48.0: Add rust as build dep for MP4 decoder, explicitly enable MOZ_RUST.
  - fotoxx 16.08
  - gnome-mpv 0.10
  - golang 1.6.3
  - libreoffice 5.2.0.4
  - mercurial 3.9
  - nginx 1.11.3
  - nodejs 6.3.1
  - obs-studio 0.15.2
  - openssh 7.3p1 and Enable PAM
  - r: Enable shared library, move docs and add check
  - racket 6.6. Dropped old component.xml, enabled static libraries.
  - retroarch: Enable Vulkan support.
  - rust: Build from source now, enable release channel.
  - telegram 0.10
  - texlive: Add support for missing TeX symlinks, remove tlmgr
  - vscode 1.4.0
