*** Settings ***
Library         SeleniumLibrary
Resource        config.robot
Documentation   🚀. Automated Testing for Super You Product.
...             See README.MD for more documentation examples.

*** Variables ***
${SELSPEED}     1.0s
${P01_START}                ${SUPERLINK}
${P02_START}                ${SUPERLINK}/produk/super-strong-protection
${P03_START}                ${SUPERLINK}/produk/super-life-protection

*** Test Cases ***
Automated Testing:: Super Safe Protection
    Run Keyword If    '${SUPERSAFE}' == '0'  closeWithoutRunning
    [Setup]  Run Keywords   Run Keyword If    '${SUPERSAFE}' == '1'   Open Browser  ${P01_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        id=home_sovia-trigger
    waitForTexting      Boleh saya tahu nama kamu?
    waitAndType         id=inputText    ${PH_NAME}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${PH_GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    waitAndType         id=inputText    ${PH_EMAIL}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    waitForTexting      Di waktu senggang, apa yang biasanya kamu lakukan?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               2
    waitForTexting      Transportasi apa yang biasanya kamu gunakan saat bepergian?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_MOBILE}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_IDENTITY}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_ADDRESS}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_BIRTH_AT}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    closeIfISay

Automated Testing:: Super Strong Protection
    Run Keyword If    '${SUPERSTRONG}' == '0'  closeWithoutRunning
    [Setup]  Run Keywords  Run Keyword If    '${SUPERSTRONG}' == '1'   Open Browser  ${P02_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Safe Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    waitForTexting      Boleh saya tahu nama kamu?
    waitAndType         id=inputText    ${PH_NAME}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${PH_GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    waitAndType         id=inputText    ${PH_EMAIL}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_MOBILE}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_IDENTITY}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_ADDRESS}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_BIRTH_AT}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    closeIfISay

Automated Testing:: Super Life Protection
    Run Keyword If    '${SUPERLIFE}' == '0'  closeWithoutRunning
    [Setup]  Run Keywords  Run Keyword If    '${SUPERLIFE}' == '1'   Open Browser  ${P03_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Life Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    waitForTexting      Boleh saya tahu nama kamu?
    waitAndType         id=inputText    ${PH_NAME}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${PH_GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    waitAndType         id=inputText    ${PH_EMAIL}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    waitForTexting      Di waktu senggang, apa yang biasanya kamu lakukan?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_MOBILE}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_IDENTITY}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_ADDRESS}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_BIRTH_AT}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    closeIfISay

*** Keywords ***
insuredNotSelf
    waitForTexting      yang bernama?
    sleep               1
    waitAndType         id=inputText    ${INSURED_NAME}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      kamu lahir?
    sleep               1
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${INSURED_IDENTITY}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)

beneficiaryNotSelf
    waitForTexting      yang bernama?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${BENEFICIARY_NAME}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tanggal lahir ahli waris kamu adalah
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    
closeIfISay
    Run Keyword If    '${CLOSE_BROWSER}' == '1'  closeTheBrowser

closeWithoutRunning
    CLOSE BROWSER  
    Pass Execution If   '${SUPERSAFE}' == '0'       ========> Passed by Not Running it at all 🤫

closeTheBrowser
    CLOSE BROWSER       
    Pass Execution       ✨. Cool! Automated Testing Pass With No Error!

open
    [Arguments]    ${element}
    Go To          ${element}

waitAndClick
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}   60
    Click Element                       ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

waitAndType
    [Arguments]    ${element}    ${value}
    Wait Until Page Contains Element    ${element}   60
    Input Text     ${element}    ${value}
    
type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForTexting
    [Arguments]                  ${value}
    Wait Until Page Contains     ${value}   60
    
waitForPageContain
    [Arguments]                         ${element}
    Wait Until Page Contains Element    ${element}   60

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Wait Until Element Is Visible  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
