*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/DateTImeValidation/Resources/Common.robot
Resource  ../../../TestCases/DateTImeValidation/Resources/DateTime.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test



*** Test Cases ***
TC_Validation Of Date Time Changes
    [Documentation]  Validation Of Date Time Changes
    [Tags]    Smoke
    Login With Valid Credentials
    Validation For Date Time Changes

