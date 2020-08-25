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
    set selenium timeout      60s
    wait until page contains  Commercial Cloud Dashboard
    switch browser  2
    maximize browser window

End Web Test
   close all browsers