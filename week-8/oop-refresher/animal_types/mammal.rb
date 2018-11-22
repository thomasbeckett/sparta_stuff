module Mammal
  def self.common_mammal_traits
    puts "Mammals are warm blooded and hairy"
  end

  class CommonTraits
    def self.feed_young
      puts "Mammals feed their young with the blood of their enimies"
    end
  end

  class Biped < CommonTraits
    def legs
      puts "I have 2 legs"
    end
  end

  class Quadruped < CommonTraits
    def self.legs
      puts "I have 4 legs"
    end
  end
end

# monkey = Mammal::Biped.new
# monkey.legs
#
# dog = Mammal::Quadroped.new
# dog.legs
