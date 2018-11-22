require 'httparty'
require 'json'

class PhilosopherIndexService
  include HTTParty
  base_uri 'http://localhost:3000'

  attr_accessor :philosopher

  def get_philosophers
    @philosophers = JSON.parse(self.class.get("/philosophers").body)
  end

  def get_quote
    @philosophers.each do |philosopher|
      philosopher["quotes"].each do |quote|
        unless quote["quote"].is_a? String
          return false
        end
      end
    end
    return true
  end

end
