'use strict';

angular.module('dashBoardApp.employeeLocations', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/dashBoardView', {
    templateUrl: 'dashBoard/dashBoardView.html',
    controller: 'dashBoardEmployeeCtrl'
  });
}])

.controller('dashBoardEmployeeCtrl', ["$scope", "$http", "employeeLocationsService", "NgMap", function($scope, $http, employeeLocationsService, NgMap) {

	NgMap.getMap().then(function(map) {
    	console.log(map.getCenter());
    	console.log('markers', map.markers);
    	console.log('shapes', map.shapes);
  	});
	var callBack = function(data,status){
    	$scope.Locations = data;
		}
	employeeLocationsService.employeeLocationsCall(callBack)
	}
]);