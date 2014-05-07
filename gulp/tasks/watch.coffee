gulp       = require 'gulp'
livereload = require 'gulp-livereload'

gulp.task 'watch', ->
	gulp.watch 'src/javascript/**', ['browserify']
	gulp.watch 'src/sass/**', ['compass']
	gulp.watch 'src/images/**', ['images']
	livereload()