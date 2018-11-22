require_relative 'services/bbc_homepage.rb'
require_relative 'services/bbc_login_page.rb'
require_relative 'services/bbc_account_page.rb'
require_relative 'services/bbc_register.rb'
require 'selenium-webdriver'

class BBCSite

  attr_reader :driver

  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def bbc_homepage
    BBCHomepage.new @driver
  end

  def bbc_login_page
    BBCLoginPage.new @driver
  end

  def bbc_account_page
    BBCAccountPage.new @driver
  end

  def bbc_register
    BBCRegister.new @driver
  end


end
