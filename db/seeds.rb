# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

people = [
  {first_name: 'Sebastian', last_name: 'Jimenez', email: 'sebastian@email.com', job: 'Ruby on Rails Developer', bio: 'Passionate developer', gender: 'm', birthdate: '10-09-1988'},
  {first_name: 'Daniel', last_name: 'Benitez', email: 'daniel@email.com', job: 'Graphic Designer', bio: 'Best Graphic Designer', gender: 'm', birthdate: '10-09-1994'},
  {first_name: 'Esteban', last_name: 'Diaz', email: 'esteban@email.com', job: 'Accountant', bio: 'Accountant from California State Fullerton', gender: 'm', birthdate: '10-09-1990'},
  {first_name: 'Carlos', last_name: 'Camacho', email: 'carlos@email.com', job: 'Attorney', bio: 'Film maker during free time', gender: 'm', birthdate: '10-09-1992'},
  {first_name: 'Jose', last_name: 'Velez', email: 'jose@email.com', job: 'Entrepreneur', bio: 'Taco Lover', gender: 'm', birthdate: '10-09-1990', picture: 'https://c2.staticflickr.com/6/5193/7181256245_5897369054_b.jpg'},
  {first_name: 'Juan', last_name: 'Uribe', email: 'juan@email.com', job: 'Ionic Developer', bio: 'Born to change the world', gender: 'm', birthdate: '10-09-1991'}
]

Person.destroy_all

people.each do |person|
  Person.create person
end