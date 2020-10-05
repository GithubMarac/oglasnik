# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



10.times do | i |

    Job.create(
        naziv_oglasa: Faker::Job.title,
        opis_oglasa: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem I',
        email_poslodavca: "email@gmail.com",
        kategorija_oglasa: "Kategorija oglasa",
        istek_oglasa: Faker::Date.forward(days: 23),
        istekao: false
  
      

    )
end
 