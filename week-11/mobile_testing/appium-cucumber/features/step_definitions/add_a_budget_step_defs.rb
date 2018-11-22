Given("I can open the app") do
  expect(home_page.find_settings_button.displayed?).to be true
end


When("I navigate to the budgets") do
  home_page.click_budget_option
end

Then("I see my budgets") do
  expect(budget_page.find_budget_text).to eq 'Budgets'
end

When("I create a budget with a name and a value") do
  budget_page.click_add_button
  add_budget_page.enter_name 'Tom'
  add_budget_page.enter_value '10'
  add_budget_page.click_save_button
end

Then("the budget is created") do
  expect(budget_page.find_budget_name.text).to eq 'Tom'
end
