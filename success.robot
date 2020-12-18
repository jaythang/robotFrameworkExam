*** Settings ***
Documentation     A test suite with a single test for ToolsQA
Library           Selenium2Library    timeout=10
Library           AutoItLibrary


*** Variables ***
${BROWSER}        chrome
${SLEEP}          3
${Device_Path}      C:\\Users\\thang\\Documents\\Morrissey_crop_tie.jpg

*** Test Cases ***
Submitting Correct Data information
    Open Browser    https://demoqa.com/automation-practice-form    ${BROWSER}
    Maximize Browser Window
    Input Text    //input[@id="firstName"]    rewrwr
    Input Text    //input[@id="lastName"]    werew
    Input Text    //input[@id="userEmail"]    email@mail.com
    Click Element    //label[@for="gender-radio-1"]
    Input Text    //input[@id="userNumber"]    3254545655
    Click Element    id=dateOfBirthInput
    Select From List By Value    //select[@class="react-datepicker__month-select"]    5
    Select From List By Value    //select[@class="react-datepicker__year-select"]    2008
    Click Element    //div[@class="react-datepicker__day react-datepicker__day--017"]
    Click Element    //label[@for="hobbies-checkbox-2"]
    Click Element    //label[@for="hobbies-checkbox-1"]
    Click Element    //label[@for="hobbies-checkbox-3"]
    Click Element    //div[@class="subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3"]
    Input Text    //input[@id="subjectsInput"]    23423432
    Choose File    //input[@id="uploadPicture"]     ${Device_Path}
    Input Text    //textarea[@id="currentAddress"]    blk 8 lot 332 Everywhere

    #Execute Javascript window.scrollTo(1078, 691);
    Set Focus To Element    //button[@id="submit"]
    Click Element    //button[@id="submit"]
    Click Element    //button[@id="closeLargeModal"]



    Close Browser
