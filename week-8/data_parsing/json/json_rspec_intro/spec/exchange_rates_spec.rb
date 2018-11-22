require_relative '../lib/exchange_rates.rb'

describe 'Exchange rates' do

  before(:all) do
    @rates = Exchangerates.new 'json/exchange_rates.json'
  end

  it "should return a hash" do
    expect(@rates.exchange_rates).to be_a Hash
  end

  it "should contain the base as EUR" do
    expect(@rates.get_base).to eq "EUR"
  end

  it "should have all its rates as floats" do
    expect(@rates.get_rates).to be true
  end

end
