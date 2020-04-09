# jekyll-sass-pug-template
An empty template to generate a static web site pages from pug and sass files with Jekyll

## Installation

**Note:** you must have [pug](https://www.npmjs.com/package/pug) installed. To install it, simply enter the terminal command, `npm install pug -g`. If you don't already have NPM/Node installed, [here are instructions](https://www.npmjs.com/get-npm)

Then 

```bundle install```

## Run

To compile the sources into _site and update preview in http://localhost:4000

```bundle exec jekyll serve```

## Use

### No index 
Automatic site map generation with jekyll-sitemap plugin.
Pages with sitemap set to false in front matter are not included in sitemap.xml and a noindex, nofollow is added to head. This is also true for web site under development (if JEKYLL_ENV is not explicitly set to production).

