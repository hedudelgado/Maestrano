'use strict';
angular.module('dashBoardApp.employeeLocations')
.service('employeeLocationsService', function($http){
	return {
		
		employeeLocationsCall: function(callBack) {
			$http.get('http://localhost:3000/employee_locations.json').success(function(data,status){
   		console.log(data)
    	callBack(data,status)
  		});		
		}
	}
})