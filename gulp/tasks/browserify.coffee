# Filter out possible non-script tasks files from task list.

browserify   = require 'browserify'
gulp         = require 'gulp'
handleErrors = require '../util/handleErrors'
source       = require 'vinyl-source-stream'

gulp.task 'browserify', ->
  browserify {
    entries: ['./src/javascript/app.coffee']
    extensions: ['.coffee', '.hbs']
  }
  .require 'backbone/node_modules/underscore', { expose: 'underscore' }
  .bundle {debug: true}
  .on 'error', handleErrors
  .pipe source('app.js')
  .pipe gulp.dest('./build/')