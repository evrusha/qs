source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.5'

gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootstrap', '5.3.0.alpha3'
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'google-cloud-storage', '~> 1.44', require: false
gem 'redis', '~> 5.0', '>= 5.0.6'
gem 'rubocop-rails', require: false
gem 'sidekiq', '~> 7.1', '>= 7.1.1'
gem 'sidekiq-cron', '~> 1.10', '>= 1.10.1'

gem 'slim-rails', '~> 3.6', '>= 3.6.2'

gem 'activerecord-import', '~> 1.4', '>= 1.4.1'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rspec-rails', '~> 6.0', '>= 6.0.3'
  gem 'web-console'
end

group :test do
  gem 'simplecov', require: false
end
