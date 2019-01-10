Feature: Log in

  # POST /authenticate
  Scenario: Successful authentication
    When I add "Content-Type" header equal to "application/json"
    And I send a POST request to "/token" with body:
   """
   {
       "client_id": "mywebsite",
       "client_secret": "abcdef",
       "username": "rob",
       "password": "123456",
       "grant_type": "password"
   }
   """
    Then the response should be in JSON
    And the response status code should be 200

  Scenario: Unsuccessful authentication
    And I add "Content-Type" header equal to "application/json"
    When I send a POST request to "/token" with body:
   """
   {
       "client_id": "mywebsite",
       "client_secret": "abcdef",
       "username": "notreal",
       "password": "made up",
       "grant_type": "password"
   }
   """
    Then the response should be in JSON
    And the response status code should be 401