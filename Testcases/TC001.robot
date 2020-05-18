*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/TC_Resource1.robot

*** Variables ***
${url}  https://www.worldometers.info/coronavirus/country/india/
${Browser}  Chrome
*** Test Cases ***
TC_Test1
    open browser  ${url}  ${Browser}
    maximize browser window
    ${cases}=  get text  (//div[@class="maincounter-number"])[1]
    ${deaths}=  get text  (//div[@class="maincounter-number"])[2]
    ${recovered}=  get text  (//div[@class="maincounter-number"])[3]
    log to console  ${cases}
    log to console  ${deaths}
    log to console  ${recovered}
    update latest data  ${cases}  ${deaths}  ${recovered}
    close Browser
*** Keywords ***
