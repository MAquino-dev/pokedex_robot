*** Settings ***
Resource    ../env.robot
Resource    ../pages/switch_challenges.robot

Test Setup       Open_App
Test Teardown    Close_App

Documentation     Go to the 'Pokedex' app and test the radio buttons
...    In the Pokedex app
...    the user enter in stage select and validate stage buttons


*** Test Cases ***
Go to the 'Pokedex' app and test the radio buttons
    #[Tags]    test_game
    Given that I accessed the pokedex app
    When I write and pass the challenges of pokemons
    Then validate the level buttons and test the return of the other challenges