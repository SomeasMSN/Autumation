*** Settings ***
Library    Selenium2Library
#Resource    ../Variables/variables.robot
Resource    ../Variables/show1/variables.robot
Resource    ../Variables/show1/show1.robot
*** Keywords ***
OlO
   Log To Console    Hello
   Open Browser      ${Docments}        Firefox
   Maximize Browser Window
Translator
    Open Browser    ${Translator}       Chrome