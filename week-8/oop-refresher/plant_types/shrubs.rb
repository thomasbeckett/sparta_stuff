module Shrub
  def self.common_shrub_traits
    puts "Shrubs are small- to medium-sized woody plant"
  end

  class CommonTraits
    def self.stems
      puts "Shrubs have multiple stems"
    end
  end

  class Size < CommonTraits
    def self.height
      puts "less than 6m"
    end
  end
end
