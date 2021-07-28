Given /^I am on loan calculator home page$/ do
  url= $driver.title
  puts url
end

When (/^I enter loan '(.*)' amount$/) do |num|
   $driver.find_element(:xpath,"//input[@id='cloanamount']").click
   # $driver.find_element(:xpath,"//input[@id='cloanamount']").send("10000")
   puts num
end

Then (/^I enter loan team '(.*)' and month '(.*)'$/) do |num2,num3|
  $driver.find_element(:xpath,"//input[@id='cloanterm']").click
  puts num2,num3
end

And (/^I enter interest '(.*)' rate$/) do |num4|
  $driver.find_element(:xpath,"//input[@id='cinterestrate']").click
  puts num4
end

And (/^I select the compound '(.*)' and pay back '(.*)'$/) do |num5,num6|

  # $driver.find_element(:xpath,"//select[@id='ccompound']").text.include?('Monthly (APR)')
  #$driver.find_element(:xpath,"//select[@name='cpayback']").text.include?('Every Month')
  dropdown = $driver.find_element(id: 'ccompound')
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text, 'Annually (APY)')
  dropdown = $driver.find_element(id: 'cpayback')
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text, 'Every Year')
  puts num5,num6
end

Then (/^Click on calculate button$/ ) do
  $driver.find_element(:xpath,"//*[@id='calinputtable']/tbody/tr[7]/td/input").click()
end
Then(/^I see the result '(.*)'$/) do |result|
  output = $driver.find_element(:link_text,"View Amortization Table").click
  if Result==output
    puts "test passed"
  end
  end



