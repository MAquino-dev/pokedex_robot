*** Settings ***

Resource    ../env.robot
Resource    ../data/elements/xpaths.robot

Library    AppiumLibrary


#*** Variables ***
#${USER_BALANCE}    accessibility_id=user-balance
#${USER_BALANCE}    //xpath

*** Keywords ***
#I access the pokedex app
    #Wait Until Element Is Visible   ${title_page}

#I choose a specific button
    #Log     inspect button
    #Click Element   ${pikachu_letter_p}
    #Click Element   ${pikachu_letter_i}
    #Click Element   ${pikachu_letter_k}
    #Click Element   ${pikachu_letter_a}
    #Click Element   ${pikachu_letter_c}
    #Click Element   ${pikachu_letter_h}
    #Click Element   ${pikachu_letter_u}
    #Click Element   ${continue_button}

#I validate that it is in the pokemon name text
    #Log     validating quiz letter buttons
    #conferindo se é clicável
    #Wait Until Element Is Visible   ${use_hint_button}
    #Element Should Be Visible   ${use_hint_button}
    #Element Should Be Enabled   ${use_hint_button}
    #Log  The element has clicable
    #Click Element   ${use_hint_button}
    ##stage one
    #Element Should Be Visible   ${solve_question}
    #Element Should Be Enabled   ${solve_question}
    #Log  The element has clicable
    #Click Element   ${solve_question}
    #Click Element   ${solve_question}
