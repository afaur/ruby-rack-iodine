source 'https://rubygems.org'

ruby '2.4.1'

gem 'rack'
gem 'foreman', require: false

gem 'rake',    require: false
gem 'iodine', :git => 'https://github.com/boazsegev/iodine.git'

gem 'activerecord', '5.1.4', require: 'active_record'
gem 'sqlite3'

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'simplecov'
end
