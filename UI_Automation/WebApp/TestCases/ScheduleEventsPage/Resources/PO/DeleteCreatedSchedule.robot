*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Scheduled Events}             scheduledEvents
${Click Delete Button}          xpath=//tr[1]//td[6]//button[1]



*** Keywords ***
Remove New Schedule
    click link       ${Scheduled Events}
    sleep  3s
    click button     ${Click Delete Button}