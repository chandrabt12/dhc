*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}       Chrome
${URL}           https://localhost:5001

${LOGIN EMAIL}               css:[type='email']
${LOGIN PASSWD}              css:[type='password']
${LOGIN BTN}                 xpath://button[@class='btn btn-primary btn-login']
${LOGOUT BTN}                xpath://button[@aria-label="Logout"]
${VALID CREDENTIALS NOTICE}  Welcome to your new app.

${VALID USERNAME}            volodymyr.shuran@agiliway.com
${VALID PASSWORD}            1qaz@WSX


*** Test Cases ***
Test title
    [Tags]    Smoke
    Begin Web Test
    Login
    Verify User Logged In
    Sign Out
    End Web Test

*** Keywords ***
Begin Web Test
    open browser  ${URL}  ${Browser}
    maximize browser window
    wait until page contains  Commercial Cloud Dashboard
Login
    Input Text       ${LOGIN EMAIL}    ${VALID USERNAME}
    sleep  3s
    Input Text       ${LOGIN PASSWD}    ${VALID PASSWORD}
    Click Button     ${LOGIN BTN}
Verify User Logged In
    sleep  3s
    Should Be Equal  ${VALID CREDENTIALS NOTICE}  Welcome to your new app.
Sign Out
    Click Button     ${LOGOUT BTN}
End Web Test
   close browser