require 'capybara/dsl'

class BBCLoginPage

  include Capybara::DSL

  USERNAME_FIELD_ID = "user-identifier-input"
  PASSWORD_FIELD_ID = "password-input"
  SIGN_IN_BUTTON_ID = "submit-button"
  ERROR_MESSAGE_GENERAL = "form-message-general"
  ERROR_MESSAGE_USERNAME = "form-message-username"
  ERROR_MESSAGE_PASSWORD = "form-message-password"

  def username_field
    find(USERNAME_FIELD_ID)
  end

  def enter_username username
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def password_field
    find(PASSWORD_FIELD_ID)
  end

  def enter_password password
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def sign_in_button
    find(SIGN_IN_BUTTON_ID)
  end

  def sign_in_submit
    click_button(SIGN_IN_BUTTON_ID)
  end

  def error_message_general
    find(:css, "##{ERROR_MESSAGE_GENERAL}" ).text
  end

  def error_message_username
    find(:css, "##{ERROR_MESSAGE_USERNAME}" ).text
  end

  def error_message_password
  find(:css, "##{ERROR_MESSAGE_PASSWORD}" ).text
  end

  def register_now_link
    find(:xpath, '//*[@id="signin-page"]/div[2]/div[2]/div[2]/div[2]/a')
  end

  def click_register_now
    click_link('Register now')
  end


end
