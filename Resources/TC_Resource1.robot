*** Settings ***
Library  ../PyLibrary/Lib1.py
*** Variables ***
*** Keywords ***
update latest data
    [arguments]  ${cases}  ${deaths}  ${recovered}
    update_covid_data  ${cases}  ${deaths}  ${recovered}

