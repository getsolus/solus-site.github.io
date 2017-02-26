+++
author = "ikey"
categories = [
"Budgie",
"News"
]
date =  "2014-03-12T21:52:00Z"
title = "Budgie Desktop 2 Released"
url = "/2014/03/12/budgie-desktop-2-released/"
+++

Hi all,

Very quick post here, v2 of Budgie Desktop has been released! Please check [GitHub](https://github.com/solus-project/budgie-desktop/releases/tag/v2) for more 
information about the release. A variety of bugs have been fixed, and most notabaly, users can now logout, shutdown and reboot all from within budgie-desktop.

Note budgie-desktop uses systemd to perform shutdown and<!--more--> reboot, so if you're not using systemd, I'm afraid those options won't be available. 
(You can rely on those options within your display manager, however). Do note that the dialog currently shows in the tasklist; this is intentional. There may still be some 
issues with the dialog, so I opted to ensure it could be alt-tab'd to if it needs debugging.

The plan now is to add basic network and polkit support to budgie-desktop, and release a v3 with Evolve OS Alpha 1. In the mean time, the OBS repositories have already 
been updated and v2 is on its way, so please enjoy! 🙂

[http://software.opensuse.org/download.html?project=home%3Aikeydoherty%3Aevolve&package=budgie-desktop](http://software.opensuse.org/download.html?project=home%3Aikeydoherty%3Aevolve&package=budgie-desktop)

{{< altimg "2014/03/Screenshot-from-2014-03-12-212937.png" >}}

{{< altimg "2014/03/Screenshot-from-2014-03-12-200211.png" >}}