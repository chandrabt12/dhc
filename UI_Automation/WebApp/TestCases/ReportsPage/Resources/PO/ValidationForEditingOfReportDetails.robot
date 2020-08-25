*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Reports}                  reports
#${Scheduled Event}          xpath=//tr[7]//td[3]
${Scheduled Event}          xpath=//tr[7]//td[3]
${Edit BTN}                 xpath=//th[8]//button[1]
${Edit Row}                 id=bEdit
${Network}                  xpath=//td[1]//input[1]
${Expected}                 xpath=//td[2]//input[1]
${Found}                    xpath=//td[3]//input[1]
${Difference}               xpath=//td[4]//input[1]
${Percent}                  xpath=//td[5]//input[1]
${Missing}                  xpath=//td[6]//input[1]
${Extra}                    xpath=//td[7]//input[1]
${Save}                     id=bAcep
${Edited Data}              xpath=//body//app/div/div/table[1]/tbody[1]/tr[1]




*** Keywords ***
Editing Of Report Details Page
    set selenium speed              2s
    Set Selenium Implicit Wait      5s
    #wait until page contains   Reports
    click link                 ${Reports}
    log to console             Reports
    ${date}=  get text         ${Scheduled Event}
    log to console             Date: ${date}
    #${convert}=  convert to string          ${Scheduled Event}
    #log to console             ${convert}
    #run keyword if            "${Scheduled Event}" == ${date}   click element    ${Scheduled Event}
    click element              ${Scheduled Event}
    click button               ${Edit BTN}
    click button               ${Edit Row}
    clear element text         ${Network}
    input text                 ${Network}       test
    clear element text         ${Expected}
    input text                 ${Expected}      1
    clear element text         ${Found}
    input text                 ${Found}         2
    clear element text         ${Difference}
    input text                 ${Difference}    3
    clear element text         ${Percent}
    input text                 ${Percent}       4
    clear element text         ${Missing}
    input text                 ${Missing}       5
    clear element text         ${Extra}
    input text                 ${Extra}         6
    click button               ${Save}
    get text                   ${Edited Data}

