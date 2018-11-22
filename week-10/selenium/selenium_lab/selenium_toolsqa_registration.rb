require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://toolsqa.com/automation-practice-form/'
  # Page field
  FIRST_NAME_FIELD = 'firstname' # name
  LAST_NAME_FIELD =  # name

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).attribute("value")
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).displayed?
  end

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:name, 'lastname').send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:name, 'lastname').attribute("value")
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:name, 'lastname').displayed?
  end


  def set_sex_field
    @chrome_driver.find_element(:id, "sex-0").click
  end

  def get_sex_field
    if @chrome_driver.find_element(:id, "sex-0").selected?
      return 'Male'
    elsif @chrome_driver.find_element(:id, "sex-1").selected?
      return 'Female'
    else
      return false
    end
  end

  def set_years_of_experience years
    @chrome_driver.find_element(:id, "exp-#{years-1}").click
  end

  def get_exp_field
    @chrome_driver.find_elements(:name, "exp").each do |exp|
      if exp.selected?
        return exp["value"]
      end
    end
  end

  def set_date_field date
    @chrome_driver.find_element(:id, "datepicker").send_keys(date)
  end

  def get_date_field
    @chrome_driver.find_element(:id, 'datepicker').attribute("value")
  end

  def set_professions professions
    professions.each do |profession|
      if profession == "Manual Tester"
        @chrome_driver.find_element(:id, "profession-0").click
      elsif profession == "Automation Tester"
        @chrome_driver.find_element(:id, "profession-1").click
      end
    end
  end

  def get_professions
    professions = []
    @chrome_driver.find_elements(:name, "profession").each do |p|
      if p.selected?
        professions.push p["value"]
      end
    end
    return professions
  end

  def set_tools tools
    tools.each do |tool|
      if tool == "QTP"
        @chrome_driver.find_element(:id, "tool-0").click
      elsif tool == "Selenium IDE"
        @chrome_driver.find_element(:id, "tool-1").click
      elsif tool == "Selenium Webdriver"
        @chrome_driver.find_element(:id, "tool-2").click
      end
    end
  end

  def get_tools
    tools = []
    @chrome_driver.find_elements(:name, "tool").each do |t|
      if t.selected?
        tools.push t["value"]
      end
    end
    return tools
  end

  def set_continent continent
    s = @chrome_driver.find_element(:tag_name, "select")
    s.find_elements(:tag_name, "option").each do |option|
      if option.text == continent
        option.click
      end
    end
  end

  def get_continent
    s = @chrome_driver.find_element(:tag_name, "select")
    s.find_elements(:tag_name, "option").each do |option|
      if option.selected?
        return option.text
      end
    end
  end

  def click_submit
  end

  def check_registration_successful
  end
end
