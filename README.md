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
For running in chrome, find chromedriver in https://sites.google.com/a/chromium.org/chromedriver/downloads 
<br/>and place it in this path:
```
/usr/local/bin/chromedriver
```
Or install using brew:
```
brew cask install chromedriver
```

## Configuration

You need to update some variable inside of file:
```
${URL}          https://superyou.co.id/     # Testing URL
${EMAIL}        coroo.wicaksono@test.com    # Mail for Sign Up
```

## Run Your Automation

```
robot yourfile (*with extension .robot)
```

Example:
```
robot all_product.robot
```
