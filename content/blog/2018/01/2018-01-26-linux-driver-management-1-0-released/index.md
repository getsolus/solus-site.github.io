---
authors:
- image: https://avatars.githubusercontent.com/u/156574?v=4
  link: https://github.com/JoshStrobl
  name: Joshua Strobl
tags:
- news
- roundup
date: "2018-01-26T12:59:24+02:00"
featuredimage: /lsi-1.0.jpg
title: 'Linux Driver Management 1.0 Released | The Roundup #1'
url: /2018/01/26/linux-driver-management-1-0-released
---

We're proud to announce the release of [Linux Driver Management](https://github.com/solus-project/linux-driver-management) 1.0, a reworked implementation with the focus on being an agnostic, GObject-style library for the detection and enumeration of devices, with bindings for popular languages such as C, JS via GJS, Python, and Vala, as well as support for matching devices to driver packages.

LDM 1.0 is no longer tied to package management specifics and is instead designed to be used as a library (`-lldm`) that developers can integrate into their software centers and driver management systems to provide detection capabilities. The library can be viewed as being similar to other older efforts like *Jockey*, however it goes further and abstracts subsystems to enable automatically matching via modaliases and device classes, including:

- bluetooth
- dmi
- hid
- ieee80211
- pci
- usb

As such integrators can either match devices by looking for a specific device class (i.e. bluetooth host controller) or via a modalias match. The net result is such that we're able to provide hotplug capabilities in the session that will allow the OS to dynamically offer the user the opportunity to install drivers and/or packages in response to plugging in a new mouse or Yubikey, for example.

Only one integration point is provided for package managers now, allowing LDM to control the X11 / GLX configuration for proprietary drivers and NVIDIA Optimus systems (PRIME). For best results with the LDM GLX management, we recommend switching to GLVND, as Solus has just done. For consumers of the library, no host specifics are assumed nor is it tied to any particular distribution or package manager. We hope this will be useful for other distributions wishing to provide automatic detection of GPU drivers and more.

This initial release is designed to support the goals of Solus 4 and will be leveraged by the Solus Software Center (*and eliminating DoFlicky*) to provide user prompting and driver / software installation for devices such as (*but not limited to*):

- NVIDIA graphics cards
- Logitech devices (*prompting installation of Piper for DPI and LED configuration*)
- Printers
- Various Yubikey devices (*prompting installation of software like the Yubikey NEO Manager or Yubikey Personalization GUI*)

**Note to Developers:**

It is advisable that other developers and integrators **do not** rely on the ABI until testing and communication with the development team has taken place so that future releases have a guaranteed ABI. Lastly, be advised that the GLX configuration portions of LDM are designed with GLVND in mind, so please read the [README](https://github.com/solus-project/linux-driver-management) document fully before integrating LDM components into your project or distro.