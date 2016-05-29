'use strict';

/* https://github.com/angular/protractor/blob/master/docs/toc.md */

describe('dashBoardApp', function() {


  it('should automatically redirect to /dashBoardView', function() {
    browser.get('index.html');
    expect(browser.getLocationAbsUrl()).toMatch("/dashBoardView");
  });


  describe('/dashBoardView', function() {

    beforeEach(function() {
      browser.get('index.html');
    });


    it('should render view1 when user navigates to /view1', function() {
      expect(element.all(by.css('[ng-view] p')).first().getText()).
        toMatch(/Hey Xavier! Arnaud! Bruno! Welcome to My DeMo DashBoard/);
    });
  });
});
