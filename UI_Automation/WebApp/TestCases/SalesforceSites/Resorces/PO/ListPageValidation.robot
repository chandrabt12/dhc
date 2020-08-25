*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Salesforce Site}             salesforceSites
@{Sites List}                  xpath=//table//tbody[1]
${Sites}                       xpath=//table[contains(@class,'table table-hover mdc-table dashboard-card-table')]//tbody//tr[1]





*** Keywords ***
Salesforce Sites List Page Validation
    set selenium speed              2s
    Set Selenium Implicit Wait      5s
    click link                      ${Salesforce Site}
    click element                   ${Sites}
    sleep                           2s
    ${data}=  get all links
    ${data}=  get text              @{Sites List}
    log to console                  ${data}
