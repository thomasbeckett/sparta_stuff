require_relative "../animal.rb"
require_relative "../animal_types/mammal.rb"

class Dog < Animal
  include Mammal

  def speak
    puts "woof"
  end

  def num_legs
    Quadruped.legs
  end

  def super_duper arg1, arg2
    puts "This isnt even my final form"
    puts "args: #{arg1}, #{arg2}"
    super
  end
end

# Dog.alive
# Dog.traits
fido = Dog.new
# fido.speak
# fido.num_legs
fido.super_duper "First", "Second"
