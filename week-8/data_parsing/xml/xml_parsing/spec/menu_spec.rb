require_relative '../lib/menu.rb'

describe "Menu" do

  before(:all) do
    @menu = Menu.new "xml/menu.xml"
  end

  it "should have no price be more than £10" do
    @menu.get_price.each do |price|
      expect(price.content.delete('£').to_f).to be < 10.00
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    expect(@menu.get_calories 1000).to eq true
  end

  it "should have all waffle dishes stating you get two waffles" do
    expect(@menu.num_waffles).to eq true

  end
end
