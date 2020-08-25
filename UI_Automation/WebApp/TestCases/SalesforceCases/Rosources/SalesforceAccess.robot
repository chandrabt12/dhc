*** Settings ***
Resource    ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource    ../../../TestCases/SalesforceCases/Rosources/PO/IDAndNameForSite.robot
Resource    ../../../TestCases/SalesforceCases/Rosources/PO/DisplayedSalesforceCases.robot
Resource    ../../../TestCases/SalesforceCases/Rosources/PO/InfoOnSiteDetailsPage.robot



*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Search Site Using ID And Name
   IDAndNameForSite.Search Site
Salesforce cases visability
    DisplayedSalesforceCases.Dispayed Cases Safelesforce Cases page
Site detail page access
    InfoOnSiteDetailsPage.Site details page can access information on salesforce

