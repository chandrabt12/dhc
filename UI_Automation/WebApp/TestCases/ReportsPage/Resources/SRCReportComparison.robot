*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/ValidationForSRCComparison.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
SRC Comparison
    ValidationForSRCComparison.SRC Report Comparison


