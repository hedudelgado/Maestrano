module.exports = function(config){
  config.set({

    basePath : './',

    files : [
      'http://maps.google.com/maps/api/js',
      'app/bower_components/angular/angular.js',
      'app/bower_components/ngmap/build/scripts/*.js',
      'app/bower_components/angular-route/angular-route.js',
      'app/bower_components/angular-mocks/angular-mocks.js',
      'app/components/**/*.js',
      'app/dashBoard/*.js',
      'app/services/*.js',
      'app/bower_components/ngmap/build/scripts/ng-map.min.js',
      'app/dashBoard/*.html',
      'unit-tests/*.js',
    ],

    autoWatch : true,

    frameworks: ['jasmine'],

    browsers : ['Chrome'],

    plugins : [
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine',
            'karma-junit-reporter'
            ],

    junitReporter : {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    }

  });
};
