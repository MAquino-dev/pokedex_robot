*** Settings ***

Resource    ../env.robot
Resource    ../data/elements/xpaths.robot

Library    AppiumLibrary


#*** Variables ***
#${USER_BALANCE}    accessibility_id=user-balance
#${USER_BALANCE}    //xpath

*** Keywords ***
that I accessed the pokedex app
    Wait Until Element Is Visible   ${title_page}

I write and pass the challenges of pokemons
    Log     Passing first challenge
    Click Element   ${pikachu_letter_p}
    Click Element   ${pikachu_letter_i}
    Click Element   ${pikachu_letter_k}
    Click Element   ${pikachu_letter_a}
    Click Element   ${pikachu_letter_c}
    Click Element   ${pikachu_letter_h}
    Click Element   ${pikachu_letter_u}
    Wait Until Element Is Visible   ${continue_button}
    Click Element   ${continue_button}

    Log     Passing second challenge
    Wait Until Element Is Visible   ${ivysaur_letter_i}
    Click Element   ${ivysaur_letter_i}
    Click Element   ${ivysaur_letter_v}
    Click Element   ${ivysaur_letter_y}
    Click Element   ${ivysaur_letter_s}
    Click Element   ${ivysaur_letter_a}
    Click Element   ${ivysaur_letter_u}
    Click Element   ${ivysaur_letter_r}
    Wait Until Element Is Visible   ${continue_button}
    Click Element   ${continue_button}

validate the level buttons and test the return of the other challenges
    Wait Until Element Is Visible   ${level_button}
    Element Should Be Visible   ${level_button}
    Element Should Be Enabled   ${level_button}
    Log  The element has clicable
    Click Element   ${level_button}
    #stage one
    Wait Until Element Is Visible   ${stage_one}
    Element Should Be Visible   ${stage_one}
    Element Should Be Enabled   ${stage_one}
    Log  The element has clicable
    Click Element   ${stage_one}
    Wait Until Element Is Visible   ${level_button}
    Click Element   ${level_button}
    #stage two
    Wait Until Element Is Visible   ${stage_two}
    Element Should Be Visible   ${stage_two}
    Element Should Be Enabled   ${stage_two}
    Log  The element has clicable
    Click Element   ${stage_two}
    Wait Until Element Is Visible   ${level_button}
    Click Element   ${level_button}
    #stage three
    Wait Until Element Is Visible   ${stage_three}
    Element Should Be Visible   ${stage_three}
    Element Should Be Enabled   ${stage_three}
    Log  The element has clicable
    Click Element  ${stage_three}
