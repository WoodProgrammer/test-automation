require 'selenium/webdriver'
require 'selenium/webdriver/common/wait'
require 'rspec/expectations'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
end


After do |scenario|

  page.driver.reset!

end
