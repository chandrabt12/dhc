*** Settings ***
Documentation    Validation Schedule list can be created, viewed, canceled and schedule details can be viewed
Library  SeleniumLibrary

Resource     ../../../TestCases/ScheduleEventsPage/Resources/ScheduleList.robot
Resource     ../../../TestCases/ScheduleEventsPage/Resources/Common.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
Test Cases For Schedule List
    [Tags]  Smoke
    Login With Valid Credentials
    Create Schedule list
    View Schedule list
    Delete Created Schedule