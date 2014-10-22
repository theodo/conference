gulp = require 'gulp'
gutil = require 'gulp-util'
concat = require 'gulp-concat'

gulp.task 'vendor', (done) ->
  gulp.src [
    'bower_components/jquery/dist/jquery.js'
    'bower_components/bootstrap/dist/js/bootstrap.js'
    'bower_components/jquery.easing/js/jquery.easing.js'
    'bower_components/classie/classie.js'
    'web/bundles/*/js/*'
  ]
  .pipe(concat('all.js'))
  .on 'error', gutil.log
    .pipe gulp.dest('web/dist/js')
      .on 'end', done
  return
