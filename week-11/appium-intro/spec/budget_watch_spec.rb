require 'spec_helper'

describe 'testing budget watch app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the app to the homepage" do
    expect(find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to eq true
  end

  it 'should have the budget option on the main landing page' do
    expect(find_elements(:id, 'protect.budgetwatch:id/menu')[0].displayed?).to eq true
  end

  it 'should access the budget page' do
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].click
    expect(find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.view.ViewGroup/android.widget.TextView').text).to eq 'Budgets'
  end

  it 'should be able to add a budget' do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('Tom')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('10')
    find_element(:accessibility_id, 'Save').click
    expect(find_element(:id, 'protect.budgetwatch:id/budgetName').displayed?).to be true
  end



end
