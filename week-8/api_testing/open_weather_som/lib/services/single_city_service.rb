require 'httparty'
require 'json'

class SingleCityService
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather?q='

  attr_accessor :city

  def initialize city
    @api_key = '24a8f426e1c3cbfeba38c8a2dcb33ecf'
    @city = JSON.parse(self.class.get("#{city}&appid=#{@api_key}").body)
  end

end
