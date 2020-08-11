Blog made using [Hugo](https://gohugo.io/) - a static site generator written in Golang.

Orignal clone of [Hugo future imperfect theme](https://themes.gohugo.io/hugo-future-imperfect-slim/). Customized for personal use.


# Usage

## Installation

This project requires an installation of Hugo. To get Hugo, see the docs found here https://gohugo.io/getting-started/installing/. 

## Run locally 

``` bash
// deploy locally to test
hugo server -w // launch server at https://localhost:1313 in watch mode

```

## Create new posts 

``` bash
// create a new blog post
hugo new blog/<blog post title>.md // create new blog post

// edit your blog post in markdown. post will be placed at /content/blog/<blog post title>.md

// build static content for site (include new post)
hugo -D // build drafts
hugo // build, into dest
```
