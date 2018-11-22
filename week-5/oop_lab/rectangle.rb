class Rectangle
  attr_accessor :length1, :length2, :scale

  def initialize length1, length2=length1, scale=1
    self.length1 = length1
    self.length2 = length2
    self.scale = scale
  end

  def calculate_area
    (length1 * length2) * scale
  end

  def calculate_perimeter
    (length1*2 + length2*2)* scale
  end

  def description
    puts "Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end
end
