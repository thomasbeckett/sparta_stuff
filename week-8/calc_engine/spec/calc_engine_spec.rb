require_relative '../lib/calc_engine.rb'

describe 'Basic calc_engine methods work' do

  before(:all) do
    @calc = CalcEngine.new
  end

  it "should add together two numbers" do
    expect(@calc.add(2,2)).to eq 4
  end

  it "should subtract two numbers" do
    expect(@calc.subtract(5,3)).to eq 2
  end

  it "should multiply two numbers" do
    expect(@calc.multiply(10,2)).to eq 20
  end

  it "should divide two numbers" do
    expect(@calc.divide(100,4)).to eq 25
  end

  it "should do the power" do
    expect(@calc.pow(2,3)).to eq 8
  end

  it "should find the square root" do
    expect(@calc.sqrt(9)).to eq 3
  end

end
