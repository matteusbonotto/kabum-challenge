*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
First Test
    Open Browser    http://google.com    chrome
    Input Text    //*[@name='q']    Hi Google
    Sleep    3s
    Close Browser
