require 'httparty'
require 'json'

class SingleBeerService
  include HTTParty
  base_uri 'https://api.punkapi.com/v2/'

  attr_accessor :single_beer

  def get_single_beer
    @single_beer = JSON.parse(self.class.get('/beers/random').body)
  end

  def get_attribute key, type
    @single_beer.each do |beer|
      unless beer[key].nil?
        unless beer[key].is_a? type
          return false
        end
      end
    end
    return true
  end

  def get_inner_attributes key1, key2, type
    @single_beer.each do |beer|
      unless beer[key1][key2].nil?
        unless beer[key1][key2].is_a? type
          return false
        end
      end
    end
    return true
  end

  def get_mash_temp key, type
    @single_beer.each do |beer|
      unless beer['method']['mash_temp'].first[key].nil?
        unless beer['method']['mash_temp'].first[key].is_a? type
          return false
        end
      end
    end
    return true
  end

  def get_ingredients key1, key2, type
    @single_beer.each do |beer|
      beer['ingredients'][key1].each do |a|
        unless beer[key2].nil?
          unless a[key2].is_a? type
            return false
          end
        end
      end
    end
    return true
  end

end
