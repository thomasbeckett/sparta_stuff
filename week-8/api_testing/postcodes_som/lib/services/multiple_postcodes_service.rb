require "httparty"
require "json"

class MultiplePostcodesService
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :many_postcodes

  def get_multiple_postcodes postcodes
    @many_postcodes = JSON.parse(self.class.post("/postcodes/",
       body: {"postcodes": postcodes}).body)
  end

  def multiple_types key, type
    @many_postcodes["result"].each do |postcode|
      unless postcode["result"][key].is_a? type
        return false
      end
    end
    return true
  end

  def array_contains? pcode
    @many_postcodes["result"].each do |postcode|
      if postcode["result"]["postcode"] == pcode
        return true
      end
    end
    return false
  end

end
