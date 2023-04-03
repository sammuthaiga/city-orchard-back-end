# City Orchard

City Orchard is a web application that allows users to buy and sell fruits. The application uses Ruby on Rails for the backend and React for the frontend. Users can sign up and login to create a profile, browse fruits for sale, and make purchases.

## Models
The City Orchard app has three models:

### Farmer
A Farmer has many Fruits and has many Clients through Fruits.

### Client
A Client has many Fruits and has many Farmers through Fruits.

### Fruit
A Fruit belongs to a Farmer and belongs to a Client.

## User Authentication
The City Orchard app allows users to sign up and login. Once logged in, users can create a profile and access the features of the application.

## Frontend
The City Orchard frontend is built with React and is deployed at https://city-orchard-front-end.vercel.app/.

## Getting Started
To get started with the City Orchard app, you will need to clone the repository and install the necessary dependencies.

### Prerequisites
- Ruby
- Rails
- Node.js

### Installation
 1.Clone the repository
 2.Cd into the repository's directory
 3.Install the dependencies by running bundle install.
 4.click the link to the deployed frontend.
