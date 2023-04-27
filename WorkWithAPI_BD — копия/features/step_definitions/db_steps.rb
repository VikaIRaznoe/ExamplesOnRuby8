require 'rspec/expectations'

Given(/^I have a database connection$/) do
  # Подключение к базе данных уже создано в хуке
end

When(/^I insert "(.*?)" and "(.*?)" into the "(.*?)" table$/) do |name, email, table_name|
  # Вставляем данные в таблицу
  @db.execute("INSERT INTO #{table_name} (name, email) VALUES (?, ?)", [name, email])
end

Then(/^I should see the data in the "(.*?)" table$/) do |table_name|
  # Проверяем, что данные были вставлены в таблицу
  result = @db.execute("SELECT * FROM #{table_name}")
  expect(result).not_to be_empty
end

When(/^I select all data from the "(.*?)" table$/) do |table_name|
  # Выбираем все данные из таблицы
  @result = @db.execute("SELECT * FROM #{table_name}")
end

Then(/^I should see the data in the output$/) do
  # Проверяем, что данные были выбраны из таблицы
  expect(@result).not_to be_empty
end
