*** Settings ***
# Documentation  Login Functionality
Library  SeleniumLibrary

Library    ../TestRobot.py

# Library    XML
# Library    Process
# Library    Collections
# Library    ../Helper_Functions/Helpfunction.py


*** Variables ***
${browser}    headlessChrome
${test_page}    https://practicetestautomation.com/practice-test-login/
# *** Variables ***

# ${sum_of_price_from_table}
# ${number_of_users}
# ${initial_rows}
# ${relief_statement}
# ${api_relief_summary_heroes}
# ${api_relief_summary_total_relief}
# ${rounded_total_database_relief}
# ${initial_number_of_heroes}
# ${subsequent_number_of_heroes}
# ${filename}
# ${national_id}
# @{nat_id_list}
# ${hero_relief_from_table}
# ${total_hero_relief_calculation}
# ${total_db_calculation}
# ${UploadFile}    r"/uploadFile.csv"
# ${Invalid_Non_CSV_Excel_File}    r"/invalidNonCsvExcel.xlsx"
# ${Non_Existing_CSV}    r"/non_existing_check.csv"
# ${FE_Zero_Relief_1_Person_Check}    r"/Zero_Relief_1_person_FE_Clark_check.csv"
# ${API_Zero_Relief_1_Person_Check}    r"/Zero_Relief_1_person_API_Clark_check.csv"
# ${FE_Zero_Relief_2_Person_Check}    r"/Zero_Relief_2_person_FE_Clark_check.csv"
# ${API_Zero_Relief_2_Person_Check}    r"/Zero_Relief_2_person_API_Clark_check.csv"
# ${Retrival_Zero_Relief_1_Person_Check}    r"/Zero_Relief_1_person_Bookeeper_Retrival_Check.csv"

*** Keywords ***

Open Website Of Whatever Project

    Open Browser  ${test_page}  ${browser}


# Get Users From Database

#     Run Process    curl 'http://localhost:8080/calculator/taxRelief'

# Calculate Total Price From Table
        
#         ${init_table}=    SeleniumLibrary.Get Element Count    xpath://*[@id="contents"]/div[2]/table/tbody/tr
#         @{PriceList}=    Create List

#         FOR    ${index}    IN RANGE    1    ${init_table}+1

#             ${var} =    Get Text    xpath://*[@id="contents"]/div[2]/table/tbody/tr[${index}]/td[2]
#             Append To List    ${PriceList}    ${var}    
        
#         END

#         ${sum_of_price_from_table} =    Set Variable    ${0.00}
        
#         FOR    ${element}    IN    @{PriceList}

#             ${inidcated} =    Set Variable    ${element}
#             ${sum_of_price_from_table} =    Evaluate    ${sum_of_price_from_table}+${inidcated}
        
#         END

#         Set Global Variable    ${sum_of_price_from_table}

# Get Number Of Heroes

#     ${number_of_users} =    Helpfunction.get_number_of_users

#     Set Global Variable    ${number_of_users}

# Count Rows In Table
    
#     ${initial_rows}=    SeleniumLibrary.Get Element Count    xpath://*[@id="contents"]/div[2]/table/tbody/tr
    
#     Set Global Variable    ${initial_rows}

# Get Initial Financial Relief Summary Statement

#         Wait Until Element Is Visible     xpath://*[@id="contents"]/div[2]/div/p
#         ${relief_statement} =    Get Text    xpath://*[@id="contents"]/div[2]/div/p

#         Set Global Variable    ${relief_statement}


# Get Subsequent Financial Relief Summary Statement

#         Wait Until Element Is Visible     xpath://*[@id="contents"]/div[3]/div/p
#         ${relief_statement} =    Get Text    xpath://*[@id="contents"]/div[3]/div/p

#         Set Global Variable    ${relief_statement}

# Get Financial Summary For Number Of Heroes From Api

#         ${api_relief_summary_heroes} =    Helpfunction.curl_get_relief_summary_users

#         Set Global Variable    ${api_relief_summary_heroes}


# Get Financial Summary For Total Relief From Api

#         ${api_relief_summary_total_relief} =    Helpfunction.Curl Get Relief Summary Relief

#         Set Global Variable    ${api_relief_summary_total_relief}


# Get Database Rounded Sum Of Relief

#     ${total_database_relief}=    Helpfunction.get_total_relief
#     ${rounded_total_database_relief} =    Helpfunction.round_to_2_dp  ${total_database_relief}

#     Set Global Variable    ${rounded_total_database_relief}

# Click On Refresh Tax Relief Table Button

#     Click Element    xpath://*[@id="contents"]/button[1]



# Click On Dispense Now Button

#     Click Element    xpath://*[@id="contents"]/a[2]

# Set Initial Number Of Heroes

#     Get Number Of Heroes
#     ${initial_number_of_heroes}    Set Variable    ${number_of_users}

#     Set Global Variable    ${initial_number_of_heroes}

# Set natid for person

#     Get Number Of Heroes
#     ${national_id} =  Helpfunction.create_national_id  ${initial_number_of_heroes}

#     Set Global Variable    ${national_id}

# Set Subsequent Number Of Heroes

#     Get Number Of Heroes
#     ${subsequent_number_of_heroes}    Set Variable    ${number_of_users}

#     Set Global Variable    ${subsequent_number_of_heroes}

# Sending Files Through FE

#     ${full_filename} =  Helpfunction.working_directory  ${filename}

#     Choose File    xpath://*[@id="contents"]/div[1]/div[2]/input    ${full_filename}

# Check For Valid Added National ID

#     Wait Until Element Is Visible    xpath://*[@id="contents"]

#     Table Column Should Contain    xpath://*[@id="contents"]    1    ${national_id}

# Check For Non Valid Not Added National ID

#     Wait Until Element Is Visible    xpath://*[@id="contents"]

#     ${non_exist}    Set Variable    ${True}
        
#     FOR    ${index}    IN RANGE    1    ${subsequent_number_of_heroes}+1

#         ${natid_from_FE_Table} =    Get Text    xpath://*[@id="contents"]/div[2]/table/tbody/tr[${index}]/td[1]
#         ${check_id_match} =    Helpfunction.check_two_national_id  ${national_id}  ${natid_from_FE_Table}

#         IF    ${check_id_match} 

#             ${non_exist}    Set Variable    ${False}

#         END
 
#     END
#     IF    ${non_exist} == ${False}

#         Fail

#     END

# Get Browser Console Log Entries

#     ${selenium}=    Get Library Instance    SeleniumLibrary
#     ${webdriver}=    Set Variable     ${selenium._drivers.active_drivers}[0]
#     ${log entries}=    Evaluate    $webdriver.get_log('browser')

#     [Return]    ${log entries}

# Check NatIds Exist in Table

#    FOR    ${nat_id}    IN    @{nat_id_list}

#         ${national_id}    Set Variable    ${nat_id}
#         Set Global Variable    ${national_id}
#         Check For Valid Added National ID
        
#     END

# Get Hero Relief From Table

#     FOR    ${index}    IN RANGE    1    ${subsequent_number_of_heroes}+1

#         ${natid_from_FE_Table} =    Get Text    xpath://*[@id="contents"]/div[2]/table/tbody/tr[${index}]/td[1]
#         ${check_id_match} =    Helpfunction.check_two_national_id  ${national_id}  ${natid_from_FE_Table}

#         IF    ${check_id_match} 

#             ${hero_relief_from_table} =    Get Text    xpath://*[@id="contents"]/div[2]/table/tbody/tr[${index}]/td[2]

#         END
 
#     END

#     Set Global Variable    ${hero_relief_from_table}

# Calculate Specific Heroes Hero Relief From Table

#     ${total_hero_relief_calculation}    Set Variable    ${0}

#     FOR    ${index}    IN RANGE    1    ${subsequent_number_of_heroes}+1

#         ${natid_from_FE_Table} =    Get Text    xpath://*[@id="contents"]/div[2]/table/tbody/tr[${index}]/td[1]
        
#            FOR    ${nat_id}    IN    @{nat_id_list}

#                 ${national_id}    Set Variable    ${nat_id}
#                 ${check_id_match} =    Helpfunction.check_two_national_id  ${national_id}  ${natid_from_FE_Table}

#                 IF    ${check_id_match}

#                     ${hero_relief_from_table} =    Get Text    xpath://*[@id="contents"]/div[2]/table/tbody/tr[${index}]/td[2]
#                     ${total_hero_relief_calculation}=    Evaluate    ${total_hero_relief_calculation}+${hero_relief_from_table}

#                 END
        
#             END
#     END

#     Set Global Variable    ${total_hero_relief_calculation}

# Calculate Specific Heroes Relief From Database

#     ${total_db_calculation}    Set Variable    ${0}

#     FOR    ${nat_id}    IN    @{nat_id_list}

#         ${db_relief} =    Helpfunction.get_total_user_relief  ${nat_id}
#         ${total_db_calculation}=    Evaluate    ${total_db_calculation}+${db_relief}

#     END

#     Set Global Variable    ${total_db_calculation}