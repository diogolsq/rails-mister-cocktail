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

puts 'creating the default drinks'

coktails[['Mojito', 'Place mint leaves and 1 lime wedge into a sturdy glass. Use a muddler to crush the mint and lime to release the mint oils and lime juice. Add 2 more lime wedges and the sugar, and muddle again to release the lime juice. Do not strain the mixture. Fill the glass almost to the top with ice. Pour the rum over the ice, and fill the glass with carbonated water. Stir, taste, and add more sugar if desired. Garnish with the remaining lime wedge.', 'tea-mojito.png'],
         ['Martini', 'Stir the gin or vodka, dry vermouth and a little ice together or put them in a cocktail shaker to combine. Strain into a chilled martini glass. Serve with an olive on a cocktail stick or a twist of lemon peel.', 'martini.png'],
         ['Negroni', 'Add all the ingredients into a mixing glass with ice, and stir until well-chilled. Strain into a rocks glass filled with large ice cubes. Garnish with an orange peel.', 'negroni.png' ],
         ['Caipirinha', 'Put the lime wedges in a large jug with the sugar, then use a muddler or the end of a rolling pin to break them down. Release as much juice from the wedges as possible, and let it mix with the sugar to create a syrup – you can also do this with a large pestle and mortar. Discard the lime peel. Divide the syrup and cachaça between four glasses, then top with the crushed ice. Serve garnished with lime wedges, if you like.', 'caipirinha.png'],
        ]
