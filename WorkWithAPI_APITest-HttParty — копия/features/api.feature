Feature: NASA EPIC API
  In order to use NASA EPIC API
  As a developer
  I want to be able to retrieve natural images

  Scenario: Retrieve natural images
    Given I have a valid API key
    When I send a GET request to "/EPIC/api/natural/images"
    Then the response status should be 200
    And the response body should contain "date"
    And the response body should contain "image"
