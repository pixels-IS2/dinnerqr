# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

states=['hola', 'casa' ,'picante']
# Waiter.create(name: "diego" ,email:"prueba@gmail.com" , password: "12345678").tables.create([{number:1,sector:"A"},{number:2,sector:"A"},{number:3,sector:"A"},{number:4,sector:"A"},{number:5,sector:"A"}])
mesero = Waiter.create(name: "diego" ,email:"prueba@gmail.com" , password: "12345678")
mesa1= Table.create(number:1 , sector:"A")
mesa2= Table.create(number:2 , sector:"A")

mesero.tables << mesa1

mesero.tables << mesa2

cliente1=Client.create(name: "diego" ,email:"cliente1@gmail.com" , password: "12345678")

orden1=Order.create(price:10000,state:"hold on",client_id:1)

mesa1.orders << orden1