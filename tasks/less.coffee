less = require 'gulp-less'
concat = require 'gulp-concat'

gulp.task 'less', (done) ->
  gulp.src [
    'bower_components/bootstrap/less/bootstrap.less'
    'bower_components/font-awesome/less/font-awesome.less'
    'web/bundles/*/less/*'
  ]
  .pipe less()
    .pipe concat 'all.css'
      .pipe gulp.dest 'web/dist/css'
        .on 'end', done
  return
