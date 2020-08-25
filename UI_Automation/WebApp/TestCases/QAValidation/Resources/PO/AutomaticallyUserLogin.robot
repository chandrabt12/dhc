*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BaseUrl}  https://localhost:44334/scheduledEvents
${token}  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwc2Jjc2Nsb3VkLXByb2QtZG90bmV0LWFwcC5henVyZXdlYnNpdGVzLm5ldCIsInN1YiI6InVzZXIvbmFtZW5hbWUxIiwidXNlcm5hbWUiOiJuYW1lbmFtZTEiLCJyZXN1bHQiOiJzdWNjZXNzIiwiaWF0IjoxNTcwMDIzMzc1LjAsImV4cCI6MTU3MDAyNjk3NS4wfQ.HJkHwIcDk2K9JXEafNRbGOPSLpPCFI_yXppyRxAr-9Q"


*** Keywords ***
Check Token
  create session  mysession  ${BaseUrl}
  ${responce}=  get request  mysession  /scheduledEvents/${token}
  log to console  ${responce.status_code}
