module Mammals

  def self.common_traits
    puts "Mammals are warm blooded vertebrates"
  end

  class CommonTraits
    def feed_young
      puts "All mammals feed their young with milk"
    end
  end

  class Biped < CommonTraits
    def self.legs
      puts "I have 2 legs"
    end
  end

  class Quadruped < CommonTraits
    def self.legs
      puts "I have 4 legs"
    end
  end

end

# human = Mammals::Biped.new
# zebra = Mammals::Quadruped.new
# human.feed_young
