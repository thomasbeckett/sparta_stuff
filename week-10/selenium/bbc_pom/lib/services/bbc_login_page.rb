class BBCLoginPage

  attr_accessor :driver

  USERNAME_FIELD_ID = "user-identifier-input"
  PASSWORD_FIELD_ID = "password-input"
  SIGN_IN_BUTTON_ID = "submit-button"
  ERROR_MESSAGE_GENERAL = "form-message-general"
  ERROR_MESSAGE_USERNAME = "form-message-username"
  ERROR_MESSAGE_PASSWORD = "form-message-password"

  def initialize driver
    @driver = driver
  end

  def username_field
    @driver.find_element(:id, USERNAME_FIELD_ID)
  end

  def enter_username username
    username_field.send_keys(username)
  end

  def password_field
    @driver.find_element(:id, PASSWORD_FIELD_ID)
  end

  def enter_password password
    password_field.send_keys(password)
  end

  def sign_in_button
    @driver.find_element(:id, SIGN_IN_BUTTON_ID)
  end

  def sign_in_submit
    sign_in_button.click
  end

  def error_message_general
    @driver.find_element(:id, ERROR_MESSAGE_GENERAL).text
  end

  def error_message_username
    @driver.find_element(:id, ERROR_MESSAGE_USERNAME).text
  end

  def error_message_password
  @driver.find_element(:id, ERROR_MESSAGE_PASSWORD).text
  end

  def register_now_link
    @driver.find_element(:xpath, '//*[@id="signin-page"]/div[2]/div[2]/div[2]/div[2]/a')
  end

  def click_register_now
    register_now_link.click
  end


end
