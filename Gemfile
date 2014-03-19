source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem "bcrypt-ruby", "~> 3.1.2"
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'spree', github: 'spree/spree', branch: '2-1-stable'
gem 'spree_paypal_express', :github => "radar/better_spree_paypal_express", :branch => "2-1-stable"
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '2-1-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-1-stable'
gem 'newrelic_rpm'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem "rspec-rails", "~> 2.14.0"
  gem "factory_girl_rails", "~> 4.2.1"
  gem 'simplecov'
end

group :test do
  gem "faker", "~> 1.1.2"
  gem "capybara", "~> 2.1.0"
  gem "database_cleaner", "~> 1.0.1"
  gem "launchy", "~> 2.3.0"
  gem "selenium-webdriver", "~> 2.38.0"
end

group :production do
  gem 'rails_12factor'
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development
