# Write a function that multiplies two numbers and returns the result
# multiply
def multiply num1, num2
  num1 * num2
end

# Write a function that adds three numbers together and returns the result
# add_three
def add_three num1, num2, num3
  num1 + num2 + num3
end

# Write a function that returns the smaller of 2 numbers
# smallest_number

def smallest_number *num
  num.min
end

# Write a function that returns the largest of 3 numbers
# max_of_three
def max_of_three *num
  num.max
end



# Write a function that returns the reverse of a string
# reverse_string
def reverse_string string
  string.reverse
end

# write a function that returns a string with the vowels stripped out
# disemvowel
def disemvowel string
  string.delete "aeiou"
end

# write a function that removes all ODD numbers from an array
# remove_odd
def remove_odd array
  array.delete_if &:odd?
end

# write a function that removes all EVEN numbers from an array
# remove_even
def remove_even array
  array.delete_if &:even?
end

# write a function that takes an array of strings and returns the string with the longest char length
# longest_string
def longest_string array
  array.max_by(&:length)
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3 array
  array[3..-1]
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash array
  Hash[*array]
end

# Write a function that takes any number and returns a value based on these rules

# For multiples of three print "Fizz" instead of the number
# For the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz".
# Otherwise, print the number
def fizz_buzz number
  if number.to_f % 3 == 0 && number.to_f % 5 == 0
    return "FizzBuzz"
  elsif number.to_f % 3 == 0
    return "Fizz"
  elsif number.to_f % 5 == 0
    return "Buzz"
  else
    number
  end

end
