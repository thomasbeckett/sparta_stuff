require "httparty"
require "json"

class SinglePostcodeService
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor  :single_postcode

  def get_single_postcode postcode
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def check_single_type key
    @single_postcode["result"][key]
  end

end
