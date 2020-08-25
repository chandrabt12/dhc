*** Settings ***
Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/MultiScheduleCreationValidation.robot



*** Keywords ***
Login With Valid Credentials
    LoginWithValidCredentials.Login
Creation Event with status "Failed"
    MultiScheduleCreationValidation.New Event with status "Failed"
Creation Event with status "Succeeded"
    MultiScheduleCreationValidation.Event with status "Succeeded"
Creation Event with another status
    MultiScheduleCreationValidation.Event with another status