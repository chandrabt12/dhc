*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Scheduled Events}             scheduledEvents
#${Create Schedule BTN}          xpath=//button[text()='Create scheduled Event']
${Create Schedule BTN}          xpath=//button[3]//div[1]

${FlyOut Panel}                 xpath=//div[@class='flyout-panel']
${Salesforce Cases}             salesforcecases



*** Keywords ***
Flyout Panel Dismissal Validation
    set selenium speed              2s
    set Selenium Implicit Wait      5s
    click link                      ${Scheduled Events}
    wait until page contains        Scheduled Events
    click element                   ${Create Schedule BTN}
    element should be enabled       ${FlyOut Panel}
    Wait Until Element Is Visible       xpath=//div[@class='flyout-panel']
    click link                      ${Salesforce Cases}
    element should not be visible   ${FlyOut Panel}
