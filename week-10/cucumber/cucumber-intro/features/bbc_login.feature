Feature: BBC Login

  Scenario: Inputting correct login details
    Given I access the bbc login page
    When I enter a correct username
    And I enter a correct password
    And Click submit
    Then I am logged in and redirected to the homepage


  Scenario: Inputting inccorect login details
    Given I access the bbc login page
    When Click submit
    Then I get an error
