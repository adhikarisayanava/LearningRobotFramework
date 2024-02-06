*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://demo.nopcommerce.com/


*** Test Cases ***
Testing Input Box
     log to console   This is prepaid recharge testcase
#    [Tags]    DEBUG
#    open browser   ${url}   ${browser}
#    maximize browser window
#    title should be   nopCommerce demo store
#    click link   xpath://a[@class='ico-login']
#    ${"email_txt"}   Set variable   id:Email
#    element should be visible   ${"email_txt"}
#    element should be enabled   ${"email_txt"}
#    input text   ${"email_txt"}   sayanava.adhikari19@gmail.com
#    sleep  5s
#    clear element text    ${"email_txt"}
#    sleep  2s
#    close browser

*** Keywords ***
Provided precondition
    Setup system under test