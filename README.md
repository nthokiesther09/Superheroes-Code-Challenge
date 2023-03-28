# Superheroes Code Challenge
This is a superheroes Rails backend API built using the Rails framework.

## Project Description 
This project API is purposely for for tracking heroes and their superpowers.It has the following resources:
- Heros
- Powers
- HeroPowers(this is the joint table for heros and powers)

## Database Relationships
This Rails API utilizes many-to-many relationships approach. A Hero has many powers and Power has many heros through HeroPower.The HeroPower belongs to both Hero and Power therefore acts as the joint table for the two models.

## Requirements
- Access to a computer,tablet or phone.
- An access to internet.


## Deployment
To access the API click on the deployed link: "https://github.com/nthokiesther09/Superheroes-Code-Challenge"

## Installation
To use this API, you must have installed:
- ruby -v 2.7.4
- rails -v 7.0.4.3
- Postgress installed on your computer/laptop.

### Follow the steps below to install the Api:
- Clone the repository

   git clone : "https://github.com/nthokiesther09/Pizzas-Code-Challenge"

- bundle install to install dependencies
- Set up the database:
   rails db:migrate
   rails db:seed
- Start the server:
   rails s
Once the server is up and runnning, you should be able to access the API at `https://localhost:3000`.

With the server running, you can use your preferred API platform such as `Postman` or `Thunder client` to try out the CRUD operations (GET, POST, and PATCH) using the provided `faker` data. Specifically, the API provides for the following CRUD operations
1. GET /heros
2. GET /heros/:id
3. PATCH /powers
4. GET /powers
5. POST /hero_powers

## Technologies Used
- Ruby
- Rails
- SQL
- Git

## Authors
Esther Musyoka [nthokiesther09]-("https://github.com/nthokiesther09/Superheroes-Code-Challenge")

## LICENSE
This project is under ISC License









