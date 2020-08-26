*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/ScheduleEventsPage/Resources/Common.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/ScheduleCreationRestriction.robot


Test Setup     Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
 Validation For Schedule Creation Restriction
    [Documentation]  Validation For Schedule Creation Restriction
    #[Tags]    Smoke
    Login With Valid Credentials
    Schedule Creation Restriction

