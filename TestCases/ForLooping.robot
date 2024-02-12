*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
${browser}   chrome
${url}   https://demo.nopcommerce.com/

*** Test Cases ***
#ForLoopTesting
#    FOR   ${i}   IN    1  2  3  4  5  6  7  8  9  10
#       log to console   ${i}
#    END

ForLoopTestingwithList
    @{items}    create list  1  2  3  4  5
    FOR  ${i}   IN  @{items}
        log to console  ${i}
        exit for loop if  ${i}==3
    END

