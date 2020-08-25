*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/ValidationForEditingOfReportDetails.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Validation For Editing Report Details Page
    ValidationForEditingOfReportDetails.Editing Of Report Details Page
