*** Settings ***
Library         SeleniumLibrary
Library         Dialogs
Resource        config.robot
Documentation   🤖. Automated Testing for Super You Product.
...             See README.MD for more documentation examples.

*** Variables ***
${SELSPEED}     1.0s
${P01_START}                ${SUPERLINK}
${P02_START}                ${SUPERLINK}/produk/super-strong-protection
${P03_START}                ${SUPERLINK}/produk/super-life-protection
${EXISTINGCHAT}=            assertVisible    YA, LANJUTKAN

*** Test Cases ***
Automated Testing:: Super Safe Protection [New User]
    Run Keyword If      '${SUPERSAFE}' == '0' or '${IS_EXISTING}' == '1'  closeWithoutRunning
    [Setup]  Run Keywords   Run Keyword If    '${SUPERSAFE}' == '1' and '${IS_EXISTING}' == '0'   Open Browser  ${P01_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        id=home_sovia-trigger
    waitForTexting      Boleh saya tahu nama kamu?
    waitAndType         id=inputText    ${PH_NAME}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${PH_GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    waitAndType         id=inputText    ${PH_EMAIL_SUPERSAFE}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    waitAndClick        xpath=(//input[@type='text'])
    runFindDate         xpath=(//input[@type='text'])   15
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    Run Keyword If      ${INSURED_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Untuk siapa perlindungan super ini? ☂️'])[1]/following::div[17]    ${INSURED_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    waitForTexting      Di waktu senggang, apa yang biasanya kamu lakukan?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               2
    waitForTexting      Transportasi apa yang biasanya kamu gunakan saat bepergian?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_MOBILE}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_IDENTITY}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  xpath=(//*[@id="sAddress"]/div[1]/div[2]/div/textarea)
    waitAndType         xpath=(//*[@id="sAddress"]/div[1]/div[2]/div/textarea)    ${PH_ADDRESS}
    waitAndType         xpath=(//*[@id="kota"])             DKI Jakarta
    waitAndType         xpath=(//*[@id="kode_pos"])         12190
    waitAndType         xpath=(//*[@id="kel_desa"])         Kebayoran Baru
    waitAndType         xpath=(//*[@id="kecamatan"])        Jakarta Selatan
    waitAndClick        xpath=(//*[@id="continue"])
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_BIRTH_AT}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    Run Keyword If      ${BENEFICIARY_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Siapa yang akan menjadi ahli waris dari tertanggung?'])[1]/following::div[17]    ${BENEFICIARY_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    Pause Execution     Please fullfil the Verification Code & click Submit First. \n After you do that, click button below to continue the automation
    type                id=password    ${PH_PASS}
    type                id=password_confirmation    ${PH_PASS}
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Confirm Password'])[1]/following::button[1]
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[1]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[2]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[3]/div/label)
    waitAndClick        xpath=(//div[@id='monthly-yearly']/div[2]/label)
    waitAndClick        xpath=(//a[@id='payment-list-1']/div)
    waitAndClick        xpath=(//button[@id='next-step'])
    sleep               2
    waitAndType         name=CARDNAME    ${CC_FULLNAME}
    waitAndClick        name=CARDTYPE
    waitAndType         id=CARDNOSHOWFORMAT    ${CC_CARDNUMBER}
    waitAndType         name=CARDCVC    ${CC_CCV}
    select              id=month    05
    select              id=year    2021
    click               name=submit
    sleep               5
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/a)
    closeIfISay

Automated Testing:: Super Strong Protection [New User]
    Run Keyword If      '${SUPERSTRONG}' == '0' or '${IS_EXISTING}' == '1'  closeWithoutRunning
    [Setup]  Run Keywords  Run Keyword If    '${SUPERSTRONG}' == '1' and '${IS_EXISTING}' == '0'   Open Browser  ${P02_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Safe Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    waitForTexting      Boleh saya tahu nama kamu?
    waitAndType         id=inputText    ${PH_NAME}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${PH_GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    waitAndType         id=inputText    ${PH_EMAIL_SUPERSTRONG}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    waitAndClick        xpath=(//input[@type='text'])
    runFindDate         xpath=(//input[@type='text'])   15
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    Run Keyword If      ${INSURED_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Untuk siapa perlindungan super ini? ☂️'])[1]/following::div[17]    ${INSURED_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_MOBILE}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_IDENTITY}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  xpath=(//*[@id="sAddress"]/div[1]/div[2]/div/textarea)
    waitAndType         xpath=(//*[@id="sAddress"]/div[1]/div[2]/div/textarea)    ${PH_ADDRESS}
    waitAndType         xpath=(//*[@id="kota"])             DKI Jakarta
    waitAndType         xpath=(//*[@id="kode_pos"])         12190
    waitAndType         xpath=(//*[@id="kel_desa"])         Kebayoran Baru
    waitAndType         xpath=(//*[@id="kecamatan"])        Jakarta Selatan
    waitAndClick        xpath=(//*[@id="continue"])
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_BIRTH_AT}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    Run Keyword If      ${BENEFICIARY_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Siapa yang akan menjadi ahli waris dari tertanggung?'])[1]/following::div[17]    ${BENEFICIARY_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    Pause Execution     Please fullfil the Verification Code & click Submit First. \n After you do that, click button below to continue the automation
    type                id=password    ${PH_PASS}
    type                id=password_confirmation    ${PH_PASS}
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Confirm Password'])[1]/following::button[1]
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[1]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[2]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[3]/div/label)
    waitAndClick        xpath=(//div[@id='monthly-yearly']/div[2]/label)
    waitAndClick        xpath=(//a[@id='payment-list-1']/div)
    waitAndClick        xpath=(//button[@id='next-step'])
    sleep               2
    waitAndType         name=CARDNAME    ${CC_FULLNAME}
    waitAndClick        name=CARDTYPE
    waitAndType         id=CARDNOSHOWFORMAT    ${CC_CARDNUMBER}
    waitAndType         name=CARDCVC    ${CC_CCV}
    select              id=month    05
    select              id=year    2021
    click               name=submit
    sleep               5
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/a)
    closeIfISay

Automated Testing:: Super Life Protection [New User]
    Run Keyword If      '${SUPERLIFE}' == '0' or '${IS_EXISTING}' == '1'  closeWithoutRunning
    [Setup]  Run Keywords  Run Keyword If    '${SUPERLIFE}' == '1' and '${IS_EXISTING}' == '0'   Open Browser  ${P03_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Life Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    waitForTexting      Boleh saya tahu nama kamu?
    waitAndType         id=inputText    ${PH_NAME}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    sleep               2
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Boleh saya tahu nama kamu?'])[1]/following::button[${PH_GENDER}]
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2])
    waitForTexting      Silahkan masukkan alamat e-mail kamu
    sleep               1
    waitAndType         id=inputText    ${PH_EMAIL_SUPERLIFE}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Kapankah kamu lahir?
    waitAndClick        xpath=(//input[@type='text'])
    runFindDate         xpath=(//input[@type='text'])   15
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Apakah kamu sudah menikah?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Untuk siapa perlindungan super ini?
    Run Keyword If      ${INSURED_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Untuk siapa perlindungan super ini? ☂️'])[1]/following::div[17]    ${INSURED_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               2
    waitForTexting      Saya pasti merahasiakan informasi penting
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button)
    sleep               2
    waitForTexting      Di waktu senggang, apa yang biasanya kamu lakukan?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Masukkan no. telp yang dapat dihubungi
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_MOBILE}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Masukan nomor KTP Anda
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_IDENTITY}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tuliskan alamat lengkap tempat tinggal anda sekarang
    waitForPageContain  xpath=(//*[@id="sAddress"]/div[1]/div[2]/div/textarea)
    waitAndType         xpath=(//*[@id="sAddress"]/div[1]/div[2]/div/textarea)    ${PH_ADDRESS}
    waitAndType         xpath=(//*[@id="kota"])             DKI Jakarta
    waitAndType         xpath=(//*[@id="kode_pos"])         12190
    waitAndType         xpath=(//*[@id="kel_desa"])         Kebayoran Baru
    waitAndType         xpath=(//*[@id="kecamatan"])        Jakarta Selatan
    waitAndClick        xpath=(//*[@id="continue"])
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Di mana kamu lahir?
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${PH_BIRTH_AT}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    Run Keyword If      ${BENEFICIARY_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Siapa yang akan menjadi ahli waris dari tertanggung?'])[1]/following::div[17]    ${BENEFICIARY_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitForTexting      Sebelum melakukan pembayaran silahkan klik tombol ini untuk verifikasi alamat email Kamu
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    Pause Execution     Please fullfil the Verification Code & click Submit First. \n After you do that, click button below to continue the automation
    type                id=password    ${PH_PASS}
    type                id=password_confirmation    ${PH_PASS}
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Confirm Password'])[1]/following::button[1]
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[1]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[2]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[3]/div/label)
    waitAndClick        xpath=(//div[@id='monthly-yearly']/div[2]/label)
    waitAndClick        xpath=(//a[@id='payment-list-1']/div)
    waitAndClick        xpath=(//button[@id='next-step'])
    sleep               2
    waitAndType         name=CARDNAME    ${CC_FULLNAME}
    waitAndClick        name=CARDTYPE
    waitAndType         id=CARDNOSHOWFORMAT    ${CC_CARDNUMBER}
    waitAndType         name=CARDCVC    ${CC_CCV}
    select              id=month    05
    select              id=year    2021
    click               name=submit
    sleep               5
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/a)
    closeIfISay

Automated Testing:: Super Safe Protection [Existing User]
    Run Keyword If      '${SUPERSAFE}' == '0' or '${IS_EXISTING}' == '0'  closeWithoutRunning
    [Setup]  Run Keywords   Run Keyword If    '${SUPERSAFE}' == '1' and '${IS_EXISTING}' == '1'   Open Browser  ${P01_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(//div[@id='locale']/div[3]/div/div/div/a[2])
    waitAndType         id=username    ${EXISTING_USER}
    type                id=password    ${EXISTING_PASS}
    waitAndClick        xpath=(//button[@id='submit_login'])
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='LIHAT PROFIL'])[1]/following::a[1]
    waitAndClick        xpath=(//a[contains(text(),'Tambah Proteksi')])
    sleep               2
    Run Keyword If      '${EXISTINGCHAT}'     Run Keyword And Ignore Error  click  //button[@id='continue']
    sleep               4
    waitAndClick        xpath=(//section[@id='sovia']/div/div/div[2]/a/img)
    waitAndClick        xpath=(//button[@id='continue'])
    sleep               1
    waitForTexting      Apa yang bisa saya bantu?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               5
    ${EXISTINGPAYMENT}    Run Keyword And Return Status     assertVisible    Lanjutkan pembayaran pembelian
    Run Keyword If      '${EXISTINGPAYMENT}' == 'PASS' or '${EXISTINGPAYMENT}' == 'True'     click  //section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button
    waitForTexting      Untuk siapa perlindungan super ini?
    Run Keyword If      ${INSURED_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Untuk siapa perlindungan super ini? ☂️'])[1]/following::div[17]    ${INSURED_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    Run Keyword If      ${BENEFICIARY_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Siapa yang akan menjadi ahli waris dari tertanggung?'])[1]/following::div[17]    ${BENEFICIARY_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[1]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[2]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[3]/div/label)
    waitAndClick        xpath=(//div[@id='monthly-yearly']/div[2]/label)
    waitAndClick        xpath=(//a[@id='payment-list-1']/div)
    waitAndClick        xpath=(//button[@id='next-step'])
    sleep               2
    waitAndType         name=CARDNAME    ${CC_FULLNAME}
    waitAndClick        name=CARDTYPE
    waitAndType         id=CARDNOSHOWFORMAT    ${CC_CARDNUMBER}
    waitAndType         name=CARDCVC    ${CC_CCV}
    select              id=month    05
    select              id=year    2021
    click               name=submit
    sleep               5
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/a)
    closeIfISay

Automated Testing:: Super Strong Protection [Existing User]
    Run Keyword If      '${SUPERSTRONG}' == '0' or '${IS_EXISTING}' == '0'  closeWithoutRunning
    [Setup]  Run Keywords   Run Keyword If    '${SUPERSTRONG}' == '1' and '${IS_EXISTING}' == '1'   Open Browser  ${P01_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(//div[@id='locale']/div[3]/div/div/div/a[2])
    waitAndType         id=username    ${EXISTING_USER}
    type                id=password    ${EXISTING_PASS}
    waitAndClick        xpath=(//button[@id='submit_login'])
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='LIHAT PROFIL'])[1]/following::a[1]
    waitAndClick        xpath=(//a[@id='openNavigation'])
    waitAndClick        xpath=(//div[@id='super-navigation']/div/div/div[5]/div/div[2]/ul/li[3]/a)
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Safe Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    Run Keyword And Ignore Error    waitAndClick        xpath=(//button[@id='continue'])
    sleep               4
    waitAndClick        xpath=(//section[@id='sovia']/div/div/div[2]/a/img)
    waitAndClick        xpath=(//button[@id='continue'])
    sleep               1
    waitForTexting      Apa yang bisa saya bantu?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               5
    ${EXISTINGPAYMENT}    Run Keyword And Return Status     assertVisible    Lanjutkan pembayaran pembelian
    Run Keyword If      '${EXISTINGPAYMENT}' == 'PASS' or '${EXISTINGPAYMENT}' == 'True'     click  //section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button
    waitForTexting      Untuk siapa perlindungan super ini?
    Run Keyword If      ${INSURED_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Untuk siapa perlindungan super ini? ☂️'])[1]/following::div[17]    ${INSURED_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    Run Keyword If      ${BENEFICIARY_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Siapa yang akan menjadi ahli waris dari tertanggung?'])[1]/following::div[17]    ${BENEFICIARY_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[1]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[2]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[3]/div/label)
    waitAndClick        xpath=(//div[@id='monthly-yearly']/div[2]/label)
    waitAndClick        xpath=(//a[@id='payment-list-1']/div)
    waitAndClick        xpath=(//button[@id='next-step'])
    sleep               2
    waitAndType         name=CARDNAME    ${CC_FULLNAME}
    waitAndClick        name=CARDTYPE
    waitAndType         id=CARDNOSHOWFORMAT    ${CC_CARDNUMBER}
    waitAndType         name=CARDCVC    ${CC_CCV}
    select              id=month    05
    select              id=year    2021
    click               name=submit
    sleep               5
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/a)
    closeIfISay

Automated Testing:: Super Life Protection [Existing User]
    Run Keyword If      '${SUPERLIFE}' == '0' or '${IS_EXISTING}' == '0'  closeWithoutRunning
    [Setup]  Run Keywords   Run Keyword If    '${SUPERLIFE}' == '1' and '${IS_EXISTING}' == '1'   Open Browser  ${P01_START}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    sleep               1
    waitAndClick        xpath=(//div[@id='locale']/div[3]/div/div/div/a[2])
    waitAndType         id=username    ${EXISTING_USER}
    type                id=password    ${EXISTING_PASS}
    waitAndClick        xpath=(//button[@id='submit_login'])
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='LIHAT PROFIL'])[1]/following::a[1]
    waitAndClick        xpath=(//a[@id='openNavigation'])
    waitAndClick        xpath=(//div[@id='super-navigation']/div/div/div[5]/div/div[2]/ul/li[2]/a)
    waitAndClick        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hai, mau tahu plan Super Life Protection mana yang cocok untuk kamu? 😃'])[1]/following::button[1]
    Run Keyword And Ignore Error    waitAndClick        xpath=(//button[@id='continue'])
    sleep               4
    waitAndClick        xpath=(//section[@id='sovia']/div/div/div[2]/a/img)
    waitAndClick        xpath=(//button[@id='continue'])
    sleep               1
    waitForTexting      Apa yang bisa saya bantu?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               5
    ${EXISTINGPAYMENT}    Run Keyword And Return Status     assertVisible    Lanjutkan pembayaran pembelian
    Run Keyword If      '${EXISTINGPAYMENT}' == 'PASS' or '${EXISTINGPAYMENT}' == 'True'     click  //section[@id='sovia']/div/div[3]/div/div/div/div/div/div[2]/button
    waitForTexting      Untuk siapa perlindungan super ini?
    Run Keyword If      ${INSURED_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Untuk siapa perlindungan super ini? ☂️'])[1]/following::div[17]    ${INSURED_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${INSURED_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1'  insuredNotSelf
    sleep               5
    waitForTexting      Kamu mau mengambil perlindungan super ini?
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    waitForTexting      Siapa yang akan menjadi ahli waris dari tertanggung?
    Run Keyword If      ${BENEFICIARY_RELATION}-2 >= 2   runSlider    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Siapa yang akan menjadi ahli waris dari tertanggung?'])[1]/following::div[17]    ${BENEFICIARY_RELATION}-1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div[${BENEFICIARY_RELATION}]/button)
    Run Keyword If      '${INSURED_RELATION}' != '1' and '${BENEFICIARY_RELATION}' != '1'  beneficiaryNotSelf
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div/div/div/button)
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[1]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[2]/div/label)
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/form/div[3]/div/label)
    waitAndClick        xpath=(//div[@id='monthly-yearly']/div[2]/label)
    waitAndClick        xpath=(//a[@id='payment-list-1']/div)
    waitAndClick        xpath=(//button[@id='next-step'])
    sleep               2
    waitAndType         name=CARDNAME    ${CC_FULLNAME}
    waitAndClick        name=CARDTYPE
    waitAndType         id=CARDNOSHOWFORMAT    ${CC_CARDNUMBER}
    waitAndType         name=CARDCVC    ${CC_CCV}
    select              id=month    05
    select              id=year    2021
    click               name=submit
    sleep               5
    waitAndClick        xpath=(//section[@id='sovia-payment']/div/div[2]/div/a)
    closeIfISay

*** Keywords ***
runSlider
    [Arguments]         ${element}        ${value}
    Wait Until Page Contains Element    ${element}   60
    ${calculatedInsured} =    Evaluate    ${value}
    waitAndClick        ${element}
    Run Keyword If      ${calculatedInsured}-1 >= 2   runSlider  ${element}    (${value})-1

insuredNotSelf
    sleep               2
    waitForTexting      yang bernama
    waitAndType         id=inputText    ${INSURED_NAME}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      kamu lahir?
    sleep               1
    waitAndClick        xpath=(//input[@type='text'])
    runFindDate         xpath=(//input[@type='text'])   15
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${INSURED_IDENTITY}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)

beneficiaryNotSelf
    waitForTexting      yang bernama
    waitForPageContain  id=inputText
    waitAndType         id=inputText    ${BENEFICIARY_NAME}
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    waitForTexting      Tanggal lahir ahli waris kamu
    sleep               1
    waitAndClick        xpath=(//input[@type='text'])
    runFindDate         xpath=(//input[@type='text'])   15
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/button)
    
closeIfISay
    Run Keyword If    '${CLOSE_BROWSER}' == '1'  closeTheBrowser

closeWithoutRunning
    CLOSE BROWSER  
    Pass Execution      ===========> Passed by Not Running it at all 🤫

closeTheBrowser
    CLOSE BROWSER       
    Pass Execution       ✨.🚀. Cool! Automated Testing Pass With No Error!

runFindDate
    [Arguments]         ${element}        ${value}
    sleep               1
    waitAndClick        xpath=(//section[@id='sovia']/div/div[3]/div/div/div/div[2]/div/span[${value}])
    ${box text}=        Get Value    ${element}
    ${calculatedValue}=    Evaluate    ${value}-1
    Run Keyword If      '${box text}' == ''   runFindDate  ${element}    ${calculatedValue}

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
    Select All From List       ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Click Element       ${element}
    Select From List by Value    ${element}    ${value}

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
    Page Should Contain          ${element}

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
