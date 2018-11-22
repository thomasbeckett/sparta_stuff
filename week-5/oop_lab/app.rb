# Squares
require_relative "square"
require_relative "rectangle"
require_relative "circle"

square1 = Square.new 5, 10
square2 = Rectangle.new 3
puts "Squares"
square1.description
square2.description

rectangle1 = Rectangle.new 5, 10, 10
rectangle2 = Rectangle.new 3, 10
puts "Rectangles"
rectangle1.description
rectangle2.description

circle1 = Circle.new 2
circle2 = Circle.new 5, 3
puts "Circles"
circle1.description
circle2.description
