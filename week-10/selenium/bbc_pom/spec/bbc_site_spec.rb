require "spec_helper"

describe "testing the bbc site" do
  # context "testing the bbc login functionality" do
  #
  #   valid_email = 'rwhitehouse@spartaglobal.com'
  #   valid_password = 'Password123'
  #
  #   invalid_username = 'tbeckett@email.com'
  #   invalid_password = 'Password1234'
  #   short_password = '1234'
  #
  #
  #   error_general = "Sorry, those details don't match. Check you've typed them correctly."
  #   error_message_missing = "Something's missing. Please check and try again."
  #
  #   password_incorrect_error = 'Uh oh, that password doesn’t match that account. Please try again.'
  #   password_short_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
  #   username_incorrect_error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
  #
  #
  #   before(:all) do
  #     @driver = BBCSite.new
  #   end
  #
  #   before(:each) do
  #     @driver.bbc_homepage.visit_homepage
  #   end
  #
  #   after(:each) do
  #     sleep 1
  #   end
  #
  #   # it "should allow the user to navigate to the login page" do
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   expect(@driver.driver.current_url).to eq 'https://account.bbc.com/signin'
  #   # end
  #   #
  #   # it "should allow the user to log in with correct details" do
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   @driver.bbc_login_page.enter_username valid_email
  #   #   @driver.bbc_login_page.enter_password valid_password
  #   #   @driver.bbc_login_page.sign_in_submit
  #   #   expect(@driver.driver.current_url).to eq 'https://www.bbc.co.uk/'
  #   #   expect(@driver.bbc_homepage.sign_in_link.text).to eq 'Your account'
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   @driver.bbc_account_page.click_sign_out
  #   #
  #   # end
  #   #
  #   # it "should display an error for blank username and password" do
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   @driver.bbc_login_page.sign_in_submit
  #   #   expect(@driver.bbc_login_page.error_message_general).to eq error_general
  #   #   expect(@driver.bbc_login_page.error_message_username).to eq error_message_missing
  #   #   expect(@driver.bbc_login_page.error_message_password).to eq error_message_missing
  #   #
  #   # end
  #   #
  #   # it "should display an error for an incorrect password" do
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   @driver.bbc_login_page.enter_username valid_email
  #   #   @driver.bbc_login_page.enter_password invalid_password
  #   #   @driver.bbc_login_page.sign_in_submit
  #   #   expect(@driver.bbc_login_page.error_message_password).to eq password_incorrect_error
  #   # end
  #   #
  #   # it "should display an error for a short password" do
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   @driver.bbc_login_page.enter_username valid_email
  #   #   @driver.bbc_login_page.enter_password short_password
  #   #   @driver.bbc_login_page.sign_in_submit
  #   #   expect(@driver.bbc_login_page.error_message_password).to eq password_short_error
  #   # end
  #
  #   # it "should display an error for the incorrect email" do
  #   #   @driver.bbc_homepage.click_sign_in
  #   #   sleep 1
  #   #   @driver.bbc_login_page.enter_username invalid_username
  #   #   @driver.bbc_login_page.enter_password valid_password
  #   #   expect(@driver.bbc_login_page.error_message_username).to eq username_incorrect_error
  #   # end
  # end

  context "register" do

    fake_email = 'xif26913@ebbob.com'
    password = 'Password123'
    postcode = 'GL2 4QW'
    gender = 'Prefer not to say'
    registered_title = "Thanks. You're now signed in."

    invalid_dob = "Oops, that date doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009."

    missing_error = "Something's missing. Please check and try again."

    before(:all) do
      @driver = BBCSite.new
      @driver.bbc_homepage.visit_homepage
    end

    # before(:each) do
    #   @driver.bbc_homepage.visit_homepage
    # end

    after(:each) do
      sleep 1
    end


    it "should accept 13 or over" do
      @driver.bbc_homepage.click_sign_in
      @driver.bbc_login_page.click_register_now
      @driver.bbc_register.click_over_13
      expect(@driver.bbc_register.dob_field_displayed?).to be true
    end

    it "should give an error for a blank or invalid date of birth" do
      sleep 1
      @driver.bbc_register.click_continue
      expect(@driver.bbc_register.invalid_dob_error).to eq invalid_dob
      sleep 1
    end

    it "should accept a valid birthday" do
      @driver.bbc_register.input_dob_day "29"
      @driver.bbc_register.input_dob_month "05"
      @driver.bbc_register.input_dob_year "1996"
      sleep 1
      @driver.bbc_register.click_continue #bug doesn't get rid of error and first click doesn't progress
      sleep 1
      @driver.bbc_register.click_continue
      expect(@driver.bbc_register.register_form_displayed?).to be true
    end

    it "should give an error for all fields blank" do
      sleep 1
      @driver.bbc_register.click_continue
      expect(@driver.bbc_register.email_error).to eq missing_error
      expect(@driver.bbc_register.password_error).to eq missing_error
      expect(@driver.bbc_register.postcode_error).to eq missing_error
      expect(@driver.bbc_register.gender_error).to eq missing_error
      expect(@driver.bbc_register.update_error).to eq missing_error
      sleep 1
    end

    it "should accept a valid email, password, postcode, gender, and update option" do
      sleep 1
      @driver.bbc_register.enter_email fake_email
      @driver.bbc_register.enter_password password
      @driver.bbc_register.enter_postcode postcode
      @driver.bbc_register.enter_gender gender
      @driver.bbc_register.update_opt_out
      sleep 1
      @driver.bbc_register.click_continue
      expect(@driver.bbc_register.registered_page_title).to eq registered_title
    end
  end
end
