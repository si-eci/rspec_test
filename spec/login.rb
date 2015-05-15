require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to 'http://devtest2.socs-staging.center/'

element = driver.find_element(:id, 'user_login')
element.send_keys('socsuser')

driver.find_element(:id, 'user_password').send_keys('si2015devtest2')

driver.find_element(:name, 'button').click

driver.quit
