*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Reports}                  reports
${DHC Report}               xpath=//tr[5]//td[4]
${DropDown}                 xpath=//table[contains(@class,'table w-20')]//tbody//tr//td//select
${Select Status}            xpath=//body//option[5]
${Update Status BTN}        xpath=//table//button[@class='btn btn-primary']
${Updated Status}           xpaht=//table[@class='table w-20']//tbody//tr//td//select
${Site detail page}         xpaht=//td[contains(text(),'WS - PGandE BLDG AandD')]
${Salesforce Opportunities}  salesforceSites

*** Keywords ***
Status Update In Repoerts Page
    set selenium speed  2s
    click link      ${Reports}
    click element   ${DHC Report}
    click element   ${DropDown}
    click element   ${Select Status}
    click button    ${Update Status BTN}
    wait until page contains    Updated report status successfully.

    #Validate that reports that have been reviewed no longer display in the Reports list page
    click link      ${Reports}
    page should not contain textfield  ${DHC Report}
    click link      ${${Salesforce Opportunities}}
    click link      ${Site detail page}
    page should contain     Failed
