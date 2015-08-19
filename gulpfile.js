require('coffee-script/register')
var gulp        = require('gulp'),
    gutil       = require('gulp-util'),
    bump        = require('gulp-bump'),
    coffee      = require('gulp-coffee'),
    mocha       = require('gulp-mocha'),
    browserify  = require('browserify'),
    watchify    = require('watchify'),
    source      = require('vinyl-source-stream'),
    buffer      = require('vinyl-buffer'),
    assign      = require('lodash.assign');

var customOpts = {
  entries: ['./build/Brackets.js'],
  debug: false
};
var opts = assign({}, watchify.args, customOpts);
var bundler = watchify(browserify(opts)).exclude('lodash');

gulp.task('browserify', bundle);
bundler.on('update', bundle);
bundler.on('log', gutil.log);

function bundle(){
  return bundler.bundle()
    .on('error', gutil.log.bind(gutil, 'Browserify Error'))
    .pipe(source('brackets.js'))
    .pipe(buffer())
    .pipe(gulp.dest('./dist'));
}

gulp.task('build',function(){
  gulp.src('./src/**/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./build'));
});

function handleError(err) {
  console.log(err.toString());
  this.emit('end');
}

gulp.task('mocha',function(){
  gulp.src('./test/**/*Test.coffee')
    .pipe(mocha(
      {
        reporter: 'nyan',
        require: 'helper.coffee'
      }
    ))
    .on('error',handleError);
});

gulp.task('watch',function(){
  gulp.watch(
    [
      './test/**/*.coffee',
      './src/**/*.coffee'
    ],
    ['mocha']
  );
  gulp.watch(
    [
      './src/**/*.coffee'
    ],
    ['build']
  )
});

gulp.task('default',['mocha','browserify','build','watch']);
