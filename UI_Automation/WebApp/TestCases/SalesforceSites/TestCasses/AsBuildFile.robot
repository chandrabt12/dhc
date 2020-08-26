*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SalesforceSites/Resorces/Common.robot
Resource  ../../../TestCases/SalesforceSites/Resorces/AsBuildFile.robot

Test Setup     Begin Web Test
Test Teardown  End Web Test


*** Test Cases ***
TC_Validation of Salesforce Site Page
    [Documentation]  Validation of AsBuild Functionality
    #[Tags]  Smoke
    Login With Valid Credentials
    As Build Validation
