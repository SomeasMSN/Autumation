*** Settings ***

Library    Selenium2Library
Resource       ../Variables/show2/show2.robot

*** Keywords ***

[OpenBrowser] Chrome
    Open Browser       ${Show2}     Chrome
    Maximize Browser Window

