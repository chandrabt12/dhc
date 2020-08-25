*** Settings ***
Library  SeleniumLibrary

Resource    ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource    ../../../TestCases/ReportsPage/Resources/PO/ValidationOfStatusUpdate.robot


*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Updating Status In Report Page
    ValidationOfStatusUpdate.Status Update In Repoerts Page