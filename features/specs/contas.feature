@contas
Feature: Contas

    As user I wish to be certificated that I can manage my accounts.

    Background: 
    Given user signin in the page
    And user clicks in Resetar option

@addAccount
Scenario: Create new Account
    When user adds a new account
    Then user can see the new account in table

@editAccount
Scenario: Edit an existent Account
    When user edits an existent account
    Then user can see the updated account in table

@removeAccount
Scenario: Remove an existent Account
    When user removes an existent account
    Then user cannot see the account in table

@existentAccount
Scenario: Try create an account with same name
    When user adds an account with an existent name
    Then he see alert about existent account