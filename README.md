### CHALLENGES:
Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

Branch: animal-crud-actions

Acceptance Criteria

Create a resource for animal with the following information: common name and scientific binomial
Can see the data response of all the animals
Can create a new animal in the database
Can update an existing animal in the database
Can remove an animal entry in the database

### COMMANDS IN TERMINAL:
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

### IN RAILS CONSOLE:
> Animal.create(common_name:'house cat', scientific_binomial:'Felis catus')
> Animal.create(common_name:'Common Dog', scientific_binomial:'Canis lupus familiaris')
> Animal.create(common_name:'European Honey Bee', scientific_binomial:'Apis mellifera')

### IN THE APPLICATION_CONTROLLER:
class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
end

## IN THE ANIMALS_CONTROLLER
class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        render json: animals
    end
end

### POSTMAN: 

[
    {
        "id": 1,
        "common_name": "house cat",
        "scientific_binomial": "Felis catus",
        "created_at": "2023-10-05T23:14:25.941Z",
        "updated_at": "2023-10-05T23:14:25.941Z"
    },
    {
        "id": 2,
        "common_name": "Common Dog",
        "scientific_binomial": "Canis lupus familiaris",
        "created_at": "2023-10-05T23:14:57.904Z",
        "updated_at": "2023-10-05T23:14:57.904Z"
    },
    {
        "id": 3,
        "common_name": "European Honey Bee",
        "scientific_binomial": "Apis mellifera",
        "created_at": "2023-10-05T23:15:28.330Z",
        "updated_at": "2023-10-05T23:15:28.330Z"
    }
]
### - TO CREATE A NEW ENTRY - ###

### IN THE ANIMALS CONTROLLER
def create
        animal = Animal.create(animal_params)
        if animal.valid?
            render json: animal
        else 
            render json: animal.errors
        end
    end
    private
    def animal_params
        params.require(:animal).permit(:common_name, :scientific_binomial)
    end
### IN POSTMAN
{
    "common_name" : "Bald Eagle",
    "scientific_binomial" : "Haliaeetus leucocephalus"
}

to see sightings from specific dates in postman:

$ http://localhost:3000/sightings?start_date=2023-01-01&end_date=2023-03-01





