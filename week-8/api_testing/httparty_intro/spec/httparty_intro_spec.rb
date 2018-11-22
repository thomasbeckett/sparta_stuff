require_relative '../lib/httparty_intro.rb'

describe "postcodes api" do
  context "random postcode" do

    before(:all) do
      @HTTParty = HTTPartyIntro.new
      @response = @HTTParty.get_random_postcode
    end

    it "should return a status of 200" do
      expect(@HTTParty.get_random_status).to eq 200
    end

    it "should return a postcode as a string" do
      expect(@response["result"]["postcode"]).to be_a String
    end

    it "should give longitude as a float" do
      expect(@response["result"]["longitude"]).to be_a Float
    end

    it "should give latitude as a float" do
      expect(@HTTParty.check_type "latitude").to be_a Float
    end

    it "should give quality as a int" do
      expect(@HTTParty.check_type "quality").to be_a Integer
    end

    it "should give eastings as a int" do
      expect(@HTTParty.check_type "eastings").to be_a Integer
    end

    it "should give northings as a integer" do
      expect(@HTTParty.check_type "northings").to be_a Integer
    end

    it "should give country as a string" do
      expect(@HTTParty.check_type "country").to be_a String
    end

    it "should give nhs_ha as a string" do
      expect(@HTTParty.check_type "nhs_ha").to be_a String
    end

    it "should give european_electoral_region as a string" do
      expect(@HTTParty.check_type "european_electoral_region").to be_a String
    end
  end

  context "single postcode" do

    before(:all) do
      @HTTParty = HTTPartyIntro.new
      @response = @HTTParty.get_single_postcode "EX46QZ"
    end

    it "should return a status of 200" do
      expect(@HTTParty.get_single_status).to eq 200
    end

    it "should return a postcode as a string" do
      expect(@response["result"]["postcode"]).to be_a String
    end

    it "should return postcode as EX4 6QZ" do
      expect(@response["result"]["postcode"]).to eq "EX4 6QZ"
    end

    it "should give latitude as a float" do
      expect(@HTTParty.check_single_type "latitude").to be_a Float
    end

    it "should give longitude as a float" do
      expect(@HTTParty.check_single_type "longitude").to be_a Float
    end

    it "should give primary_care_trust as a Devon" do
      expect(@HTTParty.check_single_type "primary_care_trust").to eq "Devon"
    end
  end

  context "multiple postcode" do
    before(:all) do
      @HTTParty = HTTPartyIntro.new
      @response = @HTTParty.get_many_postcodes ["OX49 5NU", "M32 0JG", "NE30 1DP"]
    end

    it "should give a status of 200" do
      expect(@HTTParty.get_many_status).to eq 200
    end

    it "should give an array of postcodes" do
      expect(@response["result"]).to be_an Array
    end

    it "should give the postcodes as a string" do
      expect(@HTTParty.postcodes_as_string?).to eq true
    end

    it "should give the quality as an int" do
      expect(@HTTParty.multiple_types "quality", Integer).to eq true
    end

    it "should give the postcode OX49 5NU" do
      expect(@HTTParty.array_contains? "OX49 5NU").to eq true
    end

  end

  context "auto_complete postcode" do
    before(:all) do
      @HTTParty = HTTPartyIntro.new
      @response = @HTTParty.auto_complete "GL24"
    end

    it "should give status 200" do
      expect(@response["status"]).to eq 200
    end

    it "should give response as an array" do
      expect(@response["result"]).to be_an Array
    end

    it "should return 10 results" do
      expect(@response["result"].length).to eq 10
    end

    it "should return postcodes to be equal to 7 characters" do
      expect(@HTTParty.postcode_length).to eq true
    end

    it "should return postcodes as strings" do
      expect(@response["result"]).to all(be_a String)
    end
  end
end
