# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
states=['hola', 'casa' ,'picante']
precios=[0,1000,20000,24000,5000,12000,70000,90000,13000,23000,0]
Speciality.create([{name:"Entrada"},{name:"Gaseosa"},{name:"Plato fuerte"},{name:"Postre"},{name:"Bebidas"},{name:"Parrilla"}])
# Waiter.create(name: "diego" ,email:"prueba@gmail.com" , password: "12345678").tables.create([{number:1,sector:"A"},{number:2,sector:"A"},{number:3,sector:"A"},{number:4,sector:"A"},{number:5,sector:"A"}])

count=1;
mesas=[]
mesero = []
cocineros=[]
for i in 1..6

 espacial1=Speciality.find(i)
 nombre = Faker::Name.name

 chef1=Chef.create(
      email: Faker::Internet.email(nombre),
      password: "12345678",
      state:"active"
  )
  espacial1.chefs << chef1


end
for i in 1..5


  nombre = Faker::Name.name

  Waiter.create(name: nombre ,email:Faker::Internet.email(nombre), password: "12345678")


end
for i in 1..12

  mesas.push(Table.create(
      number:count,
      sector:"A",

  ));
  count=count+1;
end


for i in 1..5

    mesero1=Waiter.find(i)
    mesero1.tables << mesas[2*i]
    mesero1.tables << mesas[2*i+1]



end

for i in 1..100
  special=Speciality.find(rand(1 .. 6) )
  plato=Dish.create([{ name: Faker::Food.dish,
                       state:"holamundo",

                       #photo:Faker::Avatar.image("my-own-slug", "50x50"),
                       description: 'esto es una prueba',
                       price:precios[rand(1 .. 9) ],


                     }])
  special.dishes << plato

end
Client.create(name:"elpropio" ,email:"clienteprueba@gmail.edu.co",
              password: "12345678",)
for i in 1..9


  nombre = Faker::Name.name

  Client.create(name: nombre ,email:Faker::Internet.email(nombre), password: "12345678")


end

for i in 1..10

  cliente=Client.find(i)

  orden1=Order.create(price:0,state:"hold on",client_id:i)
  mesa1=Table.find(i)
  mesa1.orders << orden1
  sum=0
  for i in 1..10
    d=rand(1 .. 100)
    plato=Dish.find(d)
    q=rand(1 .. 3)
    sum=sum+Dish.find(d).price*q
    orden1.dishes << plato
    orden1.save
    orden1.orderdishes.last.update_attributes(quantity: q)

  end

  b=Order.find(Order.last.id);
  b.price=sum;
  b.save!
end