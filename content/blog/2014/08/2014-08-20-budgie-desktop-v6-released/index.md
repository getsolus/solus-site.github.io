+++
author = "ikey"
categories = [
"Budgie"
]
date =  "2014-08-20T19:29:14Z"

title = "Budgie Desktop v6 Released"
url = "/2014/08/20/budgie-desktop-v6-released/"
+++

I am pleased to announce the release of Budgie Desktop version 6. This release sees several fixes in the panel and menu components, as well as the 
introduction of a brand new Panel Editor, as well as customisable layouts and GNOME Panel theme integration.
<!--more-->
This particular release represents 42 individual commits, with 33 files changed, 1979 insertions and 553 deletions. For a more complete changelog, visit our 
[release page](https://github.com/BuddiesOfBudgie/budgie-desktop).


### What's new?

In short, you can now alter your panel layout to your hearts content with the introduction of the Panel Editor. You can invoke this dialog by either right clicking on the 
panel and selecting "Preferences", or by executing "budgie-panel --prefs".

You can dynamically add or remove applets, enabling you to opt for a more traditional layout with the "Task List" applet and the newly introduced "Workspaces" applet.

Several menu bugs were fixed, and as a result it dynamically updates when your applications change (alteration of .desktop files), no longer segfaults when they do 
change, and all results are now included correctly when searching.

Package maintainers will be pleased to know that **make distcheck** and **make clean** now complete successfully.

Note that network/sound support have yet again been delayed until v7; I apologise for this but the issues will be addressed before v7 is tagged and pushed as 
updates, with support for notification icons (natray) and app indicators, via new applets. Many changes have already gone in to support this, notable the option to 
place any applet within the dedicated "status area".

### GNOME Panel Theme Integration

Using the panel editor you can enable the GNOME Panel theme integration mode, which takes effect at start time. This means you'll need to restart the panel 
(i.e. log out and back in) for the effects to be visible. In short it will enable budgie-panel to look like gnome-panel by using the native PanelToplevel and PanelApplet 
styling. Remember this is fully reliant on the theme supporting gnome-panel, and is provided as an alternative option for those preferring this style. Also note it is 
early days and some issues may exist.

### Applets

Budgie now supports applets, and as a starter I've included 2 additional applets: Task List, and Workspaces. You can see them in operation in the screenshot below.


**Disclaimer**: The panel shadow you see is not present in the v6 release, and is an experimental feature currently being worked on. It just happens to be a 
lot better looking so I'll tease you with the screenshot instead.

### Finally

Thank you to everyone who is continuing to support the Budgie Desktop project. I look forward, as with every release, to engaging with you and getting feedback on how to continue improving the project. The roadmap for v7 is very clear: Support tray icons, indicators and become officially stable. No biggy.
