*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/FielsDownload.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/ReportDates.robot
Resource  ../../../TestCases/ReportsPage/Resources/PO/SearchFunction.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Validation Of Reports Page
    FielsDownload.Download Files
    ReportDates.Dates Of Report
    SearchFunction.Search Function
    

