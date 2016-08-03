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

1. You will need to go get Hugo: `go get -u -v github.com/spf13/hugo`
2. You will need to add the path to the bin folder of your Go workspace to your existing `PATH` in your appropriate terminal rc file (*ex. `.zshrc`*).

### Local Server

You can start up a local server by calling `hugo server` in the `solus-site` directory. It is recommended you modify your base URL with the following command, to enable you to do navigation throughout your local site:

``` bash
hugo server --baseURL "http://127.0.0.1:1313"
```

**Note:** You will not need to restart the server when doing changes. Hugo does file watching across all the things.

### Compile

You can "compile" the latest version of the Solus site by typing `./build.sh`. This will run `hugo` as well as use an HTML minifier to minify the finalized site, which resides in `public/`.

### Styling

I use 4-char wide tabs, not spaces, in everything **except** the YAML files.

## Licensing

TBD.
