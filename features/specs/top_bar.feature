@topBar
Feature: Top Bar

    As user I wish to be certificated that I can access all options in topBar.

    Background: 
    Given user signin in the page

@resetAll
Scenario: Reset Profile
    When user clicks in Resetar option
    Then user can see message "user signin in the page"

