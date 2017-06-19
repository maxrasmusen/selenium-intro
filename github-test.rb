require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get "https://github.com/"

login_button = driver.find_element(:link_text => "Sign in")
login_button.click

login_field = driver.find_element(:id => "login_field")
password_field = driver.find_element(:id => "password")

login_field.send_keys "mrasmusen@spartaglobal.co"
password_field.send_keys "openup11742"

submit_button = driver.find_element(:name => "commit")
submit_button.click