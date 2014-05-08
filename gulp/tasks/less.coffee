gulp = require 'gulp'
gutil = require 'gulp-util'
recess = require 'gulp-recess'
less = require 'gulp-less'
csso = require 'gulp-csso'
handleErrors = require '../util/handleErrors'

gulp.task 'less', ->
  gulp.src [
    './src/less/app.less'
  ]
  .pipe recess()
  .pipe less()
  .pipe csso()
  .pipe gulp.dest 'build/'
  .on 'error', handleErrors