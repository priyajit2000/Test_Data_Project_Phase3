

Feature: Testing GET API with REST Assured

  Scenario: Verify the response of a GET request
    Given the API base URI is "https://reqres.in/api"
    When a GET request is made to "/users/1"
    Then the response status code should be 200
    And the response should contain the user details
