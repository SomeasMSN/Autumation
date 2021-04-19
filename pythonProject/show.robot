*** Settings ***
Library  Selenium2Library
*** Variables ***
${facebook} =         https://web.facebook.com/?_rdc=1&_rdr
${youtube} =        https://www.youtube.com/
${Song}=    My love is gone
${My-Love Elements}=    //YT-FORMATTED-STRING[@class='style-scope ytd-video-renderer'][text()='Aarya-2 - My Love Is Gone Video | Allu Arjun | Devi Sri Prasad']
*** Keywords ***

Love olo
    Open Browser        ${youtube}     Firefox
    Maximize Browser Window
    Input Text    name=search_query         ${Song}
    Click Element       (//YT-ICON[@class='style-scope ytd-searchbox'])[2]
    Click Element       ${My-Love Elements}
    Sleep    10s
    Close Browser
Facebook Login
    Open Browser       ${facebook}      Chrome
    Maximize Browser Window
    Input Text    name=email    0963430446
    Input Password    id=pass    0968008806@
    Click Element    name=login

*** Test Cases ***
[001] Login to youtube
    Love olo
#[002] Login Facebook page
#    Facebook Login