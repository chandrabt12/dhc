*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${LOGIN EMAIL}                  css:[type='email']
${LOGIN PASSWD}                 css:[type='password']
${LOGIN BTN}                    xpath://button[@class='btn btn-primary btn-login']
${VALID CREDENTIALS NOTICE}     Welcome to your new app.
${VALID USERNAME}               dhc@user.email
${VALID PASSWORD}               Dhctest01



*** Keywords ***
Login Into Appication
    sleep  3s
    Input Text       ${LOGIN EMAIL}     ${VALID USERNAME}
    Input Text       ${LOGIN PASSWD}    ${VALID PASSWORD}
    Click Button     ${LOGIN BTN}
    Should Be Equal  ${VALID CREDENTIALS NOTICE}  Welcome to your new app.