# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Attributes
* rails g model Cocktail name
* rails g model Ingredient name
* rails g model Dose cocktail:references ingredient:references description
* rails db:migrate