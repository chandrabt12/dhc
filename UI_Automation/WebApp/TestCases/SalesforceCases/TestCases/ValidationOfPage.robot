*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SalesforceCases/Rosources/Common.robot
Resource  ../../../TestCases/SalesforceCases/Rosources/SalesforcePage.robot


Test Setup          Begin Web Test
Suite Teardown      End Web Test




*** Test Cases ***
TC_salesforce cases page
    [Documentation]  Validation for salesforce cases page
    [Tags]  Smoke
    Login With Valid Credentials
    ValidationOfSalesforceCasesPage

