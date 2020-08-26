*** Settings ***
Library  SeleniumLibrary

Resource    ../../../TestCases/ScheduleEventsPage/Resources/Common.robot
Resource    ../../../TestCases/ScheduleEventsPage/Resources/CompletionOfScheduledEvent.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
TC_Vavidation For Completion of Schedule Events
    [Documentation]     Vavidation For Completion of Schedule Events
    #[Tags]    Smoke
    Login With Valid Credentials
    Manual Completion Of Scheduled Event

