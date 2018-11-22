class BBCAccountPage

  attr_accessor :driver

  def initialize driver
    @driver = driver
  end

  def sign_out_link
    @driver.find_element(:link_text, "Sign out")
  end

  def click_sign_out
    sign_out_link.click
  end

end
