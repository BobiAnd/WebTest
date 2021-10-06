*** Settings ***
Documentation                                   open junior content
Library                                         SeleniumLibrary
#Suite Teardown                                 Delete All Cookies
#Resource                                       Resources/setup_keywords.robot
#Resource	                                    Resources/login_variables.robot
Test Setup                                      junior content Is Open
#Test Teardown                                  Close Browser

*** Variables ***
${BROWSER}                                      safari
${SWE_URL}                                      https://albert-junior-content-stage.hejalbert.se/
${ContentURL}                                   https://albert-junior-content-stage.hejalbert.se/content

*** Test Cases ***
Test open Junior content
    [Documentation]                             Opening browser and going to Junior web content
    Go to                                       ${SWE_URL}
    Wait Until Element Is Visible               //*[@id="root"]/div/div/a[1]/div[1]

Test enter content inspector
    [Documentation]                             pressing on and going to Content page for junior
    Click Element                               //*[@id="root"]/div/div/a[1]/div[1]
    Location Should Contain                     ${ContentURL}
    wait until page contains element            xpath: //*[contains(text(), "TAU01AW01")]
    Click Element                               xpath: //*[contains(text(), "TAU01AW01")]

*** Keywords ***
junior content Is Open
    Open Browser                                ${SWE_URL}     ${BROWSER}
    Set Window Size   1400  600