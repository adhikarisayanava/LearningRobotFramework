*** Settings ***
Resource   Calc_keywords.resource
#Suite Setup   Open Browser   ${url}   ${browser}
#Suite Teardown   Close Browser
#Test Setup   Open Browser   ${url}   ${browser}
#Test Teardown   Close Browser

*** Variables ***
${url}   http://hz4portal.labci.ecx.appdev.io/#/register
${browser}   chrome

*** Keywords ***

*** Test Cases ***
Test Calculator with BDD syntax
    [Tags]   Calculator  BDD   P0
    Given The calculator is running
    When The User Enters The Term "1 + 1"
    And The User Triggers The Calculation
    Then The Result Should Be "2"

