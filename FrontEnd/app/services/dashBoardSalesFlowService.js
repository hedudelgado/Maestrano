'use strict';
angular.module('dashBoardApp.SalesLocations')
.service('dashBoardSalesFlowService', function($http){

	this.SalesFlowCall = function(callBack) {
		$http.get( url + 'sales_flows.json').success(function(data,status){
   	callBack(data,status)
  	})
  }
})

