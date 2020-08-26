*** Settings ***
Library  SeleniumLibrary


Resource  ../../../TestCases/SalesforceCases/Rosources/ItemsValidation.robot
Resource  ../../../TestCases/SalesforceCases/Rosources/Common.robot


Test Setup     Begin Web Test
Test Teardown  End Web Test


*** Test Cases ***
Test Cases for items on page
    [Documentation]  Validation Of Items Per Page
    #[Tags]  Smoke
    Login With Valid Credentials
    Validation Items Per Page And Paged To The Next Section
