gulp = require 'gulp'
gutil = require 'gulp-util'
coffeelint = require 'gulp-coffeelint'

gulp.task 'coffeelint', ->
  gulp.src './src/javascript/app.coffee'
  .pipe coffeelint()
  .pipe coffeelint.reporter()