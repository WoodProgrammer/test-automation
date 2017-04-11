require_relative '../../features/support/env'
require 'capybara'

Given(/^visit "([^"]*)"$/) do |url|
  visit url
end

Then(/^verify page title is "([^"]*)"$/) do |value|
  value.should == page.execute_script("return document.title")
  puts value
end

When(/^type "([^"]*)" into search bar$/) do |arg|
  fill_in('lst-ib', :with => arg)
end

Then(/^click search button$/) do
  find(:id, '_fZl').click()
end

And(/^wait "([^"]*)" seconds$/) do |sec|
  sleep sec.to_i
end