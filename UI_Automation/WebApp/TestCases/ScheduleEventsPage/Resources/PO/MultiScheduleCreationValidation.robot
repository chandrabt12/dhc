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
${Full Discovery}                   xpath=//form//div[2]//div[1]//input[1]
${Back Up}                          xpath=//form//div[3]//div[1]//input[1]
${Failed Status}                    xpath=//tr[1]//td[5]//p[1]
${Succeeded Status}                 xpath=//tr[3]//td[5]//p[1]
${Error for new event}              xpath=//li[contains(text(),'This event interfere with already created events')]
${Case Number}                      xpath=//label[@class='flyout-field mdc-text-field mdc-text-field--filled mdc-ripple-upgraded']//input[@class='valid mat-text-field-input mdc-text-field__input']


*** Keywords ***
New Event with status "Failed"
    set selenium speed    2s
    Set Selenium Implicit Wait          5s
    click link            ${Scheduled Events}
    click element          ${Create Schedule BTN}
    input text            ${Salesforce project id Input}      0060v000006N7xm
    click button          ${Search Button}
    input text            ${Case Number}    03941202
    double click element  ${Set Time}
    click button          ${Click Create Button}
    #element text should be  ${Failed Status}

Event with status "Succeeded"
    set selenium speed   2s
    Set Selenium Implicit Wait          5s
    click link            ${Scheduled Events}
    click element          ${Create Schedule BTN}
    input text            ${Salesforce project id Input}      0060v000006N7xm
    click button          ${Search Button}
    input text            ${Case Number}    03941202
    double click element  ${Set Time}
    click element         ${Full Discovery}
    click button          ${Click Create Button}
    #element text should be  ${Succeeded Status}
Event with another status
    set selenium speed   2s
    Set Selenium Implicit Wait          5s
    click link            ${Scheduled Events}
    click element          ${Create Schedule BTN}
    input text            ${Salesforce project id Input}      0060v000006N7xm
    click button          ${Search Button}
    input text            ${Case Number}    03941202
    double click element  ${Set Time}
    click element         ${Back Up}
    click button          ${Click Create Button}
    #element text should be  ${Error for new event}