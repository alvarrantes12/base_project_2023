source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "rails", "~> 7.0.4", ">= 7.0.4.2"

gem 'bootstrap'
gem "bootsnap", require: false
gem 'font-awesome-sass', '~> 6.4.0'
gem 'haml'
gem "importmap-rails"
gem "jbuilder"
gem 'jquery-rails'
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem 'sass-rails'
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails'
end

group :development do
  gem "html2haml"
  gem "haml-rails"
  gem "pry"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
