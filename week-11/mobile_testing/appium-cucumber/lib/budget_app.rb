require_relative 'pages/home_page'
require_relative 'pages/budget_page'
require_relative 'pages/add_budget_page'

module BudgetApp

  def home_page
    HomePage.new
  end

  def budget_page
    BudgetPage.new
  end

  def add_budget_page
    AddBudgetPage.new
  end

end
