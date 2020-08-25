*** Settings ***

Resource    ../../../TestCases/SalesforceCases/Rosources/Common.robot
Resource    ../../../TestCases/SalesforceCases/Rosources/SalesforceAccess.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Scheduled event that have opportunity ids can be used to search for a site
    [Documentation]  check if pages can access salesforce information
    [Tags]    Smoke
    Login With Valid Credentials
    Search Site Using ID And Name
Salesforce cases page that cases can be displayed
    Login With Valid Credentials
    Salesforce cases visability
Access on site details page
    Login With Valid Credentials
    Site detail page access
