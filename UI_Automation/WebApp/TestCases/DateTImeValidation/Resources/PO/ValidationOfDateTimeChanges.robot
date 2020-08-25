*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Text DHC Progress}             xpath=//div//div[2]//table[1]//thead[1]//tr[1]
${Date Time}                     xpath=//div//div[2]//table[1]//tbody[1]//tr[2]//td[1]
${Scheduled Event}               xpath=//div[contains(@class,'content px-4')]//div[2]//table[1]//tbody[1]//tr[2]
${Requsted By}                   xpath=//table[1]//tbody[1]//tr[4]//td[2]
${Due Date}                      xpath=//table[1]//tbody[1]//tr[5]//td[2]
${SRC Dashboard}                 SrcDashboard
${Scheduled Events}              scheduledEvents
${Date Time SRC}                 xpath=//div/table[1]//tbody[1]//tr[4]//td[1]
${Date Time Event}               xpath=//tr[1]//td[4]
${SRC Event}                     xpath=//div[contains(@class,'content px-4')]//div[5]//table[1]//tbody[1]//tr[4]
${Details BTN}                   xpath=//tr[1]//td[6]//button[1]




*** Keywords ***
Validation Of Date Time Changes For DHC
    set selenium speed          2.5s
    Set Selenium Implicit Wait      5s
    wait until page contains    Requested By
    ${requestBy}=   get text      ${Requsted By}
    log to console              RequestBY: ${requestBy}

    ${Info}=    get text        ${Date Time}
    log to console              Info: ${Info}
    click element               ${Scheduled Event}
    wait until page contains    Opportunity name
    ${Date}=  get text          ${Requsted By}
    log to console              Date: ${Date}
    ${Due Date}=  get text      ${Due Date}
    log to console              Duedate: ${Due Date}
    ${TimeDate}=  should be equal  ${Date}  ${Info}
    log to console              TimeDate: ${TimeDate}
Validation Of Date Time Changes For SRC
    set selenium speed          2s
    click link                  ${SRC Dashboard}
    wait until page contains    Requested By
    sleep                       1s
    scroll element into view    ${Date Time SRC}
    ${Info}=    get text        ${Date Time SRC}
    log to console              SRCInfo: ${Info}
    click element               ${SRC Event}
    wait until page contains    Opportunity name
    ${Date}=  get text          ${Requsted By}
    log to console              SRC Date: ${Date}
    ${Due Date}=  get text      ${Due Date}
    log to console              SRC Due date: ${Due Date}
    ${TimeDate}=  should be equal  ${Date}  ${Info}
    log to console              SRC Timeout: ${TimeDate}
Validation Of Date Time Changes For Schedule Event
    set selenium speed          2s
    click link                  ${Scheduled Events}
    wait until page contains    Requested By
    ${Info}=    get text        ${Date Time Event}
    log to console              SE Info: ${Info}
    click button                ${Details BTN}
    wait until page contains    Opportunity name
    ${Date}=  get text          ${Requsted By}
    log to console              SE Date: ${Date}
    ${Due Date}=  get text      ${Due Date}
    log to console              SE Due date: ${Due Date}
    ${TimeDate}=  should not be equal  ${Date}  ${Info}
    #${TimeDate}=  should be equal  ${Date}  ${Info}
    log to console              SE TimeOUT: ${TimeDate}
    


