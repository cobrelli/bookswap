# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

erkki = User.create name:"Erkki Esimerkki", email:"a@b.fi"
maija = User.create name:"Maija Malli", email:"c@d.fi"

a = Book.create name:"Kostoisku", value: 1, author:"Heikki Niljake"
b = Book.create name:"Testikkeli", value: 1, author:"El Cono"
c = Book.create name:"Golfkenttien guru", value: 1, author:"Matti Melkoinen"

erkki.books << a
erkki.books << b
maija.books << c