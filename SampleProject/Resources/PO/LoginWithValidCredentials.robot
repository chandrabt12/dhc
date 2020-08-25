*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOGIN EMAIL}               css:[type='email']
${LOGIN PASSWD}              css:[type='password']
${LOGIN BTN}                 xpath://button[@class='btn btn-primary btn-login']
${LOGOUT BTN}                xpath://button[@aria-label="Logout"]
${VALID CREDENTIALS NOTICE}  Welcome to your new app.

${VALID USERNAME}            dhc@user.email
${VALID PASSWORD}            Dhctest01

*** Keywords ***
Login
    Input Text       ${LOGIN EMAIL}    ${VALID USERNAME}
    sleep  3s
    Input Text       ${LOGIN PASSWD}    ${VALID PASSWORD}
    Click Button     ${LOGIN BTN}
Verify User Logged In
    sleep  5s
    Should Be Equal  ${VALID CREDENTIALS NOTICE}  Welcome to your new app.
Sign Out
    Click Button     ${LOGOUT BTN}