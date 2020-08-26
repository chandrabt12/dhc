*** Settings ***
Library  SeleniumLibrary

Resource    ../../../TestCases/ScheduleEventsPage/Resources/Common.robot
Resource    ../../../TestCases/ScheduleEventsPage/Resources/ReportDetailLink.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Test title
    [Documentation]  Validation Of Report Detail Link In Scheduled Event Page
    #[Tags]    Smoke
    Login With Valid Credentials
    Validaion Of Report Detail Link In Scheduled Event Page
