*** Settings ***
Documentation    Suite description

#Documentation     Page Objects for Registation
Resource          ../../Resources/Common.robot
Resource          ../../../GlobalKeywords.robot

*** Variables ***

${txtName}              id=UserFirstName
${txtLast}              id=UserLastName
${txtTitle}             id=UserTitle
${txtMail}              id=UserEmail
${txtPhone}             id=UserPhone
${txtCompany}           id=CompanyName
${chkSubscription}      id=SubscriptionAgreement
${slctBox}              xpath=((//span[@class='selectBox-arrow'])[1])
${slctEmploy}           xpath=(//li[@class='selectBox-selected']
${btnSubmit}            xpath=(//span[contains(.,'Comenzar Prueba Gratuita')])

*** Keywords ***
Register to start a free trial
    [Arguments]     ${username}  ${userlast}     ${usertitle}    ${usermail}     ${userphone}    ${usercompany}
    Input Text    ${txtName}     ${username}
    Input Text    ${txtLast}     ${userlast}
    Input Text    ${txtTitle}     ${usertitle}
    Input Text    ${txtMail}     ${usermail}
    Input Text    ${txtPhone}     ${userphone}
    Input Text    ${txtCompany}     ${usercompany}
    Click Element   ${chkSubscription}
    Click Element   ${slctBox}
    #Select Random Item From Select List   ${slctEmploy}
    ${item}     Select From List By Index    ${slctEmploy}      ${random}
   # Click Button    ${btnSubmit}
