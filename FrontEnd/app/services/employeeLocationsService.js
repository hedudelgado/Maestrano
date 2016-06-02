'use strict';
angular.module('dashBoardApp.employeeLocations')
.service('employeeLocationsService', function($http){

	this.employeeLocationsCall = function(callBack) {
		$http.get(url + 'api/employee_locations.json').success(function(data,status){
   	callBack(data,status)
  	});		
	}
})
  