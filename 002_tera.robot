*** Settings ***
Library    SeleniumLibrary
Library    TestRobot.py
Documentation    Template robot suite

*** Variables ***
${browser}    Chrome
${test_page}    https://practicetestautomation.com/practice-test-login/
*** Test Cases ***

Test Page Validity test page 2
   [Documentation]    Testing the Login
    ${user}    ${pass} =    Connect To Python
    # ${dir} =    Current Directory
    # Create Webdriver    ${browser}     executable_path=${dir}
    # Open Browser    ${test_page}    ${browser} 
    Sleep    5s

Test Login 2nd test file
    [Documentation]    Testing the Login 2
    ${user}    ${pass} =    Connect To Python
    # Create Webdriver    ${browser}     executable_path="./chromedriver.exe"
    # Open Browser    ${test_page}    ${browser} 
    # Click Element    xpath://*[@id="username"]
    # Input Text    //*[@id="username"]    student
    Input Text    //*[@id="username"]    ${user}

    # Input Text    //*[@id="password"]    Password123
    Input Text    //*[@id="password"]    ${pass}

    Click Element    //*[@id="submit"]
    Sleep    5s

*** Keywords ***

