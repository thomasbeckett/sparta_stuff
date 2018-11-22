Given(/^I am on the BBC home page$/) do
  # visit homepage
  bbc_homepage.visit_home_page
  expect(current_url).to eq "https://www.bbc.co.uk/"
end

And(/^I move to the sign in page$/) do
  # access sign in link
  bbc_homepage.sign_in_link
end

When(/^I proceed to register$/) do
  # click register
  bbc_sign_in_page.click_register_link
end

And(/^I select I am over 13$/) do
  # click I am over 13
  bbc_register_page.select_over_thirteen
end

And(/^I input my DOB$/) do
  # Enter DOB
  bbc_register_page.enter_DOB "29", "may", "1996"
  # Click Next
  bbc_register_page.click_next_button

end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  # fill in email
  bbc_register_page.fill_in_email "fakeemail1000@notreal.com"
  # fill in password with the example table password
  bbc_register_page.fill_in_password password
  # you may need to tab or access the next field to expose the error
  bbc_register_page.password_field.send_keys :tab
end

Then(/^I receive the corresponding error (.*)$/) do |error_message|
  # validate the error message using the data in the table
  expect(bbc_register_page.check_error_message).to eq error_message
end
