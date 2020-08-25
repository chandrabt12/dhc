*** Settings ***
Resource  ../../../TestCases/ScheduleEventsPage/Resources/Common.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/MultiScheduleCreation.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Validation of multi schedule creation, Creation Event with status "Failed" on the same day
    [Documentation]  Multi schedule creation validation
    [Tags]    Smoke
    Login With Valid Credentials
    Creation Event with status "Failed"
Validation of multi schedule creation, Creation Event with status "Succeeded" on the same day
    Login With Valid Credentials
    Creation Event with status "Succeeded"
Validation of multi schedule creation, Creation Event every another status a new event cannot be created on the same day
    Login With Valid Credentials
    Creation Event with another status