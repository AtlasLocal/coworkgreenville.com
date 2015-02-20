axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
records      = require 'roots-records'

api_url = 'https://lesbonneschoses-voelnscaadqgoa0.prismic.io/api/documents/search?ref=UlfoxUnM08QWYXdl&q=%5B%5B%3Ad+%3D+any(document.type%2C+%5B%22product%22%5D)%5D%5D&format=json'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee', out: 'js/build.js', minify: true, hash: true),
    css_pipeline(files: 'assets/css/*.styl', out: 'css/build.css', minify: true, hash: true)
    records({
      products: {
        url: api_url,
        path: 'results'
      }
    })
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
