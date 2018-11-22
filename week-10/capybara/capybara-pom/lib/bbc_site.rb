require_relative 'services/bbc_homepage.rb'
require_relative 'services/bbc_login_page.rb'
require_relative 'services/bbc_register.rb'

class BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_login_page
    BBCLoginPage.new
  end

  def bbc_register
    BBCRegister.new
  end

end
