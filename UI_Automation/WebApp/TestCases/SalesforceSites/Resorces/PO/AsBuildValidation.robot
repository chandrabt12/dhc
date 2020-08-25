*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Salesforce Site}             salesforceSites
#${Site Id}                     xpath=//input[@class=' mdc-text-field__input ']
${Site Id}                     xpath=//input[@class='mat-text-field-input mdc-text-field__input']
#${Search BTN}                  xpath=//button[@class='site-list-serch-button mdc-button mdc-ripple-upgraded']
${Search BTN}                  xpath=//button[@class='site-list-serch-button mdc-button mdc-ripple-upgraded']//div[@class='mdc-button__ripple']
${Choose File}                 xpath=//input[@type='file']
#${Upload Button}               xpath=//button[text()='Upload file']
${Upload Button}               xpath=//span[contains(text(),'Upload file')]
#${Upload Button}               xpath=//html//body//app//div//div//table//tbody//tr//td//button//div
#${Upload Button}               xpath=//html//body//app//div//div//table//tbody//tr//td//button//div
${SuccessfullTick}             xpath=//span[@class='oi oi-circle-check']




*** Keywords ***
Validation Of As Build Functionality
    set selenium speed              2s
    Set Selenium Implicit Wait      5s
    click link                      ${Salesforce Site}
    wait until page contains        Search Opportunity by id
    input text                      ${Site Id}          0060h000016mRGUAA2
    #click button                    ${Search BTN}
    click element                    ${Search BTN}
    Scroll Element Into View         ${Choose File}
    wait until element is enabled    ${Choose File}
    choose file                      ${Choose File}      ${CURDIR}\\SF123_Report.dlm
    sleep                            2s
    click element                    ${Upload Button}
    sleep                            2s
    wait until page contains         ${SuccessfullTick}

    #File added successfully
    log to console                    File added successfully

