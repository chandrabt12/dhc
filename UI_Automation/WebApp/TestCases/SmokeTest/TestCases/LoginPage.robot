*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SmokeTest/Resources/Common.robot
Resource  ../../../TestCases/SmokeTest/Resources/SmokeLoginPage.robot



Test Setup        Begin Web Test
Suite Teardown    End Web Test


*** Test Cases ***
SmokeTest: Login with Valid credentials
    [Documentation]  Verify login page creadentials
    [Tags]  Smoke
    Login With Valid Credentials
    Confirm Valid Credentials
    Logout
    #valid
#    Login With Invalid Credentials
#    Confirm Invalid Credentials






