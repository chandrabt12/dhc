*** Settings ***
Library  SeleniumLibrary


Resource    ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource    ../../../TestCases/ScheduleEventsPage/Resources/PO/ValidationForScheduleCreationRestriction.robot


*** Keywords ***
Login With Valid Credentials
    LoginWithValidCredentials.Login
Schedule Creation Restriction
    ValidationForScheduleCreationRestriction.Restriction Of Schedule Creation