@contas
Feature: Contas

    As user I wish to be certificated that I can manage my accounts.

    Background: 
    Given user signin in the page


Scenario: Valid Login
    When user clicks in Resetar option
    Then user can see message "user signin in the page"
