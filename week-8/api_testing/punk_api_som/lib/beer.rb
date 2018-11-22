require_relative 'services/single_beer_service.rb'
require_relative 'services/multiple_beer_service.rb'
require_relative 'services/param_search_service.rb'

class Beer

  def single_beer_service
    SingleBeerService.new
  end

  def multiple_beer_service
    MultipleBeerService.new
  end

  def param_search_service
    ParamSearchService.new
  end

end
