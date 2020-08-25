*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Salesforce Opportunities}     salesforceSites
${Completed Scheduled Events}   xpath=//td[contains(text(),'DHC-Test Site 1')]
${Info}                         xpath=//div[@class='content px-4']
${Opportunity Name}             xpath=//a[contains(text(),'DHC-Test Site 1')]

*** Keywords ***
Site details page can access information on salesforce
    click link      ${Salesforce Opportunities}
    click element   ${Completed Scheduled Events}
    ${text}=  get text  ${Info}
    log to console      ${text}
    click link          ${Opportunity Name}
