Feature: data tables example

  Scenario: I am able to loop trhough a data table
    Given I have a data table

    | name|role |
    | Dan|Wolf |
    | Rhys|Hunter |
    | Tom|Dead |
    | Rob|Mod |

    Then I am able to print out each name and role to the command line
