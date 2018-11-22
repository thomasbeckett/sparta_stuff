require_relative 'pages/bbc_homepage.rb'
require_relative 'pages/bbc_login_page.rb'
# require_relative 'services/bbc_register.rb'

module BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_login_page
    BBCLoginPage.new
  end
  #
  # def bbc_register
  #   BBCRegister.new
  # end

end
