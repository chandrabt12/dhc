*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/RefreshPage/Recourses/Common.robot
Resource  ../../../TestCases/RefreshPage/Recourses/RefreshPage.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Test Cases For Refresh Page Validation
    [Documentation]  Refresh Validation Of Each Page
    #[Tags]    Smoke
    Login With Valid Credentials
    Refresh Pages


