'use strict';

angular.module('dashBoardApp.SalesLocations', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/dashBoardView', {
    templateUrl: 'dashBoard/dashBoardView.html',
    controller: 'dashBoardSalesFlowCtrl'
  })
  .when('/sign_in', {
        templateUrl: 'dashBoard/new.html',
        controller: 'UserSessionsCtrl'
   });
}])

.controller('dashBoardSalesFlowCtrl', ["$scope", "$http","NgMap", "dashBoardSalesFlowService", function($scope, $http, NgMap, dashBoardSalesFlowService) {
	
	var callBack = function(data,status){
    	$scope.sales = data;
		}
	dashBoardSalesFlowService.SalesFlowCall(callBack)
	}
])
.controller('UserSessionsCtrl', ['$scope', function ($scope) {
  }]);