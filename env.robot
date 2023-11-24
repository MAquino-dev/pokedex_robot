*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Open_App
    Open Application    http://127.0.0.1:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel_6_Pro_API_33
    ...                 app=${EXECDIR}/app/pokedex.apk    # EXECDIR é a raiz do projeto o pwd
    ...                 udid=emulator-5554

    ${orig timeout} =	Set Appium Timeout	15 seconds

Close_App
    Capture Page Screenshot
    Close Application