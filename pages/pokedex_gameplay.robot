*** Settings ***

Resource    ../env.robot
Resource    ../data/elements/xpaths.robot

Library    AppiumLibrary


#*** Variables ***
#${USER_BALANCE}    accessibility_id=user-balance
#${USER_BALANCE}    //xpath

*** Keywords ***
that I access the pokedex program
    Wait Until Element Is Visible   ${title_page}

I write pokemons name
    log     Typing 'Pikachu' and continuing the challenge
    Click Element   ${pikachu_letter_p}
    Click Element   ${pikachu_letter_i}
    Click Element   ${pikachu_letter_k}
    Click Element   ${pikachu_letter_a}
    Click Element   ${pikachu_letter_c}
    Click Element   ${pikachu_letter_h}
    Click Element   ${pikachu_letter_u}
    Wait Until Element Is Visible     ${continue_button}
    Click Element   ${continue_button}


    log     Typing 'Ivysaur' and continuing the challenge
    Wait Until Element Is Visible   ${ivysaur_letter_i}
    Click Element   ${ivysaur_letter_i}
    Click Element   ${ivysaur_letter_v}
    Click Element   ${ivysaur_letter_y}
    Click Element   ${ivysaur_letter_s}
    Click Element   ${ivysaur_letter_a}
    Click Element   ${ivysaur_letter_u}
    Click Element   ${ivysaur_letter_r}
    Wait Until Element Is Visible     ${continue_button}
    Click Element   ${continue_button}

    log     Typing 'Abra' and continuing the challenge
    Wait Until Element Is Visible   ${abra_letter_a}
    Click Element   ${abra_letter_a}
    Click Element   ${abra_letter_b}
    Click Element   ${abra_letter_r}
    Click Element   ${abra_letter_a}
    Wait Until Element Is Visible     ${continue_button}
    Click Element   ${continue_button}

    log     Typing 'MewTwo' and continuing the challenge
    Wait Until Element Is Visible   ${mewtwo_letter_m}
    Click Element   ${mewtwo_letter_m}
    Click Element   ${mewtwo_letter_e}
    Click Element   ${mewtwo_letter_w}
    Click Element   ${mewtwo_letter_t}
    Click Element   ${mewtwo_letter_w}
    Click Element   ${mewtwo_letter_o}

validate the buttons and continue to the next challenge until 'Rate Us please'
    Log    Test the funcionality of the button in 'rate us'
    # TENTAR PESQUISAR E FAZER ESSA PARTE TAMBÉM

    Wait Until Element Is Visible   ${get_coins}
    Element Should Be Visible   ${get_coins}
    Element Should Be Enabled   ${get_coins}
    Log  The element has clicable
    Click Element   ${get_coins}


    ${data["rate_us_please"]}    Set Variable      xpath=//android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/tvTitle']
    ${rate_us}    Get Element    xpath    ${data["rate_us_please"]}    attribute=clickable
    Run Keyword If    '${rate_us}'=='True'    Log    the element ${rate_us} is clickable, so it's a button
    Run Keyword If    '${rate_us}'=='False'    Log    the element ${rate_us} is not clickable, so it's not a butto