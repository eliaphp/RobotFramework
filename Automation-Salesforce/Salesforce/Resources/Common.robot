*** Settings ***
Documentation    Suite description
Library           Selenium2Library
Library           String
Library           DateTime
Library           Collections
Library           OperatingSystem
Library           FakerLibrary
*** Variables ***

${ENV}              qa
${BROWSER}          Chrome
${DELAY}            0
&{SERVER}           qa=https://www.salesforce.com/mx/form/signup/sales-cloud/freetrial-sales-essentials/
${LOGIN URL}        ${SERVER.${ENV}}/


*** Keywords ***
Open Chrome
  ${options}=   Evaluate   sys.modules['selenium.webdriver'].ChromeOptions()   sys, selenium.webdriver
  Call Method    ${options}    add_argument   disable-infobars
  Create WebDriver  Chrome    chrome_options=${options}
  Go To   ${LOGIN URL}

Open Browser

    Open Chrome
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Sales Essentials : Free Trial

End Web Test
    Close All Browsers


