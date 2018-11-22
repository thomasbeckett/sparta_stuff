require 'httparty'
require 'json'

class MultipleBeerService
  include HTTParty
  base_uri 'https://api.punkapi.com/v2/'

  attr_accessor :beers

  def get_multiple_beer
    @beers = JSON.parse(self.class.get('/beers').body)
  end

  def multiple_attribute key, type
    @beers.each do |beer|
      unless beer[key].nil?
        unless beer[key].is_a? type
          return false
        end
      end
    end
    return true
  end

  def multiple_inner_attributes key1, key2, type
    @beers.each do |beer|
      unless beer[key1][key2].nil?
        unless beer[key1][key2].is_a? type
          return false
        end
      end
    end
    return true
  end

  def multiple_mash_temp key, type
    @beers.each do |beer|
      beer['method']['mash_temp'].each do |a|
        unless beer[key].nil?
          unless a[key].is_a? type
            return false
          end
        end
      end
    end
    return true
  end

  def multiple_ingredients key1, key2, type
    @beers.each do |beer|
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
