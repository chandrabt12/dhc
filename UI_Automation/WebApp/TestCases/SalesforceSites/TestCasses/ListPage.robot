*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SalesforceSites/Resorces/Common.robot
Resource  ../../../TestCases/SalesforceSites/Resorces/ListPage.robot
Resource  ../../../TestCases/SalesforceSites/Resorces/SiteDetailsPage.robot


Test Setup      Begin Web Test
Test Teardown   End Web Test


*** Test Cases ***
TC_Validation Of Site Details Page
    [Documentation]  Validation Of Site Details Page
    [Tags]    Smoke
    Login With Valid Credentials
    List Page Validation
    Validation Of Site Details Page