require_relative "living_organism"

class Animal < LivingOrganism

  def self.traits
    puts "Animals can do stuff "
  end

  def breathe
    puts "inhale and exhale"
  end

  def eat
    puts "chomp chomp"
  end

  def drink
    puts "slurp slurp"
  end

  def speak
    puts "Hello, World!"
  end

  def procreate
    puts "kinky"
  end

  def super_duper arg1, arg2
    puts "What is this"
    puts "args: #{arg1}, #{arg2}"
  end

end

# animal = Animal.new
# Animal.alive
# Animal.traits
# animal.breathe
# animal.eat
# animal.drink
# animal.speak
# animal.procreate
