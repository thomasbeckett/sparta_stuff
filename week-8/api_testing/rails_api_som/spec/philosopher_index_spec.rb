require_relative '../lib/philosopher.rb'

describe Philosopher do
  context "getting all the philosophers" do
    before(:all) do
      @philosopher_index = Philosopher.new.philosopher_index_service
      @philosopher_index.get_philosophers
    end

    it "should get an array" do
      expect(@philosopher_index.get_philosophers).to be_an Array
    end

    it "should be hashes" do
      expect(@philosopher_index.get_philosophers).to all be_a Hash
    end

    it "should have a  name" do
      expect(@philosopher_index.get_philosophers).to all have_key("name")
    end

    it "should have a nationality" do
      expect(@philosopher_index.get_philosophers).to all have_key("nationality")
    end

    it "should have a university" do
      expect(@philosopher_index.get_philosophers).to all have_key("university")
    end

    it "should have quotes" do
      expect(@philosopher_index.get_philosophers).to all have_key("quotes")
    end
  end

  context "getting quotes" do
    before(:all) do
      @philosopher_index = Philosopher.new.philosopher_index_service
      @philosopher_index.get_philosophers
    end

    it "should have a quote that is a string" do
      expect(@philosopher_index.get_quote).to eq true
    end
  end
end
