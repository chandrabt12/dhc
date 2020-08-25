*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Scheduled Events}                 scheduledEvents
${Create Schedule BTN}              xpath=//body//div//button[3]//div[1]
${Salesforce project id Input}      xpath=//input[@class='mat-text-field-input mdc-text-field__input']
${Search Button}                    xpath=//button[@class='searchable-dropdown-button mdc-button mdc-ripple-upgraded']
${Site Name}                        xpath=//span[@class='mdc-tab__text-label'][contains(text(),'Site name')]
${Site Name Input}                  xpath=//input[@class='mat-text-field-input mdc-text-field__input']
${List}                             xpath=//li[text()='WS - Samsung AHQ (DS) Project']




*** Keywords ***
Search Site
    set selenium speed  2s
    Set Selenium Implicit Wait      5s
    click link          ${Scheduled Events}
    click element       ${Create Schedule BTN}
    input text          ${Salesforce project id Input}      0060v000006N7xm
    click button        ${Search Button}
    click element       ${Site Name}
    input text          ${Site Name Input}                  j

    click element       ${List}