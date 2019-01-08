# https://github.com/akrabat/slim-bookshelf-api/tree/master/web/src
Feature: Log in

  Background:
    Given I am on "/"

  Scenario: Missing username and password
    When I press "login"
    Then I should see "You forgot to enter your username or password!"

  Scenario: Missing username
    When I fill in "password" with "studio24"
    And I press "login"
    Then I should see "You forgot to enter your username or password!"

  Scenario: Missing password
    When I fill in "username" with "foo"
    And I press "login"
    Then I should see "You forgot to enter your username or password!"

  Scenario: Log in using bad credentials
    When I fill in "username" with "simon"
    And I fill in "password" with "studio24"
    And I press "login"
    Then I should not see "Welcome John!!"

  Scenario: Log in using good credentials
    When I fill in "username" with "john"
    And I fill in "password" with "password"
    And I press "login"
    Then I should see "Welcome John!!"

  Scenario: Log in using bad credentials
    When I fill in "username" with "simon"
    And I fill in "password" with "studio24"
    And I press "login"
    Then I should not see "Welcome John!!"