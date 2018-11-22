require_relative '../lib/mockaroo.rb'

describe 'mock data' do

  before(:all) do
    @data = Mockaroo.new 'json/mockaroo.json'
  end

  context "a companies core details" do
    it "should give a company name as a string" do
      expect(@data).to respond_to :get_company
      expect(@data.get_company).to be true
    end

    it "should give staff members as an array " do
      expect(@data.mockaroo.first["Staff"]).to be_a Array
    end

    it "should give a companies features as a string" do
      expect(@data).to respond_to :get_features
      expect(@data.get_features("Jazzy")).to eq "Open-source demand-driven frame"

      expect(@data.get_features("Wrong Name")).to eq false
    end

  end

  context "a staff members details" do
    it "should give a first name for every staff member" do
      expect(@data).to respond_to :get_staff
      expect(@data.get_staff("firstName")).to be true
    end
    it "should give a last name for every staff member" do
      expect(@data.get_staff("lastName")).to be true
    end
    it "should give a job for every staff member" do
      expect(@data.get_staff("job")).to be true
    end

    it "should give each staff member an array of pets" do
      expect(@data).to respond_to :get_pets
      expect(@data.get_pets).to be true
    end

    it "should give staff numbers as a hash" do
      expect(@data).to respond_to :get_numbers
      expect(@data.get_numbers).to be true
    end
  end

  context "staff pet details" do
    it "should give an pets age as an integer" do
      expect(@data).to respond_to :pets_age
      expect(@data.pets_age).to be true
    end

    it "should give a pets animal type" do
      expect(@data).to respond_to :pets_type
      expect(@data.pets_type).to be true
    end
  end

  context "staff numbers" do
    it "should get give each staff a row number that counts the staff within a company " do
      expect(@data).to respond_to :staff_num
      expect(@data.staff_num).to eq true
    end

    it "should give staff a row number between 1 and 5" do
      expect(@data.mockaroo[3]["Staff"][2]["numbers"]["row"]).to be_between 1,5
    end

    it "should give each staff member a unique id string" do
      expect(@data).to respond_to :unique_id
      expect(@data.unique_id).to eq true
    end
  end

  context "specific searches" do
    it "should give the third from last companies 2nd staff member an id number " do
      expect(@data.mockaroo[-3]["Staff"][1]["numbers"]["id"]).to eq "b1ad6c0c-36fd-4442-a0cf-01e8d849b056"
    end

    it "should get the last name of the second staff member at the second company" do
      expect(@data).to respond_to :get_name
      expect(@data.get_name).to eq "Spurnier"
    end

    it "should find someone with a the job title" do
      expect(@data).to respond_to :get_job
      expect(@data.get_job("Geological Engineer").first).to eq "Rafael Spurnier"
      expect(@data.get_job("Chef")).to eq false
      expect(@data.get_job("Help Desk Operator")).to be_a Array
      expect(@data.get_job("Help Desk Operator").length).to eq 2
    end
  end

end
