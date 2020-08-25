*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/Dashboard/Resource/Common.robot
Resource  ../../../TestCases/Dashboard/Resource/SRCDashboard.robot



Test Setup          Begin Web Test
Suite Teardown      End Web Test


*** Test Cases ***
TC_Dashboard_Sections
        [Documentation]  Validate SRC Sections
        [Tags]  Smoke
        Login With Valid Credentials
        Validation of Cases needing intro call
        Validation of Cases needing Modem Activation
        Validation of Sites ready for SRC
        Validation of Next SRC Events
        Validation of Completed SRC Events