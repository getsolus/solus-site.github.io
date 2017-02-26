+++
author = "ikey"
categories = [
"News"
]
date =  "2013-12-14T13:23:03Z"
title = "Desktop: Code-name Budgie"
url = "/2013/12/14/desktop-code-name-budgie"
+++

Some people may now be wondering what we intend to use as the desktop environment in Evolve OS. If you've followed my recent Google+ posts, you may already know about the Budgie Desktop.

Budgie Desktop integrates with the GNOME stack, providing a powerful yet traditional desktop using modern techniques and technology. With a panel down the bottom of the screen, and a menu reminiscent of 
Cardapio, most users will feel at home instantly with the desktop.
<!--more-->

The core components are as follows:

- **budgie-wm**: This is a simple wrapper around libmutter, which is used by GNOME Shell. We use it to manage our windows, customize animations and provide a wallpaper of your choice.
- **budgie-panel**: A traditional panel that currently sits at the bottom of the screen. Future versions will enable users to use 3rd party plugins to extend their panel experience to suit their needs.
- **budgie-session**: Simply bootstraps the components of the desktop to get you working straight away. Does nothing more than launch gnome-settings-daemon, the window manager and the panel.

If you're interested in checking out the code (which is written in C), please [check out the GitHub page](https://github.com/solus-project/budgie-desktop)

{{< altimg "2013/12/Screenshot-from-2013-12-14-131850.png" >}}