*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/ReportsPage/Resources/Common.robot
Resource  ../../../TestCases/ReportsPage/Resources/SRCReportDifference.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Validation Test For SRC Report Difference
    [Documentation]  Validation Test For SRC Report Difference
    #[Tags]    Smoke
    Login With Valid Credentials
    SRC Report Difference Validation
