---
title: "Linux Driver Management 1.0 Released | The Roundup #1"
author: "joshua"
categories:
- news
- roundup
date: 2018-01-26T12:59:24+02:00
featuredimage: "2018/01/lsi-1.0.jpg"
url: "/2018/01/26/linux-driver-management-1-0-released" # Example, /2017/01/18/adopting-flatpak-to-reassemble-third-party-applications
---

We're proud to announce the release of [Linux Driver Management](https://github.com/solus-project/linux-driver-management) 1.0, a reworked implementation with the focus on being an agnostic, GObject-style library for the detection and enumeration of devices, with bindings for popular languages such as C, JS via GJS, Python, and Vala, as well as support for matching devices to driver packages.

With LDM 1.0, it no longer provides package management integration but rather enables the capability for developers to integrate the LDM library (`-ldm`) into their software, such as driver tools and software centers. Future releases of LDM will include enhanced introspection support for various device types.

This initial release is designed to support the goals of Solus 4, enabling us to leverage LDM for hotplug / plug and play (PnP) support with various device classes. This will be leveraged by the Solus Software Center (*and eliminating DoFlicky*) to provide user prompting and driver / software installation for devices such as (*but not limited to*):

- NVIDIA graphics cards
- Logitech devices (*prompting installation of Piper for DPI and LED configuration*)
- Printers
- Various Yubikey devices (*prompting installation of software like the Yubikey NEO Manager or Yubikey Personalization GUI*)

**Note to Developers:**

It is advisable that other developers and integrators **do not** rely on the ABI until testing and communication with the development team has taken place so that future releases have a guaranteed ABI. Lastly, be advised that the GLX configuration portions of LDM are designed with GLVND in mind, so please read the [README](https://github.com/solus-project/linux-driver-management) document fully before integrating LDM components into your project or distro.