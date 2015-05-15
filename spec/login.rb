require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to 'http://devtest2.socs-staging.center/'


driver.quit
