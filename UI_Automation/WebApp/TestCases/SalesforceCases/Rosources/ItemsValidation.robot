*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/SalesforceCases/Rosources/PO/ValidationOfSalesforceCasesAppearance.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Validation Items Per Page And Paged To The Next Section
    ValidationOfSalesforceCasesAppearance.Validation Of Items Per Page And Paged To The Next Section (Items Per Page 5)
    ValidationOfSalesforceCasesAppearance.Items Per Page 10
    ValidationOfSalesforceCasesAppearance.Items Per Page 25
    ValidationOfSalesforceCasesAppearance.Items Per Page 50
    ValidationOfSalesforceCasesAppearance.Items Per Page 100