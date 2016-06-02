'use strict';

// Declare app level module which depends on views, and components
angular.module('dashBoardApp', [
  'ngRoute',
  'ngMap',
  'dashBoardApp.employeeLocations',
  'dashBoardApp.SalesLocations',
  'ng-token-auth',
])

.run(['$rootScope', '$location', function($rootScope, $location) {
  $rootScope.$on('auth:login-success', function() {
    $location.path('/dashBoardView');
  });
}])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.otherwise({redirectTo: '/sign_in'});
}])

.config(function($authProvider) {
        $authProvider.configure({
            apiUrl: url+'api'
        });
    });
;
