*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${Click on Details button}      xpath=//tr[1]//td[6]//button[1]
${Close Button}                 xpath=//button[@class='btn btn-light']
${Status}                       xpath=//tr[8]//td[2]



*** Keywords ***
Schedule Details
    set selenium speed                               2s
    set Selenium Implicit Wait                       5s
    wait until page contains                         Requested By
    click button                                     ${Close Button}
    click button                                     ${Click on Details button}
    ${text}=  get text                               ${Status}