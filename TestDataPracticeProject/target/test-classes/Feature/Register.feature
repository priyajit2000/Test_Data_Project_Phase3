
Feature: Testing the POST API with REST Assured

  Scenario: Sending a valid POST request to create a resource
    Given the API endpoint is "https://reqres.in/api/register"
    And the request body contains the following JSON:
      """
      {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
}
      """
    When I send a POST request
    Then the response status code should be 201
    And the response body should contain the following JSON:
      """
     {
    "id": 4,
    "token": "QpwL5tke4Pnpja7X4"
}
      """

