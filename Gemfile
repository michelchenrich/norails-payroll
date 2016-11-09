source 'https://rubygems.org'

group :default do
  gem 'activerecord'
end

group :rake do
  gem 'standalone_migrations'
end

group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
end

group :development, :production do
  gem 'haml'
  gem 'sinatra', require: 'sinatra/base'
end
