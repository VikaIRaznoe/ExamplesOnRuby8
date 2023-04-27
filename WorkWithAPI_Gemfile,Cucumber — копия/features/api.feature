Feature: Testing NASA EPIC API

Background:
  Given the API endpoint is configured in "config.yml"
  And the API key is configured in "config.yml"

  Scenario: Verify response code is 200
    When I send a GET request to the API endpoint
    Then the response code should be 200

  Scenario: Verify response body contains lunar_j2000_position parameter
    When I send a GET request to the API endpoint
    Then the response body should contain "lunar_j2000_position"
