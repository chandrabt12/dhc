*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/Dashboard/Resource/PO/ValidationDetailsPage.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Details Page
    ValidationDetailsPage.Open Details Page And Download File
    ValidationDetailsPage.Validation Of Data On Schedule Execution Page
    ValidationDetailsPage.Validation Salesforce Number And Site