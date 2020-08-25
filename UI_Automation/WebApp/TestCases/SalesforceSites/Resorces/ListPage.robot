*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/SalesforceSites/Resorces/PO/ListPageValidation.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
List Page Validation
    ListPageValidation.Salesforce Sites List Page Validation
#Validation Of Site Details Page
#    ValidationSiteDetails.Site Details Page Validation