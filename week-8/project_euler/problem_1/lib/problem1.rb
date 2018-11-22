class Number

  attr_accessor :array

  def initialize
    @array = []
  end

  def divisible_by? num, div
    num % div == 0
  end

  def iterator start_num, end_num
    (start_num...end_num).each do |num|
      if divisible_by?(num,3) && divisible_by?(num, 5)
        @array.push num
      elsif divisible_by? num, 5
        @array.push num
      elsif divisible_by? num, 3
        @array.push num
      end
    end
  end

  def sum array
    x = array.reduce(:+)
    puts x
    return x
  end
end
