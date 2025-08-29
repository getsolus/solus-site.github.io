+++
author = "ikey"
categories = [
"News"
]
date =  "2014-07-13T20:15:55Z"

title = "Alpha 2 Released"
url = "/2014/07/13/alpha-2-released/"
+++

That's right, one week has passed and you have a new alpha to play with. This is the second alpha of Evolve OS, and comes as a 64-bit ISO. This image now also 
comes with Budgie Desktop v4, GIMP 2.8.10 and GNOME Maps 3.10.0.

Please note that we currently do not support EFI. Please do not attempt to boot in an EFI setup, and instead boot using legacy BIOS compatibility if you are affected. 
With Alpha 3 we will actually ship two images, one legacy, and one EFI only. This will save a lot of confusion in the future and actually makes life far easier for me, as 
opposed to a hybrid ISO configuration.
<!--more-->

![relimg](https://solus-project.com/release_images/a2/rundialog.png)
## Changes

The image now automatically logs in as the live user, but please remember that the desktop does not yet automatically "start" until you move your cursor. So, 
move your cursor! 🙂 This is a bug stemming from a conflict between gnome-settings-daemon and budgie-wm, which will be resolved shortly in an update.

The installer didn't get much love this week, but issues relating to password length and usernames have now been resolved. You must use a password of at least 6 
characters, and your username must be lower case. When the installer UI is overhauled the guidelines will be made clear, and a simple length rule will be replaced with 
actual password quality information.

Nautilus now displays local devices, and dbus related issues have been resolved with a workaround involving dbus-launch. You can now also reboot your machine without 
having to enter a password, due to an update in our systemd policy.

You're now using Budgie Desktop v4 in this ISO, which features a new run dialog! Just hit ALT+F2 to invoke the dialog, and Escape to close it. Adding to the easier integrations 
expected of a desktop, you can now use the Super_L (Windows key, to you an I) to launch Budgie Menu. There are currently some random focus issues here, if you report 
them, they shall be fixed!

## How do I boot Evolve OS?

Quite simply, you can boot directly from a CD (slow, slow, slow. This just needs to end)  or use the 'dd' command to write the ISO directly to a USB stick. (Much better, 
tis faster.) Note that **unetbootin will not work**! There is currently no support for Evolve OS, so just remember this is a hybrid ISO and you can write it directly to a USB stick.

Also note the installer's UI is actually in its infancy, and will be undergoing a bit of an overhaul soon. This is the polite way of saying its a bit limited right now and you 
can't do fancy things like automatic partitioning or set a /home partition. Well, this is an alpha 🙂

## But.. I have Alpha 1 installed..

Awesome, then update:

```
sudo pisi up
```

Tada. Done.

## Downloading Evolve OS

Nobody likes scraping for URIs on a release page (See Darren, I listened!) -- so we now have a Download tab. Right up the top of the page there. Just give that link a 
click and you'll see the updated download locations.

## Final word..

Thank you so much to everyone who has been supporting the project, downloading and testing, it was a truly fantastic reaction to our very first alpha last week. Hopefully 
you'll stick around here for a while 🙂 If something is needed, and we're missing it, file a bug. It will be dealt with 🙂

## Screenshots

![relimg](https://solus-project.com/release_images/a2/gimp.png)

![relimg](https://solus-project.com/release_images/a2/maps.png)

![relimg](https://solus-project.com/release_images/a2/nautilus.png)