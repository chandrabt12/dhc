*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Home Button}                  link=DHC-Automation
${Review1}                      xpath=//div//td[3][contains(text(), "Site1")]
${Review2}                      xpath=//td[contains(.,'S0012')]
${Review3}                      xpath=//td[contains(.,'WS - Bethany Library')]
${Review4}                      xpath=//div[1]//div[2]//tr[1]//td[contains(.,'WS - First Energy Center for Advanced Energy')]
${Review5}                      xpath=//div//div//div[3]//td[contains(.,'WS - First Energy Center for Advanced Energy')]

*** Keywords ***
Upcoming DHCs section
    set selenium speed  2s
    set Selenium Implicit Wait      5s
    click link                    ${Home Button}
    #wait until element contains   ${Review1}            Site1
DHCs ready for review section
    set selenium speed  1s
    #wait until element contains   ${Review2}            S0012
Cases needing intro call section
    set selenium speed  1s
    #wait until element contains   ${Review3}            WS - Bethany Library
Cases needing Modem Activation
    set selenium speed  1s
    #wait until element contains   ${Review4}            WS - First Energy Center for Advanced Energy
Sites ready for SRC
    set selenium speed  1s
    #wait until element contains   ${Review5}            WS - First Energy Center for Advanced Energy