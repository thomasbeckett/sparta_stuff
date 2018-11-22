require 'capybara/dsl'

class BBCHomepage

  include Capybara::DSL

  HOMEPAGE_URL = "https://bbc.co.uk"
  SIGN_IN_ID = "idcta-link"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def sign_in_link
    find(SIGN_IN_ID).text
  end

  def click_sign_in
    click_on(SIGN_IN_ID)
  end

end
