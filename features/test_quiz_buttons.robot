*** Settings ***
Resource    ../env.robot
Resource    ../pages/quiz_buttons.robot

Test Setup       Open_App
Test Teardown    Close_App

Documentation     Go to the 'pokedex' and validate a specific button
...    In the Pokedex app
...    the user validates the functioning of the quiz buttons


*** Test Cases ***
Go to the 'Pokedex' app and test the radio buttons
    #[Tags]    test_game
    Given That I access the pokedex app
    When  I choose a specific button
    Then I validate that it is in the pokemon name text