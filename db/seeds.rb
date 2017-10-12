e# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
states=['hola', 'casa' ,'picante']
Speciality.create([{name:"Entrada"},{name:"Gaseosa"},{name:"Plato fuerte"},{name:"Postre"},{name:"Bebidas"},{name:"Parrilla"}])
15.times do
  Dish.create([{ name: Faker::Food.dish,
                 state:states[rand(3)],

                 #photo:Faker::Avatar.image("my-own-slug", "50x50"),
                 description: 'esto es una prueba',
                 speciality_id:rand(6),
                 price: rand(1000..30000),


               }])
end
5.times do

  nombre =Faker::Name.name;
  Waiter.create(
      email: Faker::Internet.email(nombre),
      password: "12345678",



      status:"active"
  )
  nombre2 =Faker::Name.name;
  Chef.create(
      email: Faker::Internet.email(nombre2),
      password: "12345678",
      state:"active",
      speciality_id:rand(2)
  )
end

count=1;
5.times do

  Table.create(
      number:count,
      sector:"A",
      waiter_id:1
  );
  count=count+1;
end
Client.create(email:"clienteprueba@gmail.edu.co",
              password: "12345678",)
5.times do

  nombre =Faker::Name.name;
  Client.create(

      email: Faker::Internet.email(nombre),
      password: "12345678",

  )

end
a=Table.find(2);
Order.create(price:10000,state:"hold on",table_id:a.id,client_id:1);
c=1;
3.times do
  Orderdish.create(state:"preparando",quantity:1,specification:"sin sal",order_id:1,dish_id:c)
  c=c+1;
end

b=Order.find(1);
b.price=Dish.find(1).price*Orderdish.find(1).quantity+Dish.find(2).price*Orderdish.find(2).quantity+Dish.find(3).price*Orderdish.find(3).quantity;
b.save!
