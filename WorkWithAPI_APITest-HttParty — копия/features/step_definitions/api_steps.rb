require 'httparty'

Given(/^I have a valid API key$/) do
  @api_key = 'adDfcHFGoxRQOcnfhFmc2gIX1pX8KYKgg4eptJbQ'
end

When(/^I send a GET request to "([^"]*)"$/) do |path|
  @response = HTTParty.get("https://api.nasa.gov#{path}", query: { api_key: @api_key })
end

Then(/^the response status should be (\d+)$/) do |status|
  expect(@response.code).to eq(status.to_i)
end

Then(/^the response body should contain "([^"]*)"$/) do |text|
  expect(@response.body).to include(text)
end
