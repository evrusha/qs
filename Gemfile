source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.5"

gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

gem 'redis', '~> 5.0', '>= 5.0.6'
gem 'rubocop-rails', require: false
gem 'bootstrap', '5.3.0.alpha3'
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'sidekiq', '~> 7.1', '>= 7.1.1'
gem 'sidekiq-cron', '~> 1.10', '>= 1.10.1'
gem 'google-cloud-storage', '~> 1.44', require: false

gem 'slim-rails', '~> 3.6', '>= 3.6.2'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'rspec-rails', '~> 6.0', '>= 6.0.3'
  gem "web-console"
end

group :test do
  gem 'simplecov', require: false
end
