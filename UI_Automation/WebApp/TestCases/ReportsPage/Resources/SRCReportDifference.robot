*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/ValidationForSRCReportDifference.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
SRC Report Difference Validation
   ValidationForSRCReportDifference.SRC Report Difference
