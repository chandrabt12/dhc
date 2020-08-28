*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/Dashboard/Resource/Common.robot
Resource  ../../../TestCases/Dashboard/Resource/DetailsPage.robot


Test Setup          Begin Web Test
Suite Teardown      End Web Test

*** Test Cases ***
TC_Execution details page
         [Documentation]  Validation for execution details page
         #[Tags]  Smoke
         Login With Valid Credentials
         Details Page
         