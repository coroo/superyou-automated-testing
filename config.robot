*** Variables ***
${BROWSER}                  chrome
${CLOSE_BROWSER}            1
# ${SUPERLINK}                https://superyou:superyousequisonline@staging.superyou.co.id
${SUPERLINK}                https://superyou.co.id
# 0: Dont Close; 1: Close; ** CLOSE BROWSER IF TESTCASE SUCCESS COMPLETELY
${SUPERSAFE}                1
${SUPERSTRONG}              1
${SUPERLIFE}                1
# 0: Not Include Product Test; 1: Include Product Test;

# === PH DETAIL ===
${PH_EMAIL}                 coroo.wicaksono@test.com
${PH_NAME}                  Kuncoro Wicaksono
${PH_MOBILE}                087804005006
${PH_IDENTITY}              1234123412341234
${PH_GENDER}                1 
# 1: Male; 2: Female;
${PH_ADDRESS}               Jalan Remaja No 58 RT01 RW001 Ceger, Cipayung, Jakarta Timur
${PH_BIRTH_AT}              Jakarta

# === INSURED DETAIL ===
${INSURED_RELATION}         2
# 1: Self; 2: Wife/Husband; 3: Son; 4: Daughter; 5: Father; 6: Mother; 7: Brother; 8: Sister;
${INSURED_NAME}             Insured Name
${INSURED_IDENTITY}         4321432143214321

# === PH DETAIL ===
${BENEFICIARY_RELATION}     2
# if INSURED_RELATION != 1 Then 1: Self; 2: Wife/Husband; 3: Son; 4: Daughter; 5: Father; 6: Mother; 7: Brother; 8: Sister;
# if INSURED_RELATION == 1 Then 1: Wife;
${BENEFICIARY_NAME}         Beneficiary Name
${BENEFICIARY_IDENTITY}     9876987698769876