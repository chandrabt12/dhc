*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOGIN EMAIL}               css:[type='email']
${LOGIN PASSWD}              css:[type='password']
#${LOGIN BTN}                 xpath://button[@class='btn btn-primary btn-login']
${LOGIN BTN}                 xpath://button[contains(text(),'Login')]
${LOGOUT BTN}                xpath://button[@aria-label="Logout"]
${VALID CREDENTIALS NOTICE}  Welcome to your new app.

${VALID USERNAME}            dhc@user.email
${VALID PASSWORD}            Dhctest01

*** Keywords ***
Login
    set selenium speed                      1s
    set Selenium Implicit Wait              10s
    Input Text       ${LOGIN EMAIL}    ${VALID USERNAME}
    sleep  1s
    Input Text       ${LOGIN PASSWD}    ${VALID PASSWORD}
    #Wait Until Element Is Visible       ${LOGIN BTN}
     sleep  3s
    click element    ${LOGIN BTN}
Verify User Logged In
    sleep  5s
    Should Be Equal  ${VALID CREDENTIALS NOTICE}  Welcome to your new app.
Sign Out
    Click Button     ${LOGOUT BTN}