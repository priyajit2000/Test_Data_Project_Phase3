
Feature: Testing the Login API with REST Assured

  Scenario: Valid login with correct credentials
    Given the API endpoint is "https://reqres.in/api/login"
    And the request header "Content-Type" is "application/json"
    And the request body contains the following JSON:
      """
      {
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
}
      """
    When I send a POST request
    Then the response status code should be 200
    And the response body should contain the following JSON:
      """
      {
    "token": "QpwL5tke4Pnpja7X4"
}
      """
