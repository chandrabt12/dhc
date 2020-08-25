*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ProjectId}        xpath=//input[@id='inpText']
${Search BTN}       xpath=//input[@id='btnGet']
${Event Type}       xpath=//table[@class='mdc-table']//select
${Clear Text}       xpath=//input[@id='inpText']
${Input Text}       same
${Compare}          xpath=//table[@class='table table-hover']//td[1]
${Compare_2}        xpath=//table[@class='table table-hover']//td[4]




*** Keywords ***
Search Function
    set selenium speed                   1.5s
    Set Selenium Implicit Wait           5s
    input text                           ${ProjectId}    ${Input Text}
    click button                         ${Search BTN}
    get text                             ${Compare}
    ${Equal}=  element text should be    ${Compare}     Loading...
    log to console                       ${Equal}
    clear element text                   ${Clear Text}
    select from list by label            ${Event Type}  BACKUP
    click button                         ${Search BTN}
    sleep                                2s
    get text                             ${Compare_2}
    ${Equal_2}=  element text should be  ${Compare_2}   BACKUP
    log to console                       ${Equal_2}


