*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/Dashboard/Resource/Common.robot
Resource  ../../../TestCases/Dashboard/Resource/DHCDashboard.robot



Test Setup          Begin Web Test
Suite Teardown      End Web Test

*** Test Cases ***
TC_Dashboard_Sections
        [Documentation]  Validate DHC Sections
        [Tags]  Smoke
        Login With Valid Credentials
        Validation of Cases Upcoming DHC
        Validation of Cases DHC's In Progress
        Validation of Cases DHC’s ready for Review
        Validation of Recent Backup Events

