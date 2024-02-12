*** Settings ***
Documentation     This is a test suite for the https://opensource-demo.orangehrmlive.com/ website
Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${BROWSER}    Chrome

*** Test Cases ***
Valid Login
    [Documentation]    This is an example test case
    Open Browser To Login Page
    Input Username   Admin
    Input Password   admin123
    Submit Credentials   
    Welcome page should be open
    [Teardown]   Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser   ${URL}   Firefox

Input Username
    [Arguments]   ${username}
    Wait Until Page Contains Element   name=username   
    Input Text    name=username   ${username}   

Input Password
    [Arguments]   ${password}
    Input Text    name=password   ${password}  

Submit Credentials
    Click Button   xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button    

Welcome page should be open 
    Title Should Be    OrangeHRM