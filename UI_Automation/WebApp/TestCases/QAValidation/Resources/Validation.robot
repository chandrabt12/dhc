*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library  RequestsLibrary

Resource  ../Resources/PO/AutomaticallyUserLogin.robot
Resource  ../Resources/PO/LoginWithValidCredentials.robot
Resource  ../Resources/PO/NavigationToLoginPage.robot


*** Keywords ***
Navigation To Login Page
    NavigationToLoginPage.Load
    NavigationToLoginPage.Verify Page Loaded

Login With Valid Credentials
    LoginWithValidCredentials.Login

Submit Credentials
    LoginWithValidCredentials.Submit Credentials

Confirm Valid Credentials
    LoginWithValidCredentials.Verify User Logged In

Check If Active User Automatically Login Into An App
    AutomaticallyUserLogin.Check Token