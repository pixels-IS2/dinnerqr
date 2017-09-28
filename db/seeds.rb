# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
states=['hola', 'casa' ,'picante']

2.times do
  Dish.create([{ name: Faker::Food.dish,
                 state:states[rand(3)],

                 #photo:Faker::Avatar.image("my-own-slug", "50x50"),
                 description: 'esto es una prueba',
                 speciality_id:1,
                 price: rand(1000..30000),


               }])

end