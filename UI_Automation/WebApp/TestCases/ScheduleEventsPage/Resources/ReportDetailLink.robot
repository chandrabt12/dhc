*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/ValidaionOfReportDetailLink.robot

*** Keywords ***
Login With Valid Credentials
    LoginWithValidCredentials.Login
Validaion Of Report Detail Link In Scheduled Event Page
    ValidaionOfReportDetailLink.Validaion Report Detail Link In Scheduled Event Page


