# Addition
def add num
  sum = num.shift.to_f
  num.each do |i|
    sum += i.to_f
  end
  return sum
end
# Subtraction
def subt num
  sum = num.shift.to_f
  num.each do |i|
    sum -= i.to_f
  end
  return sum
end
# Multiplication
def mult num
  sum = num.shift.to_f
  num.each do |i|
    sum = sum * i.to_f
  end
  return sum
end
# Division
def div num
  sum = num.shift.to_f
  num.each do |i|
    sum = sum/i.to_f
  end
  return sum
end


# Power
def pow num
  sum = num.shift.to_f
  num.each do |i|
    sum = sum ** i.to_f
  end
  return sum
end
# Square Root
def sqrt num
  Math.sqrt(num[0].to_f)
end
