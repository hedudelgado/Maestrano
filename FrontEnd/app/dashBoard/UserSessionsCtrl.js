'use strict';

angular.module('dashBoardApp.UserSessions', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/sign_in', {
        templateUrl: 'dashBoard/new.html',
        controller: 'UserSessionsCtrl'
   });
}])

.controller('UserSessionsCtrl', ['$scope', function ($scope) {
  $scope.$on('auth:login-error', function(ev, reason) {
      $scope.error = reason.errors[0];
  });
}]);