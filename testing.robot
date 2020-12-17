*** Settings ***
Documentation     A test suite with a single test for ToolsQA
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
ToolsQA test
    Open Browser    https://demoqa.com/automation-practice-form    ${BROWSER}
    Input Text    //input[@id="firstName"]    name
    Input Text    //input[@id="lastName"]    test
    Input Text    //input[@id="userEmail"]    nametest

    Close Browser