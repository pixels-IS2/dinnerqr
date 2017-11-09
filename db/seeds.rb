# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
states=['hola', 'casa' ,'picante']
Speciality.create([{name:"Entrada"},{name:"Gaseosa"},{name:"Plato fuerte"},{name:"Postre"},{name:"Bebidas"},{name:"Parrilla"}])
50.times do
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
10.times do

  Table.create(
      number:count,
      sector:"A",
      waiter_id:1
  );
  count=count+1;
end
Client.create(email:"clienteprueba@gmail.edu.co",
              password: "12345678",)
10.times do

  nombre =Faker::Name.name;
  Client.create(

      email: Faker::Internet.email(nombre),
      password: "12345678",

  );

end
10.times do
  i=1
  a=Table.find(i%5);
  Order.create(price:10000,state:"hold on",table_id:a.id,client_id:rand(10));
  c=1;
  r=rand(4)
  sum=0
  r.times do
    q=rand(4)
    d=rand(Dish.count-1)+1
    sum=sum+Dish.find(d).price*q
    Orderdish.create(state:"preparando",quantity:q,specification:"sin sal",order_id:Order.last.id,dish_id:d)
    c=c+1;
  end

  b=Order.find(Order.last.id);
  b.price=sum;
  b.save!
  i=i+1

end
