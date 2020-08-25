*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Salesforce Site}      salesforceSites
${Search Field}         xpath=//input[contains(@class,'mdc-text-field__input')]
${Search Button}        xpath=//button[@class='site-list-serch-button mdc-button mdc-ripple-upgraded']
@{Tabel Info}           xpath=//table[1]//tbody[1]
${Links}                xpath=//a[contains(text(),'DHC-Test Site 2')]
${Schedule Button}      xpath=//button[starts-with(@class,'site-details-button')]
${Panel Info}           xpath=//input[contains(@class,'mdc-text-field__input _mdc-text-field--upgraded modified valid')]
#${Panel Info}           xpath=//input[@class='mat-text-field-input mdc-text-field__input']







*** Keywords ***
Site Details Page Validation
    set selenium speed       2s
    Set Selenium Implicit Wait      5s
    click link               ${Salesforce Site}
    input text               ${Search Field}     0060v000006N7yBAAS
    click button             ${Search Button}
    wait until page contains                     Information
    ${data}=  get text       @{Tabel Info}
    log to console           ${data}
Flyout Panel Validation
    click button             ${Schedule Button}
    #${info}=  get value      ${Panel Info}
    #log to console           ${info}


