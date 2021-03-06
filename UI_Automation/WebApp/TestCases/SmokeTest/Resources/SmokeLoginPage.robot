*** Settings ***
Library  SeleniumLibrary


Resource  ../Resources/PO/LoginWithValidCredentials.robot
Resource  ../Resources/PO/LoginWithInvalidCredentials.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login

Confirm Valid Credentials
    LoginWithValidCredentials.Verify User Logged In

Logout
   LoginWithValidCredentials.Sign Out

Login With Invalid Credentials
  LoginWithInvalidCredentials.Login Wrong Credentials

Confirm Invalid Credentials
  LoginWithInvalidCredentials.Verify Invalid Credentials
