*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/ScheduleEventsPage/Resources/Common.robot
Resource  ../../../TestCases/ReportsPage/Resources/RedirectSRCEvent.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Test Cases For Redirect SRC Events
    [Documentation]  Validation Of Redirect SRC Events
    [Tags]  Smoke
    Login With Valid Credentials
    Redirect SRC Events To Reports Page



