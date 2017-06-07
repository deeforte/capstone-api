## Links to client-side application, deployed client app, and deployed api.

Client Github Repo https://github.com/deeforte/capstone-client

Deployed Client https://deeforte.github.io/capstone-client/

API Github Repo https://github.com/deeforte/capstone-api

Deployed API https://shrouded-waters-11972.herokuapp.com/

# ERD

![alt text](http://i.imgur.com/LVYkK03.png)

## List of API routes

Users - signup(POST), signin(POST), signout(DELETE) and changepw(PATCH)

Beers - index(GET), mybeers(current_user), create(POST), update(PATCH) and destroy(DELETE)

## Installation

No customized installation instructions.

## Technologies

Ruby on Rails

## General Approach

Scaffolded the beers table with a command -
rails g scaffold beer city:string beer:string brewery:string style:string description:string user:references

Tested each route with a curl script prior to connecting to the client side.  My focus was with the API until it was performing all necessary routes.

## Unsolved problems or hurdles

I wanted the application to be public so that made the index route a get all.  I created a sutom route for the mybeers(current_user) action to get just that brewer's beers.
