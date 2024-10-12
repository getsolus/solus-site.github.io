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

Due to the quality of the proprietary AMD drivers (fglrx), we will not be providing them at this moment in time. We will provide them as an update after RC1.

### Firefox Theming

{{< relimg "Screenshot-from-2015-10-27-01-20-35.png" >}}

The default theme for Firefox has been changed to [Arc Firefox Darker theme](https://github.com/horst3180/arc-firefox-theme) to provide a consistent user experience and design throughout Solus. This is a stunning theme that compliments the 
usage of the default GTK theme, [Arc Darker](https://github.com/horst3180/Arc-theme). The other Arc Firefox theme variants are available from the Appearance section of Firefox.

### Download

#### Obtaining Release Candidate 1

You may download the ISO by going [here](https://getsol.us/download).

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

- Ikey Doherty: Rebuild for cflags

**python-urlgrabber**

- Ikey Doherty: Update to 3.10.1 for yum to work

**evince**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Build with clang
-  Ikey Doherty: Rebuild with new cflags
-  Ikey Doherty: Rebuild for debug symbols

**gnome-system-monitor**

-  Ikey Doherty: Convert to ypkg to stop use of /usr/libexec

**findutils**
-  Ikey Doherty: Rebuild for cflags

**firefox**

-  Ikey Doherty: Use unversioned directory to fix extension issue
-  Ikey Doherty: Install default preferences and compat link for theming,etc
-  Ikey Doherty: Update to 41.0.2 to address security issues
-  Ikey Doherty: Force-build with clang to fix gcc specific link issue
-  Ikey Doherty: Disable skia to avoid gtk3 related crashes
-  Justin Zobel: Update to 41.0.1
-  Justin Zobel: Update to 41.0
-  Justin Zobel: Update to 40.0.3
-  Ikey Doherty: Rebuild with GCC 5
-  Ikey Doherty: Update to 40.0.2
-  Ikey Doherty: Update to 40.0.1
-  Ikey Doherty: Update to latest upstream stable version (40.0)
-  Ikey Doherty: Updae to 39.0.3
-  Ikey Doherty: Fix LD_AS_NEEDED issue
-  Ikey Doherty: Convert to ypkg and build with clang
-  Ikey Doherty: Update to 39.0

**gdbm**

-  Ikey Doherty: Rebuild for cflags

**systemd**

-  Ikey Doherty: Attempt to fix comar bork
-  Ikey Doherty: Fix problem with lib64 paths for sysusers
-  Ikey Doherty: Enable tmpfile and sysusers handling
-  Ikey Doherty: Bump for build
-  Ikey Doherty: Fix segfault in bootchart when sample number is lower than expected

**lightdm-gtk-greeter**

-  Ikey Doherty: Update default branding
-  Ikey Doherty: Change default wallpaper
-  Ikey Doherty: Back to SolusFresh wallpaper
-  Ikey Doherty: Switch to Faba Mono
-  Ikey Doherty: Switch to Arc-Darker
-  Ikey Doherty: Update to 2.0.1

**fontconfig**

-  Ikey Doherty: Sync patches
-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Bump and clean rebuild
-  Ikey Doherty: Split package
-  Ikey Doherty: Update to 2.11.94

**gdk-pixbuf**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Rebuild for dbginfo

**solus-artwork**

-  Ikey Doherty: Update to v6 to trial DeepBlue II artwork
-  Ikey Doherty: Release v5 of solus-artwork
-  Ikey Doherty: Add missing moka-icon-theme dep
-  Ikey Doherty: Add dep on Faba Mono icon theme
-  Ikey Doherty: Undelete chalk wallpaper (fixes previous mistake)

**baselayout**

-  Ikey Doherty: Update for release of 1.0
-  Ikey Doherty: Fix lib64 paths in ld.so.conf
-  Ikey Doherty: Use new etc/profile location, somewhat anti-stateless right now

**unzip**

-  Joshua Strobl: Converted to package.yml

**python**

-  Ikey Doherty: Rebuild for current gcc

**python-dbus**

-  Joshua Strobl: Bumped python(3) dbus to be compatible with build of python-3.4

**cpio**

-  Ikey Doherty: Rebuild for cflags

**bash-completion**

-  Justin: bash-completion: convert to yml

**gtk3**

-  Ikey Doherty: Rebuild against newest CUPS, update to 3.16.7
-  Ikey Doherty: Update to 3.16.6
-  Ikey Doherty: Rebuild with new cflags
-  Ikey Doherty: Rebuild for debug symbols
-  Ikey Doherty: Update to 3.16.5

**libimobiledevice**

-  Joshua Strobl: Rebuild libimobiledevice against openssl rev. and eliminate libsplit.

**os-installer**

-  Ikey Doherty: Include an override to stick launcher on the panel by default
-  Ikey Doherty: Fix brand
-  Ikey Doherty: Sync new lightdm (1.15.0) config

**libdrm**

-  Ikey Doherty: Update to 2.4.65 for new mesa

**xorg-driver-video-intel**

-  Ikey Doherty: Re-enable DRI3
-  Ikey Doherty: Disable full relro -- and update again, unbreaking the driver.
-  Ikey Doherty: Bump for rebuild old version
-  Ikey Doherty: Revert "Update to 23986f0a31dbdec2e2086ca898bee43842ab73d4 -- solving more SNA issues"
-  Ikey Doherty: Update to 23986f0a31dbdec2e2086ca898bee43842ab73d4 -- solving more SNA issues

**util-linux**

-  Ikey Doherty: Ensure package is consistent with pre-conversion state
-  Ikey Doherty: Switch to /usr/lib64

**db5**

-  Ikey Doherty: Rebuild for cflags

**python3**

-  Ikey Doherty: Enable sqlite3 support, fix license

**freetype2**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Split devel files into subpackage

**xorg-server**

-  Ikey Doherty: Unbreak modesetting driver
-  Ikey Doherty: Rebuild against newer components
-  Ikey Doherty: Enable systemd integration

**dbus**

-  Ikey Doherty: Rebuild for cflags

**pam**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Convert to ypkg, use /usr/lib64 now (retain /lib/security for compat)

**gnome-control-center**

-  Ikey Doherty: Add cups-pk-helper runtime dep to ensure printing works correctly
-  Ikey Doherty: Rebuild against newer cups, enable cheese webcam support for user panel
-  Justin Zobel: Rebuild with bluetooth support
-  Justin Zobel: Update to 3.16.3
-  Ikey Doherty: Enable printer panel via smbclient dep
-  Ikey Doherty: Online accounts require glib-networking for SSL usage

**cogl**

-  Ikey Doherty: Rebuild for cflags

**enchant**

-  Ikey Doherty: Rebuild for cflags

**acl**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Fix license and autodep
-  Ikey Doherty: Convert to ypkg, move to /usr/lib64

**kernel**

-  Ikey Doherty: Update to 4.1.11 kernel, dropping integrated patches
-  Ikey Doherty: Address multiple CVEs
-  Ikey Doherty: Address CVE-2015-5257
-  Ikey Doherty: Switch SLAB to SLUB, kill floppy driver with fire
-  Ikey Doherty: Update to latest LTS release, 4.1.10
-  Ikey Doherty: Update to latest LTS, 4.1.8
-  Justin Zobel: Bump relno
-  Justin Zobel: Updated actions.py for 4.1.7
-  Justin Zobel: Bump
-  Justin Zobel: Removed .config
-  Justin Zobel: Update to 4.1.7
-  Ikey Doherty: Build-in more disk-related modules so we can begin deprecation of initrd
-  Ikey Doherty: Rebuild against newer GCC, enable F2FS
-  Ikey Doherty: Update to latest LTS release, 4.1.6
-  Ikey Doherty: Update to latest stable LTS version (4.1.5)
-  Ikey Doherty: Address CVE-2015-5697
-  Ikey Doherty: Fix booboo with patches
-  Ikey Doherty: Enable and default to BFQ
-  Ikey Doherty: More HID enabling (I2C)
-  Ikey Doherty: Further enabling, this time, the touchpad.
-  Ikey Doherty: Hardware enabling for Acer ASPIRE R13-R7-371T-55Q1
-  Ikey Doherty: Enable docker to run correctly
-  Ikey Doherty: Update to latest upstream LTS version
-  Ikey Doherty: Rebuild to get updated .. downgrade.
-  Ikey Doherty: Revert "Build modules needed for rootfs into kernel"
-  Ikey Doherty: Build modules needed for rootfs into kernel
-  Ikey Doherty: Address CVE-2015-4692
-  Ikey Doherty: Update to 4.1.3
-  Ikey Doherty: Enable thin provisioning and virtio input for virtualisation use cases
-  Ikey Doherty: Enable netfilter NAT/masq support
-  Ikey Doherty: Enable CONFIG_ATH9K_HTC (Atheros AR9271), bug 22
-  Ikey Doherty: Update to 4.1.2, latest LTS release
-  Ikey Doherty: Enable MMC/memorystick options for newly enabled realtek module
-  Ikey Doherty: Enable Realtek PCI-E card reader (specifically rts5209)

**cairo**

-  Ikey Doherty: Disable clang
-  Ikey Doherty: Various fixes to ensure evince does not crash (bug 42)
-  Ikey Doherty: Minor tweaks
-  Ikey Doherty: Rebuild with new cflags
-  Ikey Doherty: Rebuild for debug symbols
-  Ikey Doherty: Fix issue with relno
-  Ikey Doherty: Force a runtime dep on -devel for freetype2

**xdg-user-dirs-gtk**

-  Ikey Doherty: Add explicit runtime dep on xdg-user-dirs
-  Ikey Doherty: Convert to stateless configuration

**gst-plugins-ugly**

-  Joshua Strobl: Update ugly to utilize libcdio for CD support.

**faac**

-  Ikey Doherty: Rebuild for cflags

**kmod**

-  Ikey Doherty: Move to /usr/lib64

**pisi**

-  Ikey Doherty: Implement proper build-info based dbginfo
-  Ikey Doherty: Enable -fstack-protecter-strong
-  Ikey Doherty: Introduce hardened compiler flags and go full relro by default
-  Ikey Doherty: Implement toolchain changes
-  Ikey Doherty: Enforce LD_AS_NEEDED by default
-  Ikey Doherty: Force dbginfo packages to use debug component

**nano**

-  Ikey Doherty: Rebuild for GCC 5.2.0
-  Ikey Doherty: Canary build for glibc-2.22
-  Ikey Doherty: Bump for service test
-  Ikey Doherty: Canary #2: Ensure server handles update+build process
-  Ikey Doherty: Canary build for server
-  Ikey Doherty: Resolve /usr/share/doc conflicts
-  Ikey Doherty: Canary build for delta changes
-  Ikey Doherty: Update to 2.4.2
-  Ikey Doherty: Convert to ypkg
-  Ikey Doherty: Rebuild now with proper cflags on remote server
-  Ikey Doherty: Canary test 2
-  Ikey Doherty: Canary build for the server test
-  Ikey Doherty: Canary test (glibc changes)

**librest**

-  Justin Zobel: Update to 0.7.93 and yml

**elfutils**

-  Ikey Doherty: Rebuild for cflags

**bc**

-  Ikey Doherty: Rebuild for cflags

**gnome-settings-daemon**

-  Ikey Doherty: Switch to 'slight' aliasing (way better)
-  Ikey Doherty: Ensure patches are actually applied..
-  Ikey Doherty: Convert to stateless configuration
-  Ikey Doherty: Update to 3.16.2, switch to ypkg

**poppler**

-  Ikey Doherty: Rebuild for debug symbols
-  Ikey Doherty: Update to 0.34.0

**libgtop**

-  Justin Zobel: Convert to yml

**gnome-terminal**

-  Ikey Doherty: Hide menubar by default, make scrollbar automatic
-  Ikey Doherty: Set defaults (11% transparency, size 10 font)
-  Ikey Doherty: Disable GConf usage, fix libexecdir

**libcap2**

-  Ikey Doherty: Bump for rebuild
-  Ikey Doherty: Split devel files into subpackage

**gawk**

-  Ikey Doherty: Rebuild for cflags

**font-clear-sans-ttf**

-  Ikey Doherty: Add appdata metainfo

**dconf-editor**

-  Ikey Doherty: Rebuild for cflags

**bash**

-  Ikey Doherty: Update to 4.3.042
-  Ikey Doherty: Second canary build for delta changes
-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Ensure we escape prompt to fix linewrap bug in bash
-  Ikey Doherty: Convert to stateless configuration
-  Ikey Doherty: Enhance bash's default PS1

**seahorse**

-  Joshua Strobl: Convert to yml format. Rev to rebuild against updated gnupg.

**openssh**

-  Ikey Doherty: Address CVE-2015-5600

**webkitgtk**

-  Justin Zobel: Added hyphen dep
-  Justin Zobel: Update to 2.10.0
-  Ikey Doherty: Update to latest stable upstream version, addressing multiple security issues

**openssl**

-  Ikey Doherty: Update to 1.0.2d, integrate Clear Linux patches to deprecate insecure ciphers
-  Ikey Doherty: Address CVE-2015-1793

**libarchive**

-  Ikey Doherty: Another bump bites the dust
-  Ikey Doherty: Fine-grained control of libarchive placement

**accountsservice**

-  Justin Zobel: Bump for addition of lightdom auto login patch

**glib2**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Update to 2.44.1
-  Ikey Doherty: Rebuild with new cflags
-  Ikey Doherty: Rebuild for debug symbols
-  Ikey Doherty: Support stateless XDG config directory

**libplist**

-  Joshua Strobl: Rebuild libplist against clang.

**mesalib**

-  Ikey Doherty: Update to 11.0.4
-  Ikey Doherty: Update to 11.0.3
-  Ikey Doherty: Rebuild against latest llvm
-  Ikey Doherty: Drop /etc/drirc to a stateless configuration

**lvm2**

-  Ikey Doherty: Move to /usr/lib64

**xz**

-  Ikey Doherty: Fix /usr/share/doc file conflicts (using root namespace)
-  Ikey Doherty: Remove links from /lib

**ntfs-3g**

-  Ikey Doherty: Update to 2015.3.14 -- minor fixes too
-  Ikey Doherty: Remove conflicting doc files
-  Ikey Doherty: Rebump..
-  Ikey Doherty: Bump for rebuild
-  Ikey Doherty: Move to /usr/lib64

**libxcb**

-  Ikey Doherty: Convert to ypkg, update to 1.11.1

**attr**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Convert to ypkg, use /usr/lib64

**cups**

-  Ikey Doherty: Fix permission issues
-  Ikey Doherty: Enable systemd unit by default
-  Ikey Doherty: Update to 2.1.0
-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Add lpadmin group creation (TODO: Switch to sysusers, go ypkg)

**lsb-release**

-  Ikey Doherty: Update strings

**libvte**

-  Ikey Doherty: Convert to stateless configuration

**zip**

-  Ikey Doherty: Rebuild for cflags

**python3-gobject**

-  Joshua Strobl: Rebuild against latest python3.

**network-manager**

-  Ikey Doherty: Do not automatically set hostnames as this breaks X (bug 19)
-  Ikey Doherty: Switch to dhclient as dhcpcd is all kinds of broken (bug 21)

**gl-driver-switch**

-  Ikey Doherty: Rebuild for cflags

**xdg-user-dirs**

-  Ikey Doherty: Convert to stateless configuration

**dracut**

-  Ikey Doherty: Rebuild for LiveISO inclusion
-  Ikey Doherty: Revert "Update to 043"
-  Ikey Doherty: Update to 043
-  Ikey Doherty: Disable lz4 temporarily due to boot issues on non-UEFI
-  Ikey Doherty: Use lz4 and not xz to speed up boot times (bug 25)

**libvdpau**

-  Ikey Doherty: Convert to ypkg, update to 1.1.1

**sudo**

-  Ikey Doherty: Update to 1.8.14p3

**polkit-gnome**

-  Ikey Doherty: Convert to stateless configuration

**ncurses**

-  Ikey Doherty: Fix cyclical dependencies
-  Ikey Doherty: Convert to ypkg, major package cleanup

**kerberos**

-  Ikey Doherty: Use system com_err now

**file-roller**

-  Justin Zobel: Update to 3.16.3
-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Update to 3.16.3, support unrar by default

**mutter**

-  Ikey Doherty: Update to 3.16.3, to fix hover-state issue (thanks horst3180)

**libevent**

-  Ikey Doherty: Update to 2.0.22, convert to ypkg

**gnome-keyring**

-  Ikey Doherty: Convert to stateless configuration

**ffmpeg**

-  Ikey Doherty: Address CVE-2015-6761
-  Justin Zobel: Removed eopkgs
-  Justin Zobel: Update to 2.8.1
-  Justin Zobel: Update to 2.8, enable openssl/gnutls to fix bug 253
-  Ikey Doherty: Update to 2.7.2
-  Ikey Doherty: Rebuild against GCC 5
-  Ikey Doherty: Rebuild for cflags

**zlib**

-  Ikey Doherty: Migrate to /usr/lib64

**network-manager-applet**

-  Ikey Doherty: Convert to stateless configuration
-  Ikey Doherty: Disable GConf usage

**libmodplug**

-  Ikey Doherty: Fix broken includedir

**faad2**

-  Ikey Doherty: Switch URL because sourceforge likes breaking things
-  Ikey Doherty: Rebuild for cflags

**vlc**

-  Ikey Doherty: Fix various issues with a rebuild and downgrade
-  Ikey Doherty: Rebuild against Qt
-  Ikey Doherty: Update to 3.0.0-git to help resolve some problems we've had
-  Ikey Doherty: Rebuild for cflags

**qt5-everywhere**

-  Ikey Doherty: Add libcap2-devel
-  Ikey Doherty: Deal with lazy-ass build system
-  Ikey Doherty: Rebuild this qt5.4.0
-  Ikey Doherty: Revert "qt5: update to 5.5"
-  Justin Zobel: qt5: update to 5.5

**gnupg**

-  Joshua Strobl: Ensure pinentry is a rundep otherwise things explode.
-  Joshua Strobl: Remove unnecessary libexecdir, rev build to fix symlink.
-  Joshua Strobl: Converted to yml. Updated to 2.0.28, enabled symcryptrun and gpgtar.

**cracklib**

-  Ikey Doherty: Rebuild for cflags

**alsa-utils**

-  Ikey Doherty: Rebuild for cflags

**nautilus**

-  Ikey Doherty: Convert to stateless configuration

**libxml2**

-  Ikey Doherty: Address CVE-2015-1819

**lightdm**

-  Ikey Doherty: Update to 1.15.0
-  Ikey Doherty: Gracefully handle local hostname changes w/ xauthority

**expat**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Split devel files into subpackage

**gedit**

-  Ikey Doherty: Update to 3.16.3
-  Ikey Doherty: Bump

**clutter-gtk**

-  Ikey Doherty: Rebuild for cflags

**dash**

-  Ikey Doherty: Rebuild for cflags

**clutter**

-  Ikey Doherty: Rebuild for cflags

**file**

-  Ikey Doherty: Rebuild for cflags

**gsettings-desktop-schemas**

-  Ikey Doherty: Update default branding
-  Ikey Doherty: Bump
-  Ikey Doherty: Change default wallpaper
-  Ikey Doherty: Back to SolusFresh wallpaper.
-  Ikey Doherty: Switch to Faba Mono
-  Ikey Doherty: Switch to Arc Darker

**curl**

-  Ikey Doherty: Rebuild for cflags

**dconf**

-  Ikey Doherty: Rebuild for cflags

**gcc**

-  Ikey Doherty: Update to GCC 5.2.0
-  Ikey Doherty: Last rebuild for this rebootstrap phase
-  Ikey Doherty: Long overdue toolchain name change: x86_64-evolveos-linux -> x86_64-solus-linux
-  Ikey Doherty: Use /usr/lib64/ld-linux-x86-64.so.2 by default

**alsa-lib**

-  Ikey Doherty: Rebuild for cflags

**librsvg**

-  Ikey Doherty: Rebuild for dbginfo

**budgie-desktop**

-  Ikey Doherty: Update to v8.3 for maintainence updates
-  Ikey Doherty: Migrate to a themed panel (no more 100% alpha)
-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Fix menu problems by pretending to be GNOME. Even more.
-  Ikey Doherty: Convert to ypkg, that pspec is damned offensive.
-  Ikey Doherty: Adapt to gnome-settings-daemon (mediakeys) changes in 3.16

**gparted**

-  Ikey Doherty: Build with clang
-  Ikey Doherty: Autoreconf to ensure pkexec patch is applied
-  Ikey Doherty: Add Polkit policy to enable pkexec launch from menu

**coreutils**

-  Ikey Doherty: Rebuild for cflags

**gcr**

-  Ikey Doherty: Rebuild for cflags

**gvfs**

-  Ikey Doherty: Enable CDDA and avahi integration
-  Justin Zobel: Added libbluray, gphoto2, samba support
-  Ikey Doherty: Enable mtp support

**libidn**

-  Ikey Doherty: Update to 1.32, convert to ypkg

**llvm**

-  Ikey Doherty: Rebuild against GCC 5
-  Ikey Doherty: Fix broken paths
-  Ikey Doherty: Fix several layers of early-morning derp
-  Ikey Doherty: Enable scan-view and scan-build helpers
-  Ikey Doherty: Rebuild to sync toolchain name changes
-  Ikey Doherty: Enforce Solus toolchain defaults (build-id, relro)
-  Ikey Doherty: Enforce system include directories
-  Ikey Doherty: Rebuild as llvm ignores libdir..
-  Ikey Doherty: Update to 3.6.2 (use updated system locations too)
-  Ikey Doherty: Use /usr/lib64 for dynamic linker

**bzip2**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: No autodep
-  Ikey Doherty: Move to /usr/lib64

**adwaita-icon-theme**

-  Ikey Doherty: Add default symlink to satisfy GTK2 applications
-  Justin Zobel: Convert to yml

**fuse**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Move into system.base for ntfs-3g dep satisfaction

**libtool**

-  Ikey Doherty: Get libtool out of system.devel (mostly. it'll still work.)
-  Ikey Doherty: Fix missing files
-  Ikey Doherty: Split development files into subpackage

**baobab**

-  Ikey Doherty: Rebuild for cflags

**desktop-file-utils**

-  Ikey Doherty: Rebuild for cflags

**readline**

-  Ikey Doherty: Disable clang
-  Ikey Doherty: Force link against ncurses

**eog**

-  Justin Zobel: update to 3.16.3

**gettext**

-  Ikey Doherty: Rebuild for cflags

**fribidi**

-  Justin Zobel: Update to 0.19.7 and converted to YML
-  Ikey Doherty: Rebuild for cflags

**thunderbird**

-  Justin Zobel: Fix up the location of the config
-  Justin Zobel: Convert to yml
-  Justin Zobel: Update to 38.3.0
-  Ikey Doherty: Update to 38.2.0
-  Ikey Doherty: Update to 38.1.0

**pulseaudio**

-  Ikey Doherty: Enable native headsets in BlueZ 5
-  Ikey Doherty: First bluez enabling round

**e2fsprogs**

-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Fix circular dep in system.base
-  Ikey Doherty: Update to 1.42.13, switch to ypkg, split -devel, enable compile_et

**arc-gtk-theme**

-  Ikey Doherty: Fix for 3.16..
-  Ikey Doherty: Fix breakage introduced in last update
-  Justin Zobel: Update to 20150922
-  Ikey Doherty: Update to 20150729
-  Ikey Doherty: Update to 20150711 (dark headers, lightdm changes)
-  Ikey Doherty: Integrate upstream fix for Budgie calendar foreground

**at-spi2**

-  Ikey Doherty: Convert to stateless configuration (XDG dir only at this point)

**glibc**

-  Ikey Doherty: Rebuild for valid dbginfo
-  Ikey Doherty: Rebuild for toolchain sync, re-enable pkgversion
-  Ikey Doherty: Update to 2.22
-  Ikey Doherty: Rebuild for cflags
-  Ikey Doherty: Rebuild with new toolchain name
-  Ikey Doherty: Bump for repo inclusion
-  Ikey Doherty: Fix self dependency situation
-  Ikey Doherty: Convert legacy packaging to ypkg for easier maintainence
-  Ikey Doherty: Rebuild with new cflags
-  Ikey Doherty: Patch glibc to build with GNU Make 4
-  Ikey Doherty: Rebuild for debug symbols

          
