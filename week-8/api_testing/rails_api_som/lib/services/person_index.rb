require 'httparty'
require 'json'

class PersonIndexService
  include HTTParty
  base_uri 'http://localhost:3000'

  attr_accessor :people

  def get_people
    @people = JSON.parse(self.class.get("/people").body)
  end

  def get_address
    @people.each do |person|
      if person["address"].empty?
        return false
      end
    end
    return true
  end

  def get_address_key key, type
    @people.each do |person|
      unless person["address"][key] == type
        return false
      end
    end
    return true
  end

end
