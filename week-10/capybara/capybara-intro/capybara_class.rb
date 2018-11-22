require 'capybara'

class Bebo

  HOMEPAGE_URL = 'https://bebo.com/'

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @session = Capybara::Session.new(:chrome)
  end

  def visit_homepage
    @session.visit(HOMEPAGE_URL)
  end

  def click_links_section
    @session.within(:css, ".landing__hero__text") do
      @session.find(:css, 'a').click
    end
  end

  def input_email
    @session.fill_in('ninja@fortnite.org', :with => "ninja@fortnite.org")
  end

  def pick_division
    @session.find(:xpath, '//*[@id="app"]/div/div/div/div[2]/div[2]/div/div/div[3]/label').click
  end

  def submit_button
    @session.click_button("Let's go")
  end

  def click_logo
    @session.find(:css, '.web-header-logo').click
  end

  def header_sign_up
    @session.find(:xpath, '//*[@id="app"]/div/div/section/header/div/ul/div/a[2]').click
  end
end

testcase = Bebo.new

testcase.visit_homepage
sleep 1
testcase.header_sign_up
sleep 1
testcase.input_email
sleep 1
testcase.pick_division
sleep 1
testcase.submit_button
sleep 1
testcase.click_logo
sleep 2
