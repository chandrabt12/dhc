*** Settings ***
Library     SeleniumLibrary


Resource  ../../../TestCases/LoginPage/Resources/PO/LoginWithValidCredentials.robot
Resource  ../../../TestCases/DateTImeValidation/Resources/PO/ValidationOfDateTimeChanges.robot

*** Keywords ***
Login With Valid Credentials
   LoginWithValidCredentials.Login
Validation For Date Time Changes
    ValidationOfDateTimeChanges.Validation Of Date Time Changes For DHC
    ValidationOfDateTimeChanges.Validation Of Date Time Changes For SRC
    ValidationOfDateTimeChanges.Validation Of Date Time Changes For Schedule Event