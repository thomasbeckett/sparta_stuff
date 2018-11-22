class HomePage

  SETTINGS_BUTTON_ID = "protect.budgetwatch:id/action_settings"
  BUDGET_OPTION_ID = 'protect.budgetwatch:id/menu'

  def find_settings_button
    $driver.find_element(:id, SETTINGS_BUTTON_ID)
  end

  def find_budget_option
    $driver.find_elements(:id, BUDGET_OPTION_ID)[0]
  end

  def click_budget_option
    find_budget_option.click
  end

end
