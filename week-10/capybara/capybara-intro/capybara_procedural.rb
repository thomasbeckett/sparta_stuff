require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

session.visit("http://toolsqa.com/automation-practice-form/")

session.within(:css, '.form-horizontal') do
  session.fill_in 'firstname', with: 'Tom'
end


sleep 1

for i in 0..1
  session.choose "sex-#{i}"
end

for i in 0..6
  session.find(:css, "#exp-#{i}").click
end

sleep 1

session.select 'North America', from: 'continents'

sleep 1

session.click_button 'submit'
