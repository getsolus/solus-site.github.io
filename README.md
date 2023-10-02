# Solus Site

Static, [Hugo-based](https://gohugo.io) home of Solus and its projects. This website makes use of:

1. A custom theme, [`solus-hugo-theme`](https://github.com/getsolus/solus-hugo-theme).
2. Website content itself, including blog posts, in `content`.

**Note:** SASS styling is provided inside the Hugo themes and is built upon [`solbit`](https://github.com/getsolus/solbit).

## Creation

### New Post

To create a new post, change to the main directory of this repo (solus-site.github.io).
From there, call `hugo new PATH`. The `PATH` format is `blog/year/month/post-title/post-title.md`.

For instance, to create a blog post for Feb. 2023 with the name "Welcome To The New Site", you would use: `hugo new blog/2023/02/welcome-to-the-new-site/welcome-to-the-new-site.md`.
This would create `content/blog2023/02/welcome-to-the-new-site/welcome-to-the-new-site.md`.

The markdown file will be created with our default configuration, which you can update as necessary. For metadata, most fields are self-explanatory.

- "name" - should match the name for your data file under `data/team/name.yml` (required)
- "featuredimage" - a relative link to an image such as "/image.png" (optional)
- "categories" is set to "news" by default. You can optionally add others.

Any featured image file must be in the same directory as the blog post.

### File and directory standards

Each year has a directory, with subdirectories for each month which has content.
Each post has a directory under the appropriate month. The directory and filename are the title of the post. (It's also OK to name the markdown file `index.md` but then you'll have to manually edit the title).
As an example, as of October, the directory for 2023 looks like:

```
2023
├── 04
│   └── a-new-voyage
│       ├── featured-image.jpg
│       └── index.md
├── 07
│   └── solus-4-4-released
│       ├── index.md
│       └── solus-4.4-featured.jpg
├── 08
│   └── state-of-solus-august-2023
│       ├── index.md
│       └── StateOfSolusAugust2023.jpg
└── 10
    └── solus-and-hacktoberfest-2023
        ├── hf10_horz_fcd_rgb.png
        └── index.md
```

Example of blog post metadata

```
---
title: "Solus 4.4 Released"
author: "joshua"
categories:
  - news
  - releases
date: 2023-07-08T00:27:44+03:00
featuredimage: "/solus-4.4-featured.jpg"
url: "/2023/07/08/solus-4-4-released"
---
```

## Development

### Setup

To set up your Solus system for developing the website, you first need to ensure you have the necessary dependencies installed. Run `make setup` to install the necessary dependencies as well as init git submodules.

Next, run `make sync` to update the Hugo themes.

### Local Server

You can start up a local server by calling `make local` in the `solus-site` directory. This will expose the site on `http://127.0.0.1:1313`. Use this to see your changes and make sure things look as you expect before submitting a pull request.

**Note:** You will not need to restart the server when doing changes. Hugo does file watching across all the things.

### Deployment

Merge the `main` branch into `deploy` and push.

### Styling

We use 4-char wide tabs, not spaces, in everything **except** the YAML files, which use 4 spaces. Sorry!

## Licensing

Apache 2.0
