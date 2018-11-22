# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: Faker::Book.title , body: Faker::GreekPhilosophers.quote, author: Faker::GreekPhilosophers.name, date: 03/10/2018)

Post.create(title: Faker::Book.title, body: Faker::GreekPhilosophers.quote, author: Faker::GreekPhilosophers.name, date: 03/10/2018)

Post.create(title: Faker::Book.title, body: Faker::GreekPhilosophers.quote, author: Faker::GreekPhilosophers.name, date: 03/10/2018)

Comment.create(post_id: 1, body:Faker::HowIMetYourMother.catch_phrase ,author: Faker::HowIMetYourMother.character)
Comment.create(post_id: 1, body:Faker::HowIMetYourMother.catch_phrase ,author: Faker::HowIMetYourMother.character)
Comment.create(post_id: 2, body:Faker::HowIMetYourMother.catch_phrase ,author: Faker::HowIMetYourMother.character)
Comment.create(post_id: 2, body:Faker::HowIMetYourMother.catch_phrase ,author: Faker::HowIMetYourMother.character)
Comment.create(post_id: 3, body:Faker::HowIMetYourMother.catch_phrase ,author: Faker::HowIMetYourMother.character)
