Feature: Log in

  Background:
    Given I am on "/"

  Scenario: Login page loads
    When I follow "Log in"
    Then I should see "Log in"

  Scenario: Successful login
    When I follow "Log in"
    Then I fill in "username" with "rob"
    And I fill in "password" with "123456"
    And I press "Sign in"
    Then I should see "Log out"

  Scenario: Failed login
    When I follow "Log in"
    Then I fill in "username" with "not a real account"
    And I fill in "password" with "not a real account"
    And I press "Sign in"
    Then I should see "Failed to log in: Client error"
