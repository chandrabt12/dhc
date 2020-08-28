*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SmokeTest/Resources/Common.robot
Resource  ../../../TestCases/SmokeTest/Resources/SmokeTestCases.robot
#Resource  ../../../TestCases/SmokeTest/Resources/SmokeLoginPage.robot


Test Setup          Begin Web Test
Suite Teardown      End Web Test

*** Test Cases ***
Smoke Test: Dashboard_Sections
        [Documentation]  Validate DHC Sections in Smoke Testing
        [Tags]  Smoke
        Login With Valid Credentials
        Validation of Cases Upcoming DHC
        Validation of Cases DHC's In Progress
        Validation of Cases DHC’s ready for Review
        Validation of Recent Backup Events


