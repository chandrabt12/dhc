*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Reports}              reports
${Event Type}           xpath=//td[contains(text(),'SRC')]
${SRC Event}            xpath=//tr[1]//td[4]
${Text}                 xpath=//div[contains(@class,'active-title text-nowrap')]






*** Keywords ***
Validation OF Redirect
    set selenium speed             3s
    Set Selenium Implicit Wait     5s
    click link                     ${Reports}
    ${Event} =  get text           ${Event Type}
    run keyword if                "${Event Type}" == "SRC"   click element   ${Event Type}
    click element                  ${Event Type}
    ${text}=  get text             ${Text}
    log to console                 ${text}




