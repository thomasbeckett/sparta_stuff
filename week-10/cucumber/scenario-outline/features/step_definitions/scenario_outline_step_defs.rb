Given("i have more than one data row in my table") do

end


Given(/^includes ([A-Za-z]*) and (\d*)$/) do |name,age|

end

Then(/^i can print the ([A-Za-z]*) and (\d*)$/) do |name,age|
  puts "#{name} is #{age}"
end
