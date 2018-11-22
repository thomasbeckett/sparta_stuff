Feature: Scenario outline with datatables

  Scenario Outline: using an example table can make your tests drier and more dynamic

    Given i have more than one data row in my table
    And includes <name> and <age>
    Then i can print the <name> and <age>


  Examples:

  | name | age |
  | Rob | 28 |
  | BK | 21 |
  | Robin | 23 |
