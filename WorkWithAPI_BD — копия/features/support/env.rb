require 'sqlite3'

# Подключаем базу данных
Before do
  @db = SQLite3::Database.new('database.sqlite')
end

# Закрываем базу данных после выполнения тестов
After do
  @db.close
end
