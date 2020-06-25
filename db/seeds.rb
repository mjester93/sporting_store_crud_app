# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creating stores
50.times do |x|
    Store.create(name: Faker::Company.unique.name, city: Faker::Address.city)
end

# Creating items
50.times do |x|
    Item.create(
        name: "#{Faker::Sports::Basketball.player} jersey", 
        price: rand(75.0..100.0).round(2), 
        sport: "basketball"
    )

    Item.create(
        name: "#{Faker::Sports::Football.player} jersey", 
        price: rand(80.0..120.0).round(2), 
        sport: "football"
    )
end


# Creating store_items
50.times do |x|
    StoreItem.create(store: Store.all.sample, item: Item.all.sample)
end