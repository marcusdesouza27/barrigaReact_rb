@topBar
Feature: Top Bar

    As user I wish to be certificated that I can access all options in topBar.

    Background: 
    Given user signin in the page

@resetAll
Scenario: Reset Profile
    When user clicks in Resetar option
    Then user can see message "user signin in the page"

@loadAccounts
Scenario: Load Contas
    When user clics in Contas option
    Then Contas page has loaded

@loadHistory
Scenario: Load Extrato
    When user clics in Extrato option
    Then Extrato page has loaded

@loadMovement
Scenario: Load Movimentações
    When user clics in Movimentações option
    Then Movement page has loaded

@loadHome
Scenario: Load Extrato
    When user clics in Home option
    Then Home page has loaded