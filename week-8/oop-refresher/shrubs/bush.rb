require_relative "../plant.rb"
require_relative "../plant_types/shrubs.rb"

class Bush < Plant
  include Shrub


end

Bush.traits
