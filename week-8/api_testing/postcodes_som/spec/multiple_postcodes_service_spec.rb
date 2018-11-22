require_relative '../lib/postcode.rb'

describe "postcodes api" do

  context "multiple postcodes" do

    before(:all) do
      @multiple_postcodes_class = Postcode.new.multiple_postcodes_service
      @response = @multiple_postcodes_class.get_multiple_postcodes ["OX49 5NU", "M32 0JG", "NE30 1DP"]
    end

    it "should return a status of 200" do
      expect(@response["status"]).to eq 200
    end

    it "should give an array of postcodes" do
      expect(@response["result"]).to be_an Array
    end

    it "should give the postcodes as a string" do
      expect(@multiple_postcodes_class.multiple_types "postcode", String).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "quality", Integer).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "northings", Integer).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "eastings", Integer).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "country", String).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "nhs_ha", String).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "longitude", Float).to eq true
    end

    it "should give the quality as an int" do
      expect(@multiple_postcodes_class.multiple_types "latitude", Float).to eq true
    end

    it "should give the postcode OX49 5NU" do
      expect(@multiple_postcodes_class.array_contains? "OX49 5NU").to eq true
    end

    it "should give all postcode info as hashes" do
      expect(@response["result"]).to all be_a Hash
    end
  end


end
