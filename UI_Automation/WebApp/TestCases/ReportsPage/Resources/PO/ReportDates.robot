*** Settings ***
Library  SeleniumLibrary
Library  DateTime


*** Variables ***
${Reports}                  reports
${Date}                     14.02.2020


*** Keywords ***
Dates Of Report
    set selenium speed                              1s
    wait until page contains                        Reports
    click link                                      ${Reports}
    ${CurrentDate}    get current date              result_format=%d-%m-%Y
    ${Equal}=  should not be equal as strings       ${Date}  ${CurrentDate}
    log to console                                  ${Equal}