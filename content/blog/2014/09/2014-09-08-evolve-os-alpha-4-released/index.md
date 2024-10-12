+++
author = "ikey"
categories = [
"News"
]
date =  "2014-09-08T17:37:19Z"

title = "Evolve OS Alpha 4 Released"
featuredimage = "/newlogo_white.png"
url = "/2014/09/08/evolve-os-alpha-4-released/"
+++

Hello all. Contrary to the last post we have decided to release an updated Evolve OS ISO. This is in essence, a refreshed version of Evolve OS Alpha 3, with some 
minor differences. Note this ISO can be booted on EFI machines, however it cannot (and should not) be installed under EFI environments.
<!--more-->

### Evo Assist

This release of Evolve OS features a preliminary version of "evoassist" -- which is designed to help you with basic system tasks. The current revision is designed to enable you to easily install Google Chrome, and in future revisions we'll add support for Steam, Skype, Google Earth and other commonly requested packages.

### Changes

With this release we've switched to the 3.16.1 kernel, Budgie Desktop v7, as well as addressed some outdated packages present in the last ISO. The default look was 
refreshed, with us switching to Roboto as our primary font, a move away from Droid Sans. Our current default theme is a modification of the Vertex GTK theme, which 
features Evolve OS specific improvements.

We now also include Firefox 32.0 and Thunderbird 31.1.0, as well as updated core libraries, bash 4.2.047 and fixes to os-prober, amongst others.

Please note this is officially the last Alpha ISO, with beta1 expected in the following weeks.

### User Guide

If you are new to Evolve OS, please take some time to read through the [User Guide](https://help.getsol.us/docs/user/intro). It contains useful information
on how to update your system, as well as some common links and how tos.

### Notes

The installer was not adapted for this release, so it still contains the Alpha3 brand and release notes. This was a simple decision to reach, as the installer requires an 
overhaul for Beta 1. If you are currently an Evolve OS user, please just upgrade your installation per the instructions in the Condensed User Guide.

The recommended command line tool for writing the ISO to a USB is `dd`, though users have reported success with both "SUSE Studio Image Writer" and "mintStick".
