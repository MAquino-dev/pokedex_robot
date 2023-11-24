*** Settings ***

Resource    ../env.robot
Resource    ../data/elements/xpaths.robot

Library    AppiumLibrary


#*** Variables ***
#${USER_BALANCE}    accessibility_id=user-balance
#${USER_BALANCE}    //xpath

*** Keywords ***
that I access the pokedex app
    Wait Until Element Is Visible   ${title_page}

validate the options button
    Wait Until Element Is Visible   ${menu_button}
    Click Element   ${menu_button}

test the buttons
    #conferindo se é clicável
    Wait Until Element Is Visible   ${get_coins}
    Element Should Be Visible   ${get_coins}
    Element Should Be Enabled   ${get_coins}
    Log  The element has clicable
    Click Element   ${get_coins}
    Wait Until Element Is Visible   ${back_button}
    Click Element   ${back_button}
    #conferindo se é clicável
    Element Should Be Visible   ${sound_button}
    Element Should Be Enabled   ${sound_button}
    Log  The element has clicable
    #ligando e desligando o som
    Click Element   ${sound_button}
    Click Element   ${sound_button}
    #conferindo se é clicável
    Wait Until Element Is Visible   ${about_button}
    Element Should Be Visible   ${about_button}
    Element Should Be Enabled   ${about_button}
    Log  The element has clicable
    Click Element   ${about_button}
    Wait Until Element Is Visible   ${back_button}
    Click Element   ${back_button}