class AddBudgetPage

  NAME_FIELD_ID = 'protect.budgetwatch:id/budgetNameEdit'
  VALUE_FIELD_ID = 'protect.budgetwatch:id/valueEdit'

  def enter_name name
    $driver.find_element(:id, NAME_FIELD_ID).send_keys name
  end

  def enter_value value
    $driver.find_element(:id, VALUE_FIELD_ID).send_keys value
  end

  def find_save_button
    $driver.find_element(:accessibility_id, 'Save')
  end

  def click_save_button
    find_save_button.click
  end


end
