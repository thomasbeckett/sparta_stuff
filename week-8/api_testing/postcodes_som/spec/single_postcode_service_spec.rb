require_relative '../lib/postcode.rb'

describe "postcodes api" do

  context "single postcode" do

    before(:all) do
      @single_postcode_class = Postcode.new.single_postcode_service
      @response = @single_postcode_class.get_single_postcode "EX46QZ"
    end

    it "should return a status of 200" do
      expect(@response["status"]).to eq 200
    end

    it "should return postcode as EX4 6QZ" do
      expect(@response["result"]["postcode"]).to eq "EX4 6QZ"
    end

    it "should give latitude as a float" do
      expect(@single_postcode_class.check_single_type "latitude").to be_a Float
    end

    it "should give longitude as a float" do
      expect(@single_postcode_class.check_single_type "longitude").to be_a Float
    end

    it "should give primary_care_trust as a Devon" do
      expect(@single_postcode_class.check_single_type "primary_care_trust").to eq "Devon"
    end

    it "every key exists" do
      expect(@response["result"]).not_to be_empty
    end
  end


end
