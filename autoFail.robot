*** Settings ***

Library    Selenium2Library
Library           AutoItLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s
${Device_Path}      C:\\Users\\thang\\Documents\\Morrissey_crop_tie.jpg

*** Test Cases ***
Submit form with blank information
    [Setup]  Run Keywords  Open Browser  https://demoqa.com/automation-practice-form  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    Maximize Browser Window
    # open    https://demoqa.com/automation-practice-form

    #Execute Javascript window.scrollTo(1078, 691);
    Set Focus To Element    //button[@id="submit"]
    Click Element   //button[@id="submit"]


    ${present}=      Run Keyword And Return Status    Element Should Be Visible     class="modal-dialog modal-lg"


    Run keyword if     ${present}==False      fail         Incomplete Form


    Close BROWSER

Submit form with no name

    [Setup]  Run Keywords  Open Browser  https://demoqa.com/automation-practice-form  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    Maximize Browser Window
    # open    https://demoqa.com/automation-practice-form
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
    Click Element   //button[@id="submit"]


    ${present}=      Run Keyword And Return Status    Element Should Be Visible     class="modal-dialog modal-lg"


    Run keyword if     ${present}==False      fail         First Name and Last Name Missing


    Close BROWSER

Submit form with invalid email

        [Setup]  Run Keywords  Open Browser  https://demoqa.com/automation-practice-form  ${BROWSER}
        ...              AND   Set Selenium Speed  ${SELSPEED}
        Maximize Browser Window
        # open    https://demoqa.com/automation-practice-form
        Input Text    //input[@id="firstName"]    rewrwr
        Input Text    //input[@id="lastName"]    werew
        Input Text    //input[@id="userEmail"]   123435
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
        Click Element   //button[@id="submit"]


        ${present}=      Run Keyword And Return Status    Element Should Be Visible     class="modal-dialog modal-lg"


        Run keyword if     ${present}==False      fail         Invalid Email


        Close BROWSER







*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
