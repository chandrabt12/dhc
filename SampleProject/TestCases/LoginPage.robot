*** Settings ***
Library  SeleniumLibrary

#esource  /WebApp/TestCases/LoginPage/Resources/Common.robot
#ResourceS  /WebApp/TestCases/LoginPage/Resources/LoginPage.robot

Resource  ../Resources/Common.robot
Resource  ../Resources/LoginPage.robot

Test Setup        Begin Web Test
Suite Teardown    End Web Test


*** Test Cases ***
TC_001_Login with Valid credentials
    [Documentation]  Verify login page creadentials
    [Tags]  Smoke
    Login With Valid Credentials
    Confirm Valid Credentials
    #Logout
    #Login With Invalid Credentials
    #Confirm Invalid Credentials






