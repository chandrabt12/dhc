*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/SalesforceCases/Rosources/PO/ValidationOfCaseListAndDetailsPage.robot

*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
ValidationOfCaseListPage
   ValidationOfCaseListAndDetailsPage.Case List Validation
ValidationOfCasesDetailsPage
    ValidationOfCaseListAndDetailsPage.Details Page Validaton
