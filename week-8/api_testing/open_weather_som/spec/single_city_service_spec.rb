require_relative '../lib/open_weather.rb'

describe 'Open Weather City' do
  before(:all) do
    @exeter = OpenWeather.new.single_city_service "Exeter"
  end
  context 'coord' do
    it "should have coords as a hash " do
      expect(@exeter.city["coord"]).to be_a Hash
    end

    it "should have a longitude as a number" do
      expect(@exeter.city["coord"]["lon"]).to be_a Numeric
    end

    it "should have a latidude as a number" do
      expect(@exeter.city["coord"]["lat"]).to be_a Numeric
    end
  end

  context 'weather' do
    it "should be an array" do
      expect(@exeter.city["weather"]).to be_an Array
    end

    it "should have an id as an int" do
      expect(@exeter.city["weather"].first["id"]).to be_an Integer
    end

    it "should have an main as a string" do
      expect(@exeter.city["weather"].first["main"]).to be_an String
    end

    it "should have an description as a string" do
      expect(@exeter.city["weather"].first["description"]).to be_an String
    end

    it "should have an icon as a string" do
      expect(@exeter.city["weather"].first["icon"]).to be_an String
    end
  end

  context 'base' do
    it "should have a base of stations" do
      expect(@exeter.city["base"]).to eq "stations"
    end
  end

  context 'main' do
    it "should have main" do
      expect(@exeter.city).to have_key("main")
    end

    it "should have temp as a number" do
      expect(@exeter.city["main"]["temp"]).to be_a Numeric
    end

    it "should have pressure as a number" do
      expect(@exeter.city["main"]["pressure"]).to be_a Numeric
    end

    it "should have humidity as a number" do
      expect(@exeter.city["main"]["humidity"]).to be_a Numeric
    end

    it "should have temp_min as a number" do
      expect(@exeter.city["main"]["temp_min"]).to be_a Numeric
    end

    it "should have temp_max as a number" do
      expect(@exeter.city["main"]["temp_max"]).to be_a Numeric
    end

    it "should have temp_min be <= temp_max" do
        expect(@exeter.city["main"]["temp_min"]).to be <= @exeter.city["main"]["temp_max"]
    end
  end

  context 'visibility' do
    it "should have visibility as a int" do
      expect(@exeter.city).to have_key("visibility")
      expect(@exeter.city["visibility"]).to be_a Integer
    end
  end

  context 'wind' do
    it "should have wind as a hash" do
      expect(@exeter.city["wind"]).to be_a Hash
    end

    it "should have wind speed as a number" do
      expect(@exeter.city["wind"]["speed"]).to be_a Numeric
    end

    it "should have wind angle as a number" do
      expect(@exeter.city["wind"]["deg"]).to be_a Numeric
    end
  end

  context 'clouds' do
    it "should have clouds as a hash" do
      expect(@exeter.city["clouds"]).to be_a Hash
    end

    it "should have cloud number as a number" do
      expect(@exeter.city["clouds"]["all"]).to be_a Numeric
    end
  end

  context 'dt' do
    it "should have dt as an integer" do
      expect(@exeter.city["dt"]).to be_a Integer
    end
  end

  context 'sys' do
    it "should have a sys" do
      expect(@exeter.city).to have_key("sys")
    end

    it "should have type as an integer" do
      expect(@exeter.city["sys"]["type"]).to be_a Integer
    end

    it "should have id as an integer" do
      expect(@exeter.city["sys"]["id"]).to be_a Integer
    end

    it "should have message as an number" do
      expect(@exeter.city["sys"]["message"]).to be_a Numeric
    end

    it "should have country as an string" do
      expect(@exeter.city["sys"]["country"]).to be_a String
    end

    it "should have sunrise as an integer" do
      expect(@exeter.city["sys"]["sunrise"]).to be_a Integer
    end

    it "should have sunset as an integer" do
      expect(@exeter.city["sys"]["sunset"]).to be_a Integer
    end

    it "should have sunset after sunrise" do
      expect(@exeter.city["sys"]["sunset"]).to be > @exeter.city["sys"]["sunrise"]
    end
  end

  context 'info' do
    it "should have an id" do
      expect(@exeter.city).to have_key("id")
    end

    it "should have the name Exeter" do
      expect(@exeter.city["name"]).to eq "Exeter"
    end

    it "should have a cod number" do
      expect(@exeter.city["cod"]).to be_a Integer
    end
  end
end
