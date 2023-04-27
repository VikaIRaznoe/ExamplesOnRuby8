Feature: Database testing

  Scenario: Insert data into the database
    Given I have a database connection
    When I insert "Vika" and "QA" into the "users" table
    Then I should see the data in the "users" table

  Scenario: Select data from the database
    Given I have a database connection
    When I select all data from the "users" table
    Then I should see the data in the output
