Feature: I am able to add a budget
  As a user
  I want to add a budget
  So that I can track my spending

  Scenario: I am able to view my budgets
    Given I can open the app
    When I navigate to the budgets
    Then I see my budgets

  Scenario: I am able to create a new budget
    Given I can open the app
    When I navigate to the budgets
    And I create a budget with a name and a value
    Then the budget is created
