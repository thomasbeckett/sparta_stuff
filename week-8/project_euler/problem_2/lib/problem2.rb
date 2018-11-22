class Fibonacci

  attr_accessor :array, :sum

  def initialize
    @array = [1,2]
    @sum = 2
  end

  def is_even? num
    num.even?
  end

  def sequence max_num

    @array.each do |i|
      new = @array[-2..-1].reduce(:+)
      @array.push new
      if is_even?(new)
        @sum += new
      end

      if @array.last > max_num
        @array.pop(1)
        break
      end
    end
    puts @sum
    @array
  end
end
