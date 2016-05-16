'use strict';

// Declare app level module which depends on views, and components
angular.module('dashBoardApp', [
  'ngRoute',
  'ngMap',
  'dashBoardApp.employeeLocations',
  
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.otherwise({redirectTo: '/dashBoardView'});
}]);
