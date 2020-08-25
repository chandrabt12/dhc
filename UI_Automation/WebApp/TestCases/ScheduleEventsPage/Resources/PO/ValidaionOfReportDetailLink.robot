*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Scheduled Events}         scheduledEvents
${Details BTN}              xpath=//button[contains(text(),'Details')]
${View Report Detail}       xpath=//button[@class='btn btn-primary']
${Status Header}            xpath=//p[contains(text(),'Succeeded')]
${Case number1}             xpath=//a[contains(text(),'ci1237890')]
${Case number2}             xpath=//a[contains(text(),'ci1237890')]

*** Keywords ***
Validaion Report Detail Link In Scheduled Event Page
    set selenium speed              2s
    set Selenium Implicit Wait      5s
    click link                      ${Scheduled Events}
    wait until page contains        Succeeded
    ${Status Header}=  get text     ${Status Header}
    run keyword if                  '${Status Header}' == 'Succeeded'  click button    ${Details BTN}
    wait until page contains        ci1237890
    page should contain link        ${Case number1}
    click button                    ${View Report Detail}
    page should contain link        ${Case Number2}
    ${Case Num}=  should be equal   ${Case Number1}   ${Case Number2}