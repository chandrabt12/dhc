*** Settings ***
Library  SeleniumLibrary


*** Variables ***
@{BROWSERS}             firefox  chrome
${URL}                  https://qa-swcoe-dhc-automation-web-app.azurewebsites.net/


*** Keywords ***
Begin Web Test
    FOR  ${Firefox Browser}  IN   @{BROWSERS}
       open browser               ${URL}  ${Firefox Browser}
    END
    set selenium timeout                30s
    set Selenium Implicit Wait          5s
    wait until page contains            Commercial Cloud Dashboard
    maximize browser window
    switch browser                      2

End Web Test
   close all browsers