class BBCHomepage

  attr_accessor :driver

  HOMEPAGE_URL = "https://bbc.co.uk"
  SIGN_IN_ID = "idcta-username"

  def initialize driver
    @driver = driver
  end

  def visit_homepage
    @driver.get(HOMEPAGE_URL)
  end

  def sign_in_link
    @driver.find_element(:id, SIGN_IN_ID)
  end

  def click_sign_in
    sign_in_link.click
  end
end
