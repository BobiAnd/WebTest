*** Settings ***
Documentation                                   Login to hej albert to all countrys
Library                                         SeleniumLibrary
#Suite Teardown                                  Delete All Cookies
#Resource                                       Resources/setup_keywords.robot
#Resource	                                    Resources/login_variables.robot
Test Setup                                      Hejalbert Website Is Open
Test Teardown                                   Close Browser

*** Variables ***
${BROWSER}                                     safari
${SWE_URL}                                      https://albert-website.hejalbert.se/
${NOR_URL}                                      https://albert-website.heialbert.no/
${POL_URL}                                      https://albert-website.hejalbert.pl/
${DK_URL}                                       https://albert-website.hejalbert.dk/
${UK_URL}                                       https://albert-website.hialbert.co.uk/
${DE_URL}                                       https://albert-website.hialbert.de/
${USERNAME} =  bobi@hejalbert.se
${PASSWORD} =  test1234
${WEBPASSWORD}=  albert-admin
*** Test Cases ***

Test to login with valid credentials to Swedish account
    [Documentation]                 Login to hejalbert
    Bypass password protection page
    Wait Until Element Is Visible  //*[@id="home_bas_modal"]
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Bypass password protection page
    Wait Until Page Contains        Logga in på Föräldraportalen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Föräldrarapport
    element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Logga in på Föräldraportalen


Test to login with valid credentials to Norwegian account
    [Documentation]                 Login to Norwegian hejalbert
    Go to                           ${NOR_URL}
    Bypass password protection page
     wait until element is visible   /html/body/div/div/div[1]/h1
    input text                       /html/body/div/div/div[2]/form/input           ${WEBPASSWORD}
    Wait Until Element Is Visible     //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Bypass password protection page
    Wait until Page Contains        Logg inn på foreldreportalen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Foreldrerapport
    element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Logg inn på foreldreportalen

Test to login with valid credentials to Polish account
    [Documentation]                 Login to Polish hejalbert
    Go to                           ${POL_URL}
    Bypass password protection page
     wait until element is visible   /html/body/div/div/div[1]/h1
    input text                       /html/body/div/div/div[2]/form/input           ${WEBPASSWORD}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Bypass password protection page
    Wait Until Page Contains        Zaloguj się do Portalu rodzicielskiego
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Sprawozdanie dla rodzica
    element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Zaloguj się do Portalu rodzicielskiego

Test to login with valid credentials to Danish account
    [Documentation]                 Login to Danish hejalbert
    Go to                           ${DK_URL}
    Bypass password protection page
     wait until element is visible   /html/body/div/div/div[1]/h1
    input text                       /html/body/div/div/div[2]/form/input           ${WEBPASSWORD}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Bypass password protection page
    Wait until Page Contains        Log ind på forældreportalen
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[1]/div/input   ${USERNAME}
    Input Text                      //*[@id="root"]/div/div/div/form/div/label[2]/div/input   ${PASSWORD}
    Click Button                    //*[@id="root"]/div/div/div/form/button
    Wait Until Page Contains        Forældrerapport
    element should contain          //*[@id="root"]/header/div/div/div  ${USERNAME}
    Click Element                   //*[@id="root"]/header/div/div
    Click Element                   //*[@id="root"]/header/div/nav/ul/li[2]/a
    Wait Until Page Contains        Log ind på forældreportalen


Test to login with valid credentials to English account
    [Documentation]                 Login to English hejalbert
    Go to                           ${UK_URL}
    Bypass password protection page
     wait until element is visible   /html/body/div/div/div[1]/h1
    input text                       /html/body/div/div/div[2]/form/input           ${WEBPASSWORD}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Bypass password protection page
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
    Bypass password protection page
     wait until element is visible   /html/body/div/div/div[1]/h1
    input text                       /html/body/div/div/div[2]/form/input           ${WEBPASSWORD}
    Wait Until Element Is Visible   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Click Element                   //*[@id="__next"]/header[2]/nav[2]/ul/li[1]/a
    Bypass password protection page
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
   Set Window Size   1400  600

Bypass password protection page
     Wait until element is visible   xpath: //*[contains(text(), "Please enter your password to get access.")]
    Input text                      //html/body/div/div/div[2]/form/input           ${WEBPASSWORD}
    click button                   //html/body/div/div/div[2]/form/button