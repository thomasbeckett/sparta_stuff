require 'httparty'
require 'json'

class ParamSearchService
  include HTTParty
  base_uri 'https://api.punkapi.com/v2/'

  attr_accessor :beers

  def params_beer params
    @beers = JSON.parse(self.class.get("/beers?#{params}").body)
  end

  def search_gt value
    @beers.each do |beer|
      unless beer["abv"] > value
        return false
      end
    end
    return true
  end

  def search_lt value
    @beers.each do |beer|
      unless beer["abv"] < value
        return false
      end
    end
    return true
  end
end
