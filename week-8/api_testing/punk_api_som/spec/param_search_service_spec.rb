require_relative '../lib/beer.rb'

describe 'Search Beers' do

  context 'beer search ' do

    before(:all) do
      @beer_class = Beer.new.param_search_service
    end

    it "should return all beers above 30abv volume" do
      @beer_class.params_beer "abv_gt=30"
      expect(@beer_class.search_gt 30).to eq true
    end

    it "should return all beers below 5abv volume" do
      @beer_class.params_beer "abv_lt=5"
      expect(@beer_class.search_lt 5).to eq true
    end

  end
end
