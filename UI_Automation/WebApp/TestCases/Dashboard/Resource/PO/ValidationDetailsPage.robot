*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Scheduled Events}             scheduledEvents
${Details Button}               xpath=//tr[1]//button[1][contains(.,'Details')]
#${Details Button_2}             xpath=//tr[3]//button[1][contains(.,'Details')]
#${Download Button}              xpath=//tr[1]//button[1]
${Download Button}              xpath=//tr[1]//td[2]//button[1]//div[1]

#${Donwload Button_2}            xpath=//tr[2]//td[2]//button[1]
${Donwload Button_2}            xpath=//tr[2]//td[2]//button[1]//div[1]
${List Data}                    xpath=//table[@class='table w-50']//td[2]
${Field_1}                      xpath=//table[@class='table w-50']//tr[1]//td[2]
${Field_2}                      xpath=//table[@class='table w-50']//tr[2]//td[2]
${Failed_status}                //tr[8]//td[2]//p[1]
${Failed_text}                  Failed



*** Keywords ***
Open Details Page And Download File
    set selenium speed  2s
    set Selenium Implicit Wait      5s
    click link        ${Scheduled Events}
    wait until page contains  Event type
#    wait until page contains  Event type
#    click button      ${Details Button}
#    click button      ${Download Button}
#    click button      ${Donwload Button_2}

Validation Of Data On Schedule Execution Page
    click link        ${Scheduled Events}
    set Selenium Implicit Wait      5s
    click button      ${Details Button}
    wait until page contains  File Uploaded
    ${count}=  get text          ${List Data}
    ${count}=  log to console    ${count}
Validation Salesforce Number And Site
    click link        ${Scheduled Events}
    set Selenium Implicit Wait      5s
    click button      ${Details Button}
    get text          ${Field_1}
    get text          ${Field_2}
    ${Equal}=  should not be equal as strings   ${Field_1}    ${Field_2}
    ${Equal}=  log to console                   ${Field_1}    ${Field_2}

Status Failed
    log to console      EventType is Failed status
    close browser

Status Succeed
      click button      ${Details Button}
      click button      ${Download Button}
      click button      ${Donwload Button_2}
