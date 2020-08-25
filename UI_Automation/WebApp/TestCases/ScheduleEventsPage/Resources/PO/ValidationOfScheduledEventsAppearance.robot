
*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Scheduled Events}             scheduledEvents
${Rows}                         xpath=//table[contains(@class,'mdc-table')]//tbody//tr//td[1]
${Items Per Page BTN}           xpath=//select[@class='mdc-select__native-control']
${Next Button}                  xpath=//div[contains(@class,'mdc-paginator')]//button[3]
${Expected Value_1}             5
${Expected Value_2}             10
${Expected Value_3}             25
${Expected Value_4}             50
${Expected Value_5}             100



*** Keywords ***
Validation Of Items Per Page And Paged To The Next Section (Items Per Page 5)
    set selenium speed              1s
    Set Selenium Implicit Wait          5s
    click link                      ${Scheduled Events}
    wait until page contains        Create scheduled Event
    ${count}=   get element count   ${Rows}
    ${Equal}=   set variable if     ${Expected Value_1}  ${count}
    ${count}=   log to console      ${Equal}
    click button                    ${Next Button}
Items Per Page 10
    select from list by value       ${Items Per Page BTN}  10
    ${count}=   get element count   ${Rows}
    ${Equal}=   set variable if     ${Expected Value_2}  ${count}
    ${count}=   log to console      ${Equal}
    click button                    ${Next Button}
Items Per Page 25
    select from list by value       ${Items Per Page BTN}  25
    ${count}=  get element count    ${Rows}
    ${Equal}=  set variable if      ${Expected Value_3}  ${count}
    ${count}=  log to console       ${Equal}
    click button                    ${Next Button}
Items Per Page 50
    select from list by value       ${Items Per Page BTN}  50
    ${count}=  get element count    ${Rows}
    ${Equal}=  set variable if      ${Expected Value_4}  ${count}
    ${count}=  log to console       ${Equal}
    click button                    ${Next Button}
Items Per Page 100
    select from list by value       ${Items Per Page BTN}  100
    ${count}=  get element count    ${Rows}
    ${Equal}=  set variable if      ${Expected Value_5}  ${count}
    ${count}=  log to console       ${Equal}
