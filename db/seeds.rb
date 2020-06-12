# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.destroy_all
# Cocktail.destroy_all
# Dose.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Mojito", photo: "https://source.unsplash.com/collection/9474242")
Cocktail.create(name: "Bloody Mary", photo: "https://source.unsplash.com/collection/9474242")
Cocktail.create(name: "Sex on the Beach", photo: "https://source.unsplash.com/collection/9474242")
Cocktail.create(name: "Moji", photo: "https://source.unsplash.com/collection/9474242")
Cocktail.create(name: "Bloody Mar", photo: "https://source.unsplash.com/collection/9474242")
Cocktail.create(name: "The Beach", photo: "https://source.unsplash.com/collection/9474242")

Dose.create(cocktail_id: 9, ingredient_id: 16, description: "Mojito")
Dose.create(cocktail_id: 10, ingredient_id: 17, description: "Bloody Mary")
Dose.create(cocktail_id: 11, ingredient_id: 18, description: "Sex on the Beach")

# Ingredient.all
# Ingredient.count