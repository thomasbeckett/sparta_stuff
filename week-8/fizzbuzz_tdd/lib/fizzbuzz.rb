class Fizzbuzz

  attr_accessor :array

  def initialize
    @array = []
  end

  def divisible_by? num, div
    num % div == 0
    # num.%(div).zero?
  end

  def iterator start_num, end_num
    (start_num..end_num).each do |num|
      if divisible_by?(num, 3) && divisible_by?(num, 5)
        @array.push 'FizzBuzz'
      elsif divisible_by?(num, 3)
        @array.push 'Fizz'
      elsif divisible_by?(num, 5)
        @array.push 'Buzz'
      else
        @array.push num
      end
    end
  end
end
