*** Settings ***
Documentation     A test suite with a single test for ToolsQA
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
ToolsQA test
[Setup]  Run Keywords  Open Browser  https://demoqa.com/automation-practice-form  ${BROWSER}
...              AND   Set Selenium Speed  ${SELSPEED}
Maximize Browser Window
# open    https://demoqa.com/automation-practice-form
    Click Element    //button[@id="submit"]
    Input Text    //input[@id="userEmail"]
    #Execute Javascript window.scrollTo(1078, 691);
    Set Focus To Element    //button[@id="submit"]
    click   //button[@id="submit"]
    Select From List By Value    //select[@class="react-datepicker__year-select"]    2005
    Click Element    //div[@class="react-datepicker__day react-datepicker__day--019"]
    #Execute Javascript window.scrollTo(1078, 691);
    Set Focus To Element    //button[@id="submit"]
    click   //button[@id="submit"]
    Click Element    //div[@class="subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3"]
    Choose File    //input[@id="uploadPicture"]    C:\fakepath\Dec 2020 Updated Resume.pdf
    #Execute Javascript window.scrollTo(1078, 691);
    Set Focus To Element    //button[@id="submit"]
    click   //button[@id="submit"]

    Close Browser
