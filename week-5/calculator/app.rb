require_relative "functions"

puts "(B)asic or (A)dvanced"
a = gets.chomp.upcase

if a == "B"
  puts "(A)ddition, (S)ubtraction, (M)ultiplication, or (D)ivision?"
  op = gets.chomp.upcase
elsif a == "A"
  puts "(P)ower or Square (R)oot"
  op = gets.chomp.upcase
end

puts "Enter numbers"
nums  = gets.chomp
nums = nums.split(/ /)
# p op
# p nums


case op
when "A"
  puts add nums
when "S"
  puts subt nums
when "M"
  puts mult nums
when "D"
  puts div nums
when "P"
  puts pow nums
when "R"
  puts sqrt nums
end
