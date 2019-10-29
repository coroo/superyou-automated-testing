*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${SELSPEED}     1.0s
${P01_START}        https://superyou.co.id/
${P02_START}        https://superyou.co.id/produk/super-strong-protection
${P03_START}        https://superyou.co.id/produk/super-life-protection
${EMAIL}            coroo.wicaksono@test.com
${CLOSE_BROWSER}    1
# 0: Dont Close; 1: Close;
${GENDER}           1 
# 1: Male; 2: Female;

*** Test Cases ***
Super Safe Protection:: Automated Testing
    [Setup]  Run Keywords  Open Browser  ${P01_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    click               id=home_sovia-trigger
    waitForTexting      Boleh saya tahu nama kamu?
    type                id=inputText    Kuncoro Wicaksono
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    type                id=inputText    ${EMAIL}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
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
    type                id=inputText    087804005006
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    type                id=inputText    1234123412341234
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  id=inputText
    type                id=inputText    Jalan Remaja No 58 RT01 RW001 Ceger, Cipayung, Jakarta Timur
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    type                id=inputText    Jakarta
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      yang bernama?
    waitForPageContain  id=inputText
    type                id=inputText    Istriku Tercinta
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tanggal lahir ahli waris kamu adalah
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    closeIfISay

Super Strong Protection:: Automated Testing
    [Setup]  Run Keywords  Open Browser  ${P02_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Safe Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    waitForTexting      Boleh saya tahu nama kamu?
    type                id=inputText    Kuncoro Wicaksono
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    type                id=inputText    ${EMAIL}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    type                id=inputText    087804005006
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    type                id=inputText    1234123412341234
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  id=inputText
    type                id=inputText    Jalan Remaja No 58 RT01 RW001 Ceger, Cipayung, Jakarta Timur
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    type                id=inputText    Jakarta
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      yang bernama?
    waitForPageContain  id=inputText
    type                id=inputText    Istriku Tercinta
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tanggal lahir ahli waris kamu adalah
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    closeIfISay

Super Life Protection:: Automated Testing
    [Setup]  Run Keywords  Open Browser  ${P03_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Life Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    waitForTexting      Boleh saya tahu nama kamu?
    type                id=inputText    Kuncoro Wicaksono
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    type                id=inputText    ${EMAIL}
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
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
    type                id=inputText    087804005006
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    type                id=inputText    1234123412341234
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  id=inputText
    type                id=inputText    Jalan Remaja No 58 RT01 RW001 Ceger, Cipayung, Jakarta Timur
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    type                id=inputText    Jakarta
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      yang bernama?
    waitForPageContain  id=inputText
    type                id=inputText    Istriku Tercinta
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tanggal lahir ahli waris kamu adalah
    click               xpath=(//input[@type='text'])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[18])
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    click               xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    closeIfISay

*** Keywords ***
closeIfISay
    Run Keyword If    '${CLOSE_BROWSER}' == '1'  closeBrowser

closeBrowser
    [Arguments]    
    CLOSE BROWSER       

open
    [Arguments]    ${element}
    Go To          ${element}

waitAndClick
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}   10
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
    Wait Until Page Contains     ${value}   15
    
waitForPageContain
    [Arguments]                         ${element}
    Wait Until Page Contains Element    ${element}   10

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
