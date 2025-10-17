---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- uncategorized
date: "2015-07-03T06:48:54Z"
title: 'Solus Daily ISO: 02/07/2015'
url: /2015/07/03/solus-daily-iso-02072015/
---

The most recent daily is now available for download. In this snapshot we've concentrated on **enabling**. As such we're now actively collecting powertop reports and optimising power consumption of Solus systems.

Main changes:

- Initial VPN support ([openconnect](https://git.solus-project.com/packages/networkmanager-openconnect/commit/?h=networkmanager-openconnect-1.0.2-2)) is in the repos
- We've [migrated](https://git.solus-project.com/packages/NetworkManager/commit/?h=network-manager-1.0.2-12) to NetworkManager 1.0.2 to enable usage of a more modern openconnect for Cisco AnyConnect based VPNs
- More hostname changes were [introduced](https://git.solus-project.com/packages/baselayout/commit/?h=baselayout-1.7-21), enforcing the use of /etc/hosts via nsswitch. This is a temporary solution, and will be replaced with a stateless mechanism soon.
- Last UEFI related issues [fixed](https://git.solus-project.com/packages/os-installer/commit/?h=os-installer-2-17) inside installer
- Kernel [changes](https://git.solus-project.com/packages/kernel/commit/?h=kernel-4.1.1-52): Tracing enabled for powertop, INTEL_IDLE replaced X86_SPEEDSTEP_CENTRINO, BPF enabled, and BGRT for boot time ACPI graphics handovers.
- "Beta 2" label [dropped](https://git.solus-project.com/packages/lsb-release/commit/?h=lsb-release-1.4-3), now referred to internally as "Betaish" :]

See our first [daily ISO announcement](https://solus-project.com/2015/06/29/first-unstable-daily-iso/) for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://solus-project.com/download) now to obtain the latest daily ISO