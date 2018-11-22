# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Rubber duck", desc: "A rubber duck but its not made of rubber and it doesn't look like a duck", stock: "20", price: "2.57", cat_num: 123, picture: "duck.jpg")
Product.create(name: "Socks", desc: "Just some socks but I guess they're comfy, they don't come in pairs so buy two", stock: "31", price: "12.82", cat_num: 762, picture: "sock.jpeg")
