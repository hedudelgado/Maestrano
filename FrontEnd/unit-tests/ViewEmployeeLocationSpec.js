describe('dashBoardEmployeeCtrl', function(){
  var ctrl, scope, $httpBackend, NgMap
  var data = [{longitude: 1, latitude: 2, description: "cool office", name: "new your office"}]

  beforeEach(function(){
    module('dashBoardApp.employeeLocations');
    inject(function($controller, $rootScope, _$httpBackend_){
      $httpBackend = _$httpBackend_;
      $httpBackend.expectGET(url + 'employee_locations.json').respond(data)
      scope = $rootScope.$new();
      ctrl = $controller('dashBoardEmployeeCtrl', {$scope:scope, NgMap:NgMap})
    });
  });

  it('has a attribute called $scope.employeeLocations that returns an object from api', function(){
  	$httpBackend.flush()
    expect(scope.Locations).toEqual([{longitude: 1, latitude: 2, description: "cool office", name: "new your office"}])
  })

});