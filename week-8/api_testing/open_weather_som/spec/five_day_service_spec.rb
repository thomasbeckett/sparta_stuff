require_relative '../lib/open_weather.rb'

describe 'Five Day Service' do
  before(:all) do
    @exeter = OpenWeather.new.five_day_service "Exeter"
  end

  context 'info' do
    it "should have cod as a integer " do
      expect(@exeter.city["cod"]).to be_a Integer
    end

    it "should have a message as a number" do
      expect(@exeter.city["message"]).to be_a Numeric
    end

    it "should have a cnt as a number" do
      expect(@exeter.city["cnt"]).to be_a Numeric
    end

  end

  context 'list' do
    it "should have a list as an array" do
      expect(@exeter.city["list"]).to be_an Array
    end

    it "should have a list length 40 (5 days every 3 hours)" do
      expect(@exeter.city["list"].length).to eq 40
    end

  end

  context 'forecast' do
    it "should have a dt as a integer" do
      expect(@exeter.get_forecast_keys "dt", Integer).to eq true
    end

    it "should have a main as a hash" do
      expect(@exeter.get_forecast_keys "main", Hash).to eq true
    end

    it "should have a weather as a array" do
      expect(@exeter.get_forecast_keys "weather", Array).to eq true
    end

    it "should have a coulds as a hash" do
      expect(@exeter.get_forecast_keys "clouds", Hash).to eq true
    end

    it "should have a wind as a hash" do
      expect(@exeter.get_forecast_keys "wind", Hash).to eq true
    end

    it "should have a rain as a hash" do
      expect(@exeter.get_forecast_keys "rain", Hash).to eq true
    end

    it "should have a sys as a hash" do
      expect(@exeter.get_forecast_keys "sys", Hash).to eq true
    end

    it "should have a dt_txt as a string" do
      expect(@exeter.get_forecast_keys "dt_txt", String).to eq true
    end
  end

  context 'forecast main' do
    it "should have temp as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "temp", Numeric).to eq true
    end

    it "should have temp_min as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "temp_min", Numeric).to eq true
    end

    it "should have temp_max as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "temp_max", Numeric).to eq true
    end

    it "should give temp_min to be <= temp_max" do
      expect(@exeter.temp_min_max).to eq true
    end

    it "should have pressure as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "pressure", Numeric).to eq true
    end

    it "should have sea_level as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "sea_level", Numeric).to eq true
    end

    it "should have grnd_level as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "grnd_level", Numeric).to eq true
    end

    it "should have humidity as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "humidity", Numeric).to eq true
    end

    it "should have temp_kf as a number" do
      expect(@exeter.get_forecast_sub_keys "main", "temp_kf", Numeric).to eq true
    end
  end

  context 'forecast weather' do
    it "should have an id as an intger" do
      expect(@exeter.get_forecast_weather "id", Integer).to eq true
    end

    it "should have an main as an string" do
      expect(@exeter.get_forecast_weather "main", String).to eq true
    end

    it "should have an description as an string" do
      expect(@exeter.get_forecast_weather "description", String).to eq true
    end

    it "should have an icon as an string" do
      expect(@exeter.get_forecast_weather "icon", String).to eq true
    end
  end

  context 'forecast clouds' do
    it "should have clouds number as an integer" do
      expect(@exeter.get_forecast_sub_keys "clouds", "all", Integer).to eq true
    end
  end

  context 'forecast wind' do
    it "should have a wind speed as a number" do
      expect(@exeter.get_forecast_sub_keys "wind", "speed", Numeric).to eq true
    end

    it "should have a wind direction a a number" do
      expect(@exeter.get_forecast_sub_keys "wind", "deg", Numeric).to eq true
    end
  end

  context 'forecast sys' do
    it "should have a pod with a single character string" do
      expect(@exeter.get_sys_pod).to eq true
    end
  end

  context 'city' do
    it "should have a city as a hash" do
      expect(@exeter.city["city"]).to be_a Hash
    end

    it "should have a city id as an integer" do
      expect(@exeter.city["city"]["id"]).to be_a Integer
    end

    it "should have a city name as Exeter" do
      expect(@exeter.city["city"]["name"]).to eq "Exeter"
    end

    it "should have a city coord as a Hash" do
      expect(@exeter.city["city"]["coord"]).to be_a Hash
    end

    it "should have a city coord lat as a Number" do
      expect(@exeter.city["city"]["coord"]["lat"]).to be_a Numeric
    end

    it "should have a city coord lon as a Number" do
      expect(@exeter.city["city"]["coord"]["lon"]).to be_a Numeric
    end

    it "should have country as GB" do
      expect(@exeter.city["city"]["country"]).to eq "GB"
    end

    it "should have population as an integer" do
      expect(@exeter.city["city"]["population"]).to be_an Integer
    end
  end
end
