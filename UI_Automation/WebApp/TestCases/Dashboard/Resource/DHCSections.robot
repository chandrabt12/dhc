*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/Dashboard/Resource/PO/Sections.robot
Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
#Resource  ../../../TestCases/ScheduleList/Resources/PO/CreateScheduleList.robot
Resource  ../../../TestCases/ScheduleEventsPage/Resources/PO/CreateScheduleList.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Create Schedule List
    CreateScheduleList.New Schedule

Validation of Upcoming DHCs section
    Sections.Upcoming DHCs section

Validation of DHCs ready for review section
    Sections.DHCs ready for review section

Validation of Cases needing intro call
    Sections.Cases needing intro call section

Validation of Cases needing Modem Activation
    Sections.Cases needing Modem Activation

Validation of Sites ready for SRC
    Sections.Sites ready for SRC