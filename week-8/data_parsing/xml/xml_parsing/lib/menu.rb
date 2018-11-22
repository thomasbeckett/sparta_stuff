require 'nokogiri'

class Menu
  attr_accessor :menu

  def initialize xml_file
    @menu = Nokogiri::XML(File.open(xml_file))
  end

  def get_names
    @menu.search('name')
  end
  def get_price
    @menu.search('price')
  end

  def get_names_xpath
    @menu.xpath('//name')
  end

  def get_calories num
    cal = @menu.search('calories')
    cal.pop()
    cal.each do |c|
      unless c.content.to_i < num
        return false
      end
    end
    return true
  end

  def num_waffles
    
  end
end



# bobs_burgers = Menu.new "xml/menu.xml"

# puts bobs_burgers.get_price.inner_html
# puts bobs_burgers.get_price.last.content
# puts bobs_burgers.get_price.text


# puts bobs_burgers.get_names_xpath[2].content
