*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/RedirectSRCEventsToReportsPage.robot


*** Keywords ***
Login With Valid Credentials
    LoginWithValidCredentials.Login
Redirect SRC Events To Reports Page
    RedirectSRCEventsToReportsPage.Validation OF Redirect