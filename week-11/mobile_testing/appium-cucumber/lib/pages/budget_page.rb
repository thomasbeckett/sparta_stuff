class BudgetPage

  ADD_BUTTON_ID = 'protect.budgetwatch:id/action_add'

  def find_budget_text
    $driver.find_element(:xpath, '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.view.ViewGroup/android.widget.TextView').text
  end

  def find_add_button
    $driver.find_element(:id, ADD_BUTTON_ID)
  end

  def click_add_button
    find_add_button.click
  end

  def find_budget_name
    $driver.find_elements(:id, 'protect.budgetwatch:id/budgetName')[-2]
  end
end
