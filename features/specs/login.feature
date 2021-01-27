Feature: Login

    As user I wish to be certificated that login it's performing accourding rules.

    Background: 
    Given User loads homepage

@validLogin
Scenario: Valid Login
    When user types his login and password
    Then user can see his logged area