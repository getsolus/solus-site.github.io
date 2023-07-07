# Solus Site

Static, [Hugo-based](https://gohugo.io) home of Solus and its projects. This website makes used of:

1. A custom theme, [`solus-hugo-theme`](https://github.com/getsolus/solus-hugo-theme).
2. Website content itself, including blog posts, in `content`.

**Note:** SASS styling is provided inside the Hugo themes and is built upon [`solbit`](https://github.com/getsolus/solbit).

## Creation

### New Post

To create a new post, call `hugo new PATH`. For instance, `hugo new blog/2023/02/welcome-to-the-new-site.md` would create `2023/02/welcome-to-the-new-site.md` with our default
configuration in the `content/blog/` directory.

## Development

### Setup

To set up your Solus system for the website development, you first need to ensure you have the necessary dependencies installed. Run `make setup` to install the necessary dependencies as well as init git submodules.

Next, run `make sync` to update the Hugo themes.

### Local Server

You can start up a local server by calling `make local` in the `solus-site` directory. This will expose the site on `http://127.0.0.1:1313`.

**Note:** You will not need to restart the server when doing changes. Hugo does file watching across all the things.

### Deployment

Merge the `master` branch into `deploy` and push.

### Styling

I use 4-char wide tabs, not spaces, in everything **except** the YAML files, which use 4 spaces. Sorry!

## Licensing

Apache 2.0
