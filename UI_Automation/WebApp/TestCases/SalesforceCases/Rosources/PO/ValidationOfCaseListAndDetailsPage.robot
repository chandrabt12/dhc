*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Salesforce Cases}             salesforcecases
${Details}                      xpath=//tr[1]//td[4]//button[1]
${Details Info}                 xpath=//table//tbody
${Details Info2}                xpath=//table[@class='table w-50']


*** Keywords ***
Case List Validation
    set selenium speed           1.7s
    Set Selenium Implicit Wait      5s
    click link                   ${Salesforce Cases}
    click button                 ${Details}
    page should contain          Salesforce Case Details:
Details Page Validaton
    ${info}=    get text         ${Details Info}
    log to console               ${info}
    go to                        https://qa-swcoe-dhc-automation-web-app.azurewebsites.net/salesforcecases/5000h00001Y0tdHAAR
    sleep                        3s
    ${info2}=    get text        ${Details Info2}
    log to console               ${info2}
    ${equal}=  should not be equal as strings    ${info}    ${info2}






