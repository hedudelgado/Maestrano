# Maestrano Test.
-----------------

##Requirements

* __1__ Create a Ruby on Rails light application that will query the Impac! API and render widgets on a simple dashboard.
* __2__ Create the "Employees location" widget that will represent on a map what are the most important work locations for the demo company. The more a work location has employees, the more it is considered important.
* __3__ Create the "Sales flow" widget that will represent on a map what are the most important sales channels for the demo company. The country/city with the biggest amount invoiced will constitute the most important sales channel, etc.

Technology Used
---------------

Back End:  Ruby on Rails     
Front End: AngularJS     

Testing:
Protractor   
Karma   
Rspec   

Installation Instructions
-------------------------
```
git clone https://github.com/hedudelgado/Maestrano
$cd Api_test
$bundle install
$rake db:create
$rake db:migrate
```

Run the servers
---------------

```
Back End (within backend directory) ->rails s
Go to http://localhost:3000 (or any other path the Api uses) in your browser, to make sure the server is running and up.
```
```
Front end (within front end directory)-> npm start
Go to http://localhost:8000 (or any other path the Angular uses) in your browser, to make sure the server is running and up.
```



Testing Instructions
--------------------

RSpec (unit and feature tests, within back end directory)

```
$rails g rspec:install
$rspec
```

JavaScript/Angular - Testing
-----------------------------

Make sure the rails server is running for testing angular as they interact within the end to end tests(e2e).
```
$rails s
```

Make sure you are in Frontend directory for Angular - e2e tests, in a separate command line run:
```
$npm install
$npm run Protractor
```

To test drive the app, make sure you have the Rails and Angular severs running in different command line taps, then in your brower visit: For Rails http://localhost:3000 For Angularjs http://localhost:8000


Project Diagram
---------------
[![solarized dualmode](https://github.com/hedudelgado/Maestrano/blob/master/diagram.png)](#features)


