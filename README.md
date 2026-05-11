# Solus Site

Static, [Hugo-based](https://gohugo.io) home of Solus and its projects. This website makes use of:

1. A Hugo theme named [Hextra](https://imfing.github.io/hextra/).
2. Website content itself, including blog posts, in [`content`](content).
3. [TailwindCSS](https://tailwindcss.com/) for additional styling.

## Creation

To make page creation easier, we have some page archetypes that can be used to get started quickly.

### New content page

Regular page content, e.g. non-blog posts, can be written in two different formats: Markdown, and HTML. Markdown pages are quicker and easier to create, but lack the flexibility that comes with writing HTML. Think about how you want the page to look, and choose which format to use based on the page's design.

#### Markdown page

1. Change to the main directory of this repository.
2. Run `hugo new` to create the basic page structure.
   ```bash
   hugo new --kind markdownpage content/pagename.md
   ```
3. Write the page content as Markdown.

#### HTML page

1. Change to the main directory of this repository.
2. Run `hugo new` to create the basic page structure.
   ```bash
   hugo new --kind htmlpage content/pagename.md
   ```
3. Write the page content using HTML.

We have several component shortcodes you can use to achieve a design that fits with the rest of the website. Some of these include:

- `section`
- `link`
- `button`
- `bulletpoint`

### New blog post

1. Change to the main directory of this repository.
2. Run `hugo new` to create the basic page structure. Replace the year, month, and title with real values in the example command below.
   ```bash
   hugo new --kind blog content/blog/2026/01/my-blog-post/index.md
   ```
3. Edit the post's frontmatter as necessary. Most fields are self-explanitory.
   - `authors` - A list of people who authored the post.
     ```yaml
     authors:
     - image: https://avatars.githubusercontent.com/u/5157277?v=4
       link: https://github.com/EbonJaeger
       name: Evan Maddock
     ```
   - `tags` - A tags a post should have, e.g. `news`, `devlog`, `release`. Tags are free; use as many as you like!
   - `url` - The final URL of the blog post. `:year` and `:day` are placeholders that will automatically be filled in by Hugo during page generation, and should not need to be edited.
4. Write the post content as Markdown.

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

## Use caution before deleting files

Files  in `static/imgs/release-images/` may be used outside of the website.
For instance, Mailgun templates use the desktop collage graphic. Please coordinate with the Solus Team before deleting any files.

## Development

### Setup

To set up your Solus system for developing the website, you first need to ensure you have the necessary dependencies installed. You'll need:

- `hugo`
- `nodejs`
- `sassc`
- Optionally, install `go-task` to simplify running the website locally, or deploying it to production.

You can install these on Solus by running:

```bash
sudo eopkg install hugo sassc go-task
```

#### NVM

To set up `nvm`, the Node Version Manager, follow the instructions listed [here](https://github.com/nvm-sh/nvm#readme). We recommend [setting up their shell integration](https://github.com/nvm-sh/nvm#deeper-shell-integration) as well, so you can automatically switch to the correct Node version when working on this project. Otherwise, ensure you run `nvm use`. This project requires the "current" supported release series of Node.

You can validate you are using the latest by running `node --version`. Your version should be at least 19.x.

### Installing dependencies

To install the required dependencies, run:

```bash
npm i
```

### Local Server

You can start up a local server by running the task:

```bash
go-task dev
```

Use this to see your changes and make sure things look as you expect before submitting a pull request. It will build the website and necessary TailwindCSS styles, and then start a local web server to serve the website.

> [!Note]
> You will not need to restart the server when doing changes. Hugo does file watching across all the things.

### Deployment

Run the task to deploy the website via Github Pages.

```bash
go-task deploy
```

## Licensing

Apache 2.0
