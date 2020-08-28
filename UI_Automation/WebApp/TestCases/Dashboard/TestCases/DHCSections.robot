*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/Dashboard/Resource/Common.robot
Resource  ../../../TestCases/Dashboard/Resource/DHCSections.robot



Test Setup          Begin Web Test
Suite Teardown      End Web Test


*** Test Cases ***
TC_Dashboard_Sections
        [Documentation]  Validate DHC Sections
        # [Tags]  Smoke
        Login With Valid Credentials
        Create Schedule List
        Validation of Upcoming DHCs section
        Validation of DHCs ready for review section
        Validation of Cases needing intro call
        Validation of Cases needing Modem Activation
        Validation of Sites ready for SRC