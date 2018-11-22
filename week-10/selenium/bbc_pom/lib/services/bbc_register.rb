class BBCRegister

  OVER_13_TEXT = "13 or over"
  DOB_FIELD_ID = 'dateOfBirthField'
  DAY_INPUT_ID = 'day-input'
  MONTH_INPUT_ID = 'month-input'
  YEAR_INPUT_ID = 'year-input'
  BUTTON_ID = "submit-button"
  INVALID_DOB_ERROR_ID = 'form-message-dateOfBirth'
  REGISTER_FORM_XPATH = '//*[@id="container"]/div/div/div/div[2]/div[2]/div[2]/div/form'
  EMAIL_INPUT_ID = 'user-identifier-input'
  PASSWORD_INPUT_ID = 'password-input'
  POSTCODE_INPUT_ID = 'postcode-input'
  GENDER_INPUT_ID = 'gender-input'
  OPT_OUT_XPATH = '//*[@id="marketingOptIn"]/div[1]/div[2]/label'
  EMAIL_ERROR_ID = 'form-message-email'
  PASSWORD_ERROR_ID = 'form-message-password'
  POSTCODE_ERROR_ID = 'form-message-postcode'
  GENDER_ERROR_ID = 'form-message-gender'
  UPDATE_ERROR_ID = 'form-message-marketingOptIn'

  attr_accessor :driver

  def initialize driver
    @driver = driver
  end

  def over_13_button
    @driver.find_element(:link_text, OVER_13_TEXT)
  end

  def click_over_13
    over_13_button.click
  end

  def dob_field_displayed?
    @driver.find_element(:id, DOB_FIELD_ID).displayed?
  end

  def input_dob_day day
    @driver.find_element(:id, DAY_INPUT_ID).send_keys(day)
  end

  def input_dob_month month
    @driver.find_element(:id, MONTH_INPUT_ID).send_keys(month)
  end

  def input_dob_year year
    @driver.find_element(:id, YEAR_INPUT_ID).send_keys(year)
  end

  def click_continue
    @driver.find_element(:id, BUTTON_ID).click
  end

  def invalid_dob_error
    @driver.find_element(:id, INVALID_DOB_ERROR_ID).text
  end

  def register_form_displayed?
    @driver.find_element(:xpath, REGISTER_FORM_XPATH).displayed?
  end

  def enter_email email
    @driver.find_element(:id, EMAIL_INPUT_ID).send_keys(email)
  end

  def enter_password password
      @driver.find_element(:id, PASSWORD_INPUT_ID).send_keys(password)
  end

  def enter_postcode postcode
    @driver.find_element(:id, POSTCODE_INPUT_ID).send_keys(postcode)
  end

  def enter_gender gender
    s = @driver.find_element(:id, GENDER_INPUT_ID)
    s.find_elements(:tag_name, "option").each do |option|
      if option.text == gender
        option.click
      end
    end
  end

  def update_opt_out
    @driver.find_element(:xpath, OPT_OUT_XPATH).click
  end

  def email_error
    @driver.find_element(:id, EMAIL_ERROR_ID).text
  end

  def password_error
    @driver.find_element(:id, PASSWORD_ERROR_ID).text
  end

  def postcode_error
    @driver.find_element(:id, POSTCODE_ERROR_ID).text
  end

  def gender_error
    @driver.find_element(:id, GENDER_ERROR_ID).text
  end

  def update_error
    @driver.find_element(:id, UPDATE_ERROR_ID).text
  end

  def registered_page_title
    @driver.find_element(:tag_name, "h1").text
  end

end
