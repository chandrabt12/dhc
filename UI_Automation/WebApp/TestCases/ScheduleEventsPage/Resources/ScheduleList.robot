*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/CreateScheduleList.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/ViewScheduleList.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/DeleteCreatedSchedule.robot



*** Keywords ***
Login With Valid Credentials
    LoginWithValidCredentials.Login

Create Schedule List
    CreateSCheduleList.New Schedule

View Schedule List
     ViewScheduleList.Schedule Details

Delete Created Schedule
    DeleteCreatedSchedule.Remove New Schedule