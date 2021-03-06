describe('dashBoardSalesFlowCtrl', function(){
  var ctrl, scope, $httpBackend, NgMap
  var data = [{name: "new your office"}]

  beforeEach(function(){
    module('dashBoardApp.SalesLocations');
    inject(function($controller, $rootScope, _$httpBackend_){
      $httpBackend = _$httpBackend_;
      $httpBackend.expectGET(url + 'sales_flows.json').respond(data)
      scope = $rootScope.$new();
      ctrl = $controller('dashBoardSalesFlowCtrl', {$scope:scope, NgMap:NgMap})
    });
  });

  it('has a attribute called $scope.sales that returns an object from api', function(){
    $httpBackend.flush()
    expect(scope.sales).toEqual([{name: "new your office"}])
  })

});