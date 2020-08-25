*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOGIN EMAIL}                 css:[type='email']
${LOGIN PASSWD}                css:[type='password']

${INVALID USERNAME}            !TestHelLo1
${INVALID PASSWORD}            PSWD123

${VALID USERNAME}              dhc@user.email
${VALID PASSWORD}              Dhctest01

${LOGIN BTN}                   xpath://button[@class='btn btn-primary btn-login']

${INVALID CREDENTIALS NOTICE}  xpath=//*[@class="text-center login-error-message "]

${EMPTY}



*** Keywords ***
Login Wrong Credentials
    Input Text    ${LOGIN EMAIL}    ${INVALID USERNAME}
    Input Text    ${LOGIN PASSWD}   ${INVALID PASSWORD}
    Click Button  ${LOGIN BTN}
    Input Text    ${LOGIN EMAIL}    ${VALID USERNAME}
    Input Text    ${LOGIN PASSWD}   ${INVALID PASSWORD}
    click button  ${LOGIN BTN}
    Input Text    ${LOGIN EMAIL}    ${INVALID USERNAME}
    Input Text    ${LOGIN PASSWD}   ${VALID PASSWORD}
    click button  ${LOGIN BTN}
    Input Text    ${LOGIN EMAIL}    ${EMPTY}
    Input Text    ${LOGIN PASSWD}   ${EMPTY}

Verify Invalid Credentials
  Wait Until Page Contains Element    ${INVALID CREDENTIALS NOTICE}
