(1..10).each do |i|
  Person.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    dob: Faker::Date.birthday(18, 65),
    job: Faker::Job.title,
    organisation: Faker::Company.name
  )
end

(1..Person.count).each do |i|
  Address.create(
    street_number: Faker::Address.building_number,
    street_name: Faker::Address.street_name,
    city: Faker::Address.city,
    country: Faker::Address.country,
    zip: Faker::Address.zip,
    person: Person.find(i)
  )
end

(1..20).each do |i|
  num = rand(1..Person.count)
  Car.create(
    car_model: Faker::Vehicle.model,
    car_make: Faker::Vehicle.make,
    car_year: Faker::Vehicle.year,
    car_color: Faker::Vehicle.color,
    person: Person.find(num)
  )
end

(1..20).each do |i|
  num = rand(1..Person.count)
  Pet.create(
    name: Faker::FunnyName.name,
    animal: Faker::Pokemon.name,
    origin: Faker::Pokemon.location,
    legs: Faker::Number.between(1, 7),
    person: Person.find(num)
  )
end

puts "#{Person.count} people were created"
puts "#{Address.count} addresses were created"
puts "#{Car.count} cars were created"
puts "#{Pet.count} pets were created"

(1..10).each do |i|
  Philosopher.create(
    name: Faker::GreekPhilosophers.name,
    nationality: Faker::Nation.nationality,
    university: Faker::Educator.university
  )
end

puts "#{Philosopher.count} philosophers were created"

(1..20).each do |i|
  num = rand(1..Philosopher.count)
  Quote.create(
    quote: Faker::GreekPhilosophers.quote,
    philosopher: Philosopher.find(num)
  )
end
