*** Settings ***
Resource    ../env.robot
Resource    ../pages/option_buttons.robot

Test Setup       Open_App
Test Teardown    Close_App

Documentation     Go to the 'Pokedex' app and test the radio buttons
...    In the Pokedex app
...    the user enter in options and validates all buttons


*** Test Cases ***
Go to the 'Pokedex' app and test the radio buttons
    #[Tags]    test_option
    Given that I access the pokedex app
    When validate the options button
    Then test the buttons