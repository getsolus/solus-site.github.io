---
authors:
- image: https://avatars.githubusercontent.com/u/5157277?v=4
  link: https://github.com/EbonJaeger
  name: Evan Maddock
tags:
- devlog
- webdev
date: '2026-03-10T15:00:00Z'
title: 'More Website Improvements'
url: /2026/03/10/more-website-improvements
---

![Hero Image](website-Glassmorphic-preview.jpg)

If you haven't visited our website in a while, you may notice some changes. We've recently made some tweaks to the website, as well as some larger improvements. All of this work is building on the [website rewrite](/2025/11/22/unveiling-our-new-website) that we did over the course of 2025. In this Devlog post, we'll be going over the recent work, and a couple of ideas we have for what we want to do with the site next.

## New Building Blocks

One thing that we've done is add a couple of reusable components that facilitates quickly building a page with a uniform look across the entire website. The main component is called a `section`. It has two types: a normal mode, and an alternate mode that has a top and bottom border, and a colored background. Both forms feature a header that is followed by whatever content we want to put inside it. They have uniform sizing for a consistent look and feel, and the alternate form enables us to visually separate different sections in a single page.

We also have a special glass version for when we want to *really* highlight something. It uses our colors combined with [Glassmorphic](https://www.geeksforgeeks.org/css/glassmorphism/) principles, to make the section really **pop**.

## About Pages

The first thing we did once we made these elements was create a new section of our website. This section has pages that contains information about Solus as an organization, and the people that make up the Solus teams. All of that information was already on our Help Center, but we felt that it made more sense for that information to live on our main website. The content is a little more condensed from the old Help Center version, the goal being to make it more easily digestible.

## Devlog Migration

The Devlog posts from our Help Center have been migrated to the main website. When the Devlog was first created, the idea was to have it be separate from the main blog post. On reconsideration, though, the consensus was that it made more sense for those posts to be a part of the main website blog, just with a different tag. That way, readers don't have to follow multiple different places to see what's happening around Solus.

## Tweaks

### Home Page

While the overall design of the home page hasn't really changed, a number of tweaks have been made to make it look even better. Right away, you'll notice a new area using our new Glassmorphic section with a list of the top Solus features, giving a very quick at-a-glance overview of what Solus is. Next, we've replaced the images in the informational section with screenshots of relevant programs running on Solus. This makes the home page feel more "complete".

### Downloads Page

Our downloads page is now using the new sections, along with all of the other pages on the site, and a new section has been added to list the hardware requirements to run Solus. This information is also already present in the Help Center, but we felt that it made sense to have that information directly on the downloads page. We also added links pointing to our installation documentation, and show users where they can go to receive support.

### Navbar

The ordering of the navigation bar is a bit different now. All of our community links have been consolidated to their own submenu, making the navbar a bit more organized. This space savings meant that we could add a search bar, making it much easier to look for content on our website, especially in all of our old blog posts.

#### Mobile Sidebar

With the update to Hextra 0.12, the mobile navigation sidebar now uses the same items as the desktop navbar. With that update, we ditched our custom sidebar implementation to use the built-in one from Hextra.

## What's Next?

For myself, the next item I want to tackle is the edition cards on the downloads page. While the Hextra cards look good, I don't think they're intended to be used in this way. Plus, with everything that I've learned so far, I want to challenge myself to try to build something even better.

Malfisya has also been thinking about how we can better integrate funding information in our website. Details on that are still being worked out.

Something else that we are thinking about is a page in the About section detailing the history of Solus. We're still unsure if we want to add such a page, or what it might look like.

That's all for now, though! Stay tuned for the next installment.
