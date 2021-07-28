require 'cucumber'
require 'selenium-webdriver'
Before do
  Selenium::WebDriver::Chrome::Service.driver_path ="C://Users//Sapna//Downloads//chromedriver_win32 (1)//chromedriver.exe"
  $driver = Selenium::WebDriver.for :chrome
  $driver.get("https://www.calculator.net/loan-calculator.html")
end

After do
  $driver.quit
end

