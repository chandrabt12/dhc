*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/Dashboard/Resource/PO/SRCPage.robot
Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Validation of Cases needing intro call
    SRCPage.Cases needing intro call section

Validation of Cases needing Modem Activation
    SRCPage.Cases needing Modem Activation

Validation of Sites ready for SRC
    SRCPage.Sites ready for SRC

Validation of Next SRC Events
    SRCPage.Next SRC Events

Validation of Completed SRC Events
    SRCPage.Completed SRC Events