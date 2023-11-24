*** Settings ***
Resource    ../env.robot
Resource    ../pages/pokedex_gameplay.robot

Test Setup       Open_App
Test Teardown    Close_App

Documentation     Go to the 'Pokedex' app and test the radio buttons
...    In the Pokedex app
...    the user enter in options and validates all buttons


*** Test Cases ***
Access the 'Pokedex' app and play until you reach 'Rate Us please'
    #[Tags]    test_game
    Given that I access the pokedex program
    When I write pokemons name
    Then validate the buttons and continue to the next challenge until 'Rate Us please'