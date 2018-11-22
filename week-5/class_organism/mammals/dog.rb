require_relative "../animal.rb"
require_relative "../animal_types/mammals.rb"
class Dog < Animal
  include Mammals

  def speak
    puts "woof"
  end

  def number_of_legs
    Quadruped.legs
  end
end

john = Dog.new

zebra = Animal.new

john.speak
zebra.speak
john.eat
john.alive

john.number_of_legs
