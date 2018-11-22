require_relative 'services/single_city_service.rb'
require_relative 'services/five_day_service.rb'


class OpenWeather

  def single_city_service city
    SingleCityService.new city
  end

  def five_day_service city
    FiveDayService.new city
  end

end
