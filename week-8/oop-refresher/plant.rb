require_relative "living_organism"

class Plant < LivingOrganism

  def self.traits
    puts "Plants are tasty"
  end

  def respire
    puts "Plants respire somehow I don't remember"
  end

  def eat
    puts "plants suck up stuff from the ground"
  end

  def procreate
    puts "plants usually have seeds"
  end

end
