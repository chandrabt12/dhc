*** Settings ***
Library  SeleniumLibrary

Resource   ../../../TestCases/ReportsPage/Resources/Common.robot
Resource   ../../../TestCases/ReportsPage/Resources/SRCReportComparison.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Test Cases For
    [Documentation]  Validation For SRC Report Comparison
    [Tags]    Smoke
    Login With Valid Credentials
    SRC Comparison


