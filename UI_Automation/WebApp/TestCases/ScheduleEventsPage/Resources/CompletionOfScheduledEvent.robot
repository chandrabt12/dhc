*** Settings ***
Library  SeleniumLibrary

Resource    ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource    ../../../TestCases/ScheduleEventsPage/Resources/PO/ValidationOfCompletionEvent.robot




*** Keywords ***
Login With Valid Credentials
    LoginWithValidCredentials.Login
Manual Completion Of Scheduled Event
    ValidationOfCompletionEvent.Complete Report Button
