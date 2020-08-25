*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SalesforceCases/Rosources/Common.robot
Resource  ../../../TestCases/SalesforceCases/Rosources/CaseListAndDetailsPage.robot

Test Setup          Begin Web Test
Suite Teardown      End Web Test



*** Test Cases ***
TC_Details And Case Liss Page
    [Documentation]  Validation for Case List And Details Page
    [Tags]    Smoke
    Login With Valid Credentials
    ValidationOfCaseListPage
    ValidationOfCasesDetailsPage