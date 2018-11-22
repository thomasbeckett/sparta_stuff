class Circle
  attr_accessor :radius, :scale

  def initialize radius, scale=1
    self.radius = radius
    self.scale = scale
  end

  def calculate_area
    Math::PI*((radius*scale)**2)
  end

  def calculate_perimeter
    Math::PI*(radius*scale)*2
  end

  def description
    puts "Area: #{calculate_area.round(2)} Perimeter: #{calculate_perimeter.round(2)}"
  end

end
