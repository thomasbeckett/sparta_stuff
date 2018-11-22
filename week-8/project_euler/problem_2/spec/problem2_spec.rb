require_relative '../lib/problem2.rb'

describe 'problem2' do

  before(:all) do
    @fibo = Fibonacci.new
    @fibo.sequence 4000000
  end

  it "should be even" do
    expect(@fibo).to respond_to :is_even?
    expect(@fibo.is_even?(2)).to be true
    expect(@fibo.is_even?(3)).to be false
  end

  it "should generate an array" do
    expect(@fibo.array).to be_a Array
  end

  it "should generate the fibonacci sequence" do
    expect(@fibo).to respond_to :sequence
    expect(@fibo.array[3]).to eq 5
  end

  it "should return the sum of the even fibonacci numbers" do
    expect(@fibo.sum).to be_a Integer
    # expect(@fibo.sum).to eq 10
  end
end
