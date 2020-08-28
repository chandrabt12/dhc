*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Home}                         xpath=//a[@class='navbar-brand']
#${Home}                         xpath=//a[@class='nav-link active']

${Upcoming DHC}                 xpath=//h5[contains(text(),'Upcoming DHC')]
${DHC's In Progress}            xpath=//h5[contains(text(),'s In Progress')]
${DHC’s ready for Review}       xpath=//h5[contains(text(),'s ready for Review')]
${Recent Backup Events}         xpath=//h5[contains(text(),'Recent Backup Events')]
${Deails Sites for SRC}         xpath=//div[@class='content px-4']//div[3]//table[1]//tbody[1]//tr[1]
${Salesforce Case Details}      xpath=//tr[1]//td[4]//button[1]
${Case Number}                  xpath=//tr[1]//td[2]
${Case Number2}                 xpath=//tr[1]//td[1]

${Salesforce Cases}             salesforcecases
${Site Ready For SRC}           xpath=//input[@id='inlineCheckbox3']
${Filter Button}                xpath=//button[contains(text(),'Filter')]
${Status Resn DHC's}            xpath=//div[4]//table[1]//tbody[1]//tr[1]//td[3]
${Site}                         xpath=//tr[1]//td[3]
${Rows}                         xpath=//table[contains(@class,'mdc-table')]//tbody//tr//td[1]
${Next Button}                  xpath=//div[contains(@class,'mdc-paginator')]//button[3]
${Expected Value_2}             10

${UpcomingDHC_row}                         xpath=//div[@class='mat-layout-grid-inner dashboard-card-row']//div[1]
${DHCInProgress_row}                       xpath=//body//div//div//div[1]//div[1]//div[2]
${DHCreadyforReview_row}                   xpath=//body//app//div//div//div[3]
${Recent Backup Events_row}                xpath=//body//app//div[4]


*** Keywords ***
Upcoming DHC
    set selenium speed                      1s
    set Selenium Implicit Wait              3s
    wait until page contains                Upcoming DHC’s
    ${text1}=  get text                     ${Upcoming DHC}
    log to console                          ${text1}
#    ${count}=   get element count           ${UpcomingDHC_row}
#    log to console                          No of Upcoming DHC’s Events: ${count}

DHC's In Progress
    set selenium speed                      1s
    ${text2}=  get text                     ${DHC's In Progress}
    log to console                          ${text2}
    ${count}=   get element count           ${DHCInProgress_row}
    log to console                          No of DHC's In Progress Events: ${count}

DHC’s ready for Review
    set selenium speed                      2s
    get text                                ${DHC’s ready for Review}
    ${text2} =  get text                    ${Deails Sites for SRC}
    log to console                          ${text2}
    click element                           ${Deails Sites for SRC}
    click link                              ${Home}
    click link                              ${Salesforce Cases}
    wait until page contains                Site Ready For SRC
    select checkbox                         ${Site Ready For SRC}
    click button                            ${Filter Button}
    wait until page contains                Case Numer
    ${text3}=  get text                     ${Case Number2}
    log to console                          ${text3}
    click button                            ${Salesforce Case Details}
    ${text3}=  get text                     ${Case Number}
    log to console                          ${text3}
    ${count}=   get element count           ${DHCreadyforReview_row}
    log to console                          No. of DHC’s ready for Review Events: ${count}


Recent Backup Events
    set selenium speed                      2s
    click link                              ${Home}
    ${text4}=  get text                     ${Recent Backup Events}
    log to console                          ${text4}
    ${text5}=  get text                     ${Status Resn DHC's}
    log to console                          ${text5}
#    get text                                ${Site}
#    ${count}=   get element count           ${Recent Backup Events_row}
#    log to console                          No. of Recent Backup Events: ${count}


#    ${count}=   get element count           ${Rows}
#    log to console                          ${count}
#    ${Equal}=   set variable if             ${Expected Value_2}  ${count}
#    ${count}=   log to console              ${Equal}
#    log to console                          ${count}
