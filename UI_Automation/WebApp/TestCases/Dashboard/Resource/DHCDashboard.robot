*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/Dashboard/Resource/PO/DHCPage.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Validation of Cases Upcoming DHC
    DHCPage.Upcoming DHC

Validation of Cases DHC's In Progress
    DHCPage.DHC's In Progress

Validation of Cases DHC’s ready for Review
    DHCPage.DHC’s ready for Review

Validation of Recent Backup Events
    DHCPage.Recent Backup Events

