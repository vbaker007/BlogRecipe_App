source 'https://rubygems.org'

ruby '2.2.2'

gem 'autoprefixer-rails', '~> 6.1', '>= 6.1.2'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'carrierwave', '0.10.0'
gem 'mini_magick', '3.8.0'
gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'fog', '1.23.0'
gem 'aws-sdk', '~> 1.36.1'
gem "net-ssh", require: "net/ssh"
#gem 'bcyrpt', '3.1.7'
 #Use ActiveModel has_secure_password

gem 'bcrypt', '~> 3.1.7'
gem 'omniauth'
gem 'omniauth-twitter'
#gem 'twitter'
#gem 'omniauth-google-oauth2'
gem 'json'
#gem "omniauth-google-oauth2"

group :development, :test do
  gem 'simplecov', :require => false, :group => :test
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
  gem 'byebug'
  gem 'pry'
  gem 'minitest-reporters'
  gem 'mini_backtrace'
  gem 'guard-minitest'
  #gem "mocha"
  #gem "poltergeist"
  #gem "shoulda"
  gem "test_after_commit"
  #gem "capybara"
  gem "connection_pool"
  #gem "launchy"
end

group :test do
  #gem 'minitest-reporters'
  #gem 'mini_backtrace'
  #gem 'guard-minitest'
  #gem "mocha"
  #gem "poltergeist"
  #gem "shoulda"
  #gem "test_after_commit"
  gem "connection_pool"
  #gem "launchy"
end
group :development do
  gem "better_errors"
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem "guard", ">= 2.2.2", :require => false
  gem "guard-minitest", :require => false
  gem "rb-fsevent", :require => false
  gem "terminal-notifier-guard", :require => false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'puma', '~> 2.15', '>= 2.15.3'
end
