require 'json'

class Exchangerates


  attr_accessor :exchange_rates

  def initialize json_file
    @exchange_rates = JSON.parse(File.read(json_file))
  end

  def get_base
    @exchange_rates["base"]
  end

  def get_rates
    @exchange_rates["rates"].each_value do |v|
      unless v.is_a? Float
        return false
      end
    end
    return true
  end

end
