<p align="center">
  <img src="https://i.ibb.co/djnLFxG/ux-design.png" height="80" /><br/>
  <span><b>Superyou</b>: :robot: <span>Automated Testing</span></a>
</p>
  
<br/>

## Installation

```sh
pip install robotframework
pip install robotframework-selenium2library
```

## Driver Need to be Installed
### `Macbook`
- [x] For running in chrome, you need to install chromedriver:
```sh
brew cask install chromedriver
```
- [x] For running in firefox, you need to install geckodriver:
```sh
brew cask install geckodriver
```
- [x] For running in edge, you need to install edge driver: <br/>
https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/

### `Windows`
- [x] For running in chrome, you need to install chromedriver: <br/>
https://chromedriver.chromium.org/downloads <br/>
- [x] For running in firefox, you need to install geckodriver: <br/>
https://github.com/mozilla/geckodriver/releases <br/>
- [x] For running in edge, you need to install edge driver in `command prompt (windows)`:
```sh
DISM.exe /Online /Add-Capability /CapabilityName:Microsoft.WebDriver~~~~0.0.1.0
```
<br/>

## Configuration

You need to update some variable inside of `config.robot`. For basic configuration, you need to change this line:
```php
${SUPERLINK}              # Change it with url link, e.g. google.com
${SUPERSAFE}              # Activate it if you want to run Super Safe Product
${PH_EMAIL_SUPERSAFE}     # Fulfill email for test
```
<br/>For more description, please find detail at <a href="#detail-configuration-section">Detail Configuration Section</a>
<br/>

## Run Your Automation

```
robot run.robot
```
<img src="assets/run-robot.png" /><br/>
### Open The Report
```sh
sh report.sh
```

<br/><br/><br/><br/><hr/>
## Detail Configuration Section
Here the list and detail of your `config.robot` :
```php
.
├── ${BROWSER}
│   ## which browser do you want to run the testcase ?
│      └── chrome
│      └── firefox
│
├── ${CLOSE_BROWSER}
│   ## do you want close the browser after testcase success ?
│      └── 0 ── # leave browser open after testcase success
│      └── 1 ── # close browser after testcase success
│
├── ${SUPERLINK}
│   ## please provide domain link that will be running for automated testcase
│
├── ${SUPERSAFE}
│   ## do you want to running SUPERSAFE product ?
│      └── 0 ── # don't include SUPERSAFE in testcase
│      └── 1 ── # do include SUPERSAFE testcase
│
├── ${SUPERSTRONG}
│   ## do you want to running SUPERSTRONG product ?
│      └── 0 ── # don't include SUPERSTRONG in testcase
│      └── 1 ── # do include SUPERSTRONG testcase
│
├── ${SUPERLIFE}
│   ## do you want to running SUPERLIFE product ?
│      └── 0 ── # don't include SUPERLIFE in testcase
│      └── 1 ── # do include SUPERLIFE testcase
│
├── ${IS_EXIST}
│   ## do you want to run testcase as existing user ?
│   │  └── 0 ── # no, run as New User
│   │  └── 1 ── # yes, I want to use Existing User
│   │
│   └── ${EXISTING_USER}
│   │   ## if IS_EXIST = 1, you need to define username of existing user
│   │
│   └── ${EXISTING_PASS}
│       ## if IS_EXIST = 1, you need to define password of existing user
│
├── ${PH_EMAIL_SUPERSAFE}
│   ## please provide policy holder Email for Buy a SuperSafe product
│
├── ${PH_EMAIL_SUPERSTRONG}
│   ## please provide policy holder Email for Buy a SuperStrong product
│
├── ${PH_EMAIL_SUPERLIFE}
│   ## please provide policy holder Email for Buy a SuperLife product
│
├── ${PH_NAME}
│   ## please provide policy holder name
│
├── ${PH_PASS}
│   ## please provide policy holder Password
│
├── ${PH_MOBILE}
│   ## please provide policy holder Mobile number
│
├── ${PH_IDENTITY}
│   ## please provide policy holder Identity
│
├── ${PH_GENDER}
│   ## please provide policy holder Gender
│      └── 1 ── # male 
│      └── 2 ── # female
│
├── ${PH_IDENTITY}
│   ## please provide policy holder Identity number
│
├── ${PH_ADDRESS}
│   ## please provide policy holder Address
│
├── ${PH_BIRTH_AT}
│   ## please provide policy holder Place of Birth
│
├── ${INSURED_RELATION}
│   ## what is insured relation from you ?
│      └── 1 ── # self
│      └── 2 ── # wife/husband
│      └── 3 ── # son
│      └── 4 ── # daughter
│      └── 5 ── # father
│      └── 6 ── # mother
│      └── 7 ── # brother
│      └── 8 ── # sister
│
├── ${INSURED_NAME}
│   ## please provide insured name
│
├── ${INSURED_IDENTITY}
│   ## please provide insured identity number
│
├── ${BENEFICIARY_RELATION}
│   ## what is beneficiary relation from insured ?
│      └── 1 ── # self
│      └── 2 ── # wife/husband
│      └── 3 ── # father
│      └── 4 ── # mother
│      └── 5 ── # son
│      └── 6 ── # daughter
│      └── 7 ── # brother
│      └── 8 ── # sister
│
├── ${BENEFICIARY_NAME}
│   ## please provide beneficiary name
│
└── ${BENEFICIARY_IDENTITY}
    ## please provide beneficiary identity number
```

