*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}              chrome
${URL}                  https://www.google.com
${CHROME_BINARY}        /usr/bin/chromium-browser
${CHROMEDRIVER_PATH}    /usr/bin/chromedriver

*** Test Cases ***
Open Google In Chromium
    [Documentation]    Opens Google homepage in Chromium browser on Alpine Linux
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Evaluate    $chrome_options.add_argument('--no-sandbox')
    Evaluate    $chrome_options.add_argument('--disable-dev-shm-usage')
    Evaluate    $chrome_options.add_argument('--disable-gpu')
    Evaluate    $chrome_options.add_argument('--headless')
    Evaluate    setattr($chrome_options, 'binary_location', '${CHROME_BINARY}')
    
    Create Webdriver    Chrome    executable_path=${CHROMEDRIVER_PATH}    options=${chrome_options}
    Go To    ${URL}
    ${title}=    Get Title
    Capture Page Screenshot
    Log    Page title is: ${title}
    Sleep    2s
    Close Browser
