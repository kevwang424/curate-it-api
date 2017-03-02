#It Do Curate

It Do Curate is a **React-Redux** application with a **Rails** backend that allows users to curate their own gallery. 

Ever walk into a museum and all the pieces that you want to see are *not* there or in different exhibits located in different parts of the building? Do you believe you can curate a much better exhibit? It Do Curate lets you do just that.
At the moment It Do Curate is connected to the Harvard Art Museum API which contains over 200,000 objects for users to search from ranging from paintings, photographs, sculptures, furniture and more. 

## Getting Started

It Do Curate uses **Rails** as a backend. In order to deploy onto your local machine for development and testing purposes you must also clone the Rails files located at https://github.com/kevwang424/curate-react. 

### Installing

In the Rails end:
- [ ] run `bundle install` to download all necessary gems
- [ ] `rake db:create` to create the database
- [ ] `rake db:migrate` to create the tables
- [ ] `rake db:seed` to populate with seed data, optional

In the React-Redux end:
- [ ] run `npm install` to download all necessary modules as per package.json

## Development Deployment

In the Rails end run `rails s` and is defaulted to localhost:3000.
In the Reach-Redux end run `npm start` and is defaulted to localhost:8080.

## Authors

* **Kevin Wang** - (https://github.com/kevwang424/)
* **Jing Yu** - (https://github.com/jingyufanclub)
* **Jenny Lai** - (https://github.com/jenlaister)
