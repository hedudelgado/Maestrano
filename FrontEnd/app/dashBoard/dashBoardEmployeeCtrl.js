'use strict';

angular.module('dashBoardApp.employeeLocations', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/dashBoardView', {
    templateUrl: 'dashBoard/dashBoardView.html',
    controller: 'dashBoardEmployeeCtrl'
  });
}])

.controller('dashBoardEmployeeCtrl', ["$scope", "$http", "employeeLocationsService", function($scope, $http, employeeLocationsService) {
	var callBack = function(data,status){
    	$scope.Locations = data;
		}
	employeeLocationsService.employeeLocationsCall(callBack)
	}
]);