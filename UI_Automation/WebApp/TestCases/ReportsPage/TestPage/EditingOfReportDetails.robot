*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/ReportsPage/Resources/Common.robot
Resource  ../../../TestCases/ReportsPage/Resources/EditingOfReportDetails.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test



*** Test Cases ***
TC_Validation For Editing Of Report Details Page
    [Documentation]     Checking functionality for Report Details Page
    [Tags]              Smoke
    Login With Valid Credentials
    Validation For Editing Report Details Page



