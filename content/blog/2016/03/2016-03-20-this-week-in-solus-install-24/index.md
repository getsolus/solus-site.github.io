+++
author = "joshua"
categories = [
"Budgie",
"News",
"Packages",
"Plans",
"TWIS"
]
date =  "2016-03-20T23:57:09Z"
title = "This Week in Solus -- Install #24"
url = "/2016/03/20/this-week-in-solus-install-24/"
+++ 

Welcome to the 24th installation of This Week in Solus. 

{{< relimg "brace-yourselves-knowledge-is-coming_19021.jpeg" >}}

#### Sundays with Solus

This Sunday we had our second Sundays with Solus session, our Hangout session that happens on the first and third Sunday of every month. As well as the video below, there are sections throughout this blog post that highlight and expand upon 
information provided in this session.

{{< youtube "1h4t22IOh1U" >}}

#### Branding

As discussed in the latest Sundays with Solus, we are currently evaluating and planning branding changes to improve the discoverability of the work currently under the umbrella of the Solus Project. These branding changes will **not** affect Budgie or 
Solus (the operating system).

#### Budgie Improvements

##### Tweak to your heart's content

The upcoming version of Budgie will see the inclusion of functionality to change your cursor theme, as shown below. This is part of a general effort to eliminate the need for GNOME Tweak Tool for the **majority** of use-cases, as highlighted by 
[this issue](https://github.com/solus-project/budgie-desktop/issues/341). The following functionality will also be added into Budgie for the next Budgie version:

- Toggling of enable / disable desktop icons.
- Setting fonts for "Window Titles", "Interface", "Documents", "Monospace"

{{< relimg "Screenshot-from-2016-03-20-17-47-29.png" >}}

##### Bluetooth

Did the improvements of Budgie stop there? **No. Silly question.** Ikey has also landed Bluetooth support into Budgie. You can now toggle Bluetooth Airplane Mode, have quick access to settings, etc.

{{< altimg "2016/03/Screenshot-from-2016-03-20-17-17-48.png" >}}

##### Can you hear me now? Oh, wrong audio input device.

Have multiple audio input or output devices and trouble discerning between them? Wonder no longer, Ikey has resolved [this issue](https://github.com/solus-project/budgie-desktop/issues/337) and will land in the next Budgie release!

{{< relimg "eba34520-eec6-11e5-9d42-b96eddf99da4.png" >}}

#### Font Improvements

Sometimes the biggest improvements to a desktop experience are the things we least expect. In my opinion, one of those things is font rendering. Unless you're obsessed with cat videos or staring at pictures of kittens all day, you deal with typography a lot, 
and when there is an absolutely dreadful font or anti-aliasing just isn't good enough, you can really notice.

Solus now provides a freetype2-subpixel package, which enables subpixel rendering in freetype2 (**the name of the package didn't give it away, right?**), and we are assessing providing a future USA / Japan ISO without said "encumbered" packages.

Our default monospace font has also changed to Hack, falling back to Droid Sans Mono in the event Hack is not installed. For Solus 1.2, we will ship with Hack out-of-the-box.

#### Hybrid Graphics

Anyone that has used Hybrid graphics on Linux knows the experience of it leaves a lot to be improved. Ikey is currently looking for assistance in obtaining a laptop with hybrid graphics (**preferably within the Republic of Ireland**), so we can do 
**proper** enablement and integration of hybrid graphics in Solus. If you have any suggestions, feel free to reach out to him on Google+ or in IRC.

#### Multilib

Work has continued to progress towards enabling multilib dependencies needed to provide a smooth experience for applications like Skype, Steam, and WINE. bison, flex, and pam have been converted to support multilib, in addition to minor things like 
fixing acl-32bit and attr-32bit. We still aren't there **yet**, but we are on track for proper support for 1.2.

#### Snappier Desktop

The Solus Hardware Config project enables us to ship configuration changes that improve the out-of-the-box experience of Solus. As a further continuation of our mission to provide an
operating system designed and optimized for the desktop, we now ship with a sysctl configuration that changes our default swappiness to 10, compared to the prior 60. Swappiness controls how often the kernel “pages” (or transfers data) out to disk or the 
swap file / partition.

On servers, this is usually a much higher value, because processes are typically longer running and more memory intensive. For desktops, we put this to a much lower value, because typically we have fewer memory intensive long running tasks, and it leads to 
*lower latency*, thus a more responsive desktop system.

#### Stateless in Seattle

As we all know, the goal of Solus 2.0 is to be entirely stateless. We should ship sane default without relying on an overlap of domains between our configuration and your configuration, ensuring the default OS itself is immutable, and that there is no conflict between the vendor and local site admin configuration.

Ideally, upon the arrival of Solus 2.0, you'll be able achieve a "factory reset" by simply removing configuration files from /etc, as well as enabling the ability for easier backup and restoration of configuration files.

Work has been done this cycle, especially in the last couple weeks, on transitioning more software over to being stateless. Ikey has done a lot of work, contributed upstream, to enable statelessness in 
[budgie-desktop](https://github.com/solus-project/budgie-desktop/commit/b1f9f5b808b5b6c8e70f6677a0ee22dab555017b), 
[glib](https://bugzilla.gnome.org/show_bug.cgi?id=763539), 
[at-spi2-core](https://bugzilla.gnome.org/show_bug.cgi?id=763540), 
[gtk+](https://bugzilla.gnome.org/show_bug.cgi?id=763541), 
[mpv](https://github.com/mpv-player/mpv/pull/2933), 
[XDG](https://lists.freedesktop.org/archives/xdg/2016-March/013687.html) and is following the example set by 
[Clear Linux](https://clearlinux.org/features/stateless).

---       
#### Package Updates

Below is a highlight of software that has been updated recently:

- atom 1.6.0

- codeblocks 16.01

- erlang 18.3

- firefox 45.0.1

- focuswriter 1.5.5

- geany 1.27 and added vte2 as a rundep for integrated terminal

- git 2.7.3

- glances 2.6

- hexchat 2.12.0

- kernel 4.4.6

- nautilus -- Backported "Delete Permanently option from upstream

- nmap 7.10

- nodejs 5.9.0

- pulseaudio now has stateless support

- qtox 1.3.0

- telegram 0.9.33

- thunderbird 38.7

- toxcore 3747

- transmission 2.92

- vlc now has opus support

- youtube-dl 2016.03.14

  
