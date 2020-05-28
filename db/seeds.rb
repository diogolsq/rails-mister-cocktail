# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
listingredient_serialized = open(url).read
listingredient = JSON.parse(listingredient_serialized)

# puts "#{ingredient['name']} - #{ingredient['bio']}"

puts 'pulling ingredients from the api'

listingredient['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

# Ingredient.create(name: 'Lemon')
# Ingredient.create(name: 'Ice')
# Ingredient.create(name: 'Mint Leaves')
# Ingredient.create(name: 'Gin')
# Ingredient.create(name: 'Vodka')
# Ingredient.create(name: 'Soda Water')
# Ingredient.create(name: 'Sugar Syrup')
# Ingredient.create(name: 'Cider')
# Ingredient.create(name: 'Apple')
# Ingredient.create(name: 'Orange')
# Ingredient.create(name: 'Camomile Tea Bag')
# Ingredient.create(name: 'Sweet Vermouth')
# Ingredient.create(name: 'Campari')
# Ingredient.create(name: 'Blue Curacau')
# Ingredient.create(name: 'Lime')
# Ingredient.create(name: 'Angostura Bitters')
# Ingredient.create(name: 'Tequila')
# Ingredient.create(name: 'Rum')
# Ingredient.create(name: 'Cointreau')
# Ingredient.create(name: 'Ginger Ale')

puts 'done'
