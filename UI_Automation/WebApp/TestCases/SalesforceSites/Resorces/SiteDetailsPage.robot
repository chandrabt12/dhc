*** Settings ***
Library  SeleniumLibrary

Resource  ../../../TestCases/SalesforceSites/Resorces/PO/ValidationSiteDetails.robot

*** Keywords ***
Validation Of Site Details Page
    ValidationSiteDetails.Site Details Page Validation
    ValidationSiteDetails.Flyout Panel Validation
