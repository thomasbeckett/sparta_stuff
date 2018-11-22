require 'spec_helper'

describe 'BBC mobile device testing' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the homepage" do
    get('https://www.bbc.co.uk')
  end



end
