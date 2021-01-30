@movimentacao
Feature: Movimentaões

    As an user I want load and manage the movements in my accounts

    Background:
        Given user signin in the page
        And user clicks in Resetar option

@addMovement
Scenario: Include new Movement
    When User insert account data
    Then the new movement should be displayed in history

@editMovement
Scenario: Edit Movement
    When user updates an existent movement
    Then new updated movement should be displayed

@removeMovement
Scenario: Edit Movement
    When user removes an existent movement
    Then deleted movement should not be displayed