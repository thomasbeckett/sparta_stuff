# hash_method_1 = {
#   :name => 'Tom',
#   :age => 22
# }
#
# # p hash_method_1
#
# hash_method_2 = {
#   name: 'Tom',
#   age: 22
# }
#
# # p hash_method_2
#
# hash_method_3 = Hash[name: 'Tom', age: 22]
# hash_method_4 = Hash[:name => 'Tom', :age => 22]
#
# p hash_method_4

zoo = {
  mammals: [
    {
      name: 'Elephant',
      origin: 'Africa/Asia',
      legs: 4
    },
    {
      name: 'Polar Bear',
      origin: 'Arctic',
      legs: 4
    },
    {
      name: 'Sloth',
      origin: 'Central America',
      legs: 2
    }
  ]
}

# p zoo[:mammals][1][:origin]

# zoo.each do |i,j|
#   p i
#   p j
# end

# e = zoo[:mammals].first.map do |i|
#   i
# end
# p e
