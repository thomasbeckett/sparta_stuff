Given("I access the bbc login page") do
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in
  expect(current_url).to eq 'https://account.bbc.com/signin'
end

When("I enter a correct username") do
  bbc_login_page.enter_username 'rwhitehouse@spartaglobal.com'
end

When("I enter a correct password") do
  bbc_login_page.enter_password 'Password123'
end

When("Click submit") do
  bbc_login_page.sign_in_submit
end

Then("I am logged in and redirected to the homepage") do
  expect(current_url).to eq 'https://www.bbc.co.uk/'
end

Then("I get an error") do
  expect(all('.form-message__text')[0].visible?).to be true
  expect(bbc_login_page.error_message_general).to eq bbc_login_page.matching_error_message
  expect(bbc_login_page.error_message_username).to eq bbc_login_page.missing_details_error
  expect(bbc_login_page.error_message_password).to eq bbc_login_page.missing_details_error
end
