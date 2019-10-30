<p align="center">
  <img src="https://i.ibb.co/djnLFxG/ux-design.png" height="80" /><br/>
  <span><b>Superyou</b>: <span>Automated Testing [BETA]</span></a>
</p>
  
<br/>

## Installation

```
pip install robotframework
pip install robotframework-selenium2library
```

## Driver Need to be Installed
### `Macbook`
For running in chrome, you need to install chromedriver:
```
brew cask install chromedriver
```
For running in firefox, you need to install geckodriver:
```
brew cask install geckodriver
```
For running in edge, you need to install edge driver: https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/

### `Windows`
For running in chrome, you need to install chromedriver: https://chromedriver.chromium.org/downloads <br/>
For running in firefox, you need to install geckodriver: https://github.com/mozilla/geckodriver/releases <br/>
For running in edge, you need to install edge driver in `command prompt (windows)`:
```
DISM.exe /Online /Add-Capability /CapabilityName:Microsoft.WebDriver~~~~0.0.1.0
```
<br/>

## Configuration

You need to update some variable inside of `config.robot`. 
More description, please find detail at <a href="#more-configuration">More Configuration Section</a>
<br/>

## Run Your Automation

```
robot run.robot
```
<img src="assets/run-robot.png" /><br/>
### Open The Report
```
alias openchrome="open -a \"Google Chrome\" "
openchrome report.html
```
### Open Detail Log
```
alias openchrome="open -a \"Google Chrome\" "
openchrome log.html
```

<br/><br/><hr/>
## More Configuration
Here the list and detail of your `config.robot` :
```
.
├── ${BROWSER}
│   └── chrome
│   └── firefox
│
├── ${CLOSE_BROWSER}
│   └── 0 ──: leave browser open after testcase success;
│   └── 1 ──: close browser after testcase success;
│
├── ${SUPERLINK}
│
├── ${SUPERSAFE}
│   └── 0 ──: not include SUPERSAFE in product test;
│   └── 1 ──: include SUPERSAFE product test;
│
├── ${SUPERSTRONG}
│   └── 0 ──: not include SUPERSTRONG in product test;
│   └── 1 ──: include SUPERSTRONG product test;
│
├── ${SUPERLIFE}
│   └── 0 ──: not include SUPERLIFE in product test;
│   └── 1 ──: include SUPERLIFE product test;
│
├── ${PH_EMAIL}
│
├── ${PH_NAME}
│
├── ${PH_MOBILE}
│
├── ${PH_IDENTITY}
│
├── ${PH_GENDER}
│   └── 1 ──: male 
│   └── 2 ──: female
│
├── ${PH_IDENTITY}
│
├── ${PH_ADDRESS}
│
├── ${PH_BIRTH_AT}
│
├── ${PH_IDENTITY}
│
├── ${INSURED_RELATION}
│   └── 1 ──: Self
│   └── 2 ──: Wife/Husband
│   └── 3 ──: Son
│   └── 4 ──: Daughter
│   └── 5 ──: Father
│   └── 6 ──: Mother
│   └── 7 ──: Brother
│   └── 8 ──: Sister
│
├── ${INSURED_NAME}
│
├── ${INSURED_IDENTITY}
│
├── ${BENEFICIARY_RELATION}
│   └── 1 ──: Self
│   └── 2 ──: Wife/Husband
│   └── 3 ──: Son
│   └── 4 ──: Daughter
│   └── 5 ──: Father
│   └── 6 ──: Mother
│   └── 7 ──: Brother
│   └── 8 ──: Sister
│
├── ${BENEFICIARY_NAME}
│
└── ${BENEFICIARY_IDENTITY}
```

