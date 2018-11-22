require_relative '../lib/fizzbuzz.rb'

describe 'Fizzbuzz' do

  before(:all) do
    @fizzbuzz = Fizzbuzz.new
    @fizzbuzz.iterator 1, 15

  end

  it "should be cleanly divisible by 3" do
    expect(@fizzbuzz).to respond_to :divisible_by?
    expect(@fizzbuzz.divisible_by?(6,3)).to be true
    expect(@fizzbuzz.divisible_by?(5,3)).to be false
  end

  it "should be cleanly divisible by 5" do
    expect(@fizzbuzz.divisible_by?(10,5)).to be true
    expect(@fizzbuzz.divisible_by?(11,5)).to be false
  end

  it "should generate a list of numbers to test" do
    expect(@fizzbuzz.array).to be_a Array
    expect(@fizzbuzz.array[0]).to be_a Integer
    expect(@fizzbuzz.array.length).to eq 15
  end

  it "should apply fizzbuzz to a given range" do
    expect(@fizzbuzz.array[2]).to eq 'Fizz'
    expect(@fizzbuzz.array[4]).to eq 'Buzz'
    expect(@fizzbuzz.array.last).to eq 'FizzBuzz'
  end
end
