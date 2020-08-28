*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/FlyoutPanel/Resources/Common.robot
Resource  ../../../TestCases/FlyoutPanel/Resources/FlyoutPanel.robot


Test Setup     Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
Test title
    [Documentation]  Validation Of FlyOut Panel Dissmissal
    #[Tags]    Smoke
    Login With Valid Credentials
    FlyOut Panel Dismissal

