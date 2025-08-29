+++
author = "joshua"
categories = [
"News",
"Releases"
]
date =  "2015-10-29T19:34:37Z"
title = "Announcing 1.0 Release Candidate 1"
url = "/2015/10/29/announcing-1-0-release-candidate-1/"
+++ 
The Solus Project is happy to announce the availability of the **first** release candidate of the Solus operating system.

We would like to thank all of our community members for helping make this release possible. Together we have discovered and resolved a plethora of bugs, improved software, and ensured that the user experience under Solus is better 
than it has ever been before.

### Budgie

Budgie has been updated to improve stability and is a stability and maintenance update prior to the landing of the new Budgie rewrite and Raven (our notification center), landing in a future update.

### DoFlicky

DoFlicky, the new driver management tool of Solus, is now available for testing as of this release candidate. DoFlicky will be accompanied by installable drivers for:

- broadcom-sta      
- NVIDIA 304, 340xx, 352

This Release Candidate will enable us to receive feedback, thoroughly test the driver installation and help provide a better driver experience for end users. With our driver management software landing, we will integrate 32-bit / multilib support after 
ensuring there are no further issues with DoFlicky.

Due to the [quality of the proprietary AMD drivers](https://plus.google.com/u/0/+Solus-Project/posts/MJHYa77cQLe) (fglrx), we will not be providing them at this moment in time. We will provide them as an update after RC1.

### Firefox Theming

{{< relimg "Screenshot-from-2015-10-27-01-20-35.png" >}}

The default theme for Firefox has been changed to [Arc Firefox Darker theme](https://github.com/horst3180/arc-firefox-theme) to provide a consistent user experience and design throughout Solus. This is a stunning theme that compliments the 
usage of the default GTK theme, [Arc Darker](https://github.com/horst3180/Arc-theme. The other Arc Firefox theme variants are available from the Appearance section of Firefox.

### Download

#### Obtaining Release Candidate 1

You may download the ISO by going [here](https://solus-project.com/1-0-rc1/).

##### Note on Virtualization

Please note that whilst visualization solutions such as VirtualBox or Qemu can indeed be useful for preliminary testing of Solus, they will suffer greatly degraded performance in comparison to a hardware install. This is because Solus is optimized 
for real hardware usage, and doesn’t cut corners or accommodate for virtual scenarios. As such the desktop itself requires 3D acceleration, which has been commonplace for a long time. Whilst running Solus in a virtual environment it will rely on 
software (CPU) rendering, as such you will see high CPU usage and degraded performance. This is in no way an indicator of performance on real hardware.

##### Note on UEFI installation

As the partition management didn’t land in this particular installer revision, there are certain steps you should be aware of to install Solus on a UEFI machine. Solus requires an EFI System Partition to be either present or created during install, and will only 
recognize an FAT or FAT32 partition on a GPT disk, with the ‘boot’ flag set, as a valid EFI System Partition.

This can be achieved via the gparted tool, by creating a new FAT32 partition of size 512MB, and using the ‘Manage flags’ right click option to enable the ‘boot’ flag. After adding your system user in the installer you will be prompted for a location to install 
the gummiboot boot loader. You will only have the option to select an EFI System Partition here, and it is highly recommended you choose to install the bootloader.

Summarised:
- Ensure a 512MB FAT32 partition with ‘boot’ flag exists on GPT disk (ESP)
- Select this partition to install boot loader to in System page
- Ensure you activate the option to install the boot loader.

Solus will co-exist with other operating systems using UEFI, and will not add the boot loader to the firmware.

### Changelog Since Beta2

#### Packages added to this release:

- arc-firefox-theme
- avahi
- bluez
- cheese
- clutter-gst-2.0
- cups-pk-helper
- dhclient
- doflicky
- faba-icon-theme
- faba-icon-theme-mono
- font-symbola-ttf
- gd
- glib-networking
- gnome-bluetooth
- gnome-video-effects
- hyphen
- iproute2
- iptables
- libcddb
- libcdio
- libcdio-paranoia
- libdaemon
- libgphoto2
- libical
- libmtp
- libproxy
- lz4
- mesalib-demos
- moka-icon-theme
- networkmanager-openconnect
- nvidia-304-glx-driver-modaliases
- nvidia-340-glx-driver-modaliases
- nvidia-glx-driver-modaliases
- openconnect
- pinentry
- samba
- sbc
- unrar
- vpn

##### Packages removed from this release:

- dcron
- dhcpcd
- evoassist
- flash-player-nonfree
- gconf
- gnome-app-templates
- libgnome-keyring

##### Changes in this release:

**colord**

- [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/colord/commit/?id=77e9ec4)

**python-urlgrabber**

- [Ikey Doherty: Update to 3.10.1 for yum to work](https://git.solus-project.com/packages/python-urlgrabber/commit/?id=cb2e1fb)

**evince**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/evince/commit/?id=9828e9a)
-  [Ikey Doherty: Build with clang](https://git.solus-project.com/packages/evince/commit/?id=5f4f350)
-  [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/evince/commit/?id=9f2f5c9)
-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/evince/commit/?id=3896eb8)

**gnome-system-monitor**

-  [Ikey Doherty: Convert to ypkg to stop use of /usr/libexec](https://git.solus-project.com/packages/gnome-system-monitor/commit/?id=2a456f6)

**findutils**
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/findutils/commit/?id=c0c0a4f)

**firefox**

-  [Ikey Doherty: Use unversioned directory to fix extension issue](https://git.solus-project.com/packages/firefox/commit/?id=2d024b0)
-  [Ikey Doherty: Install default preferences and compat link for theming,etc](https://git.solus-project.com/packages/firefox/commit/?id=b85ada2)
-  [Ikey Doherty: Update to 41.0.2 to address security issues](https://git.solus-project.com/packages/firefox/commit/?id=46cbc9e)
-  [Ikey Doherty: Force-build with clang to fix gcc specific link issue](https://git.solus-project.com/packages/firefox/commit/?id=638b5fc)
-  [Ikey Doherty: Disable skia to avoid gtk3 related crashes](https://git.solus-project.com/packages/firefox/commit/?id=5933403)
-  [Justin Zobel: Update to 41.0.1](https://git.solus-project.com/packages/firefox/commit/?id=1f8cb43)
-  [Justin Zobel: Update to 41.0](https://git.solus-project.com/packages/firefox/commit/?id=aa4886b)
-  [Justin Zobel: Update to 40.0.3](https://git.solus-project.com/packages/firefox/commit/?id=186ff20)
-  [Ikey Doherty: Rebuild with GCC 5](https://git.solus-project.com/packages/firefox/commit/?id=a9f5ca7)
-  [Ikey Doherty: Update to 40.0.2](https://git.solus-project.com/packages/firefox/commit/?id=0f103f7)
-  [Ikey Doherty: Update to 40.0.1](https://git.solus-project.com/packages/firefox/commit/?id=432183f)
-  [Ikey Doherty: Update to latest upstream stable version (40.0)](https://git.solus-project.com/packages/firefox/commit/?id=a239b5a)
-  [Ikey Doherty: Updae to 39.0.3](https://git.solus-project.com/packages/firefox/commit/?id=ba0ea22)
-  [Ikey Doherty: Fix LD_AS_NEEDED issue](https://git.solus-project.com/packages/firefox/commit/?id=fdda735)
-  [Ikey Doherty: Convert to ypkg and build with clang](https://git.solus-project.com/packages/firefox/commit/?id=b1f9027)
-  [Ikey Doherty: Update to 39.0](https://git.solus-project.com/packages/firefox/commit/?id=0fb3ac2)

**gdbm**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gdbm/commit/?id=fc30ef1)

**systemd**

-  [Ikey Doherty: Attempt to fix comar bork](https://git.solus-project.com/packages/systemd/commit/?id=10fd391)
-  [Ikey Doherty: Fix problem with lib64 paths for sysusers](https://git.solus-project.com/packages/systemd/commit/?id=a2c58c2)
-  [Ikey Doherty: Enable tmpfile and sysusers handling](https://git.solus-project.com/packages/systemd/commit/?id=7076f2b)
-  [Ikey Doherty: Bump for build](https://git.solus-project.com/packages/systemd/commit/?id=09a5ea7)
-  [Ikey Doherty: Fix segfault in bootchart when sample number is lower than expected](https://git.solus-project.com/packages/systemd/commit/?id=8a707b2)

**lightdm-gtk-greeter**

-  [Ikey Doherty: Update default branding](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=4297ad1)
-  [Ikey Doherty: Change default wallpaper](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=94afb55)
-  [Ikey Doherty: Back to SolusFresh wallpaper](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=65e7377)
-  [Ikey Doherty: Switch to Faba Mono](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=19dfb5a)
-  [Ikey Doherty: Switch to Arc-Darker](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=91d7feb)
-  [Ikey Doherty: Update to 2.0.1](https://git.solus-project.com/packages/lightdm-gtk-greeter/commit/?id=3b2ea75)

**fontconfig**

-  [Ikey Doherty: Sync patches](https://git.solus-project.com/packages/fontconfig/commit/?id=0fd2cf3)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/fontconfig/commit/?id=64d5b50)
-  [Ikey Doherty: Bump and clean rebuild](https://git.solus-project.com/packages/fontconfig/commit/?id=a6c2705)
-  [Ikey Doherty: Split package](https://git.solus-project.com/packages/fontconfig/commit/?id=839f9f7)
-  [Ikey Doherty: Update to 2.11.94](https://git.solus-project.com/packages/fontconfig/commit/?id=24f5525)

**gdk-pixbuf**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=df1f671)
-  [Ikey Doherty: Rebuild for dbginfo](https://git.solus-project.com/packages/gdk-pixbuf/commit/?id=b403915)

**solus-artwork**

-  [Ikey Doherty: Update to v6 to trial DeepBlue II artwork](https://git.solus-project.com/packages/solus-artwork/commit/?id=0c7ca8c)
-  [Ikey Doherty: Release v5 of solus-artwork](https://git.solus-project.com/packages/solus-artwork/commit/?id=084d0cc)
-  [Ikey Doherty: Add missing moka-icon-theme dep](https://git.solus-project.com/packages/solus-artwork/commit/?id=f16c00b)
-  [Ikey Doherty: Add dep on Faba Mono icon theme](https://git.solus-project.com/packages/solus-artwork/commit/?id=e9746ee)
-  [Ikey Doherty: Undelete chalk wallpaper (fixes previous mistake)](https://git.solus-project.com/packages/solus-artwork/commit/?id=e16fb0c)

**baselayout**

-  [Ikey Doherty: Update for release of 1.0](https://git.solus-project.com/packages/baselayout/commit/?id=9928961)
-  [Ikey Doherty: Fix lib64 paths in ld.so.conf](https://git.solus-project.com/packages/baselayout/commit/?id=0b3b101)
-  [Ikey Doherty: Use new etc/profile location, somewhat anti-stateless right now](https://git.solus-project.com/packages/baselayout/commit/?id=7c45701)

**unzip**

-  [Joshua Strobl: Converted to package.yml](https://git.solus-project.com/packages/unzip/commit/?id=0979532)

**python**

-  [Ikey Doherty: Rebuild for current gcc](https://git.solus-project.com/packages/python/commit/?id=8c34723)

**python-dbus**

-  [Joshua Strobl: Bumped python(3) dbus to be compatible with build of python-3.4](https://git.solus-project.com/packages/python-dbus/commit/?id=0b9907f)

**cpio**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cpio/commit/?id=d7022a6)

**bash-completion**

-  [Justin: bash-completion: convert to yml](https://git.solus-project.com/packages/bash-completion/commit/?id=bce5674)

**gtk3**

-  [Ikey Doherty: Rebuild against newest CUPS, update to 3.16.7](https://git.solus-project.com/packages/gtk3/commit/?id=eef59fa)
-  [Ikey Doherty: Update to 3.16.6](https://git.solus-project.com/packages/gtk3/commit/?id=0cdf817)
-  [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/gtk3/commit/?id=f143229)
-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/gtk3/commit/?id=5ad4720)
-  [Ikey Doherty: Update to 3.16.5](https://git.solus-project.com/packages/gtk3/commit/?id=f1d7cc0)

**libimobiledevice**

-  [Joshua Strobl: Rebuild libimobiledevice against openssl rev. and eliminate libsplit.](https://git.solus-project.com/packages/libimobiledevice/commit/?id=ef8e417)

**os-installer**

-  [Ikey Doherty: Include an override to stick launcher on the panel by default](https://git.solus-project.com/packages/os-installer/commit/?id=7849060)
-  [Ikey Doherty: Fix brand](https://git.solus-project.com/packages/os-installer/commit/?id=01b22e1)
-  [Ikey Doherty: Sync new lightdm (1.15.0) config](https://git.solus-project.com/packages/os-installer/commit/?id=c0bcaf6)

**libdrm**

-  [Ikey Doherty: Update to 2.4.65 for new mesa](https://git.solus-project.com/packages/libdrm/commit/?id=57ead1c)

**xorg-driver-video-intel**

-  [Ikey Doherty: Re-enable DRI3](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=3aeaabf)
-  [Ikey Doherty: Disable full relro -- and update again, unbreaking the driver.](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=aa3dcc8)
-  [Ikey Doherty: Bump for rebuild old version](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=a3f030a)
-  [Ikey Doherty: Revert "Update to 23986f0a31dbdec2e2086ca898bee43842ab73d4 -- solving more SNA issues"](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=017f128)
-  [Ikey Doherty: Update to 23986f0a31dbdec2e2086ca898bee43842ab73d4 -- solving more SNA issues](https://git.solus-project.com/packages/xorg-driver-video-intel/commit/?id=e2b0202)

**util-linux**

-  [Ikey Doherty: Ensure package is consistent with pre-conversion state](https://git.solus-project.com/packages/util-linux/commit/?id=f5c5e9d)
-  [Ikey Doherty: Switch to /usr/lib64](https://git.solus-project.com/packages/util-linux/commit/?id=862651e)

**db5**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/db5/commit/?id=e43a719)

**python3**

-  [Ikey Doherty: Enable sqlite3 support, fix license](https://git.solus-project.com/packages/python3/commit/?id=86c7520)

**freetype2**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/freetype2/commit/?id=357940d)
-  [Ikey Doherty: Split devel files into subpackage](https://git.solus-project.com/packages/freetype2/commit/?id=dd22e67)

**xorg-server**

-  [Ikey Doherty: Unbreak modesetting driver](https://git.solus-project.com/packages/xorg-server/commit/?id=f245e21)
-  [Ikey Doherty: Rebuild against newer components](https://git.solus-project.com/packages/xorg-server/commit/?id=c872742)
-  [Ikey Doherty: Enable systemd integration](https://git.solus-project.com/packages/xorg-server/commit/?id=ffd4e6c)

**dbus**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dbus/commit/?id=9206d79)

**pam**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/pam/commit/?id=a2b55ab)
-  [Ikey Doherty: Convert to ypkg, use /usr/lib64 now (retain /lib/security for compat)](https://git.solus-project.com/packages/pam/commit/?id=1d512ae)

**gnome-control-center**

-  [Ikey Doherty: Add cups-pk-helper runtime dep to ensure printing works correctly](https://git.solus-project.com/packages/gnome-control-center/commit/?id=6eb59fd)
-  [Ikey Doherty: Rebuild against newer cups, enable cheese webcam support for user panel](https://git.solus-project.com/packages/gnome-control-center/commit/?id=f279b1f)
-  [Justin Zobel: Rebuild with bluetooth support](https://git.solus-project.com/packages/gnome-control-center/commit/?id=f3c661f)
-  [Justin Zobel: Update to 3.16.3](https://git.solus-project.com/packages/gnome-control-center/commit/?id=986279a)
-  [Ikey Doherty: Enable printer panel via smbclient dep](https://git.solus-project.com/packages/gnome-control-center/commit/?id=27e1b3d)
-  [Ikey Doherty: Online accounts require glib-networking for SSL usage](https://git.solus-project.com/packages/gnome-control-center/commit/?id=fabc090)

**cogl**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cogl/commit/?id=be01438)

**enchant**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/enchant/commit/?id=ab9d193)

**acl**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/acl/commit/?id=b7665c1)
-  [Ikey Doherty: Fix license and autodep](https://git.solus-project.com/packages/acl/commit/?id=980513c)
-  [Ikey Doherty: Convert to ypkg, move to /usr/lib64](https://git.solus-project.com/packages/acl/commit/?id=5cc133d)

**kernel**

-  [Ikey Doherty: Update to 4.1.11 kernel, dropping integrated patches](https://git.solus-project.com/packages/kernel/commit/?id=b2203d7)
-  [Ikey Doherty: Address multiple CVEs](https://git.solus-project.com/packages/kernel/commit/?id=88e0b51)
-  [Ikey Doherty: Address CVE-2015-5257](https://git.solus-project.com/packages/kernel/commit/?id=9997c75)
-  [Ikey Doherty: Switch SLAB to SLUB, kill floppy driver with fire](https://git.solus-project.com/packages/kernel/commit/?id=10a8e5b)
-  [Ikey Doherty: Update to latest LTS release, 4.1.10](https://git.solus-project.com/packages/kernel/commit/?id=4262550)
-  [Ikey Doherty: Update to latest LTS, 4.1.8](https://git.solus-project.com/packages/kernel/commit/?id=4e5aac9)
-  [Justin Zobel: Bump relno](https://git.solus-project.com/packages/kernel/commit/?id=4165dc3)
-  [Justin Zobel: Updated actions.py for 4.1.7](https://git.solus-project.com/packages/kernel/commit/?id=76d3849)
-  [Justin Zobel: Bump](https://git.solus-project.com/packages/kernel/commit/?id=1f22818)
-  [Justin Zobel: Removed .config](https://git.solus-project.com/packages/kernel/commit/?id=ce499d1)
-  [Justin Zobel: Update to 4.1.7](https://git.solus-project.com/packages/kernel/commit/?id=f29bf37)
-  [Ikey Doherty: Build-in more disk-related modules so we can begin deprecation of initrd](https://git.solus-project.com/packages/kernel/commit/?id=0ecb481)
-  [Ikey Doherty: Rebuild against newer GCC, enable F2FS](https://git.solus-project.com/packages/kernel/commit/?id=067d4ee)
-  [Ikey Doherty: Update to latest LTS release, 4.1.6](https://git.solus-project.com/packages/kernel/commit/?id=4938c03)
-  [Ikey Doherty: Update to latest stable LTS version (4.1.5)](https://git.solus-project.com/packages/kernel/commit/?id=5c56d80)
-  [Ikey Doherty: Address CVE-2015-5697](https://git.solus-project.com/packages/kernel/commit/?id=7776c84)
-  [Ikey Doherty: Fix booboo with patches](https://git.solus-project.com/packages/kernel/commit/?id=523cb08)
-  [Ikey Doherty: Enable and default to BFQ](https://git.solus-project.com/packages/kernel/commit/?id=f44fd26)
-  [Ikey Doherty: More HID enabling (I2C)](https://git.solus-project.com/packages/kernel/commit/?id=00f95e2)
-  [Ikey Doherty: Further enabling, this time, the touchpad.](https://git.solus-project.com/packages/kernel/commit/?id=71ca515)
-  [Ikey Doherty: Hardware enabling for Acer ASPIRE R13-R7-371T-55Q1](https://git.solus-project.com/packages/kernel/commit/?id=e4c62be)
-  [Ikey Doherty: Enable docker to run correctly](https://git.solus-project.com/packages/kernel/commit/?id=3f21b60)
-  [Ikey Doherty: Update to latest upstream LTS version](https://git.solus-project.com/packages/kernel/commit/?id=7e3668a)
-  [Ikey Doherty: Rebuild to get updated .. downgrade.](https://git.solus-project.com/packages/kernel/commit/?id=50e59a7)
-  [Ikey Doherty: Revert "Build modules needed for rootfs into kernel"](https://git.solus-project.com/packages/kernel/commit/?id=cc7c19a)
-  [Ikey Doherty: Build modules needed for rootfs into kernel](https://git.solus-project.com/packages/kernel/commit/?id=fd16e66)
-  [Ikey Doherty: Address CVE-2015-4692](https://git.solus-project.com/packages/kernel/commit/?id=c32f841)
-  [Ikey Doherty: Update to 4.1.3](https://git.solus-project.com/packages/kernel/commit/?id=b2c1357)
-  [Ikey Doherty: Enable thin provisioning and virtio input for virtualisation use cases](https://git.solus-project.com/packages/kernel/commit/?id=7f91921)
-  [Ikey Doherty: Enable netfilter NAT/masq support](https://git.solus-project.com/packages/kernel/commit/?id=fe47cb0)
-  [Ikey Doherty: Enable CONFIG_ATH9K_HTC (Atheros AR9271), bug 22](https://git.solus-project.com/packages/kernel/commit/?id=9cc7c1c)
-  [Ikey Doherty: Update to 4.1.2, latest LTS release](https://git.solus-project.com/packages/kernel/commit/?id=d63a213)
-  [Ikey Doherty: Enable MMC/memorystick options for newly enabled realtek module](https://git.solus-project.com/packages/kernel/commit/?id=c6683e8)
-  [Ikey Doherty: Enable Realtek PCI-E card reader (specifically rts5209)](https://git.solus-project.com/packages/kernel/commit/?id=3814bfe)

**cairo**

-  [Ikey Doherty: Disable clang](https://git.solus-project.com/packages/cairo/commit/?id=695bba4)
-  [Ikey Doherty: Various fixes to ensure evince does not crash (bug 42)](https://git.solus-project.com/packages/cairo/commit/?id=0857f67)
-  [Ikey Doherty: Minor tweaks](https://git.solus-project.com/packages/cairo/commit/?id=f5a055e)
-  [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/cairo/commit/?id=773bed1)
-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/cairo/commit/?id=ac9f9f7)
-  [Ikey Doherty: Fix issue with relno](https://git.solus-project.com/packages/cairo/commit/?id=0d4d122)
-  [Ikey Doherty: Force a runtime dep on -devel for freetype2](https://git.solus-project.com/packages/cairo/commit/?id=19015ae)

**xdg-user-dirs-gtk**

-  [Ikey Doherty: Add explicit runtime dep on xdg-user-dirs](https://git.solus-project.com/packages/xdg-user-dirs-gtk/commit/?id=22ef5bf)
-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/xdg-user-dirs-gtk/commit/?id=2560845)

**gst-plugins-ugly**

-  [Joshua Strobl: Update ugly to utilize libcdio for CD support.](https://git.solus-project.com/packages/gst-plugins-ugly/commit/?id=c1f3360)

**faac**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/faac/commit/?id=c6796d2)

**kmod**

-  [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/kmod/commit/?id=49d8310)

**pisi**

-  [Ikey Doherty: Implement proper build-info based dbginfo](https://git.solus-project.com/packages/pisi/commit/?id=ac8bfcf)
-  [Ikey Doherty: Enable -fstack-protecter-strong](https://git.solus-project.com/packages/pisi/commit/?id=f077a77)
-  [Ikey Doherty: Introduce hardened compiler flags and go full relro by default](https://git.solus-project.com/packages/pisi/commit/?id=7a9e09c)
-  [Ikey Doherty: Implement toolchain changes](https://git.solus-project.com/packages/pisi/commit/?id=6fa0ddd)
-  [Ikey Doherty: Enforce LD_AS_NEEDED by default](https://git.solus-project.com/packages/pisi/commit/?id=50e17aa)
-  [Ikey Doherty: Force dbginfo packages to use debug component](https://git.solus-project.com/packages/pisi/commit/?id=0c18310)

**nano**

-  [Ikey Doherty: Rebuild for GCC 5.2.0](https://git.solus-project.com/packages/nano/commit/?id=1254b18)
-  [Ikey Doherty: Canary build for glibc-2.22](https://git.solus-project.com/packages/nano/commit/?id=1f60bd4)
-  [Ikey Doherty: Bump for service test](https://git.solus-project.com/packages/nano/commit/?id=c825b48)
-  [Ikey Doherty: Canary #2: Ensure server handles update+build process](https://git.solus-project.com/packages/nano/commit/?id=ed51f5d)
-  [Ikey Doherty: Canary build for server](https://git.solus-project.com/packages/nano/commit/?id=93d8f2d)
-  [Ikey Doherty: Resolve /usr/share/doc conflicts](https://git.solus-project.com/packages/nano/commit/?id=6cf7331)
-  [Ikey Doherty: Canary build for delta changes](https://git.solus-project.com/packages/nano/commit/?id=07f6f28)
-  [Ikey Doherty: Update to 2.4.2](https://git.solus-project.com/packages/nano/commit/?id=99c0609)
-  [Ikey Doherty: Convert to ypkg](https://git.solus-project.com/packages/nano/commit/?id=13f3dbd)
-  [Ikey Doherty: Rebuild now with proper cflags on remote server](https://git.solus-project.com/packages/nano/commit/?id=2a5d108)
-  [Ikey Doherty: Canary test 2](https://git.solus-project.com/packages/nano/commit/?id=53bb667)
-  [Ikey Doherty: Canary build for the server test](https://git.solus-project.com/packages/nano/commit/?id=1483340)
-  [Ikey Doherty: Canary test (glibc changes)](https://git.solus-project.com/packages/nano/commit/?id=57597c4)

**librest**

-  [Justin Zobel: Update to 0.7.93 and yml](https://git.solus-project.com/packages/librest/commit/?id=dea95ae)

**elfutils**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/elfutils/commit/?id=4bbb502)

**bc**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/bc/commit/?id=be55868)

**gnome-settings-daemon**

-  [Ikey Doherty: Switch to 'slight' aliasing (way better)](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=ac52dd5)
-  [Ikey Doherty: Ensure patches are actually applied..](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=adaa2b9)
-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=621341d)
-  [Ikey Doherty: Update to 3.16.2, switch to ypkg](https://git.solus-project.com/packages/gnome-settings-daemon/commit/?id=d6c8a23)

**poppler**

-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/poppler/commit/?id=51ebef7)
-  [Ikey Doherty: Update to 0.34.0](https://git.solus-project.com/packages/poppler/commit/?id=1da2503)

**libgtop**

-  [Justin Zobel: Convert to yml](https://git.solus-project.com/packages/libgtop/commit/?id=87cc98d)

**gnome-terminal**

-  [Ikey Doherty: Hide menubar by default, make scrollbar automatic](https://git.solus-project.com/packages/gnome-terminal/commit/?id=2f399ae)
-  [Ikey Doherty: Set defaults (11% transparency, size 10 font)](https://git.solus-project.com/packages/gnome-terminal/commit/?id=a3fcc18)
-  [Ikey Doherty: Disable GConf usage, fix libexecdir](https://git.solus-project.com/packages/gnome-terminal/commit/?id=97d3291)

**libcap2**

-  [Ikey Doherty: Bump for rebuild](https://git.solus-project.com/packages/libcap2/commit/?id=31a73ae)
-  [Ikey Doherty: Split devel files into subpackage](https://git.solus-project.com/packages/libcap2/commit/?id=c749d63)

**gawk**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gawk/commit/?id=bff88eb)

**font-clear-sans-ttf**

-  [Ikey Doherty: Add appdata metainfo](https://git.solus-project.com/packages/font-clear-sans-ttf/commit/?id=2b206a7)

**dconf-editor**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dconf-editor/commit/?id=592769c)

**bash**

-  [Ikey Doherty: Update to 4.3.042](https://git.solus-project.com/packages/bash/commit/?id=8f29c56)
-  [Ikey Doherty: Second canary build for delta changes](https://git.solus-project.com/packages/bash/commit/?id=73202ac)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/bash/commit/?id=eeda529)
-  [Ikey Doherty: Ensure we escape prompt to fix linewrap bug in bash](https://git.solus-project.com/packages/bash/commit/?id=0311b04)
-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/bash/commit/?id=d59a8d9)
-  [Ikey Doherty: Enhance bash's default PS1](https://git.solus-project.com/packages/bash/commit/?id=6c2aa24)

**seahorse**

-  [Joshua Strobl: Convert to yml format. Rev to rebuild against updated gnupg.](https://git.solus-project.com/packages/seahorse/commit/?id=ca8d012)

**openssh**

-  [Ikey Doherty: Address CVE-2015-5600](https://git.solus-project.com/packages/openssh/commit/?id=d17ad78)

**webkitgtk**

-  [Justin Zobel: Added hyphen dep](https://git.solus-project.com/packages/webkitgtk/commit/?id=eb2a3c8)
-  [Justin Zobel: Update to 2.10.0](https://git.solus-project.com/packages/webkitgtk/commit/?id=ac29e30)
-  [Ikey Doherty: Update to latest stable upstream version, addressing multiple security issues](https://git.solus-project.com/packages/webkitgtk/commit/?id=4a2c5d3)

**openssl**

-  [Ikey Doherty: Update to 1.0.2d, integrate Clear Linux patches to deprecate insecure ciphers](https://git.solus-project.com/packages/openssl/commit/?id=295bd17)
-  [Ikey Doherty: Address CVE-2015-1793](https://git.solus-project.com/packages/openssl/commit/?id=42f7656)

**libarchive**

-  [Ikey Doherty: Another bump bites the dust](https://git.solus-project.com/packages/libarchive/commit/?id=8199890)
-  [Ikey Doherty: Fine-grained control of libarchive placement](https://git.solus-project.com/packages/libarchive/commit/?id=9801902)

**accountsservice**

-  [Justin Zobel: Bump for addition of lightdom auto login patch](https://git.solus-project.com/packages/accountsservice/commit/?id=fa37b24)

**glib2**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/glib2/commit/?id=d748241)
-  [Ikey Doherty: Update to 2.44.1](https://git.solus-project.com/packages/glib2/commit/?id=b656132)
-  [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/glib2/commit/?id=966f6fc)
-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/glib2/commit/?id=c65e441)
-  [Ikey Doherty: Support stateless XDG config directory](https://git.solus-project.com/packages/glib2/commit/?id=d6900a6)

**libplist**

-  [Joshua Strobl: Rebuild libplist against clang.](https://git.solus-project.com/packages/libplist/commit/?id=b3ebe97)

**mesalib**

-  [Ikey Doherty: Update to 11.0.4](https://git.solus-project.com/packages/mesalib/commit/?id=f54aaf2)
-  [Ikey Doherty: Update to 11.0.3](https://git.solus-project.com/packages/mesalib/commit/?id=466e6a0)
-  [Ikey Doherty: Rebuild against latest llvm](https://git.solus-project.com/packages/mesalib/commit/?id=dbc1d2f)
-  [Ikey Doherty: Drop /etc/drirc to a stateless configuration](https://git.solus-project.com/packages/mesalib/commit/?id=c6cece1)

**lvm2**

-  [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/lvm2/commit/?id=acd7c93)

**xz**

-  [Ikey Doherty: Fix /usr/share/doc file conflicts (using root namespace)](https://git.solus-project.com/packages/xz/commit/?id=4af9e04)
-  [Ikey Doherty: Remove links from /lib](https://git.solus-project.com/packages/xz/commit/?id=398a566)

**ntfs-3g**

-  [Ikey Doherty: Update to 2015.3.14 -- minor fixes too](https://git.solus-project.com/packages/ntfs-3g/commit/?id=1fed889)
-  [Ikey Doherty: Remove conflicting doc files](https://git.solus-project.com/packages/ntfs-3g/commit/?id=48a951e)
-  [Ikey Doherty: Rebump..](https://git.solus-project.com/packages/ntfs-3g/commit/?id=d99291b)
-  [Ikey Doherty: Bump for rebuild](https://git.solus-project.com/packages/ntfs-3g/commit/?id=1604bb3)
-  [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/ntfs-3g/commit/?id=d2bdd0d)

**libxcb**

-  [Ikey Doherty: Convert to ypkg, update to 1.11.1](https://git.solus-project.com/packages/libxcb/commit/?id=4ab6d3d)

**attr**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/attr/commit/?id=34958b0)
-  [Ikey Doherty: Convert to ypkg, use /usr/lib64](https://git.solus-project.com/packages/attr/commit/?id=366a8b8)

**cups**

-  [Ikey Doherty: Fix permission issues](https://git.solus-project.com/packages/cups/commit/?id=3c13b4c)
-  [Ikey Doherty: Enable systemd unit by default](https://git.solus-project.com/packages/cups/commit/?id=d8cda61)
-  [Ikey Doherty: Update to 2.1.0](https://git.solus-project.com/packages/cups/commit/?id=1142c12)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cups/commit/?id=3f4ac6a)
-  [Ikey Doherty: Add lpadmin group creation (TODO: Switch to sysusers, go ypkg)](https://git.solus-project.com/packages/cups/commit/?id=b1651fe)

**lsb-release**

-  [Ikey Doherty: Update strings](https://git.solus-project.com/packages/lsb-release/commit/?id=a7bcb26)

**libvte**

-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/libvte/commit/?id=1da26be)

**zip**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/zip/commit/?id=2ad854a)

**python3-gobject**

-  [Joshua Strobl: Rebuild against latest python3.](https://git.solus-project.com/packages/python3-gobject/commit/?id=89b1f7c)

**network-manager**

-  [Ikey Doherty: Do not automatically set hostnames as this breaks X (bug 19)](https://git.solus-project.com/packages/network-manager/commit/?id=27c52cd)
-  [Ikey Doherty: Switch to dhclient as dhcpcd is all kinds of broken (bug 21)](https://git.solus-project.com/packages/network-manager/commit/?id=2be4fcb)

**gl-driver-switch**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gl-driver-switch/commit/?id=ef87a07)

**xdg-user-dirs**

-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/xdg-user-dirs/commit/?id=88f2aaf)

**dracut**

-  [Ikey Doherty: Rebuild for LiveISO inclusion](https://git.solus-project.com/packages/dracut/commit/?id=e8c761c)
-  [Ikey Doherty: Revert "Update to 043"](https://git.solus-project.com/packages/dracut/commit/?id=05d0697)
-  [Ikey Doherty: Update to 043](https://git.solus-project.com/packages/dracut/commit/?id=f3ea569)
-  [Ikey Doherty: Disable lz4 temporarily due to boot issues on non-UEFI](https://git.solus-project.com/packages/dracut/commit/?id=3dd29f7)
-  [Ikey Doherty: Use lz4 and not xz to speed up boot times (bug 25)](https://git.solus-project.com/packages/dracut/commit/?id=90c2f77)

**libvdpau**

-  [Ikey Doherty: Convert to ypkg, update to 1.1.1](https://git.solus-project.com/packages/libvdpau/commit/?id=d0a71d1)

**sudo**

-  [Ikey Doherty: Update to 1.8.14p3](https://git.solus-project.com/packages/sudo/commit/?id=6c8ed02)

**polkit-gnome**

-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/polkit-gnome/commit/?id=90a5da2)

**ncurses**

-  [Ikey Doherty: Fix cyclical dependencies](https://git.solus-project.com/packages/ncurses/commit/?id=9d7477e)
-  [Ikey Doherty: Convert to ypkg, major package cleanup](https://git.solus-project.com/packages/ncurses/commit/?id=92f8fbe)

**kerberos**

-  [Ikey Doherty: Use system com_err now](https://git.solus-project.com/packages/kerberos/commit/?id=9d39e5b)

**file-roller**

-  [Justin Zobel: Update to 3.16.3](https://git.solus-project.com/packages/file-roller/commit/?id=8fc9dce)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/file-roller/commit/?id=921894f)
-  [Ikey Doherty: Update to 3.16.3, support unrar by default](https://git.solus-project.com/packages/file-roller/commit/?id=04d60e1)

**mutter**

-  [Ikey Doherty: Update to 3.16.3, to fix hover-state issue (thanks horst3180)](https://git.solus-project.com/packages/mutter/commit/?id=e3f04a6)

**libevent**

-  [Ikey Doherty: Update to 2.0.22, convert to ypkg](https://git.solus-project.com/packages/libevent/commit/?id=9686692)

**gnome-keyring**

-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/gnome-keyring/commit/?id=962c4e2)

**ffmpeg**

-  [Ikey Doherty: Address CVE-2015-6761](https://git.solus-project.com/packages/ffmpeg/commit/?id=fed00a8)
-  [Justin Zobel: Removed eopkgs](https://git.solus-project.com/packages/ffmpeg/commit/?id=1b99e8a)
-  [Justin Zobel: Update to 2.8.1](https://git.solus-project.com/packages/ffmpeg/commit/?id=a14efa2)
-  [Justin Zobel: Update to 2.8, enable openssl/gnutls to fix bug 253](https://git.solus-project.com/packages/ffmpeg/commit/?id=4956480)
-  [Ikey Doherty: Update to 2.7.2](https://git.solus-project.com/packages/ffmpeg/commit/?id=483acb7)
-  [Ikey Doherty: Rebuild against GCC 5](https://git.solus-project.com/packages/ffmpeg/commit/?id=33602b0)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/ffmpeg/commit/?id=9d5591b)

**zlib**

-  [Ikey Doherty: Migrate to /usr/lib64](https://git.solus-project.com/packages/zlib/commit/?id=ff5f97e)

**network-manager-applet**

-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/network-manager-applet/commit/?id=bc7a78b)
-  [Ikey Doherty: Disable GConf usage](https://git.solus-project.com/packages/network-manager-applet/commit/?id=77d1670)

**libmodplug**

-  [Ikey Doherty: Fix broken includedir](https://git.solus-project.com/packages/libmodplug/commit/?id=76e1fd3)

**faad2**

-  [Ikey Doherty: Switch URL because sourceforge likes breaking things](https://git.solus-project.com/packages/faad2/commit/?id=eea4a01)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/faad2/commit/?id=f62e4b6)

**vlc**

-  [Ikey Doherty: Fix various issues with a rebuild and downgrade](https://git.solus-project.com/packages/vlc/commit/?id=b970527)
-  [Ikey Doherty: Rebuild against Qt](https://git.solus-project.com/packages/vlc/commit/?id=d43fa85)
-  [Ikey Doherty: Update to 3.0.0-git to help resolve some problems we've had](https://git.solus-project.com/packages/vlc/commit/?id=d00c30a)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/vlc/commit/?id=1a431a1)

**qt5-everywhere**

-  [Ikey Doherty: Add libcap2-devel](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=fb42aac)
-  [Ikey Doherty: Deal with lazy-ass build system](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=5e5d31e)
-  [Ikey Doherty: Rebuild this qt5.4.0](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=da7b9a8)
-  [Ikey Doherty: Revert "qt5: update to 5.5"](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=a5ad362)
-  [Justin Zobel: qt5: update to 5.5](https://git.solus-project.com/packages/qt5-everywhere/commit/?id=a407426)

**gnupg**

-  [Joshua Strobl: Ensure pinentry is a rundep otherwise things explode.](https://git.solus-project.com/packages/gnupg/commit/?id=90a49e1)
-  [Joshua Strobl: Remove unnecessary libexecdir, rev build to fix symlink.](https://git.solus-project.com/packages/gnupg/commit/?id=a9abed7)
-  [Joshua Strobl: Converted to yml. Updated to 2.0.28, enabled symcryptrun and gpgtar.](https://git.solus-project.com/packages/gnupg/commit/?id=128527b)

**cracklib**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/cracklib/commit/?id=58ea159)

**alsa-utils**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/alsa-utils/commit/?id=b569be7)

**nautilus**

-  [Ikey Doherty: Convert to stateless configuration](https://git.solus-project.com/packages/nautilus/commit/?id=bd6bcda)

**libxml2**

-  [Ikey Doherty: Address CVE-2015-1819](https://git.solus-project.com/packages/libxml2/commit/?id=b6cc9f6)

**lightdm**

-  [Ikey Doherty: Update to 1.15.0](https://git.solus-project.com/packages/lightdm/commit/?id=7afa1f3)
-  [Ikey Doherty: Gracefully handle local hostname changes w/ xauthority](https://git.solus-project.com/packages/lightdm/commit/?id=feb7bf3)

**expat**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/expat/commit/?id=d9a7de0)
-  [Ikey Doherty: Split devel files into subpackage](https://git.solus-project.com/packages/expat/commit/?id=b8d05c8)

**gedit**

-  [Ikey Doherty: Update to 3.16.3](https://git.solus-project.com/packages/gedit/commit/?id=06d6304)
-  [Ikey Doherty: Bump](https://git.solus-project.com/packages/gedit/commit/?id=3f54909)

**clutter-gtk**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/clutter-gtk/commit/?id=8ab396c)

**dash**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dash/commit/?id=14a434a)

**clutter**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/clutter/commit/?id=84f0d52)

**file**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/file/commit/?id=9f773d6)

**gsettings-desktop-schemas**

-  [Ikey Doherty: Update default branding](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=5d4539b)
-  [Ikey Doherty: Bump](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=9f3ee4d)
-  [Ikey Doherty: Change default wallpaper](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=c4544c0)
-  [Ikey Doherty: Back to SolusFresh wallpaper.](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=4811241)
-  [Ikey Doherty: Switch to Faba Mono](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=00f10d7)
-  [Ikey Doherty: Switch to Arc Darker](https://git.solus-project.com/packages/gsettings-desktop-schemas/commit/?id=34b55ce)

**curl**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/curl/commit/?id=5688cab)

**dconf**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/dconf/commit/?id=172951f)

**gcc**

-  [Ikey Doherty: Update to GCC 5.2.0](https://git.solus-project.com/packages/gcc/commit/?id=373c6f8)
-  [Ikey Doherty: Last rebuild for this rebootstrap phase](https://git.solus-project.com/packages/gcc/commit/?id=a1cefc9)
-  [Ikey Doherty: Long overdue toolchain name change: x86_64-evolveos-linux -> x86_64-solus-linux](https://git.solus-project.com/packages/gcc/commit/?id=9fe8f58)
-  [Ikey Doherty: Use /usr/lib64/ld-linux-x86-64.so.2 by default](https://git.solus-project.com/packages/gcc/commit/?id=ff68e24)

**alsa-lib**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/alsa-lib/commit/?id=773b131)

**librsvg**

-  [Ikey Doherty: Rebuild for dbginfo](https://git.solus-project.com/packages/librsvg/commit/?id=bc4b51b)

**budgie-desktop**

-  [Ikey Doherty: Update to v8.3 for maintainence updates](https://git.solus-project.com/packages/budgie-desktop/commit/?id=e3d30fd)
-  [Ikey Doherty: Migrate to a themed panel (no more 100% alpha)](https://git.solus-project.com/packages/budgie-desktop/commit/?id=31437d8)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/budgie-desktop/commit/?id=2d4ac5f)
-  [Ikey Doherty: Fix menu problems by pretending to be GNOME. Even more.](https://git.solus-project.com/packages/budgie-desktop/commit/?id=3243f71)
-  [Ikey Doherty: Convert to ypkg, that pspec is damned offensive.](https://git.solus-project.com/packages/budgie-desktop/commit/?id=161b033)
-  [Ikey Doherty: Adapt to gnome-settings-daemon (mediakeys) changes in 3.16](https://git.solus-project.com/packages/budgie-desktop/commit/?id=c1eae85)

**gparted**

-  [Ikey Doherty: Build with clang](https://git.solus-project.com/packages/gparted/commit/?id=8176e6f)
-  [Ikey Doherty: Autoreconf to ensure pkexec patch is applied](https://git.solus-project.com/packages/gparted/commit/?id=1e050f3)
-  [Ikey Doherty: Add Polkit policy to enable pkexec launch from menu](https://git.solus-project.com/packages/gparted/commit/?id=4acd4d6)

**coreutils**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/coreutils/commit/?id=baf59a8)

**gcr**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gcr/commit/?id=1918600)

**gvfs**

-  [Ikey Doherty: Enable CDDA and avahi integration](https://git.solus-project.com/packages/gvfs/commit/?id=3e030bc)
-  [Justin Zobel: Added libbluray, gphoto2, samba support](https://git.solus-project.com/packages/gvfs/commit/?id=e633437)
-  [Ikey Doherty: Enable mtp support](https://git.solus-project.com/packages/gvfs/commit/?id=e470c95)

**libidn**

-  [Ikey Doherty: Update to 1.32, convert to ypkg](https://git.solus-project.com/packages/libidn/commit/?id=c41f832)

**llvm**

-  [Ikey Doherty: Rebuild against GCC 5](https://git.solus-project.com/packages/llvm/commit/?id=a0b5a00)
-  [Ikey Doherty: Fix broken paths](https://git.solus-project.com/packages/llvm/commit/?id=58acb18)
-  [Ikey Doherty: Fix several layers of early-morning derp](https://git.solus-project.com/packages/llvm/commit/?id=c153ba9)
-  [Ikey Doherty: Enable scan-view and scan-build helpers](https://git.solus-project.com/packages/llvm/commit/?id=31ae44c)
-  [Ikey Doherty: Rebuild to sync toolchain name changes](https://git.solus-project.com/packages/llvm/commit/?id=d8f4dc1)
-  [Ikey Doherty: Enforce Solus toolchain defaults (build-id, relro)](https://git.solus-project.com/packages/llvm/commit/?id=75a7147)
-  [Ikey Doherty: Enforce system include directories](https://git.solus-project.com/packages/llvm/commit/?id=fe96dab)
-  [Ikey Doherty: Rebuild as llvm ignores libdir..](https://git.solus-project.com/packages/llvm/commit/?id=3688637)
-  [Ikey Doherty: Update to 3.6.2 (use updated system locations too)](https://git.solus-project.com/packages/llvm/commit/?id=b23df49)
-  [Ikey Doherty: Use /usr/lib64 for dynamic linker](https://git.solus-project.com/packages/llvm/commit/?id=64f7d74)

**bzip2**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/bzip2/commit/?id=564e14f)
-  [Ikey Doherty: No autodep](https://git.solus-project.com/packages/bzip2/commit/?id=6b4dfe8)
-  [Ikey Doherty: Move to /usr/lib64](https://git.solus-project.com/packages/bzip2/commit/?id=e12b18f)

**adwaita-icon-theme**

-  [Ikey Doherty: Add default symlink to satisfy GTK2 applications](https://git.solus-project.com/packages/adwaita-icon-theme/commit/?id=d23d8d1)
-  [Justin Zobel: Convert to yml](https://git.solus-project.com/packages/adwaita-icon-theme/commit/?id=42a5afb)

**fuse**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/fuse/commit/?id=64baf12)
-  [Ikey Doherty: Move into system.base for ntfs-3g dep satisfaction](https://git.solus-project.com/packages/fuse/commit/?id=1faa14b)

**libtool**

-  [Ikey Doherty: Get libtool out of system.devel (mostly. it'll still work.)](https://git.solus-project.com/packages/libtool/commit/?id=59b62de)
-  [Ikey Doherty: Fix missing files](https://git.solus-project.com/packages/libtool/commit/?id=1ab1d4e)
-  [Ikey Doherty: Split development files into subpackage](https://git.solus-project.com/packages/libtool/commit/?id=91f4500)

**baobab**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/baobab/commit/?id=180c2d2)

**desktop-file-utils**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/desktop-file-utils/commit/?id=78d2198)

**readline**

-  [Ikey Doherty: Disable clang](https://git.solus-project.com/packages/readline/commit/?id=a433999)
-  [Ikey Doherty: Force link against ncurses](https://git.solus-project.com/packages/readline/commit/?id=c2aee28)

**eog**

-  [Justin Zobel: update to 3.16.3](https://git.solus-project.com/packages/eog/commit/?id=e179ddf)

**gettext**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/gettext/commit/?id=846f9c2)

**fribidi**

-  [Justin Zobel: Update to 0.19.7 and converted to YML](https://git.solus-project.com/packages/fribidi/commit/?id=5350323)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/fribidi/commit/?id=27a1a96)

**thunderbird**

-  [Justin Zobel: Fix up the location of the config](https://git.solus-project.com/packages/thunderbird/commit/?id=7ce5794)
-  [Justin Zobel: Convert to yml](https://git.solus-project.com/packages/thunderbird/commit/?id=3895cca)
-  [Justin Zobel: Update to 38.3.0](https://git.solus-project.com/packages/thunderbird/commit/?id=9cf08be)
-  [Ikey Doherty: Update to 38.2.0](https://git.solus-project.com/packages/thunderbird/commit/?id=5078066)
-  [Ikey Doherty: Update to 38.1.0](https://git.solus-project.com/packages/thunderbird/commit/?id=dec85ea)

**pulseaudio**

-  [Ikey Doherty: Enable native headsets in BlueZ 5](https://git.solus-project.com/packages/pulseaudio/commit/?id=8579b06)
-  [Ikey Doherty: First bluez enabling round](https://git.solus-project.com/packages/pulseaudio/commit/?id=6687c7e)

**e2fsprogs**

-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/e2fsprogs/commit/?id=b031579)
-  [Ikey Doherty: Fix circular dep in system.base](https://git.solus-project.com/packages/e2fsprogs/commit/?id=0267b3e)
-  [Ikey Doherty: Update to 1.42.13, switch to ypkg, split -devel, enable compile_et](https://git.solus-project.com/packages/e2fsprogs/commit/?id=fd84f8e)

**arc-gtk-theme**

-  [Ikey Doherty: Fix for 3.16..](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=6e861fc)
-  [Ikey Doherty: Fix breakage introduced in last update](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=41c2f67)
-  [Justin Zobel: Update to 20150922](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=f5aac32)
-  [Ikey Doherty: Update to 20150729](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=5f912b8)
-  [Ikey Doherty: Update to 20150711 (dark headers, lightdm changes)](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=284e6ce)
-  [Ikey Doherty: Integrate upstream fix for Budgie calendar foreground](https://git.solus-project.com/packages/arc-gtk-theme/commit/?id=276d152)

**at-spi2**

-  [Ikey Doherty: Convert to stateless configuration (XDG dir only at this point)](https://git.solus-project.com/packages/at-spi2/commit/?id=3f2685a)

**glibc**

-  [Ikey Doherty: Rebuild for valid dbginfo](https://git.solus-project.com/packages/glibc/commit/?id=4b61081)
-  [Ikey Doherty: Rebuild for toolchain sync, re-enable pkgversion](https://git.solus-project.com/packages/glibc/commit/?id=7d50ef1)
-  [Ikey Doherty: Update to 2.22](https://git.solus-project.com/packages/glibc/commit/?id=a6854fa)
-  [Ikey Doherty: Rebuild for cflags](https://git.solus-project.com/packages/glibc/commit/?id=4790c75)
-  [Ikey Doherty: Rebuild with new toolchain name](https://git.solus-project.com/packages/glibc/commit/?id=8c1d194)
-  [Ikey Doherty: Bump for repo inclusion](https://git.solus-project.com/packages/glibc/commit/?id=eb0fd41)
-  [Ikey Doherty: Fix self dependency situation](https://git.solus-project.com/packages/glibc/commit/?id=82636fd)
-  [Ikey Doherty: Convert legacy packaging to ypkg for easier maintainence](https://git.solus-project.com/packages/glibc/commit/?id=3c44746)
-  [Ikey Doherty: Rebuild with new cflags](https://git.solus-project.com/packages/glibc/commit/?id=a26407d)
-  [Ikey Doherty: Patch glibc to build with GNU Make 4](https://git.solus-project.com/packages/glibc/commit/?id=0e7fced)
-  [Ikey Doherty: Rebuild for debug symbols](https://git.solus-project.com/packages/glibc/commit/?id=16b85b5)

          