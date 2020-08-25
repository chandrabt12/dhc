*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/ReportsPage/Resources/Common.robot
Resource  ../../../TestCases/ReportsPage/Resources/ReportsListValidation.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test


*** Test Cases ***
Test Cases For Reports List
    [Documentation]   Validation Of Reports Page
    [Tags]  Smoke
    Login With Valid Credentials
    Validation Of Reports Page



