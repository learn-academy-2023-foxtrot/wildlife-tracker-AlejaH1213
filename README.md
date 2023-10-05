### CHALLENGES:
Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

Branch: animal-crud-actions

Acceptance Criteria

Create a resource for animal with the following information: common name and scientific binomial
Can see the data response of all the animals
Can create a new animal in the database
Can update an existing animal in the database
Can remove an animal entry in the database

### CODE:
$ rails new rails-api -d postgresql -T
$ cd rails-api
$ rails db:create
$ git remote add origin https://github.com/learn-academy-2023-foxtrot/wildlife-tracker-AlejaH1213.git
$ git status
$ git add .
$ git commit -m "initial commit"
$ git push origin main
$ bundle add rspec-rails
$ rails generate rspec:install
$ git checkout -b animal-crud-actions
$ rails g resource Animal common_name:string scientific_binomial:string
$ rails db:migrate



