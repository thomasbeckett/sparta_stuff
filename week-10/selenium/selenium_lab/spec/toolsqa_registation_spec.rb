require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field('Tom')
      sleep 1
      expect(@driver.get_first_name_field_value).to eq 'Tom'
      expect(@driver.first_name_field_displayed).to be true
    end

    it 'should accept a last name' do
      @driver.set_last_name_field('Beckett')
      sleep 1
      expect(@driver.get_last_name_field_value).to eq 'Beckett'
      expect(@driver.last_name_field_displayed).to be true
    end

    it "should accept a sex" do
      @driver.set_sex_field
      sleep 1
      expect(@driver.get_sex_field).to eq 'Male'
    end

    it "should accept years of experience" do
      @driver.set_years_of_experience 2
      sleep 1
      expect(@driver.get_exp_field).to eq "2"
    end

    it "should accept a date" do
      @driver.set_date_field "29/10/2018"
      sleep 1
      expect(@driver.get_date_field).to eq "29/10/2018"
    end

    it "should accept a profession" do
      @driver.set_professions ["Automation Tester"]
      sleep 1
      expect(@driver.get_professions).to eq ["Automation Tester"]
    end

    it "should accept automation tool" do
      @driver.set_tools ["Selenium IDE", "Selenium Webdriver"]
      sleep 1
      expect(@driver.get_tools).to eq ["Selenium IDE", "Selenium Webdriver"]
    end

    it "should accept continent" do
      @driver.set_continent "Europe"
      sleep 1
      expect(@driver.get_continent).to eq "Europe"
    end

  end

end
