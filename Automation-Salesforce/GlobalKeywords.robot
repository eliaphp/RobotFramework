#This file is used to store functions that may be usable across multiple projects. Examples may
#include such things as random string generators, regular expression parsers, etc.
*** Settings ***
Library           String
Library           DateTime
Library           Collections
Library           OperatingSystem
Library           RequestsLibrary

*** Variables ***


*** Keywords ***
#ToDo Update Portal Project to Use These Kewords instead of keeping them in SettingsAndLibraries

Verify Text Input
    [Arguments]  ${textIdentifier}   ${textValue}
    ${verify}=       Get Value    ${textIdentifier}
    Should Be Equal   ${textValue}    ${verify}

Verify Select Box Selection
    [Arguments]  ${selectBoxIdentifier}   ${selectBoxValue}
    ${verify}=   Get Selected List Label   ${selectBoxIdentifier}
    Should Be Equal   ${selectBoxValue}  ${verify}

Select Random Item From Select List
    [Arguments]    ${selectList}
    [Documentation]    Returns random item from given select list
    ${items}    Get List Items    ${selectList}
    ${length}   Get Length    ${items}
    # F1 select lists usually have empty value at index 0 so starting at 1
    ${index}    Generate Random Number In Range    1     ${length}-1${
    # Oddly, this keyword requires a string not an int for the index
    ${random}   Convert To String    ${index}
    ${item}     Select From List By Index    ${selectList}     ${random}