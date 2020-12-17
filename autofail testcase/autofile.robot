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
    Maximize Browser Window
    Input Text    //input[@id="firstName"]    tester
    Input Text    //input[@id="lastName"]    terstes
    click    //button[@id="submit"]

    Close Browser
