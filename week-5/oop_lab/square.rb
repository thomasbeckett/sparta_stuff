class Square

  attr_accessor :length, :scale

  def initialize length, scale=1
    self.length = length
    self.scale = scale
  end

  def calculate_area
    length ** 2
  end

  def calculate_perimeter
    length * 4
  end

  def scaled_area
    calculate_area * scale
  end

  def scaled_perimeter
    calculate_perimeter * scale
  end

  def description
    puts "Area: #{scaled_area} Perimeter: #{scaled_perimeter}"
  end

end
