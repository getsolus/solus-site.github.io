# Solus Site

Static, [Hugo-based](https://gohugo.io) home of Solus and its projects. This website makes used of:

1. A custom theme, in `themes/solus`.
2. Custom layouts and importable "fragments" for separation and modularizing of common components, within `layouts`.
3. Website content itself, including blog posts, in `content`.

**This does not include the LESS-based styling for the website. That is developed separately at the respective solus-styling repo.**

## Creation

### New Post

To create a new post, call `hugo new PATH`. For instance, `hugo new blog/welcome-to-the-new-site.md` would create `welcome-to-the-new-site.md` with our default
configuration in the `content/blog/` directory.

## Development

### Dependencies

To develop the Solus site, you will need Go and Hugo. You can install Go by following the instructions [here](http://golang.org) and use the following command(s) to set up Hugo:

1. You will need to go get Hugo: `go get -u -v github.com/spf13/hugo
2. You will need to add the path to the bin folder of your Go workspace to your existing `PATH` in your appropriate terminal rc file (*ex. `.zshrc`).

### Local Server

You can start up a local server by calling `hugo server` in the `solus-site` directory.

### Compile

You can "compile" the latest version of the Solus site by simply typing `hugo` in the `solus-site` directory. This will put said content into the `public/` folder.

### Styling

I use 4-char wide tabs, not spaces. #dealwithit
