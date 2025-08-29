+++
author = "joshua"
categories = [
"News",
"Plans",
]
date =  "2015-12-28T08:34:07Z"
title = "1.0 and Beyond"
url = "/2015/12/28/1-0-and-beyond/"
+++ 

On the heels of our [first release of Solus](https://solus-project.com/2015/12/27/solus-1-0-released/), I want to take a moment to discuss with the community our plans for beyond 1.0 and up to 2.0. 

#### How our releases are structured

Before we get started, I want to state how our release cycle is going to be and how long each release is supported:

- Each major release will be supported for two years. So in this specific case, Solus 1.0 will be supported for two years and receive updates to the core of the operating system along with supporting applications that are not associated with the GNOME Stack. 
- For instance, if you wanted gedit 3.20, you would need to upgrade to the v2.0 tree and Solus 2 when it is released. However you could still expect to get updates for applications such as Firefox.

We will release a minor and/or major release four times a year. Elaborated below: 
- Release in January 
- For new, major releases, this will be a minor release to address important issues that were not resolved in time during the last cycle.
- For old, major releases, this will be a continuation of support.
- Release in May
- Release in September
- Release in December 
- Every December will be a release of a new **major** release. In the specific instance of this blog, that means in December 2016, Solus 2 will be released.
- If an old major release was released two years prior to that, support will cease. So when Solus 3 is released, Solus 1 support ceases.

Below is a pretty graph that should help explain it:

![relimg](ReleasesLayout1.png)

---

#### Plans for 2016 Cycle

Below are initial plans (**subject to change**) for the 2016 cycle.

##### 1.1

Our immediate focus is to resolve known issues during the 1.0 release as well as those discovered after the 1.0 release. Below are items that will be addressed, **not** in any particular order:

- Complete HP driver support
- Full fglrx support
- Software center update: UX improvements, bug fixes, appstream integration
- Improved input support via ibus/budgie-wm
- Budgie / Raven / Budgie WM: 
- Hotcorner support
- Resolve Raven offset positioning issues.
- Resolve issues relating to using a bottom Budgie panel
- Fix Steam for non-NVIDIA systems.
- Investigate bluetooth support issues and resolve.
- Resolve USB boot issue seen on certain host configurations

As stated by our cycle guidelines, a new ISO will be provided sometime in January 2016.

##### 1.2

After the resolution of high priority items during the 1.1 cycle, we will move on to 1.2, with the following items that will be address, **not** in any particular order:

- Land all translation updates       
- Binaries: 
  - Profile guided optimisation of our binaries and libraries in accordance with modern-day desktop usage.
- Budgie / Raven / Budgie WM: 
  - Weather applet in Raven
- Full-disk encryption support
- Web infrastructure: 
  - Mirrorbrain for ISOs
  - Implement build backend for core team
  - Prettify public frontend with pretty graphs leveraging MetricsGraphics.js, optional browser notifications, so forth.

As stated by our cycle guidelines, a new ISO will be provided sometime in May 2016.

##### 1.3

The following items that will be address, **not** in any particular order:

- User **opt-in** (at install or post-install) telemetry (**really I can't stress enough, opt-in**) 
- Applications installed/removed
- Crash reports

As stated by our cycle guidelines, a new ISO will be provided sometime in September 2016.

##### 1.4

The following items that will be address, **not** in any particular order:

- “Recover OS” capability. This would be provided as a separate boot option that would load a dedicated image that is equipped to repair bricked systems, roll back updates, repair an fstab or bootloader, etc.

As stated by our cycle guidelines, a new ISO will be provided sometime in December 2016.

##### 2.0

This will be the next major release of Solus and building upon all the work from the Solus 1 cycle, we will also be working on the following items:

- Drop the LiveCD, installer only: 
- Primary focus to be on OEM imagery.
- Hardware configurations are too numerous to include every single xorg and kernel driver known to mankind. It’s possible the amdgpu driver is already causing issues in userspace.
  - This requires a *move* away from “normal” packaging, and enabling discoverable “assets” through software update, such as a HwID, Modalias via an exposed .ko -- this is already in line with Solus requirements anyway.
  - Design in a network orientated fashion, but allow a local source later so that we can create a “local” repo onto a disc for distribution.
- Do NOT ship with X.Org. Detect and lazyload the right module for the hardware, or just use the framebuffer. It’s just an installer. Ideally we can fit most of what we want into a single binary blob (suitable for PXE boot and EFI [PE32 binary])
  - Wayland-only, workarounds if necessary where drivers may not be supported.      
- Support 32-bit UEFI via CONFIG_EFI_MIXED for Baytrail-class devices.
- Completely stateless by default, per the [Clear Linux documentation](https://clearlinux.org/features/stateless).

We will also be making sure that it isn't at Christmas. But it will indeed be in December 2016.

---

We're really excited about the future of Solus and we have a lot of fantastic stuff planned. You can learn how to get involved by checking out [this link](https://wiki.solus-project.com/Getting_Involved)!