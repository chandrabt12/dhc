*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Reports}             reports
${SRC Event}           xpath=//tr[1]//td[1]
${Checkbox}            xpath=//tr[1]//td[1]//input[1]
${Compare Report}      xpath=//button[contains(@class,'btn btn-primary')]
${CaseId}              xpath=//table[@class='table table-hover ']//tbody//tr[1]//td[4]
${SiteId}              xpath=//table[@class='table table-hover ']//tbody//tr[1]//td[3]
${Checkbox2}           xpath=//tr[2]//td[1]//input[1]

*** Keywords ***
SRC Report Comparison
    set selenium speed              2s
    Set Selenium Implicit Wait      5s
    click link                      ${Reports}
    click element                   ${SRC Event}
    select checkbox                 ${Checkbox}
    click button                    ${Compare Report}
    ${text}=  get text              ${CaseId}
    log to console                  ${text}
    ${text2}=  get text             ${SiteId}
    log to console                  ${text2}
    select checkbox                 ${Checkbox2}
    click button                    ${Compare Report}
    ${equal}=  should not be equal  ${text}    ${text2}
    log to console                  ${equal}