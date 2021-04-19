*** Settings ***
Library     Selenium2Library
Resource      ../Command/keywords.robot

*** Test Cases ***
SHOW BROWSER
        [OpenBrowser] Chrome
