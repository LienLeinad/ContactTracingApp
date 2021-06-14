# README
This is a simple fully functional Contact tracing app. 

Features:
There are two different user types, Mall Admins, and Store owners.
To create a Mall Admin account, make sure to tick the checkbox in the sign up page. For store owners, make sure that the checkbox isn't ticked, and you have a string input as the store name.

Mall Admins are able to see every contact tracing form made by customers from all stores.
Additionally, they are also able to search for COVID 19 positive customers, as well as any of the customers that they may have encountered in the stores they've visited. 
Should the Mall Admin need to flag a person as infected, they'll be able to see all the stores they've visited within a 5 hour
timespan from their latest visit. Additionally, among each of those visits, they'll be able to see any of the customers that went into the same store within 2 hours before and
after the infected customer created a contact tracing form. This is all done by searching for the exact name and email address in the search fields provided in the proper page.

Store owners are only able to see the Contact Tracing Forms made by the customers that visited their stores, but they are also able to access the screen for contact tracing form
creation.

To go to the form. Simply click the button that leads to the contact tracing form. to leave the form, you would need to delete "/landing" from the URL to go back to the home
page.
The home page was purposely kept inaccessible from the contact tracing form, so that customers that would be using the app to create contact tracing forms can't access the rest of the website, and see the private data of other customers from the database.

Required Programs and versions
ruby '3.0.1'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem "ransack", "~> 2.4"

To run migrations and run test server
1) "rake db:migrate:reset"
2) "rails s"
3) Go to your browser and type "localhost:3000"



