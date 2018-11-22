# def say_hello word
#   puts word
# end
#
# word = "Hello, World!"
#
# say_hello word
#
# num1 = 8
# num2 = 33.5
#
# def add num1, num2
#   num1 * num2
#   num1 + num2
# end
#
# result = add num1, num2
#
# puts result
# def create_user name, course="eng16"
#   puts "#{name} is in course #{course}"
# end
#
# create_user "tom"

def say_some_words *words, word
  p word
  p words
end

say_some_words "this", "that"
