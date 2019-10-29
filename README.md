<p align="center">
  <img src="https://i.ibb.co/djnLFxG/ux-design.png" height="80" /><br/>
  <span><b>Superyou</b>: <span>Automated Testing [BETA]</span></a>
</p>
  
<br/>

## Installation

```
pip install robotframework
pip install robotframework-selenium2library
alias openchrome="open -a \"Google Chrome\" "
```

### Driver Need to be Installed
For running in chrome, you need to install chromedriver:
```
brew cask install chromedriver
```
For running in firefox, you need to install geckodriver:
```
brew cask install geckodriver
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
openchrome report.html
```
### Open Detail Log
```
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

