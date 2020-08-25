*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/ValidationOfScheduledEventsAppearance.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Validation Items Per Page And Paged To The Next Section
    ValidationOfScheduledEventsAppearance.Validation Of Items Per Page And Paged To The Next Section (Items Per Page 5)
    ValidationOfScheduledEventsAppearance.Items Per Page 10
    ValidationOfScheduledEventsAppearance.Items Per Page 25
    ValidationOfScheduledEventsAppearance.Items Per Page 50
    ValidationOfScheduledEventsAppearance.Items Per Page 100