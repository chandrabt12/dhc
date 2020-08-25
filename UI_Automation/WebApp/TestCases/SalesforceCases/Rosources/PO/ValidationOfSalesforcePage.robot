*** Settings ***
Library  SeleniumLibrary




*** Variables ***
${Salesforce Cases}         salesforcecases
@{Cases List}               xpath=//table//tbody
${Filter Button}            xpath=//button[contains(text(),'Filter')]
${Needing Intro Call}       xpath=//input[@id='inlineCheckbox1']
${Needs Modem Activation}   xpath=//input[@id='inlineCheckbox2']
${Site Ready For SRC}       xpath=//input[@id='inlineCheckbox3']
${Get Button}               xpath=//button[contains(text(),'Get')]
${Rows}                     xpath=//table[contains(@class,'mdc-table')]//tbody//tr
${Need_Call_Rows}           xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr
${Need_Call_Cols}           xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td
${Cols}                     xpath=//table[contains(@class,'mdc-table')]//tbody//tr[1]/td

${Items Per Page BTN}           xpath=//div[@class='mdc-select__anchor mdc-ripple-upgraded']
${Items List}                   xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//ul[@class='mdc-list']
${Item5}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[1]
${Item10}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[2]
${Item25}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[3]
${Item50}                        xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[4]
${Item100}                       xpath=//div[@class='mdc-select__menu mdc-menu mdc-menu-surface mdc-menu-surface--open']//li[5]
${Icon}                          class:mdc-select__dropdown-icon
${ItemNum25}                     xpath://div[@class='mdc-select__anchor mdc-ripple-upgraded']
${Next Button}                  xpath=//i[contains(text(),'navigate_next')]

${Expected Value_1}             5
${Expected Value_2}             10
${Expected Value_3}             25
${Expected Value_4}             50
${Expected Value_5}             100
${next button}                  xpath=//i[contains(text(),'navigate_next')]
${Last Update}                  xpath=//div[contains(@class,'float-right header-bar-last-update-time')]
${GET_STATUS}                   xpath=//app[@class='overflow-hidden']//tr//td
*** Keywords ***
Salesforce Cases Page And Validation Of Data On It
    set selenium speed              2s
    Set Selenium Implicit Wait      5s
    click link                      ${Salesforce Cases}
    wait until page contains        Needing Intro Call
    #${data}=  get all links
    #${data}=  get text        @{Cases List}
    #log to console            ${data}
    ${count1}=   get element count   ${Rows}
    log to console                   Total events: ${count1}
    #Scroll Element Into View        ${Items Per Page BTN}
    #Wait Until Element Is Visible   ${Items Per Page BTN}
    #click element                   ${Next Button}
     #${count2}=   get element count   ${Rows}

    #log to console             Total events_2:  ${Total}
Validation Of Filters
    set selenium speed                  1s
    Set Selenium Implicit Wait      5s
    Scroll Element Into View            ${Needing Intro Call}
    select checkbox                     ${Needing Intro Call}
    click button                        ${Filter Button}
    sleep                               2s
    ${rows_count}=   get element count          ${Need_Call_Rows}
    log to console                  Needing Intro Call: ${rows_count}

    ${col_count}=      get element count       ${Need_Call_Cols}
    log to console                          Needing Intro Call Column count: ${col_count}

    FOR     ${row}       IN     ${rows_count}
        ${Status}=       get text        xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[${row}]/td[3]
        log to console                      Status=${Status}
        ${Opportunity}=       get text      xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[${row}]/td[2]
        log to console                      *******************************************
        log to console                       Opportunity Name=${Opportunity}
        log to console                      *******Opportunity Details********
        click element                       xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[${row}]/td[4]
        sleep                               3s
        ${Case Reason}=     get text        xpath=//td[contains(text(),'Install Verify')]
        log to console                      Case Reason=${Case Reason}
        ${Status}=       get text         xpath=//td[contains(text(),'New')]
        log to console                      State=${Status}
        ${Requested by date}=       get text        xpath=//tr[6]//td[2]
        log to console                        Requested by date=${Requested by date}
        ${Due date}=            get text      xpath=//tr[7]//td[2]
        log to console                        Due date=${Due date}
        log to console                      *********************************************
    END
    click link                ${Salesforce Cases}
    sleep                     2s
    #${date}=  get text        ${Last Update}
    #log to console            Last Update Details: ${date}
    unselect checkbox         ${Needing Intro Call}

    # Needs Modem Activation#################
    select checkbox           ${Needs Modem Activation}
    click button              ${Filter Button}
    sleep                     2s
    ${count}=   get element count       ${Rows}
    log to console                  Needs Modem Activation Case Count: ${count}

    ${Status}=       get text         xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td[3]
    log to console                      Status=${Status}
    ${Opportunity}=     get text        xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td[2]
    log to console                      *******************************************
    log to console                      Opportunity Name=${Opportunity}
    log to console                      *******Opportunity Details********
    click element                       xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td[4]
    sleep                               3s
    ${Status}=       get text        xpath=//td[contains(text(),'In Progress')]
    log to console                      Status=${Status}
    ${stage}=      get text             xpath=//tr[5]//td[2]
    log to console                      Stage=${stage}
    ${Requested by date}=       get text        xpath=//tr[6]//td[2]
    log to console                        Requested by date=${Requested by date}
    ${Due date}=                get text        xpath=//tr[7]//td[2]
    log to console                        Due date=${Due date}
    log to console                      **********************************************
    click link                ${Salesforce Cases}

    sleep                     2s
    ${date}=    get text        ${Last Update}
    #log to console            Last Update Details: ${date}
    unselect checkbox         ${Needs Modem Activation}
    #### Site Ready For SRC #########################
    select checkbox           ${Site Ready For SRC}
    click button              ${Filter Button}
    sleep                     2s
    ${count}=   get element count   ${Rows}
    log to console                  Site Ready For SRC: ${count}

    ${Status}=       get text         xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td[3]
    log to console                      Status=${Status}
    ${Opportunity}=     get text        xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td[2]
    log to console                      *******************************************
    log to console                      Opportunity Name=${Opportunity}
    log to console                      *******Opportunity Details********
    click element                       xpath=//table[contains(@class,'mat-elevation-z5 mdc-table')]//tbody//tr[1]/td[4]
    sleep                               3s
    ${In Progress_state}=       get text        xpath=//td[contains(text(),'In Progress')]
    log to console                      State=${In Progress_state}
    ${stage}=      get text             xpath=//tr[5]//td[2]
    log to console                      Stage=${stage}
    ${Requested by date}=       get text        xpath=//tr[6]//td[2]
    log to console                        Requested by date=${Requested by date}
    ${Due date}=                get text        xpath=//tr[7]//td[2]
    log to console                        Due date=${Due date}
    log to console                      **********************************************
    click link                ${Salesforce Cases}
    sleep                     2s
    unselect checkbox         ${Site Ready For SRC}
    click button              ${Filter Button}
    unselect checkbox         ${Needing Intro Call}
    unselect checkbox         ${Needs Modem Activation}
    unselect checkbox         ${Site Ready For SRC}
    ###### Digest service cases###############
    click button              ${Get Button}
    sleep                     2s
    ${rows_count}=   get element count   ${Rows}
    log to console            Digest service cases: ${rows_count}
    #${row_data}=  get text         ${Rows}
    #log to console  ${row_data}
    ${col_count}=            get element count   ${Cols}
    log to console            Column count: ${col_count}
    sleep                     2s
    ${date}=  get text        ${Last Update}
    log to console            Last Update Details: ${date}
