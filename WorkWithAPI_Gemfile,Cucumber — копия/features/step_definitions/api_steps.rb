require 'yaml'

Given(/^the API endpoint is configured in "([^"]*)"$/) do |config_file|
  @config = YAML.load_file('./config.yml')
end

Given(/^the API key is configured in "([^"]*)"$/) do |config_file|
  @config = YAML.load_file('./config.yml')
end

When(/^I send a GET request to the API endpoint$/) do
  @response = RestClient.get @config['url'], {params: {api_key: @config['apikey']}}
end

Then(/^the response code should be (\d+)$/) do |code|
  expect(@response.code).to eq(code.to_i)
end

Then(/^the response body should contain "(.*?)"$/) do |param|
  expect(@response.body).to include(param)
end
