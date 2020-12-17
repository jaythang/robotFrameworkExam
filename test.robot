*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}      chrome
${url}      https://google.com 



*** Keywords ***
Go to google
    Open Browser    ${url}      ${browser}

*** Test Cases ***
Google Index
    Go to Google