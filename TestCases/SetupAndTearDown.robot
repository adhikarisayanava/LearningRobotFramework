*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Suite Setup   log to console    Opening browser
Suite Teardown   log to console   Closing Browser

Test Setup   log to console   Logging into application
Test Teardown   log to console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    [Tags]  Sayanava
    log to console   This is prepaid recharge testcase

TC2 Postpaid Recharge
    [Tags]  Adhikari
    log to console   This is postpaid recharge testcase

TC3 Sayanava CICD
    [Tags]  Adhikari
    log to console   Sayanava testing CICD pipeline