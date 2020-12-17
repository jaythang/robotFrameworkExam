*** Settings ***
Documentation     A test suite with a single test for ToolsQA
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3
${Device_Path}      C:\\Users\\thang\\Documents\\Morrissey_crop_tie.jpg

*** Test Cases ***
ToolsQA test
    Open Browser    https://demoqa.com/automation-practice-form    ${BROWSER}
    Input Text    //input[@id="firstName"]    32
    Input Text    //input[@id="lastName"]    432
    Input Text    //input[@id="userEmail"]    fsdfds@emauil.com
    Click Element    //label[@for="gender-radio-1"]
    Input Text    //input[@id="userNumber"]    4343242342
    Click Element    //label[@for="hobbies-checkbox-2"]
    Click Element    //label[@for="hobbies-checkbox-1"]
    Click Element    //label[@for="hobbies-checkbox-3"]
    Click Element    //div[@class="subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3"]
    Input Text    //input[@id="subjectsInput"]    23423432
    Input Text    //textarea[@id="currentAddress"]    rewrwe
    Choose File    //input[@id="uploadPicture"]    ${Device_Path}
    Click Element    //button[@id="submit"]
    Click Element    //button[@id="closeLargeModal"]

    Close Browser
