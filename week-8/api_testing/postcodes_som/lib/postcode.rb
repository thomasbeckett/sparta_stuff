require_relative 'services/single_postcode_service.rb'
require_relative 'services/multiple_postcodes_service.rb'

class Postcode

  def single_postcode_service
    SinglePostcodeService.new
  end


  def multiple_postcodes_service
    MultiplePostcodesService.new
  end


end

# postcode = Postcode.new
# puts postcode.single_postcode_service.get_single_postcode("GL24QW")
# puts postcode.multiple_postcodes_service.get_multiple_postcodes(["GL24QW"])
