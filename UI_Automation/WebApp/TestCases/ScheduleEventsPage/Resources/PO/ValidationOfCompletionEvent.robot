*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Scheduled Events}             scheduledEvents
${Click On Details Button}      xpath=//button[contains(text(),'Details')]
${Complete Report}              xpath=//button[contains(@class,'btn btn-primary')]
${Choose DLM File}              xpath=//div[3]//input[1]
${Choose Info File}             xpath=//div[5]//input[1]
${Complete Event}               xpath=//button[text()='Complete Event']
${Status Header}                xpath=//p[contains(text(),'Created')]
${Status}                       xpath=//tr[1]//td[4]




*** Keywords ***
Complete Report Button
    set selenium speed                  2s
    Set Selenium Implicit Wait          5s
    click link                          ${Scheduled Events}
    wait until element contains         ${Status Header}    Created
    ${Status Header}=  get text         ${Status Header}
    run keyword if                      '${Status Header}' == 'Created'  click button  ${Click On Details Button}
    click button                        ${Complete Report}
    wait until element is enabled       ${Choose DLM File}
    choose file                         ${Choose DLM File}      ${CURDIR}\\SF123_Report.dlm
    wait until element is enabled       ${Choose Info File}
    choose file                         ${Choose Info File}     ${CURDIR}\\report.new.info
    click button                        ${Complete Event}
    click link                          ${Scheduled Events}
    element text should be              ${Status}               Succeeded



