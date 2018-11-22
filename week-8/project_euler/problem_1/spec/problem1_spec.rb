require_relative '../lib/problem1.rb'

describe 'problem1' do
  before(:all) do
    @number = Number.new
    @number.iterator 0, 1000
  end

  it "should be divisible by 3" do
    expect(@number).to respond_to :divisible_by?
    expect(@number.divisible_by?(6,3)).to be true
    expect(@number.divisible_by?(5,3)).to be false
  end

  it "should be divisible by 5" do
    expect(@number).to respond_to :divisible_by?
    expect(@number.divisible_by?(10,5)).to be true
    expect(@number.divisible_by?(11,5)).to be false
  end

  it "should generate a list of numbers to test" do
    expect(@number.array).to be_a Array
    expect(@number.array[0]).to be_a Integer
    expect(@number.array.length).to be > 1
  end

  it "should return the sum of all number divisible by 5 or 3" do
    expect(@number.sum(@number.array)).to be_a Integer
  end
end
