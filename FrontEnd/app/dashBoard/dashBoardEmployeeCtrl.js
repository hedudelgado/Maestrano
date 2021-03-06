'use strict';

angular.module('dashBoardApp.employeeLocations', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/dashBoardView', {
    templateUrl: 'dashBoard/dashBoardView.html',
    controller: 'dashBoardEmployeeCtrl',
    resolve: {
      auth: ['$auth', function($auth) {
        return $auth.validateUser();
      }]
    }
  })
}])

.controller('dashBoardEmployeeCtrl', ["$scope", "$http","NgMap", "employeeLocationsService", function($scope, $http, NgMap, employeeLocationsService) {
	var callBack = function(data,status){
    	$scope.Locations = data;
		}
	employeeLocationsService.employeeLocationsCall(callBack)
	}
]);