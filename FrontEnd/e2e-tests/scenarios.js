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
      expect(element.all(by.css('h1')).first().getText()).
        toMatch(/HEY XAVIER! ARNAUD! BRUNO! WELCOME TO MY DEMO DASHBOARD/);
    });
  });
});
