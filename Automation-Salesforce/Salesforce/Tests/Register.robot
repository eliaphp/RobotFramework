*** Settings ***
Documentation    Suite description

#Documentation       Go to the free trial sales essentials
Resource            ../PageObject/Register/Form.robot

*** Variables ***
${username}     Elia
${userlast}     PHP
${usertitle}    Automation
${usermail}     elia.herrera@globant.com
${userphone}    5573354717
${usercompany}  Globant


*** Test Cases ***
Verify message in frre trial
    [Tags]    Star

    Form.Register to start a free trial     ${username}  ${userlast}     ${usertitle}    ${usermail}     ${userphone}    ${usercompany}



