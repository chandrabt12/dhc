*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Reports}          reports
${SRC Event}        xpath=//td[contains(text(),'testcase123')]
${Checkbox}         xpath=//tr[2]//td[1]//input
${Compare Report}   xpath=//button[contains(@class,'btn btn-primary')]
${Data Grid}        id=tblBridgeOrigin


*** Keywords ***
SRC Report Difference
    set selenium speed   2s
    click link           ${Reports}
    click element        ${SRC Event}
    select checkbox      ${Checkbox}
    click button         ${Compare Report}
    wait until page contains  SRC Report difference
    ${data}=  get text   ${Data Grid}
    log to console       ${data}
    wait until page contains  BridgeDifferences
    wait until page contains  SegmentManagerDifferences




