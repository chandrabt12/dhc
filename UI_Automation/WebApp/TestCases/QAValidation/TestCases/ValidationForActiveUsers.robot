*** Settings ***
Documentation  Suite description
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library  RequestsLibrary

Resource  ../../../TestCases/QAValidation/Resources/Common.robot
Resource  ../../../TestCases/QAValidation/Resources/Validation.robot

Test Setup        Begin Web Test
Suite Teardown    End Web Test


*** Test Cases ***
TC_001_Login with Valid credentials
    [Documentation]  Verify Token Validation
    #[Tags]  Smoke
    Login With Valid Credentials
    Confirm Valid Credentials
    Check If Active User Automatically Login Into An App
