require_relative '../lib/person.rb'

describe Person do
  context "getting all the people" do
    before(:all) do
      @people_index = Person.new.person_index_service
      @people = @people_index.get_people
    end

    it "should return an array" do
      expect(@people).to be_an Array
    end

    it "should all be hashes" do
      expect(@people).to all be_a Hash
    end

    it "should have a size of 10" do
      expect(@people.size).to eq 10
    end

    it "shouldn't be empty" do
      expect(@people).not_to be_empty
    end

    it "should have a first name" do
      expect(@people).to all have_key("first_name")
    end

    it "should have a last name" do
      expect(@people).to all have_key("last_name")
    end

    it "should have a dob" do
      expect(@people).to all have_key("dob")
    end

    it "should have a job" do
      expect(@people).to all have_key("job")
    end

    it "should have a organisation" do
      expect(@people).to all have_key("organisation")
    end

    it "should have cars" do
      expect(@people).to all have_key("cars")
    end

    it "should have pets" do
      expect(@people).to all have_key("pets")
    end

    it "should have an address that isn't empty" do
      expect(@people_index.get_address).to eq true
    end
  end

  context "getting the address" do
    before(:all) do
      @people_index = Person.new.person_index_service
      @people = @people_index.get_people
    end

    it "should have a street number" do
      expect(@people_index.get_address_key "street_number", Integer)
    end

    it "should have a street name" do
      expect(@people_index.get_address_key "street_name", String)
    end

    it "should have a city" do
      expect(@people_index.get_address_key "city", String)
    end

    it "should have a country" do
      expect(@people_index.get_address_key "country", String)
    end

    it "should have a zip" do
      expect(@people_index.get_address_key "zip", String)
    end
  end
end
