require "httparty"
require "json"

# response = HTTParty.get("http://api.postcodes.io/random/postcodes")
#
# json = JSON.parse(response.body)
#
# puts json["result"]["postcode"]

class HTTPartyIntro
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :random_postcode, :single_postcode, :many_postcodes

  def get_random_postcode
    @random_postcode = JSON.parse(self.class.get("/random/postcodes").body)
  end

  # ========== random postcode methods

  def get_random_status
    @random_postcode["status"]
  end

  def check_type key
    @random_postcode["result"][key]
  end

# ===================

  def get_single_postcode postcode
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end


  # ================== Single postcode methods
  def get_single_status
    @single_postcode["status"]
  end

  def check_single_type key
    @single_postcode["result"][key]
  end

# ===========================
  def get_many_postcodes postcodes
    @many_postcodes = JSON.parse(self.class.post("/postcodes/",
       body: {"postcodes": postcodes}).body)
  end

  # ========== many methods
  def get_many_status
    @many_postcodes["status"]
  end

  def postcodes_as_string?
    @many_postcodes["result"].each do |postcode|
      unless postcode["result"]["postcode"].is_a? String
        return false
      end
    end
    return true
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

  # ================

  def auto_complete part
    @auto_postcode = JSON.parse(self.class.get("/postcodes/#{part}/autocomplete").body)
  end

  # ============ autocomplete methods
  def postcode_length
    @auto_postcode["result"].each do |postcode|
      unless postcode.length == 7
        return false
      end
    end
    return true
  end
end

# postcode1 = HTTPartyIntro.new

# postcode1.get_random_postcode

# puts postcode1.random_postcode

# postcode1.get_single_postcode "EX46QZ"

# puts postcode1.single_postcode

# postcode1.get_many_postcodes ["OX49 5NU", "M32 0JG", "NE30 1DP"]
#
# puts postcode1.many_postcodes
