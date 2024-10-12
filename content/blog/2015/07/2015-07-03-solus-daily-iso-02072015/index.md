+++
author = "ikey"
categories = [
"Uncategorized"
]
date =  "2015-07-03T06:48:54Z"

title = "Solus Daily ISO: 02/07/2015"
url = "/2015/07/03/solus-daily-iso-02072015/"
+++

The most recent daily is now available for download. In this snapshot we've concentrated on **enabling**. As such we're now actively collecting powertop reports and optimising power consumption of Solus systems.

Main changes:

- Initial VPN support (openconnect) is in the repos.
- We've migrated to NetworkManager 1.0.2 to enable usage of a more modern openconnect for Cisco AnyConnect based VPNs.
- More hostname changes were introduced, enforcing the use of /etc/hosts via nsswitch. This is a temporary solution, and will be replaced with a stateless mechanism soon.
- Last UEFI related issues fixed inside installer.
- Kernel changes: Tracing enabled for powertop, INTEL_IDLE replaced X86_SPEEDSTEP_CENTRINO, BPF enabled, and BGRT for boot time ACPI graphics handovers.
- "Beta 2" label dropped, now referred to internally as "Betaish" :]

See our first daily ISO announcement for instructions on writing this 64-bit, Hybrid, UEFI-compatible ISO to USB medium. Remember, **unetbootin is not supported!**

Head over to the [download page](https://getsol.us/download) now to obtain the latest daily ISO
