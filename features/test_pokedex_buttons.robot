*** Settings ***
Resource    ../env.robot
Resource    ../pages/pokedex_buttons.robot

Test Setup       Open_App
Test Teardown    Close_App

Documentation     Go to the 'Pokedex' application and test the functionality of the buttons
...    In the Pokedex app
...    the user enter and validate that the buttons are working


*** Test Cases ***
Go to the 'Pokedex' application and test the functionality of the buttons
    #[Tags]    test_pokedex
    Given that I access the pokedex
    When I select all buttons
    Then I validate that they are working