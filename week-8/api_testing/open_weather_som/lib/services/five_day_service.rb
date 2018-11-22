require 'httparty'
require 'json'

class FiveDayService
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/forecast?q='

  attr_accessor :city

  def initialize city
    @api_key = '24a8f426e1c3cbfeba38c8a2dcb33ecf'
    @city = JSON.parse(self.class.get("#{city}&appid=#{@api_key}").body)
  end

  def get_forecast_keys key, type
    @city["list"].each do |forecast|
      unless forecast[key].is_a? type
        return false
      end
    end
    return true
  end

  def get_forecast_sub_keys head_key, sub_key, type
    @city["list"].each do |forecast|
      unless forecast[head_key][sub_key].is_a? type
        return false
      end
    end
    return true
  end

  def temp_min_max
    @city["list"].each do |forecast|
      unless forecast["main"]["temp_min"] <= forecast["main"]["temp_max"]
        return false
      end
    end
    return true
  end

  def get_forecast_weather key, type
    @city["list"].each do |forecast|
      unless forecast["weather"][0][key].is_a? type
        return false
      end
    end
    return true
  end

  def get_sys_pod
    @city["list"].each do |forecast|
      unless (forecast["sys"]["pod"].length == 1) || (forecast["sys"]["pod"].is_a? String)
        return false
      end
    end
    return true
  end
end
