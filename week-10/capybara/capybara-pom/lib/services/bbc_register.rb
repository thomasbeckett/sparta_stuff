require 'capybara/dsl'

class BBCRegister

  include Capybara::DSL

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


  def over_13_button

  end

  def click_over_13
    click_link(OVER_13_TEXT)
  end

  def dob_field_displayed?
    find(:css, "##{DOB_FIELD_ID}").visible?
  end

  def input_dob_day day
    fill_in(DAY_INPUT_ID, with: day)
  end

  def input_dob_month month
    fill_in(MONTH_INPUT_ID, with: month)
  end

  def input_dob_year year
    fill_in(YEAR_INPUT_ID, with: year)
  end

  def click_continue
    click_button(BUTTON_ID)
  end

  def invalid_dob_error
    find(:css, "##{INVALID_DOB_ERROR_ID}").text
  end

  def register_form_displayed?
    find(:xpath, REGISTER_FORM_XPATH).visible?
  end

  def enter_email email
    fill_in(EMAIL_INPUT_ID, with: email)
  end

  def enter_password password
      fill_in(PASSWORD_INPUT_ID, with: password)
  end

  def enter_postcode postcode
    fill_in(POSTCODE_INPUT_ID, with: postcode)
  end

  def enter_gender gender
    select gender, from: 'gender-input'
  end

  def update_opt_out
    find(:xpath, OPT_OUT_XPATH).click
  end

  def email_error
    find(:css, "##{EMAIL_ERROR_ID}").text
  end

  def password_error
    find(:css, "##{PASSWORD_ERROR_ID}").text
  end

  def postcode_error
    find(:css, "##{POSTCODE_ERROR_ID}").text
  end

  def gender_error
    find(:css, "##{GENDER_ERROR_ID}").text
  end

  def update_error
    find(:css, "##{UPDATE_ERROR_ID}").text
  end

  def registered_page_title
    find(:css, "h1").text
  end

end
