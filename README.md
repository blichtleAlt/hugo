Blog made using [Hugo](https://gohugo.io/) - a static site generator written in Golang.

Orignal clone of [Hugo future imperfect theme](https://themes.gohugo.io/hugo-future-imperfect-slim/). Customized for personal use.


# Usage

## Installation

To get hugo on linux, you'll need to download a tar file and decompress and place it in a binaries directory. More can be found here https://gohugo.io/getting-started/installing/


## Build static site and run locally 

``` bash

// create a new blog post
hugo new blog/<blog post title>.md // create new blog post

// edit your blog post in markdown. post will be placed at /content/blog/<blog post title>.md

// build static content for site (include new post)
hugo -D // build drafts
hugo // build, into dest

// deploy locally to test
hugo server -w // launch server at https://localhost:1313 in watch mode

```
