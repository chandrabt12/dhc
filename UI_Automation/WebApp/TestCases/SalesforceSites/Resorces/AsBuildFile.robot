*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/SalesforceSites/Resorces/PO/AsBuildValidation.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
As Build Validation
    AsBuildValidation.Validation Of As Build Functionality
