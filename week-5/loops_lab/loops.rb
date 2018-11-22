# return an array of reversed words
def reverse_array_of_strings words
  words.map! do |i|
     i.reverse
   end
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  # array = []
  (0...num).reduce [] do |array, i|
    if i.even?
      array.push i
    end
    array
  end
end

# return the average of all numbers in an array
def average numbers
  return numbers.reduce(:+)/numbers.length.to_f
end
