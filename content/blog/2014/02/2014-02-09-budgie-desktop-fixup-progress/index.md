+++
author = "ikey"
categories = [
"News"
]
date =  "2014-02-09T15:59:30Z"
title = "Budgie Desktop \"Fixup\" Progress"
url = "/2014/02/09/budgie-desktop-fixup-progress/"
+++

Hello all,

Just a quick status update on the fixes to Budgie Desktop. Currently I'm rewriting parts of the panel component, including the icon-based tasklist. Points of interest:

* GNOME Theme compatibility has been dropped. Too problematic to support a legacy theme and maintain consistency
* The panel is now transparent as seen in the screenshots, currently not themable
* The icon tasklist is around 40% complete, however you can't currently use it to switch tasks, this will be implemented in future commits
<!--more-->
* The requirement for libpeas has been dropped. Supporting 3rd party plugins is currently out of scope
* The menu will be reimplemented to not leak, and to use a popover style window. As 3.12 isn't stable or released yet, an interim BudgiePopover class will be used.

And some screenshots of current progress:

{{< relimg "Screenshot-from-2014-02-08-150632.png" >}}
{{< relimg "Screenshot-from-2014-02-09-153742.png" >}}

That's all for now, as and when the desktop is fully usable again I'll post an update!