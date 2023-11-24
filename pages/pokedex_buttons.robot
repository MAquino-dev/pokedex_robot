*** Settings ***

Resource    ../env.robot
Resource    ../data/elements/xpaths.robot

Library    AppiumLibrary


#*** Variables ***
#${USER_BALANCE}    accessibility_id=user-balance
#${USER_BALANCE}    //xpath

*** Keywords ***
that I access the pokedex
    Wait Until Element Is Visible    ${title_page}

I select all buttons
######## ESTUDAR O IF
    log     Clicking the buttons
    Wait Until Element Is Visible   ${letter_p}
    Element Should Be Visible   ${letter_p}
    Element Should Be Enabled   ${letter_p}
    Click Element    ${letter_p}

    Wait Until Element Is Visible  ${letter_k}
    Click Element   ${letter_k}

    Wait Until Element Is Visible   ${letter_u}
    Click Element   ${letter_u}


I validate that they are working
    #conferindo se é clicável
    log     Clicking in the button U
    ${letter_u}   Set Variable    //android.widget.Button[@text='U'][@clickable='true']
    ${letter_u}   Run Keyword And Return Status     Element Should Be Visible    ${letter_u}
    Run Keyword If      ${letter_u}   Click Element    ${letter_u}
     ...    ELSE    Log    Element is not clickable

         log     Clicking in the button K

    Run Keyword If    ${letter_k}    Click Element    ${letter_k}${letter_k}   Set Variable    //android.widget.Button[@text='K'][@clickable='true']
    #${letter_k}   Run Keyword And Return Status     Element Should Be Visible    ${letter_k}
     ...    ELSE    Log    Element is not clickable

         log     Clicking in the button P
    ${letter_p}   Set Variable    //android.widget.Button[@text='P'][@clickable='true']
    ${letter_p}   Run Keyword And Return Status     Element Should Be Visible    ${letter_p}
    Run Keyword If    ${letter_p}    Click Element    ${letter_p}
     ...    ELSE    Log    Element is not clickable