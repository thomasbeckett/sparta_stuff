require 'selenium-webdriver'

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://toolsqa.com/automation-practice-form/')

sleep 2

chrome_driver.find_element(:link_text, 'Partial Link Test').click

sleep 2

if chrome_driver.find_element(:name, 'firstname').displayed?
  chrome_driver.find_element(:name, 'firstname').send_keys('Tom')
end

sleep 2
