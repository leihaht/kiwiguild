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
  .pipe recess({strictPropertyOrder: false}).on 'error', handleErrors
  .pipe less().on 'error', handleErrors
  .pipe csso()
  .pipe gulp.dest 'build/'
  .on 'error', handleErrors