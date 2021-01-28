@login
Feature: Login

    As user I wish to be certificated that login it's performing accourding rules.

    Background: 
    Given User loads homepage

@validLogin
Scenario: Valid Login
    When user signin in the page
    Then user can see his logged area

@invalidEmail
Scenario: Unsucessfull login Email
    When user types wrong email to signin
    Then can see alert about invalid login

@invalidPassword
Scenario: Unsucessfull login Password
    When user types wrong password to signin
    Then can see alert about invalid login

@logout
Scenario: Logout
    When user signin in the page
    Then user can see his logged area
    When user clicks in Sair option
    Then session is closed in site