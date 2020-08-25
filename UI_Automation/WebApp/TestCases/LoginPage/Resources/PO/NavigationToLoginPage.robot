*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}       Chrome
${URL}           https://localhost:44334/login


*** Keywords ***
Load
    open browser  ${URL}  ${Browser}
    set selenium speed          2s
    set Selenium Implicit Wait      5s

Verify Page Loaded
    wait until page contains    Commercial Cloud Dashboard