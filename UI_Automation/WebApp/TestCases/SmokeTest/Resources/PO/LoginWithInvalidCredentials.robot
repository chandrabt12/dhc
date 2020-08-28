*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOGIN EMAIL}                 css:[type='email']
${LOGIN PASSWD}                css:[type='password']

${INVALID USERNAME}            !TestHelLo1
${INVALID PASSWORD}            PSWD123

${VALID USERNAME}              dhc@user.email
${VALID PASSWORD}              Dhctest01

#${LOGIN BTN}                   xpath://button[@class='btn btn-primary btn-login']
${LOGIN BTN}                 xpath://button[contains(text(),'Login')]
#${INVALID CREDENTIALS NOTICE}  xpath=//*[@class="text-center login-error-message "]
#${INVALID CREDENTIALS NOTICE}  xpath=//*[@class="text-center login-error-message "]
${INVALID CREDENTIALS NOTICE}  xpath=//h5[contains(@class,'text-center login-error-message')]



${EMPTY}



*** Keywords ***
Login Wrong Credentials
    set selenium speed                      1s
    set Selenium Implicit Wait              5s
    Input Text    ${LOGIN EMAIL}    ${INVALID USERNAME}
    Input Text    ${LOGIN PASSWD}   ${INVALID PASSWORD}
    #Wait Until Element Is Visible       ${LOGIN BTN}
    sleep  3s
    log to console      before login 1
    click element   ${LOGIN BTN}
    log to console      after login 1
    sleep           2s
    Reload Page
#    Input Text    ${LOGIN EMAIL}    ${VALID USERNAME}
#    Input Text    ${LOGIN PASSWD}   ${INVALID PASSWORD}
#    #Wait Until Element Is Visible       ${LOGIN BTN}
#    log to console      before login 2
#    click element     ${LOGIN BTN}
#    log to console      after login 2
#    sleep           2s
    Input Text    ${LOGIN EMAIL}    ${INVALID USERNAME}
    Input Text    ${LOGIN PASSWD}   ${VALID PASSWORD}
    #Wait Until Element Is Visible       ${LOGIN BTN}
    log to console      before login 3
    click element       ${LOGIN BTN}
    log to console      after login 3
    sleep           3s
    Reload Page
    Input Text    ${LOGIN EMAIL}    ${EMPTY}
    Input Text    ${LOGIN PASSWD}   ${EMPTY}
    log to console      before login 4
    click element       ${LOGIN BTN}
    log to console      after login 4
    Reload Page
Verify Invalid Credentials
   Wait Until Page Contains Element    ${INVALID CREDENTIALS NOTICE}
