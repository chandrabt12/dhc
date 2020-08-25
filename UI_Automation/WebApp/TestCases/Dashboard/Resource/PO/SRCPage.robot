*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SRC Dashboard}                    SrcDashboard
${Review1}                          xpath=//h5[contains(text(),'Cases needing intro call')]
${Review2}                          xpath=//h5[contains(text(),'Cases needing Modem Activation')]
#${Review3}                          xpath=//h5[contains(text(),'Sites ready for SRC')]
${Review3}                          xpath=//h5[contains(text(),'Opportunity ready for SRC')]

${Review4}                          xpath=//h5[contains(text(),'Next SRC Events')]
${Review5}                          xpath=//h5[contains(text(),'Completed SRC Events')]
#${Schedule Details Page}            xpath=//div[@class='mat-layout-grid-cell mat-layout-grid-cell-span-6 mat-elevation-z1 dashboard-card']//tbody//tr[1]
${Schedule Details Page}            xpath=//body/app/div/div/div[4]
#${Schedule Details Page}            xpath=//div[4]//table[1]//tbody[1]//tr[1]
#${Event Type}                       xpath=//td[contains(text(),'SRC')]
${Event Type}                       xpath=//table[1]//tbody[1]//tr[3]//td[2]
${Deails Sites for SRC}             xpath=//div[contains(@class,'content px-4')]//div[3]//table[1]//tbody[1]//tr[1]
${Case Num Sites ready for SRC}     xpath=//td[contains(text(),'03820785')]
#${Case num intro call}              xpath=//tr[2]//td[1]
${Case num intro call}              xpath=//body//td[1]
${Salesforce Cases}                 salesforcecases
${Needing Intro Call}               xpath=//input[@id='inlineCheckbox1']
${Site Ready For SRC}               xpath=//input[@id='inlineCheckbox3']
${Filter Button}                    xpath=//button[contains(text(),'Filter')]
${Completed SRC Events Details}     xpath=//div[5]//table[1]//tbody[1]//tr[1]

*** Keywords ***
Cases needing intro call section
    set selenium speed                      2s
    set Selenium Implicit Wait              5s
    click link                              ${SRC Dashboard}
    click link                              ${Salesforce Cases}
    wait until page contains                Needing Intro Call
    select checkbox                         ${Needing Intro Call}
    click button                            ${Filter Button}
    ${text1}=  get text                     ${Case num intro call}
    ${text1}=  should be equal as strings   ${Case num intro call}  ${Case num intro call}
    log to console                          ${text1}
Cases needing Modem Activation
    set selenium speed                      2s

    click link                              ${SRC Dashboard}
    set Selenium Implicit Wait              5s
    ${text2}=  get text                     ${Review2}
    log to console                          ${text2}
Sites ready for SRC
    set selenium speed                      2s

    ${review_text3}=  get text              ${Review3}
    log to console                          ${review_text3}
    set Selenium Implicit Wait              5s
    #scroll element into view                ${Deails Sites for SRC}
    #click element                           ${Deails Sites for SRC}
    click link                              ${SRC Dashboard}
    wait until page contains                Cases needing intro call
    click link                              ${Salesforce Cases}
    wait until page contains                Needing Intro Call
    unselect checkbox                       ${Needing Intro Call}
    select checkbox                         ${Site Ready For SRC}
    click button                            ${Filter Button}
    #${text3}=  get text                     ${Case Num Sites ready for SRC}
    #${text3}=  should be equal as strings   ${Case Num Sites ready for SRC}  ${Case Num Sites ready for SRC}
    #log to console                          ${text3}
Next SRC Events
    set selenium speed                      2s
    set Selenium Implicit Wait              5s
    click link                              ${SRC Dashboard}
    wait until page contains                Cases needing intro call
    ${text3}=    get text                   ${Review4}
    log to console                          ${text3}
    click element                           ${Schedule Details Page}
    sleep                                   2s
    ${text4}=   get text                    ${Event Type}
    log to console                          ${text4}
Completed SRC Events
    set selenium speed                      2s
    set Selenium Implicit Wait              5s
    click link                              ${SRC Dashboard}
    ${text5}=  get text                     ${Review5}
    log to console                          ${text5}
    click element                           ${Completed SRC Events Details}
    ${text6}=   get text                    ${Event Type}
    log to console                          ${text6}