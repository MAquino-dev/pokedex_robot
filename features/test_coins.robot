*** Settings ***
Resource    ../env.robot
Resource    ../pages/coins.robot

Test Setup       Open_App
Test Teardown    Close_App

Documentation     Go to the 'Pokedex' app and test the radio buttons
...    In the Pokedex app
...    the user validates the functioning of coins


*** Test Cases ***
Go to the 'Pokedex' app and test the radio buttons
    #[Tags]    test_game
    Given that I access the pokedex app again
    When step in pokemon challenge
    Then I validate and check the operation of the coin buttons