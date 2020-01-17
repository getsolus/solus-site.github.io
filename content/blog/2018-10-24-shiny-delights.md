---
title: "Shiny Delights | The Roundup #11"
author: "joshua"
categories:
- news
- packages
- roundup
date: 2018-10-24T01:36:29+03:00
featuredimage: "/2018/10/shiny-delights.jpg"
url: "/2018/10/24/shiny-delights" # Example, /2017/01/18/adopting-flatpak-to-reassemble-third-party-applications
---

Welcome to The Roundup #11, your bytes of Solus news. In this roundup, we're talking about all the availability of our public Plasma testing ISO, latest stack upgrades we've performed, and an update on feedback for improving community engagement!
<!--more-->

## Plasma Testing ISO

A testing ISO for the Plasma Edition is now available. It includes [Plasma desktop 5.14](https://www.kde.org/announcements/plasma-5.14.0.php) and is complemented with the KDE Frameworks 5.51, KDE Applications 18.08.2 and Qt 5.11.2 releases. Solus users can now perform a clean install of the Plasma desktop with the latest updates.

Over the last couple of weeks a majority of the packages have been updated and rebuilt. This provides a stateless implementation of the Plasma desktop on top of Solus.

### Known Issues:

- Some icons are missing in the Software Center, this will be addressed in the rewrite.

ISO: [Solus-Plasma-Testing-v1.iso](https://mirrors.rit.edu/solus/images/Solus-Plasma-Testing-v1.iso)

SHA256SUM: 8baf1ee5d68fa1153d9f650cad51b7610557c59ca0b1ad181e0a41572eb99743

Bugs can be filed [here](https://dev.getsol.us/) with the Plasma tag if it is specific to the Plasma edition.

## Stack Upgrades

It's been all hands on deck this last week as we perform stack upgrades. Let's start on October 17th where it was kicked off with the upgrade of KDE Plasma to the 5.14.1 bugfix release. This was delivered in last Friday's sync and Peter has continued improving the KDE + Plasma experience on Solus by backporting multiple fixes from git to our packages. Let's highlight some of the fixes featured in Plasma 5.14.1, you can read the announcement and see the full changelog [here](https://www.kde.org/announcements/plasma-5.14.1.php):

- KWin
  - There's been a fix to a logic error in the user menu blocking activity updates.
  - Visual artifacts caused by the maximize effect for wobblywindows have been resolved.
- Plasma Desktop
  - Keyboard navigation on the desktop is now fixed thanks to focus fixes.
- Plasma Workspace
  - The menu layout option should now no longer always be disabled in Global Menu Applet.
  - The popup indicating the device can now be safely removed in Device Notifier will now auto-hide.
  - Slideshow Wallpaper "Open" and "Next" context menu actions should now use the translated string.

Peter has backported a few fixes to various KDE packages, such as:

- kiconthemes: Back ported a patch to fix a crash in the icon dialog.
- solid: Backported a patch to allow removable disks to spin down when using the "safely remove" context menu option.

Libssh was upgraded to 0.8.4 to resolve CVE-2018-10933 and all packages which relied on libssh have been rebuilt. Beyond the security fix, libssh 0.8.4 also introduces the following (among other changes):

- Added support for rsa-sha2
- Added support to parse private keys in openssh container format (other than ed25519)
- Added support for diffie-hellman-group18-sha512 and diffie-hellman-group16-sha512
- Added sha256 fingerprints for pubkeys
- Improved performance and reduced memory footprint for sftp
- Various fixes around reading a closed channel, ecdsa publickey auth, memory leaks, and more

GEGL, the graph-based image processing framework, has been upgraded. This framework is used in GMic, MyPaint, GNOME Photos, and GIMP to support non-destructive image processing capabilities. This upgrade reduces memory clearing overhead, introduces new APIs and operations around buffers and GIFs, and more.

libinput has been updated to the latest bug fix release for the 1.12 series. This upgrade introduces various fixes and handling of touchpad quirks, such as:

- Fix product ID for MS Nano Transceiver
- Restore and extend fixes for ELAN touchpad quirks
- Added a quirk around the Kesington Orbit's scroll wheel.
- Disable pressure on the Asus UX302LA touchpad
- Fix the trackpoint multiplier for the Dell E7470

Our NVIDIA graphics drivers have seen numerous changes this week, which users will get to experience on this Friday's sync. For starters, we have introduced a new NVIDIA 390 graphics driver, as it is now a long-term branch. This can be installed via `nvidia-390-glx-driver`.

Additionally, we've upgraded both `nvidia-glx-driver` and `nvidia-beta-driver` to `410.66`, as that's been promoted to the latest of that long-lived branch. This follows on our deprecation of the NVIDIA 304 driver when we upgraded to X.Org 1.20 series, as this is now solely handled by the X.Org Nouveau driver. We are currently investigating supporting the 396.xx driver for DXVK testing purposes as well and will have a solution before Friday's sync. Do note that 396 supports a more limited subset of cards, which you can see [here](https://www.nvidia.com/Download/driverResults.aspx/137211/en-us).

libicu, which is a library responsible for software internationalization, has been upgrade to the latest release, 63.1. This release has numerous fixes and improvements, such as:

- Added Venezuela's Bolívar Soberano (VES) as a currency
- New Japanese calendar era from 2019
- New API for number and currency range formatting
- The following languages have been added to ICU: Sindhi, Maori, Turkmen, Javanese, Interlingua, Kurdish (ku), Xhosa

## Updates on Community Engagement

First off, I'd like to thank everyone that has reached out with their ideas on how to improve community engagement, as well as suggestions for new social networks and messaging platform options.

I'd like to go over some of the common suggestions we've gotten since [the posting of our blog](/2018/10/11/improving-community-engagement).

### Messaging

#### Riot + Matrix

Riot.IM (and the accompanying Matrix network) is one of the two most suggested options to adopt and I understand why. For the most part, it satisfies our requirements, such as:

- It supports buffering messages.
- It's open source (as is Matrix).
- It supports multiple channels in the forms of "rooms".
- It is mobile friendly, with clients for Android and iOS.
- Users are able to engage without needing an account.

However, there are issues with supporting Riot (and with Matrix) that should or need to be addressed before we'd adopt it.

Riot does not support voice channels. This is [a known issue](https://github.com/vector-im/riot-web/issues/3546) that I am subscribed to, so I will keep informed about any resolution to it. Additionally it doesn't support [push-to-talk in conferences](https://github.com/vector-im/riot-web/issues/5993). The latter is not a requirement however, just something I noticed in my research.

In my opinion, the decentralized nature of Matrix enables it to be more easily abused by spammers and otherwise toxic individuals. These individuals can easily jump on other public Matrix servers, which in general makes it more difficult to maintain a moderated set of rooms / channels. Compared to IRC, most users are associated with either an I.P. address or are directly registered with the centralized IRC server, which makes it substantially easier to implement blacklists / bans. 

However, unlike IRC, you can delete messages via clients like Riot, which means any **new servers or users** will not receive the message (existing servers and users will still see it unfortunately). There are still various issues around message deletion and roles that should ideally be resolved though, such as [sending server ACLs](https://github.com/vector-im/riot-web/issues/7084) and [support for redacting multiple messages](https://github.com/vector-im/riot-web/issues/3689). Beyond that, I've had discussions with Matrix developers in their channel during my testing and they're absolutely aware that there are improvements that can be made to moderation tooling.

Overall, Riot and Matrix **do** show promise. I'll be keeping an eye on the related issues going forward and I remain hopeful that Riot (and Matrix as a whole) will provide a good option for our community in the future.

#### Rocket Chat

Rocket Chat is the second most recommended chat solution and is a really [compelling one](https://github.com/RocketChat/Rocket.Chat#features) for users wanting a feature-rich chat implementation. It supports multiple rooms, direct messages, private and public channels, and a load of fancy features like custom emojis and media embedding.

However, it does not meet the following requirements:

1. It does not support [audio channel](https://github.com/RocketChat/Rocket.Chat/issues/10794) or similar [voice channels like Discord](https://github.com/RocketChat/Rocket.Chat/issues/6622).
2. It does not appear to support engaging via anonymous or guest accounts for support purposes, at least during my testing when attempting to join https://open.rocket.chat
3. It lacks user moderation around [I.P. banning](https://github.com/RocketChat/Rocket.Chat/issues/2885).

I am subscribed to the above mentioned issues to keep an eye on the progress of Rocket Chat going forward.

#### Mattermost

Mattermost does not meet our requirements, specifically:

1. It does not support [voice channels](https://mattermost.uservoice.com/forums/306457-general/suggestions/34258345-voice-channels-like-discord-or-mumble)
2. [Various moderation features](https://mattermost.uservoice.com/forums/306457-general/suggestions/12874797-add-read-write-permissions-for-channels) appear to be under review for Mattermost Enterprise Edition, as opposed to being placed under the Community edition.

Mattermost generally appears to be less feature rich and less likely to suit our needs.

### Social Media

I appreciate all the suggestions from our community on various new social media / engagement platforms for Solus to join. Generally speaking, we are **not** opposed to joining them (namely Diaspora and MeWe, which have been the two most suggested options), however we want to improve our first-party services first before we expand. Keep the suggestions coming, I'll keep them bookmarked and assess them all when we're ready!

### Other Suggestions

We've received a few other suggestions that I'd likely to go over for improving community engagement and making it easier to access Solus news.

**Feed Reader**

Implementing a feed reader / RSS reader into Raven with "Solus news" enabled by default. - This is something we've gotten a lot of positive feedback on and it was something I suggested in our News section after we implement a new news hub. Certainly something we need to address in Budgie 11.

**Improving support for non-English speaking users.**

The need to improve support for non-English speaking users is something we're absolutely aware of. As a native English speaker living in a country that has neither its primary or secondary language as English, having support networks for **your** language is a real enabler for the community (or society) around it.

Once we deploy a Transifex alternative, I will be making it our #1 priority to get the website and Help Center in the position to support multiple languages. There are some technical hurdles I need to overcome with Hugo to make it possible, but nothing that isn't impossible. Furthermore, I will be investigating the viability to making language-specific sections of Flarum when I deploy that and updating our support / community involvement pages to reference non-English resources.

### What Has Been Done Already

As part of our new [GitHub org](https://github.com/getsolus), I've actively worked to ensure new teams are set up to reduce barriers (such as awaiting us to approve PRs) and maximize our own capabilities. With the new Third Party repository, there are now two new active contributors that have direct push access, which should mean updates to Third Party occur in a much more expedited fashion. Other repositories, such as `budgie-site`, are now part of the GitHub org so I may resume improvements and updates to the Budgie website. Beyond that, all of the Core Team have been set as owners of the organization, so they have full access to make any changes (repo creation, adding new members, permission changes, etc.).

I've also begun the process of migrating various projects to Phabricator, starting with our branding packages. The following branding packages are now available via Phabricator:

- Budgie Desktop Branding
- GNOME Desktop Branding
- MATE Desktop Branding
- Plasma Desktop Branding

The above mentioned projects were considered the most likely initial candidates for migration as they're not intended to be distro agnostic (they're branding packages for our ISOs). I'll be working on getting tooling set up for tarball publishing and project pages soon.

### Upcoming Hackfest

We will be doing a hackfest this coming Saturday (October 27th, 2018) at 1400 UTC (10am Eastern Time, 5pm Helsinki). During this hackfest, Bryan will be working on improving the state of JACK support on Solus and I'll be working on the new indexer / tooling for the Help Center.

{{<youtube "dIEs0j4reFk" >}}