---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
categories:
- News
- Releases
date: "2015-05-17T21:46:07Z"
title: Solus Operating System Beta 2
url: /2015/05/17/solus-operating-system-beta-2/
---


The Solus Project team are pleased to announce the immediate availability of Solus Operating System Beta 2. This release is available for 64-bit systems, and 
is now available for EFI machines. 
<!--more-->
This release is the first new ISO since our project rebrand, and marks many technological changes. We've switched to HTTPS-only software repositories and implemented 
delta updates with highly compressed packages for quick, safe and bandwidth-friendly software management. Driver management is now available for NVIDIA users, and 
AMD driver management will feature in the coming weeks.

We'd like to thank the core development and artwork team, and the community at large, for the fantastic work they've put in and support they've given our project since the 
last release. There's been an awful lot of work to do since the project rename, however this has served to strengthen the project over all.

Due to time constraints and technical challenges encountered due to a full project rebrand, certain items have been deferred for the coming weeks, as opposed to the beta2 
release. Instead of rushing them we want to ensure they are fully tested and meet our quality requirements. As such, multilib support will land in the repository after this 
release, as well as partition management in the installer and VPN connection support in the OS. These features are in active development, but we feel there is no need to 
rush these components to sacrifice quality.
 
To install Solus, please select 'Install OS' from the menu. This can be activated using the Windows key, and then simply begin typing to search. We recommend a minimum 
1GB of RAM, and 10GB of disk space for a viable installation that will cover your needs. The operating system requires at least 4GB of disk space by itself, the rest is to allow 
future expansion. Please adjust as appropriate to your needs.

#### Core Changes
- Linux 4.0.3
- GNOME Stack 3.16.3
- Budgie Desktop 8.2
- Firefox 38.0.1
- UEFI support (boot and installation)
- NVIDIA proprietary driver support (346.xxx) -- users simply install 'nvidia-glx-driver' from System/X.Org Drivers in Software Center
- Switched to Solus-specific artwork, EvoPop.
- X.Org 1.17.1 + Mesa 10.5.3
- Completed rebrand.

#### Technical Changes

- All new packages developed for the Solus Operating System now use the ypkg format. Nearly 20% of our repository is now using the format.
- Switch to HTTPS-only software sources
- Buildbot based build system using efficient hardlink-centric repository management, with automatic deltas.
- Repo-wide ABI freeze in place prior to RC1 path.
- Long-standing Budgie performance and usability bugs addressed relating to X11 grab/focus cycles. Keybindings now work correctly across the board. Reduced memory footprint.
- VirtualBox and Qemu now using the modesetting driver
- 551 package repository commits: 1326 files changed, 53700 insertions(+), 34616 deletions

##### Note on Virtualization:
 
Please note that whilst virtualisation solutions such as VirtualBox or Qemu can indeed be useful for preliminary testing of Solus, they will suffer greatly degraded performance 
in comparison to a hardware install. This is because Solus is optimised for real hardware usage, and doesn't cut corners or accommodate for virtual scenarios. As such the 
desktop itself requires 3D acceleration, which has been commonplace for a long time. Whilst running Solus in a virtual environment it will rely on software (CPU) rendering, 
as such you will see high CPU usage and degraded performance. This is in no way an indicator of performance on real hardware.

##### Note on UEFI installation

As the partition management didn't land in this particular installer revision, there are certain steps you should be aware of to install Solus on a UEFI machine. Solus requires an 
EFI System Partition to be either present or created during install, and will only recognise an FAT or FAT32 partition on a GPT disk, with the 'boot' flag set, as a valid EFI System 
Partition. This can be achieved via the gparted tool, by creating a new FAT32 partition of size 512MB, and using the 'Manage flags' right click option to enable the 'boot' flag. 
After adding your system user in the installer you will be prompted for a location to install the gummiboot boot loader. You will only have the option to select an EFI System 
Partition here, and it is highly recommended you choose to install the bootloader.
 
Summarised:

- Ensure a 512MB FAT32 partition with 'boot' flag exists on GPT disk (ESP)
- Select this partition to install boot loader to in System page
- Ensure you activate the option to install the boot loader.

Solus will co-exist with other operating systems using UEFI, and will not add the boot loader to the firmware.

##### Obtaining Solus Operating System

Solus Operating System is distributed as an “ISO” file. This is a raw disc image that can either be burned to a CD or DVD, and then booted like any other system. It is also 
installable, but we caution you that this is a beta system, thus not best suited for production environments. Optical media is much slower than USB drives, as such we 
recommend you write the image to one of these instead. Solus Operating System is incompatible with unetbootin, so we would advise you to use Rufus on Windows, or 
if you are comfortable using Linux already, dd. Various solutions for Linux exist, please check with your own distribution first for their recommended method that performs 
an image write, and not a file copy/extract.

Now visit our Download page to grab your copy of Solus. We hope you enjoy, and look forward to your feedback! Use the 
community links at the top of this webpage to contact us either by IRC, or through our forums.   