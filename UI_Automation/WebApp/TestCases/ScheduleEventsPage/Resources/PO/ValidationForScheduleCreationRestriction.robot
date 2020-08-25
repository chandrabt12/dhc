*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Scheduled Events}                 scheduledEvents
#${Create Schedule BTN}              xpath=//span[text()='Create scheduled Event']
${Create Schedule BTN}              xpath=//button[3]//div[1]
#${Salesforce project id Input}      xpath=//div//input[@class=' mdc-text-field__input ']
${Salesforce project id Input}      xpath=//input[@class='mat-text-field-input mdc-text-field__input']
${Search Button}                    xpath=//button[@class='searchable-dropdown-button mdc-button mdc-ripple-upgraded']
${Set Time}                         xpath=//div[contains(@class,'container flyout-content')]//div[1]//i[1]
${Click Create Button}              xpath=//button[@type="submit"]
${Error MSG}                        xpath=//li[contains(text(),'This event interfere with already created events')]
${Case Number}                      xpath=//div[5]//label[1]//input[1]

*** Keywords ***
Restriction Of Schedule Creation
    set selenium speed          2s
    set Selenium Implicit Wait      5s
    click link                  ${Scheduled Events}
    click element               ${Create Schedule BTN}
    sleep                       3s
    input text                  ${Salesforce project id Input}      0060v000006N7xm
    click button                ${Search Button}
    input text                  ${Case Number}    03941202
    double click element        ${Set Time}
    click button                ${Click Create Button}
    element should be visible   ${Error MSG}





