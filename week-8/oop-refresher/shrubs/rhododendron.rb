require_relative "../plant.rb"
require_relative "../plant_types/shrubs.rb"

class Rhododendron < Plant
  include Shrub

  def color
    puts "pink"
  end

  def location
    puts "I am found in asia"
  end

  def height
    Size.height
  end

  def stems
    CommonTraits.stems
  end
end

steve = Rhododendron.new

steve.height
