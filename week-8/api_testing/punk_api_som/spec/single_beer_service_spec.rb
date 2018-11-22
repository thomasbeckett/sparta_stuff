require_relative '../lib/beer.rb'

describe 'Single Beer' do

  context 'single beer information' do

    before(:all) do
      @single_beer_class = Beer.new.single_beer_service
      @single_beer = @single_beer_class.get_single_beer
    end

    it "should get an array" do
      expect(@single_beer).to be_an Array
    end

    it "should have a name" do
      expect(@single_beer_class.get_attribute 'name', String).to eq true
    end

    it "should have a tagline" do
      expect(@single_beer_class.get_attribute 'tagline', String).to eq true
    end

    it "should have a first brewed" do
      expect(@single_beer_class.get_attribute 'first_brewed', String).to eq true
    end

    it "should have a description" do
      expect(@single_beer_class.get_attribute 'description', String).to eq true
    end

    it "should have a image_url" do
      expect(@single_beer_class.get_attribute 'image_url', String).to eq true
    end

    it "should have a abv" do
      expect(@single_beer_class.get_attribute 'abv', Numeric).to eq true
    end

    it "should have a ibu" do
      expect(@single_beer_class.get_attribute 'ibu', Numeric).to eq true
    end

    it "should have a target_fg" do
      expect(@single_beer_class.get_attribute 'target_fg', Numeric).to eq true
    end

    it "should have a target_og" do
      expect(@single_beer_class.get_attribute 'target_og', Numeric).to eq true
    end

    it "should have a ebc" do
      expect(@single_beer_class.get_attribute 'ebc', Numeric).to eq true
    end

    it "should have a srm" do
      expect(@single_beer_class.get_attribute 'srm', Numeric).to eq true
    end

    it "should have a ph" do
      expect(@single_beer_class.get_attribute 'ph', Numeric).to eq true
    end

    it "should have a attenuation_level" do
      expect(@single_beer_class.get_attribute 'attenuation_level', Numeric).to eq true
    end

    it "should have a volume" do
      expect(@single_beer_class.get_attribute 'volume', Hash).to eq true
    end

    it "should have a boil_volume" do
      expect(@single_beer_class.get_attribute 'boil_volume', Hash).to eq true
    end

    it "should have a method" do
      expect(@single_beer_class.get_attribute 'method', Hash).to eq true
    end

    it "should have a ingredients" do
      expect(@single_beer_class.get_attribute 'ingredients', Hash).to eq true
    end

    it "should have a food_pairing" do
      expect(@single_beer_class.get_attribute 'food_pairing', Array).to eq true
    end

    it "should have a brewers_tips" do
      expect(@single_beer_class.get_attribute 'brewers_tips', String).to eq true
    end


  end

  context 'single beer volume and boil volume' do
    before(:all) do
      @single_beer_class = Beer.new.single_beer_service
      @single_beer = @single_beer_class.get_single_beer
    end

    it "should have a value" do
      expect(@single_beer_class.get_inner_attributes 'volume', 'value', Numeric).to eq true
    end

    it "should have a unit" do
        expect(@single_beer_class.get_inner_attributes 'volume', 'unit', String).to eq true
    end

    it "should have a value" do
      expect(@single_beer_class.get_inner_attributes 'boil_volume', 'value', Numeric).to eq true
    end

    it "should have a unit" do
        expect(@single_beer_class.get_inner_attributes 'boil_volume', 'unit', String).to eq true
    end
  end

  context 'method hash' do
    before(:all) do
      @single_beer_class = Beer.new.single_beer_service
      @single_beer = @single_beer_class.get_single_beer
    end

    it "should have a mash temp" do
      expect(@single_beer_class.get_inner_attributes 'method', 'mash_temp', Array).to eq true
    end

    it "mash temp should have a temp" do
      expect(@single_beer_class.get_mash_temp 'temp', Hash).to eq true
    end

    it "temp should have a value" do
      expect(@single_beer.first["method"]["mash_temp"].first["temp"]["value"]).to be_a Numeric
    end

    it "temp should have a unit" do
        expect(@single_beer.first["method"]["mash_temp"].first["temp"]["unit"]).to be_a String
    end

    it "mash temp should have a duration" do
      expect(@single_beer_class.get_mash_temp 'duration', Numeric).to eq true
    end

    it "should have fermentation" do
      expect(@single_beer_class.get_inner_attributes 'method', 'fermentation', Hash).to eq true
    end

    it "fermentation should have temp" do
      expect(@single_beer.first["method"]["fermentation"]["temp"]).to be_a Hash
    end

    it "temp should have value" do
      expect(@single_beer.first["method"]["fermentation"]["temp"]["value"]).to be_a Numeric
    end

    it "temp should have unit" do
      expect(@single_beer.first["method"]["fermentation"]["temp"]["unit"]).to be_a String
    end

  end

  context 'ingredients' do
    before(:all) do
      @single_beer_class = Beer.new.single_beer_service
      @single_beer = @single_beer_class.get_single_beer
    end

    it "should have malt" do
      expect(@single_beer_class.get_inner_attributes 'ingredients', 'malt', Array).to eq true
    end

    it "malt should have name and amount" do
      expect(@single_beer_class.get_ingredients 'malt', 'name', String).to eq true
      expect(@single_beer_class.get_ingredients 'malt', 'amount', Hash).to eq true
    end

    it "should have hops" do
      expect(@single_beer_class.get_inner_attributes 'ingredients', 'hops', Array).to eq true
    end

    it "malt should have name, amount, add, and attribute" do
      expect(@single_beer_class.get_ingredients 'hops', 'name', String).to eq true
      expect(@single_beer_class.get_ingredients 'hops', 'amount', Hash).to eq true
      expect(@single_beer_class.get_ingredients 'hops', 'add', String).to eq true
      expect(@single_beer_class.get_ingredients 'hops', 'attribute', String).to eq true
    end

    it "should have yeast" do
      expect(@single_beer_class.get_inner_attributes 'ingredients', 'yeast', String).to eq true
    end
  end

end
