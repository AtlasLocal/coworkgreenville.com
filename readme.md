# CoWork Greenville

This is a proposed project scaffolding for the new 2015 [coworkgreenville.com](http://www.coworkgreenville.com/) site.


## Goals

* Allow non-technical editors to easily edit and contribute content
* Allow technically-minded folks to easily contribute to development
* Provide a drop-dead a simple solution (reduce complexity)
* Plan to possibly reuse this stack for other web properties


## Architecture

The current architecture consists of:
* [prismic.io](https://prismic.io/) &mdash; a content management system
* [roots](http://roots.cx/) &mdash; a static site generator
* [roots-records](https://github.com/carrot/roots-records) &mdash; plugin to consume JSON from an API
* [CoffeeScript](http://coffeescript.org/) &mdash; _It's just JavaScript_&#8482;
* [Jade](http://jade-lang.com/) &mdash; a template engine
* [Stylus](http://learnboost.github.io/stylus/)? &mdash; a CSS preprocessor, up for debate
* [Amazon S3](http://aws.amazon.com/s3/) &mdash; hosting

The CMS content will be interpolated during the compile process.

Our current plan is to deploy a static HTML/CSS site.

## Setup

The following instructions assume a Mac OS X development environment:

Install Homebrew:

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install Node.js:

    brew install node

Install roots:

    npm install -g roots

Clone this repo:

    git clone git@github.com:cowork/coworkgreenville.com.git

Install dependencies:

    cd coworkgreenville.com
    npm install

Launch dev server:

    roots watch

## Deploying

TODO: Add deployment instructions or auto-deployment info here.
