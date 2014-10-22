gulp.task 'assets', (done) ->
  gulp.src [
    'bower_components/bootstrap/dist/fonts/*'
    'bower_components/font-awesome/fonts/*'
  ]
  .pipe gulp.dest 'web/dist/fonts'
    .on 'end', done
  return
