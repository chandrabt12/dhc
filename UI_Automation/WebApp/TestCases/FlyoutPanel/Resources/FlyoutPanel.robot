*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/FlyoutPanel/Resources/PO/ValidationOfFlyoutPanelDismissal.robot




*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
FlyOut Panel Dismissal
   ValidationOfFlyoutPanelDismissal.Flyout Panel Dismissal Validation
