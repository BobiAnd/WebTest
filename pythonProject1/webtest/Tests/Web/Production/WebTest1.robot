*** Settings ***
Documentation                                   Login to hej albert to all countrys
Library                                         SeleniumLibrary
#Suite Teardown                                 Delete All Cookies
#Resource                                       Resources/setup_keywords.robot
#Resource	                                    Resources/login_variables.robot
Test Setup                                      Hejalbert Website Is Open
Test Teardown                                   Close Browser

*** Variables ***
${BROWSER}                                      headlesschrome
${SWE_URL}                                      https://hejalbert.se/
${NOR_URL}                                      https://heialbert.no/
${POL_URL}                                      https://hejalbert.pl/
${DK_URL}                                       https://hejalbert.dk/
${UK_URL}                                       https://hialbert.co.uk/
${DE_URL}                                       https://hialbert.de/
${USERNAME}                                     bobi@hejalbert.se
${PASSWORD}                                     test1234

*** Test Cases ***

Test to login with valid credentials to Swedish account
    [Documentation]                 Login to hejalbert
    Wait Until Element Is Visible   //*[@id="home_bas_modal"]
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Wait Until Page Contains        Logga in på Föräldraportalen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Föräldrarapport
    Element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Logga in på Föräldraportalen


Test to login with valid credentials to Norwegian account
    [Documentation]                 Login to Norwegian hejalbert
    Go to                           ${NOR_URL}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Wait until Page Contains        Logg inn på foreldreportalen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Foreldrerapport
    Element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Logg inn på foreldreportalen

Test to login with valid credentials to Polish account
    [Documentation]                 Login to Polish hejalbert
    Go to                           ${POL_URL}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Wait Until Page Contains        Zaloguj się do Portalu rodzicielskiego
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Sprawozdanie dla rodzica
    Element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Zaloguj się do Portalu rodzicielskiego

Test to login with valid credentials to Danish account
    [Documentation]                 Login to Danish hejalbert
    Go to                           ${DK_URL}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Wait until Page Contains        Log ind på forældreportalen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Forældrerapport
    Element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Log ind på forældreportalen


Test to login with valid credentials to English account
    [Documentation]                 Login to English hejalbert
    Go to                           ${UK_URL}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Wait Until Page Contains        Log in to the Parent Portal
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Parental report
    Element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Log in to the Parent Portal

Test to login with valid credentials to German account
    [Documentation]                 Login to German hejalbert
    Go to                           ${DE_URL}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Wait until Page Contains        Im Elternportal einloggen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Elternbericht
    Element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Im Elternportal einloggen

*** Keywords ***
Hejalbert Website Is Open
    Open Browser                        ${SWE_URL}     ${BROWSER}
   # Maximize Browser Window
   Set Window Size   1400  600