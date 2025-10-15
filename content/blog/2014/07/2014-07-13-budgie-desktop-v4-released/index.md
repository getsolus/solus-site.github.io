---
authors:
  - name: Ikey Doherty
    link: https://github.com/ikeycode
    image: https://avatars.githubusercontent.com/u/53261402?v=4
tags:
- Budgie
date: "2014-07-13T01:27:04Z"
title: Budgie Desktop v4 Released
url: /2014/07/13/budgie-desktop-v4-released/
---

Hello all,

I've just released v4 of the Budgie Desktop, and you can see more information about this release on the 
[GitHub release page](https://github.com/solus-project/budgie-desktop/releases/tag/v4)

<!--more-->

Notable differences include:

<ul class="task-list">
- Fix numerous memory leaks
- Set DESKTOP_SESSION as gnome for openSUSE users (YaST problems)
- Support system-wide (only) XDG autostart files

- Fix minimise animation
- Speed up remaining animations
- Dynamically reload menu when it changes (software update/remove/install)
- Enable use of panel-main-menu keybinding to launch Budgie's main menu
- Several BudgiePopover performance tweaks
- Implement suspend support in the session dialog
- Introduce a new run dialog (preview, linked to panel-run-dialog keybinding) -- written in Vala.

![relimg](https://solus-project.com/pkg_screens/budgie-run-dialog.png)

Note that I have made the decision to rewrite Budgie in Vala. Given the evolving complex relationship between the components, now seems a very sensible time to 
rewrite in a truly object orientated language. Once this is complete, a proper applet API will be introduced. The main benefit of the change will be lowering the entry 
barrier for those wanting to contribute to the project.

Another benefit of using Vala is reducing the complexity of the codebase, and enabling faster feature development. An example of this would be budgie-run-dialog, 
which was written in a few hours today. It features auto-completion and no doubt has bugs, but make sure to test and report on GitHub! 🙂

This does indeed mean that the Budgie project can now become more ambitious, and tie in with the Evolve OS philosophy of reducing technical debt.

Evolve OS users will see their update come along tomorrow and the OBS repositories for Fedora and openSUSE users have already been updated. The simple reason for 
the delay in the Evolve OS repo publishing is the upcoming alpha 2, which will be release later on today (Sunday)