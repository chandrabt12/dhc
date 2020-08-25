*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${More Vert BTN}                xpath=//i[@class='material-icons']
${Refresh Page}                 xpath=//ul[@class='mdc-list']//li[text()='Refresh page']
${Time}                         xpath=//div[contains(@class,'float-right header-bar-last-update-time')]
#${Scheduled Event Details}      xpath=//td[contains(text(),'site-JIKGOPFRBISTGHPKQWJB')]
${SRC Dashboard}                SrcDashboard
${Scheduled Events}             scheduledEvents
${Salesforce Cases}             salesforcecases
${Salesforce Opportunities}     salesforceSites
${Reports}                      reports


*** Keywords ***
Refresh Pages Validation
    sleep                       10s
    Set Selenium Implicit Wait  5s
    ${timetext}=  get text      ${Time}
    log to console              ${timetext}
    click element               ${More Vert BTN}
    click element               ${Refresh Page}
    sleep                       7s
    ${text}=  get text          ${Time}
    log to console              ${text}
    #click element              ${Scheduled Event Details}
    click element               ${More Vert BTN}
    click element               ${Refresh Page}
    get text                    ${Time}
    click link                  ${SRC Dashboard}
    sleep                       10s
    ${timetext}=  get text  ${Time}
    log to console      ${timetext}
    click element       ${More Vert BTN}
    click element       ${Refresh Page}
    sleep               7s
    ${text}=  get text  ${Time}
    log to console      ${text}
    click link          ${Scheduled Events}
    sleep               10s
    ${timetext}=  get text  ${Time}
    log to console      ${timetext}
    click element       ${More Vert BTN}
    click element       ${Refresh Page}
    sleep               7s
    ${text}=  get text  ${Time}
    log to console      ${text}
    click link          ${Salesforce Cases}
    sleep               10s
    ${timetext}=  get text  ${Time}
    log to console      ${timetext}
    click element       ${More Vert BTN}
    click element       ${Refresh Page}
    sleep               7s
    ${text}=  get text  ${Time}
    log to console      ${text}
    click link          ${Salesforce Opportunities}
    sleep               10s
    ${timetext}=  get text  ${Time}
    log to console      ${timetext}
    click element       ${More Vert BTN}
    click element       ${Refresh Page}
    sleep               7s
    ${text}=  get text  ${Time}
    log to console      ${text}
    click link          ${Reports}
    sleep               10s
    ${timetext}=  get text  ${Time}
    log to console      ${timetext}
    click element       ${More Vert BTN}
    click element       ${Refresh Page}
    sleep               7s
    ${text}=  get text  ${Time}
    log to console      ${text}