*** Settings ***
Library  SeleniumLibrary




*** Variables ***
${Reports}                  reports
${Download Button}          xpath=//tr[5]//td[5]//button[1]
${Download Button_2}        xpath=//button[@aria-label='save_alt']


*** Keywords ***
Download Files
    set selenium speed        1s
    Set Selenium Implicit Wait  5s
    wait until page contains  Reports
    click link                ${Reports}
    click button              ${Download Button}
    click button              ${Download Button_2}
    click link                ${Reports}