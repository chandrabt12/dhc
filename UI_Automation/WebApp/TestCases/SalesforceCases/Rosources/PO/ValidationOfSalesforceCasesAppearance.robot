*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Salesforce Cases}             salesforcecases
${Rows}                         xpath=//table[contains(@class,'mdc-table')]//tbody//tr
#${Items Per Page BTN}           xpath=//select[div[text()='Items per Page:']]
${Items Per Page BTN}           xpath=//div[@class='mdc-select__anchor mdc-ripple-upgraded']
${Items List}                   xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//ul[@class='mdc-list']
${Item5}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[1]
${Item10}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[2]
${Item25}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[3]
${Item50}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[4]
${Item100}                       xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[5]
${Icon}                          class:mdc-select__dropdown-icon

#${Next Button}                  xpath=//div[contains(@class,'mdc-paginator')]//button[3]
${Next Button}                  xpath=//i[contains(text(),'navigate_next')]
${Expected Value_1}             5
${Expected Value_2}             10
${Expected Value_3}             25
${Expected Value_4}             50
${Expected Value_5}             100




*** Keywords ***
Validation Of Items Per Page And Paged To The Next Section (Items Per Page 5)
    set selenium speed              1.5s
    Set Selenium Implicit Wait      5s
    click link                      ${Salesforce Cases}
    wait until page contains        Needing Intro Call
    sleep                           3s
    Scroll Element Into View        ${Items Per Page BTN}
    Wait Until Element Is Visible   ${Items Per Page BTN}
    ${item} =   get text            ${Items Per Page BTN}
    log to console                  Scrolled
    #log to console                  ${item}
    click element                   ${Items Per Page BTN}
    wait until Element is Visible       ${Item5}
    click element                   ${Item5}
    #select from list by value       ${Items List}    5
    ${count}=   get element count   ${Rows}
    log to console                  Rows: ${count}
    ${Equal}=   set variable if     ${Expected Value_1}  ${count}
     log to console                 Equal: ${Equal}
    sleep                           10s
    #click button                    ${Next Button}
Items Per Page 10
   set selenium speed              1.5s
    Set Selenium Implicit Wait      5s
    click link                      ${Salesforce Cases}
    wait until page contains        Needing Intro Call
    sleep                           3s
    Scroll Element Into View        ${Items Per Page BTN}
    Wait Until Element Is Visible   ${Items Per Page BTN}
    ${item} =   get text            ${Items Per Page BTN}
    log to console                  Scrolled
    #log to console                  ${item}
    click element                   ${Items Per Page BTN}
    wait until Element is Visible       ${Item10}
    click element                   ${Item10}
    #select from list by value       ${Items List}    5
    ${count}=   get element count   ${Rows}
    log to console                  Rows: ${count}
    ${Equal}=   set variable if     ${Expected Value_2}  ${count}
     log to console                 Equal: ${Equal}
    sleep                           10s
   ####################
   #Wait Until Element Is Visible   ${Items Per Page BTN}
#    click element                   ${Icon}
#    sleep                           2s
#    log to console              Clicked Icon
#    wait until Element is Visible       ${Item10}
#    click element                   ${Item10}
#    sleep                           10s
#    #select from list by value       ${Items Per Page BTN}  10
#    ${count}=   get element count   ${Rows}
#    log to console                  Rows: ${count}
#    ${Equal}=   set variable if     ${Expected Value_2}  ${count}
#    log to console                  Equal: ${Equal}
#    sleep                           10s
#    #click button                    ${Next Button}
Items Per Page 25
    click link                      ${Salesforce Cases}
    wait until page contains        Needing Intro Call
    sleep                           3s
    Scroll Element Into View        ${Items Per Page BTN}
    Wait Until Element Is Visible   ${Items Per Page BTN}
    ${item} =   get text            ${Items Per Page BTN}
    log to console                  Scrolled
    #log to console                  ${item}
    click element                   ${Items Per Page BTN}
    wait until Element is Visible       ${Item25}
    click element                   ${Item25}
    #select from list by value       ${Items List}    5
    ${count}=   get element count   ${Rows}
    log to console                  Rows: ${count}
    ${Equal}=   set variable if     ${Expected Value_3}  ${count}
     log to console                 Equal: ${Equal}
    sleep                           10s
    ##############
#    Wait Until Element Is Visible   ${Items Per Page BTN}
#    click element                   ${Items Per Page BTN}
#    wait until Element is Visible       ${Items List}
#    click element                   ${Item25}
#    sleep                           10s
#    #select from list by value       ${Items Per Page BTN}  25
#    ${count}=  get element count    ${Rows}
#    log to console                  Rows: ${count}
#    ${Equal}=  set variable if      ${Expected Value_3}  ${count}
#    log to console                  Equal: ${Equal}
#    sleep                           10s
#    #click button                    ${Next Button}
Items Per Page 50
    click link                      ${Salesforce Cases}
    wait until page contains        Needing Intro Call
    sleep                           3s
    Scroll Element Into View        ${Items Per Page BTN}
    Wait Until Element Is Visible   ${Items Per Page BTN}
    ${item} =   get text            ${Items Per Page BTN}
    log to console                  Scrolled
    #log to console                  ${item}
    click element                   ${Items Per Page BTN}
    wait until Element is Visible       ${Item50}
    click element                   ${Item50}
    #select from list by value       ${Items List}    5
    ${count}=   get element count   ${Rows}
    log to console                  Rows: ${count}
    ${Equal}=   set variable if     ${Expected Value_4}  ${count}
     log to console                 Equal: ${Equal}
    sleep                           10s
########
#    Wait Until Element Is Visible   ${Items Per Page BTN}
#    click element                   ${Items Per Page BTN}
#    wait until Element is Visible       ${Items List}
#    click element                   ${Item50}
#    sleep                           10s
#    #select from list by value       ${Items Per Page BTN}  50
#    ${count}=  get element count    ${Rows}
#    log to console                  Rows: ${count}
#    ${Equal}=  set variable if      ${Expected Value_4}  ${count}
#    log to console                  Equal: ${Equal}
#    sleep                           10s
#    #click button                    ${Next Button}
Items Per Page 100
    click link                      ${Salesforce Cases}
    wait until page contains        Needing Intro Call
    sleep                           3s
    Scroll Element Into View        ${Items Per Page BTN}
    Wait Until Element Is Visible   ${Items Per Page BTN}
    ${item} =   get text            ${Items Per Page BTN}
    log to console                  Scrolled
    #log to console                  ${item}
    click element                   ${Items Per Page BTN}
    wait until Element is Visible       ${Item100}
    click element                   ${Item100}
    #select from list by value       ${Items List}    5
    ${count}=   get element count   ${Rows}
    log to console                  Rows: ${count}
    ${Equal}=   set variable if     ${Expected Value_5}  ${count}
     log to console                 Equal: ${Equal}
    sleep                           10s
#    Wait Until Element Is Visible   ${Items Per Page BTN}
#    click element                   ${Items Per Page BTN}
#    wait until Element is Visible       ${Items List}
#    click element                   ${Item100}
#    sleep                           10s
##    select from list by value       ${Items Per Page BTN}  100
#    ${count}=  get element count    ${Rows}
#    log to console                  Rows: ${count}
#    ${Equal}=  set variable if      ${Expected Value_5}  ${count}
#
#    log to console                  Equal: ${Equal}
#    sleep                           10s