*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/RefreshPage/Recourses/PO/ValidationOfRefreshPage.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Refresh Pages
    ValidationOfRefreshPage.Refresh Pages Validation