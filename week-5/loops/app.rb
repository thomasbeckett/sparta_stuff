i = 0

# loop do
#   puts "I will keep on going until you stop me"
#   i+=1
#   if i > 5
#     break
#   end
# end

# while i<5
#   puts "I will keep on going until you stop me"
#   i+=1
# end

# begin
#   puts "I will keep on going until you stop me"
#   i+=1
# end while i <5

# for j in 1..5
#   puts "this for loops has run #{j} times"
# end
#
# for letter in "a".."z"
#   puts letter
# end

# (0..5).each do |i|
#   puts i
# end

# words = ["this","is","sparta"]
# words.each do |i|
#   puts i
# end

# reversed = words.map do |e| e.reverse end
#
# reversed.map! do |i|
#   i.reverse
# end
# puts reversed

numbers = [6,2,3]

# sum = numbers.reduce do |total, number|
#   total + number
# end
puts numbers.reduce(:*)

# puts sum
