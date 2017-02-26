+++
author = "ikey"
categories = [
"News"
]
date =  "2017-01-18T21:59:12+02:00"
featuredimage = "2017/01/flatpak-gnome-books.png"
title = "Adopting Flatpak to Reassemble Third Party Applications"
url = "/2017/01/18/adopting-flatpak-to-reassemble-third-party-applications"
+++

Solus, like most other Linux based systems, distributes the bulk of its software through
binary repositories. To ignore most of the technical details, this is effectively a set
of packages, with an address book to look them up (the repository index).

In certain cases, however, we cannot ship some applications. This is invariably
due to some kind of licensing restriction, which forbids the redistribution of
a package.

For a long time, we've _made do_ with the [Solus Third Party system](https://wiki.solus-project.com/3rdParty).
To alleviate the issue of distribution, the system fetches the application directly from
the vendor source, and turns it into a native `.eopkg` locally. This allows you to
install the application and manage it through the native package management system.

_However..._ This is not without weakness. It's long known that the system is far
from robust, and while it is indeed integrated into the Software Center, it's not
exactly reliable. Or quick. Additionally, there isn't even a way to automatically
upgrade these ..source.. packages, as they have no native origin.

Clearly, a better approach is needed here.

---

### Flatpak, or Snap?

You read that right. The best approach forward for Solus, for something as desirable
yet minor as the Third Party selection, is to use a **non-native** application management
system. Let's first think about our basic requirements here:

 - Enable us to distribute Google Chrome. This is basically the #1 issue.
 - Minimum disruption with regards to integration. We shouldn't need to reengineer Solus to make it "fit".
 - Technically capable
 - Responsive upstream.
 - Simple to integrate into the existing Software Center, to _swap out_ Third Party.

This is a discussion that I've been having back and forth for a long time on social
networks now, and I decided to put the feelers out [one last time](https://plus.google.com/+IkeyDoherty/posts/huGi7ey6GAp).
At the time of writing, 66% of 172 voters were in favour of Flatpak.

### Brand Power

Clearly, in terms of "brand power", Snap has the upper hand currently. It's well known, well publicised,
and receives constant coverage in the news. Flatpak, on the other hand, is often _percieved_
as having a slower rate of development, etc. In truth, Flatpak is actually just as quick
in terms of development and enjoys very frequent updates. So, let us dismiss the power
of the brand, and look at the technical aspects.

### Why Flatpak is our choice

Firstly, and very importantly to us, the so-called "chrome distribution issue" has already been conquered
by [Endless OS](https://endlessos.com/), utilizing Flatpak. On the other hand, this is still
(to the best of my knowledge) at the prototype stage with Snaps.

OK, let's not get hung up completely on a single example. From the perspective of integration,
Snap (`snapd` and `snapcraft`) represents the biggest integration challenge. To correctly and
fully integrate it would require modification of the build system (which disables networking by
default for security!) to provide a full set of builds for the packages and their dependencies.
Additionally, AppArmor (not used by Solus) is also required.

On the other hand, integrating Flatpak into Solus was as trivial as packaging `ostree` and `flatpak`,
barring some minor changes which we're [already upstreaming](https://github.com/flatpak/flatpak/pull/496).

You may rightly argue that I'm being lazy. To counter those points, we must look to the **future**
uses of Flatpak within Solus.

### The ABI problem (We've been here before.)

In a nutshell, a Snap makes use of Ubuntu libraries to provide elements of the runtime. With the
recent rise of traditional modes for Snap builds, we're looking at relocating Ubuntu/Debian files
to Solus and expecting them to work. Even with "full" isolation, this still remains an issue.
As the creator of [Linux Steam Integration](https://github.com/solus-project/linux-steam-integration), we are
**painfully** aware of the shortcomings of this approach.

On the other hand, Flatpak does use full runtimes (though this can be disabled, which may be useful
for the Chrome problem), and does seek to resolve the ABI problems, not just the relocatable package
problem. After speaking with [Alexander Larsson](https://plus.google.com/+AlexanderLarsson/posts), I'm
confident that we can utilize Flatpak to further **improve** our Steam runtime in future. Essentially,
Solus would host a `solus-gaming` runtime, built **specifically** for Steam compatibility, without
risking host mangling or having to compromise. This is an area where we can readily put the
Solus machinery to work to providing the best possible experience.

### Upstream engagement

As previously stated, I've put this matter to the Internet a number of times over a fair period of
time. However, the only times I've been engaged on a **technical level** from either camp, have always
come from Flatpak. I'd like to personally thank [Alexander Larsson](https://plus.google.com/+AlexanderLarsson/posts) of
Red Hat, the chief developer of Flatpak, for the enthusiasm, honesty, and technical discussions we've
had on these issues.

While I do not **expect** developers from either camp to step forward and have these discussions, it
certainly does wonders for confidence. This is an upstream I certainly feel comfortable working with,
and is clearly passionate about their software.

## Integration

Well, enough babbling from me. You get the picture, we're going with Flatpak. It's a great solution,
and in terms of the future, the most suitable route we can take. There is a responsive, engaging community,
and it ticks all the boxes for what we want.

Additionally, Flatpak supports AppStream, which Solus _already makes use of_, so it's an instant fit
in terms of integration into our Software Center.

---

I look forward to getting some feedback on our integration of Flatpak into Solus, addressing the elephants
in the room such as [theme integration](https://github.com/flatpak/flatpak/issues/114), and empowering
Solus users to choose the software they want.

Remember, we'll always look initially for integration into the Solus repositories natively first. This
way we can ensure we always provide a first class experience. Going forward, Flatpak will replace our
use of Third Party entirely, and we will be hosting a public flatpak repository which will grow and
blossom over time.
