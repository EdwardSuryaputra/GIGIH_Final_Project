# Food Catering App

This is a backend focused web app project that's made using ruby on rails, and this app is made for food catering business owner. In this app, owners have the ability to create, read, update, and delete:
- Items
- Customers data
- Orders

With additional features of:
- Able to see daily report of orders with it's revenue

## Schema Design
![alt text](https://github.com/EdwardSuryaputra/GIGIH_Final_Project/blob/main/Schema%20Design.png)

## Running the app

You can simply access the app using this link https://food-catering-app.herokuapp.com/

- /menus --> to access menu items
- /categories --> to access menu categories
- /customers --> to access customers data
- /orders --> to access orders
- /report --> to access daily report

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

The database I used for this app is a relational database

## Run Unit Testing
To make the unit test for the features of this app, i used rspec, so if you want to run the test please run bundle exec rspec -fd to run all test.

## Additional Gem/Library
gem cocoon (https://github.com/nathanvda/cocoon)
  for handling form (nested-attributes).
  
gem shoulda-matchers (https://github.com/thoughtbot/shoulda-matchers)
  for handling associations test.

