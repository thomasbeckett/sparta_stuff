require 'selenium-webdriver'

class SeleniumQAToolsForm

  PAGE_URL = 'http://toolsqa.com/automation-practice-form/'


  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def visit_page
    @driver.get(PAGE_URL)
  end

  def input_first_name name
    @driver.find_element(:name, 'firstname').send_keys(name)
  end

  def input_last_name name
    @driver.find_element(:name, 'lastname').send_keys(name)
  end

  def find_text
    @driver.find_element(:class, 'bcd').text

  end
end

x = SeleniumQAToolsForm.new

x.visit_page
sleep 1
text = x.find_text

x.input_first_name text
sleep 1
x.input_last_name text
sleep 2
