*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Scheduled Events}                 scheduledEvents
#${Scheduled Events}                 xpath=//a[@class='nav-link active']
#${Create Schedule BTN}              xpath=//button[text()='Create scheduled Event']
#${Create Schedule BTN}              xpath=//*[@class='mdc-button mdc-ripple-upgraded']
${Create Schedule BTN}              xpath=//button[3]//div[1]

${Click on DropDown}                xpath=//div[@class="w-75 flyout-field mdc-text-field _mdc-text-field--upgraded mdc-ripple-upgraded"]
${Select Site from DropDown}        xpath=//li[text()='WS - GOOSE CREEK ISD GREEN CENTER RENO']
#${Salesforce project id Input}      xpath=//div//input[@class=' mdc-text-field__input']
${Salesforce project id Input}      xpath=//input[@class='mat-text-field-input mdc-text-field__input']

${Set Time}                         xpath=//div[contains(@class,'container flyout-content')]//div[1]//i[1]
${Site name}                        xpath=//body//app//div[@class='container flyout-content']/form/div[1]
${Salesforce project id}            xpath=//div[@class='container flyout-content']/form/div[2]
${Mac address}                      xpath=//div[@class='container flyout-content']/form/div[3]//input[1]
${SalesForce Cradlepoint Info}      xpath=//div[@class='container flyout-content']/form/div[4]
${Site Name Button}                 xpath=//span[contains(text(),'Site name')]
${Search Button}                    xpath=//button[@class='searchable-dropdown-button mdc-button mdc-ripple-upgraded']
#${MM}                               xpath=//div[contains(@class,'flyout-panel')]//div[2]//i[1]
${HH}                               xpath=//label[1]//div[1]//i[1]

${Click Radio Button}               id=PingOnly
#${Click Create Button}              xpath=//button[@type="submit"]
${Click Create Button}              xpath=//html//body//app//div//div//form//button//div
${Site Name}                        xpath=//li[text()='WS - POTOMAC SCHOOL']
${Case Number}                      xpath=//div[5]//label[1]//input[1]


*** Keywords ***
New Schedule
    set selenium speed              2s
    set Selenium Implicit Wait      5s
    log to console                  "{test}"
    click link                      ${Scheduled Events}
    #${text6}=   get text           ${Scheduled Events}
    log to console                  Clicked Scheduled Event
    sleep                           2s

    click element                   ${Create Schedule BTN}
    log to console                  Clicked Create Scheduled Event button
    sleep                           5s
    input text                      ${Salesforce project id Input}        0060h000016khnmAAA
    sleep                           3s
    click button                    ${Search Button}
    ${text1}=  get text             ${Site name}
    log to console                  ${text1}
    ${text2}=  get text             ${Salesforce project id}
    log to console                  ${text2}
    ${text3}=  get text             ${Mac address}
    log to console                  ${text3}
    ${text4}=  get text             ${SalesForce Cradlepoint Info}
    log to console                  ${text4}
    input text                      ${Case Number}    03941202

    click element                   ${HH}
    Scroll Element Into View        ${Click Radio Button}
    click button                    ${Click Radio Button}
    #Scroll Element Into View        ${MM}
    click element                    ${Click Create Button}
    sleep                            5s
    #reload page
#    sleep                           2s
#    click element                   ${Create Schedule BTN}
#    click element                   ${Site Name Button}
#    sleep                           2s
#    input text                      ${Salesforce project id Input}        DHC-Test Site 1
#    click element                   ${Click on DropDown}
#    ${name}=  get text              ${Site Name}
#    log to console                  ${name}
#    click element                   ${Select Site from DropDown}
#    input text                      ${Case Number}    03941202
#    click element                   ${Set Time}
#    click button                    ${Click Radio Button}
#    click element                   ${Click Create Button}
#
