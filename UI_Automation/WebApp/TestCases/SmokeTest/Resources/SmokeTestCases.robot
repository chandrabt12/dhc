*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SmokeTest/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/SmokeTest/Resources/PO/SmokeTesting.robot
#Resource  ../Resources/PO/LoginWithValidCredentials.robot
#Resource  ../Resources/PO/SmokeTesting.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Validation of Cases Upcoming DHC
    SmokeTesting.Upcoming DHC

Validation of Cases DHC's In Progress
    SmokeTesting.DHC's In Progress

Validation of Cases DHC’s ready for Review
    SmokeTesting.DHC’s ready for Review

Validation of Recent Backup Events
    SmokeTesting.Recent Backup Events

