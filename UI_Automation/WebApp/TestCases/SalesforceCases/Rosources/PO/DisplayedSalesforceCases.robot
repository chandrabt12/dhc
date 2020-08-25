*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Salesforce Cases}             salesforcecases
${Salesforce Cases Grid}        xpath=//table[@class='mat-elevation-z5 mdc-table']//tbody





*** Keywords ***
Dispayed Cases Safelesforce Cases page
    click link  ${Salesforce Cases}
    ${data}=  get text  ${Salesforce Cases Grid}
    log to console  ${data}
