*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/SalesforceCases/Rosources/PO/ValidationOfSalesforcePage.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
ValidationOfSalesforceCasesPage
    ValidationOfSalesforcePage.Salesforce Cases Page And Validation Of Data On It
    ValidationOfSalesforcePage.Validation Of Filters
