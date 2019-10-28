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

To run in chrome, find chromedriver in https://sites.google.com/a/chromium.org/chromedriver/downloads 
<br/>and place it in this path:
```
/usr/local/bin/chromedriver
```

## Configuration

You need to update some variable inside of file:
```
${URL}          https://superyou.co.id/     # Testing URL
${EMAIL}        coroo.wicaksono@test.com    # Mail for Sign Up
```

## Run Your Automation

```
robot yourfile.robot
```

Example:
```
robot supersafe.robot
```
