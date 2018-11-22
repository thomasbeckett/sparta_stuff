require_relative '../lib/beer.rb'

describe 'Multiple Beers' do

  context 'multiple beer information' do

    before(:all) do
      @multiple_beer_class = Beer.new.multiple_beer_service
      @multiple_beer = @multiple_beer_class.get_multiple_beer
    end

    it "should get an array" do
      expect(@multiple_beer).to be_an Array
    end

    it "should have a name" do
      expect(@multiple_beer_class.multiple_attribute 'name', String).to eq true
    end

    it "should have a tagline" do
      expect(@multiple_beer_class.multiple_attribute 'tagline', String).to eq true
    end

    it "should have a first brewed" do
      expect(@multiple_beer_class.multiple_attribute 'first_brewed', String).to eq true
    end

    it "should have a description" do
      expect(@multiple_beer_class.multiple_attribute 'description', String).to eq true
    end

    it "should have a image_url" do
      expect(@multiple_beer_class.multiple_attribute 'image_url', String).to eq true
    end

    it "should have a abv" do
      expect(@multiple_beer_class.multiple_attribute 'abv', Numeric).to eq true
    end

    it "should have a ibu" do
      expect(@multiple_beer_class.multiple_attribute 'ibu', Numeric).to eq true
    end

    it "should have a target_fg" do
      expect(@multiple_beer_class.multiple_attribute 'target_fg', Numeric).to eq true
    end

    it "should have a target_og" do
      expect(@multiple_beer_class.multiple_attribute 'target_og', Numeric).to eq true
    end

    it "should have a ebc" do
      expect(@multiple_beer_class.multiple_attribute 'ebc', Numeric).to eq true
    end

    it "should have a srm" do
      expect(@multiple_beer_class.multiple_attribute 'srm', Numeric).to eq true
    end

    it "should have a ph" do
      expect(@multiple_beer_class.multiple_attribute 'ph', Numeric).to eq true
    end

    it "should have a attenuation_level" do
      expect(@multiple_beer_class.multiple_attribute 'attenuation_level', Numeric).to eq true
    end

    it "should have a volume" do
      expect(@multiple_beer_class.multiple_attribute 'volume', Hash).to eq true
    end

    it "should have a boil_volume" do
      expect(@multiple_beer_class.multiple_attribute 'boil_volume', Hash).to eq true
    end

    it "should have a method" do
      expect(@multiple_beer_class.multiple_attribute 'method', Hash).to eq true
    end

    it "should have a ingredients" do
      expect(@multiple_beer_class.multiple_attribute 'ingredients', Hash).to eq true
    end

    it "should have a food_pairing" do
      expect(@multiple_beer_class.multiple_attribute 'food_pairing', Array).to eq true
    end

    it "should have a brewers_tips" do
      expect(@multiple_beer_class.multiple_attribute 'brewers_tips', String).to eq true
    end


  end

  context 'single beer volume and boil volume' do
    before(:all) do
      @multiple_beer_class = Beer.new.multiple_beer_service
      @multiple_beer = @multiple_beer_class.get_multiple_beer
    end

    it "should have a value" do
      expect(@multiple_beer_class.multiple_inner_attributes 'volume', 'value', Numeric).to eq true
    end

    it "should have a unit" do
        expect(@multiple_beer_class.multiple_inner_attributes 'volume', 'unit', String).to eq true
    end

    it "should have a value" do
      expect(@multiple_beer_class.multiple_inner_attributes 'boil_volume', 'value', Numeric).to eq true
    end

    it "should have a unit" do
        expect(@multiple_beer_class.multiple_inner_attributes 'boil_volume', 'unit', String).to eq true
    end
  end

  context 'method hash' do
    before(:all) do
      @multiple_beer_class = Beer.new.multiple_beer_service
      @multiple_beer = @multiple_beer_class.get_multiple_beer
    end

    it "should have a mash temp" do
      expect(@multiple_beer_class.multiple_inner_attributes 'method', 'mash_temp', Array).to eq true
    end

    it "mash temp should have a temp" do
      expect(@multiple_beer_class.multiple_mash_temp 'temp', Hash).to eq true
    end

    it "temp should have a value" do
      expect(@multiple_beer.first["method"]["mash_temp"].first["temp"]["value"]).to be_a Numeric
    end

    it "temp should have a unit" do
        expect(@multiple_beer.first["method"]["mash_temp"].first["temp"]["unit"]).to be_a String
    end

    it "mash temp should have a duration" do
      expect(@multiple_beer_class.multiple_mash_temp 'duration', Numeric).to eq true
    end

    it "should have fermentation" do
      expect(@multiple_beer_class.multiple_inner_attributes 'method', 'fermentation', Hash).to eq true
    end

    it "fermentation should have temp" do
      expect(@multiple_beer.first["method"]["fermentation"]["temp"]).to be_a Hash
    end

    it "temp should have value" do
      expect(@multiple_beer.first["method"]["fermentation"]["temp"]["value"]).to be_a Numeric
    end

    it "temp should have unit" do
      expect(@multiple_beer.first["method"]["fermentation"]["temp"]["unit"]).to be_a String
    end

  end

  context 'ingredients' do
    before(:all) do
      @multiple_beer_class = Beer.new.multiple_beer_service
      @multiple_beer = @multiple_beer_class.get_multiple_beer
    end

    it "should have malt" do
      expect(@multiple_beer_class.multiple_inner_attributes 'ingredients', 'malt', Array).to eq true
    end

    it "malt should have name and amount" do
      expect(@multiple_beer_class.multiple_ingredients 'malt', 'name', String).to eq true
      expect(@multiple_beer_class.multiple_ingredients 'malt', 'amount', Hash).to eq true
    end

    it "should have hops" do
      expect(@multiple_beer_class.multiple_inner_attributes 'ingredients', 'hops', Array).to eq true
    end

    it "malt should have name, amount, add, and attribute" do
      expect(@multiple_beer_class.multiple_ingredients 'hops', 'name', String).to eq true
      expect(@multiple_beer_class.multiple_ingredients 'hops', 'amount', Hash).to eq true
      expect(@multiple_beer_class.multiple_ingredients 'hops', 'add', String).to eq true
      expect(@multiple_beer_class.multiple_ingredients 'hops', 'attribute', String).to eq true
    end

    it "should have yeast" do
      expect(@multiple_beer_class.multiple_inner_attributes 'ingredients', 'yeast', String).to eq true
    end
  end

end
