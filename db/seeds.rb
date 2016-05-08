# Random people, some with profile pic, some not.

people = [
  {first_name: 'Sebastian',last_name: 'Jimenez', email: 'sebastian@email.com', job: 'Ruby on Rails Developer', bio: 'Passionate developer', gender: 'm', birthdate: '10-09-1988', picture: 'https://appsco-raid2.s3.amazonaws.com/cache/dd/50/dd5022b63effcbf1d871a9e55d326ace.png'},
  {first_name: 'Daniel', last_name: 'Benitez', email: 'daniel@email.com', job: 'Graphic Designer', bio: 'Best Graphic Designer', gender: 'm', birthdate: '10-09-1994'},
  {first_name: 'Esteban', last_name: 'Diaz', email: 'esteban@email.com', job: 'Accountant', bio: 'Accountant from California State Fullerton', gender: 'm', birthdate: '10-09-1990'},
  {first_name: 'Carlos', last_name: 'Camacho', email: 'carlos@email.com', job: 'Attorney', bio: 'Film maker during free time', gender: 'm', birthdate: '10-09-1992', picture: 'https://img.buzzfeed.com/buzzfeed-static/static/2014-04/enhanced/webdr08/12/12/enhanced-buzz-26026-1397318706-0.jpg'},
  {first_name: 'Jose', last_name: 'Velez', email: 'jose@email.com', job: 'Entrepreneur', bio: 'Taco Lover', gender: 'm', birthdate: '10-09-1990', picture: 'https://c2.staticflickr.com/6/5193/7181256245_5897369054_b.jpg'},
  {first_name: 'Juan', last_name: 'Uribe', email: 'juan@email.com', job: 'Ionic Developer', bio: 'Born to change the world', gender: 'm', birthdate: '10-09-1991', picture: 'http://cliparts.co/cliparts/rcj/Gpx/rcjGpxzcR.png'},
  {first_name: 'Daniela', last_name: 'Osorio', email: 'dani_osorio@email.com', job: 'Manager', bio: 'Born to manage', gender: 'f', birthdate: '10-09-1985', picture: 'http://images.clipartpanda.com/face-clip-art-TN_girl_smiley_face_813.jpg'},
  {first_name: 'Andres', last_name: 'Galvez', email: 'andres@email.com', job: 'Bike Retailer', bio: 'Seeling bikes since 1998', gender: 'm', birthdate: '10-09-1989'},
  {first_name: 'Lorem', last_name: 'Ipsum', email: 'lorem@email.com', job: 'Lorem Ipsumer', bio: 'Donec efficitur, ipsum eget convallis sollicitudin, tortor odio semper quam, sed eleifend leo magna sit amet massa. Vivamus tincidunt hendrerit nibh. Curabitur eu vulputate velit, at efficitur massa. Vivamus lectus mauris, viverra vitae tristique ut, dignissim a elit. Sed lectus magna, porttitor sodales dui nec, consectetur aliquet erat. Vestibulum justo arcu, pellentesque et neque fringilla, suscipit congue mi. Maecenas ultrices nibh quis sem pellentesque tempus. Praesent fermentum sapien vitae sollicitudin volutpat.', gender: 'm', birthdate: '10-09-1900', picture: 'http://cdn.mhpbooks.com/uploads/2014/03/test_ttp_big.jpg'},
  {first_name: 'First Name', last_name: 'Last Name', email: 'first_last@email.com', job: 'First Laster', bio: '...', gender: 'm', birthdate: '10-09-1988'},
  {first_name: 'Sebastian',last_name: 'Ramirez', email: 'sebastian1@email.com', job: 'Ruby on Rails Developer', bio: 'Passionate developer', gender: 'm', birthdate: '10-09-1988', picture: 'https://appsco-raid2.s3.amazonaws.com/cache/dd/50/dd5022b63effcbf1d871a9e55d326ace.png'},
  {first_name: 'Daniel', last_name: 'Tamayo', email: 'daniel1@email.com', job: 'Graphic Designer', bio: 'Best Graphic Designer', gender: 'm', birthdate: '10-09-1994'},
  {first_name: 'Ramiro', last_name: 'Diaz', email: 'esteban1@email.com', job: 'Accountant', bio: 'Accountant from California State Fullerton', gender: 'm', birthdate: '10-09-1990', picture: 'http://cliparts.co/cliparts/rcj/Gpx/rcjGpxzcR.png'},
  {first_name: 'Camilo', last_name: 'Camacho', email: 'carlos1@email.com', job: 'Attorney', bio: 'Film maker during free time', gender: 'm', birthdate: '10-09-1992', picture: 'https://img.buzzfeed.com/buzzfeed-static/static/2014-04/enhanced/webdr08/12/12/enhanced-buzz-26026-1397318706-0.jpg'},
  {first_name: 'Jaime', last_name: 'Velez', email: 'jose1@email.com', job: 'Entrepreneur', bio: 'Taco Lover', gender: 'm', birthdate: '10-09-1990', picture: 'https://c2.staticflickr.com/6/5193/7181256245_5897369054_b.jpg'},
  {first_name: 'Juan', last_name: 'Valencia', email: 'juan1@email.com', job: 'Ionic Developer', bio: 'Born to change the world', gender: 'm', birthdate: '10-09-1991'},
  {first_name: 'Daniela', last_name: 'Andrade', email: 'dani_osorio1@email.com', job: 'Manager', bio: 'Born to manage', gender: 'f', birthdate: '10-09-1985', picture: 'http://images.clipartpanda.com/face-clip-art-TN_girl_smiley_face_813.jpg'},
  {first_name: 'Andres', last_name: 'Murillo', email: 'andres1@email.com', job: 'Bike Retailer', bio: 'Seeling bikes since 1998', gender: 'm', birthdate: '10-09-1989'},
  {first_name: 'Dolor', last_name: 'Lorem', email: 'lorem1@email.com', job: 'Lorem Ipsumer', bio: 'Donec efficitur, ipsum eget convallis sollicitudin, tortor odio semper quam, sed eleifend leo magna sit amet massa. Vivamus tincidunt hendrerit nibh. Curabitur eu vulputate velit, at efficitur massa. Vivamus lectus mauris, viverra vitae tristique ut, dignissim a elit. Sed lectus magna, porttitor sodales dui nec, consectetur aliquet erat. Vestibulum justo arcu, pellentesque et neque fringilla, suscipit congue mi. Maecenas ultrices nibh quis sem pellentesque tempus. Praesent fermentum sapien vitae sollicitudin volutpat.', gender: 'm', birthdate: '10-09-1900', picture: 'http://cdn.mhpbooks.com/uploads/2014/03/test_ttp_big.jpg'},
  {first_name: 'Second Name', last_name: 'Second Last Name', email: 'first_last1@email.com', job: 'First Laster', bio: '...', gender: 'm', birthdate: '10-09-1988'}
]

Person.destroy_all

people.each do |person|
  Person.create person
end