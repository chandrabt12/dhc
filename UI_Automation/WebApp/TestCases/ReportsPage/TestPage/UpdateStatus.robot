*** Settings ***
Library  SeleniumLibrary

Resource    ../../../TestCases/ReportsPage/Resources/Common.robot
Resource    ../../../TestCases/ReportsPage/Resources/UpdateStatus.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Validate that each status can be selected in the report page and updated status displayed
    [Documentation]  Validate that each status can be selected in the report page and updated status displayed
    #[Tags]    Smoke
    Login With Valid Credentials
    Updating Status In Report Page
