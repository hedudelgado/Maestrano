'use strict';

/* https://github.com/angular/protractor/blob/master/docs/toc.md */

describe('dashBoardApp', function() {


  it('should automatically redirect to /dashBoardView', function() {
    browser.get('index.html');
    expect(browser.getLocationAbsUrl()).toMatch("/sign_in");
  });


  describe('/dashBoardView', function() {

    beforeEach(function() {
      browser.get('index.html');
    });

    it('should sign in', function() {

      // Find page elements
      var userNameField = browser.driver.findElement(By.id('email'));
      var userPassField = browser.driver.findElement(By.id('password'));

      // Fill input fields
      userNameField.sendKeys('email@example.com');
      userPassField.sendKeys('password');

      element(by.buttonText("Sign in")).click().then(function() {
        browser.waitForAngular();
      })
      expect(element.all(by.css('h1')).first().getText()).
        toMatch(/HEY XAVIER! ARNAUD! BRUNO! WELCOME TO MY DEMO DASHBOARD/);
    });
  });
});
